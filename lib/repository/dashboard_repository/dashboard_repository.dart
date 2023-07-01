import 'dart:developer';

import 'package:ghar_darpan/data/network/network_api_services.dart';
import 'package:ghar_darpan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darpan/res/app_url/app_url.dart';

class DashboardRepository {

  final _apiService  = NetworkApiServices() ;

  Future<DashboardModel> dashboardApi() async{
    log("dashboardApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.dashboard);
      return response = DashboardModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }



}