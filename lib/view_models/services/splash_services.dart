import 'dart:async';
import 'package:get/get.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/view_models/services/box_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ghar_darpan/model/login/login_result_model.dart';

class SplashServices {

  void isLogin(){
   bool? isLogin =  login.read("isLogin");
   if(isLogin==null || !isLogin){
     Timer(const Duration(seconds: 3) ,
             () => Get.toNamed(RouteName.preLoginView) );
   }else {
     Timer(const Duration(seconds: 3) ,
             () => Get.toNamed(RouteName.dashboardView) );
   }
  }
  Future<void> makeLogin(ClientLogin? clientLogin) async {
    login.write("isLogin", true);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("id", clientLogin!.id ?? "");
    sharedPreferences.setString("loginId", clientLogin.loginId ?? "");
    sharedPreferences.setString("accessToken", clientLogin.accessToken ?? "");
    sharedPreferences.setString("bookingId", clientLogin.bookingId ?? "");
}
}