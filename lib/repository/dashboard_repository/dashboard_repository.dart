import 'dart:developer';
import 'package:ghar_darpan/data/network/network_api_services.dart';
import 'package:ghar_darpan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darpan/model/dashboard/payment_history_model.dart';
import 'package:ghar_darpan/model/dashboard/team_list_model.dart';
import 'package:ghar_darpan/model/dashboard/track_progress_model.dart';
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
  Future<TrackProgressModel> trackProgressApi() async{
    log("trackProgressApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.trackProgress);
      return response = TrackProgressModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }
  Future<PaymentHistoryModel> paymentHistoryApi() async{
    log("paymentHistoryApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.paymentHistory);
      return response = PaymentHistoryModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }
  Future<TeamListModel> teamListApi() async{
    log("teamListApi");
    try{
      dynamic response = await _apiService.postApi({}, AppUrl.teamList);
      return response = TeamListModel.fromJson(response);
    }catch(e)
    {
      log(e.toString());
      rethrow ;
    }
  }



}