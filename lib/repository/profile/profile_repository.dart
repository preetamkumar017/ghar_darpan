
import 'dart:developer';

import 'package:ghar_darpan/data/network/network_api_services.dart';
import 'package:ghar_darpan/model/profile/addon_model.dart';
import 'package:ghar_darpan/res/app_url/app_url.dart';

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

  Future<AddonModel> facilityApi() async{
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



}