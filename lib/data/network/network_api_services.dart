import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:ghar_darsan/data/app_exceptions.dart';
import 'package:ghar_darsan/data/network/base_api_services.dart';
import 'package:ghar_darsan/view_models/services/box_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class NetworkApiServices extends BaseApiServices {

String authCode = login.read("auth_code") ?? "";
String user_id = login.read("auth_code") ?? "";
  @override
  Future<dynamic> getApi(String url)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String authCode = sharedPreferences.getString("isLogin") ?? "";
    dynamic responseJson ;
    try {
      final response = await http.get(
          Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $authCode',
          },
      ).timeout( const Duration(seconds: 10));
      responseJson  = returnResponse(response) ;
      // debugPrint(responseJson);
    }on SocketException {
      throw InternetException('');
    }on RequestTimeOut {
      throw RequestTimeOut('');

    }
    return responseJson ;

  }

  @override
  Future<dynamic> postApi(Map data , String url)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String authCode = sharedPreferences.getString("accessToken") ?? "";
    String bookingId = sharedPreferences.getString("bookingId") ?? "";
    data.addAll({"booking_id" : bookingId});
    // data.addAll({"booking_id" : "4"});
    if (kDebugMode) {
      debugPrint(url);
      debugPrint(data.toString());
      debugPrint(authCode.toString());
    }

    dynamic responseJson ;
    try {
      final response = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $authCode',
          },
        body: jsonEncode(data)
      ).timeout( const Duration(seconds: 10));
      // log(response.body.toString());
      // Utils.snackBar("",response.body.toString());
      responseJson  = returnResponse(response) ;
    }on SocketException {
      throw InternetException('');
    }on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson ;
  }

  Future<dynamic> postApiWithoutJson(Map data , String url)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String authCode = sharedPreferences.getString("accessToken") ?? "";
    String bookingId = sharedPreferences.getString("bookingId") ?? "";
    data.addAll({"booking_id" : bookingId});
    // data.addAll({"booking_id" : "4"});
    if (kDebugMode) {
      debugPrint(url);
      debugPrint(data.toString());
      debugPrint(authCode.toString());
    }

    dynamic responseJson ;
    try {
      final response = await http.post(Uri.parse(url),
        body: data
      ).timeout( const Duration(seconds: 10));
      // log(response.body.toString());
      // Utils.snackBar("",response.body.toString());
      responseJson  = returnResponse(response) ;
    }on SocketException {
      throw InternetException('');
    }on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson ;
  }

  Future getPostWithFormDataApiResponse(List<http.MultipartFile> file, data,String url) async {
    dynamic responseJson;

    try {
      //debugPrint(url);
      var request = http.MultipartRequest("POST", Uri.parse(url));

      request.fields.addAll(data);
      request.files.addAll(file);
      var response = await request.send();
      var responseString = await response.stream.bytesToString();
      responseJson = returnResponseFile(response, responseString);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  dynamic returnResponseFile(http.StreamedResponse response, responseString) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(responseString);
        return responseJson;
      case 202:
        throw AcceptedException(responseString);
      case 204:
        throw NoContentException(responseString);
      case 206:
        throw PartialContentException(responseString);
      case 302:
        throw FoundException(responseString);
      case 400:
        throw BadRequestException(response.stream.toString());
      case 401:
        throw UnauthorisedException(response.stream.toString());
      case 403:
        throw ForbiddenException(response.stream.toString());
      case 404:
        throw NotFoundException(response.stream.toString());
      case 406:
        throw NotAcceptableException(responseString);
      case 408:
        throw RequestTimeoutException(responseString);
      case 416:
        throw RequestedRangeNotSatisfiableException(responseString);
      case 500:
        throw InternalServerException(response.stream.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code ${response.statusCode}');
    }
  }

  dynamic returnResponse(http.Response response) {
    final responseString = response.body;
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(responseString);
        return responseJson;
      case 202:
        throw AcceptedException(responseString);
      case 204:
        throw NoContentException(responseString);
      case 206:
        throw PartialContentException(responseString);
      case 302:
        throw FoundException(responseString);
      case 400:
        throw BadRequestException(responseString);
      case 401:
        throw UnauthorisedException(responseString);
      case 403:
        throw ForbiddenException(responseString);
      case 404:
        throw NotFoundException(responseString);
      case 406:
        throw NotAcceptableException(responseString);
      case 408:
        throw RequestTimeoutException(responseString);
      case 416:
        throw RequestedRangeNotSatisfiableException(responseString);
      case 500:
        throw InternalServerException(responseString);
      case 503:
        throw ServiceUnavailableException(responseString);
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code ${response.statusCode}');
    }

  }



}