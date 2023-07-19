
import 'dart:developer';

import 'package:ghar_darsan/data/network/network_api_services.dart';
import 'package:ghar_darsan/model/profile/addon_model.dart';
import 'package:ghar_darsan/model/profile/attached_doc_model.dart';
import 'package:ghar_darsan/model/profile/facility_model.dart';
import 'package:ghar_darsan/model/profile/notification_model.dart';
import 'package:ghar_darsan/model/profile/plot_gallery_model.dart';
import 'package:ghar_darsan/res/app_url/app_url.dart';

class ProfileRepository {

  final _apiService  = NetworkApiServices() ;

  Future<AddonModel> addonApi() async{
    log("addonApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.addonView);
      return response = AddonModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }

  Future<FacilityModel> facilityApi() async{
    log("addonApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.facilityView);
      return response = FacilityModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }

  Future<AttachedDocModel> attachDocApi() async{
    log("attachDocApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.attachDoc);
      return response = AttachedDocModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }
  Future<PlotGalleryModel> plotGalleryApi(Map data) async{
    log("attachDocApi");
    try{
      dynamic response = await _apiService.postApiWithoutJson(data, AppUrl.plotGallery);
      return response = PlotGalleryModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }

  Future<NotificationModel> notificationApi() async{
    log("attachDocApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.notification);
      return response = NotificationModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }



}