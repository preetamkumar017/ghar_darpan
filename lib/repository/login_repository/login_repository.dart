import 'package:ghar_darsan/data/network/network_api_services.dart';
import 'package:ghar_darsan/model/login/login_result_model.dart';
import 'package:ghar_darsan/res/app_url/app_url.dart';

class LoginRepository {

  final _apiService  = NetworkApiServices() ;

  Future<LoginResultModel> loginApi(Map data) async{
    try{
      dynamic response = await _apiService.postApi(data, AppUrl.login);
      return response = LoginResultModel.fromJson(response);
    }catch(e)
    {
    rethrow ;
    }
  }



}