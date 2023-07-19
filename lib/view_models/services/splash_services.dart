import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import 'package:ghar_darsan/view_models/services/box_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ghar_darsan/model/login/login_result_model.dart';

class SplashServices {

  Future<void> isLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    bool? isLogin =  sharedPreferences.getBool("isLogin");
    log(isLogin.toString());
   if(isLogin==null || !isLogin){
     Timer(const Duration(seconds: 3) ,
             () => Get.offNamed(RouteName.loginView) );
   }else {
     Timer(const Duration(seconds: 3) ,
             () => Get.offNamed(RouteName.homePage) );
   }
  }
  Future<void> makeLogin(ClientLogin? clientLogin) async {
    login.write("isLogin", true);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("id", clientLogin!.id ?? "");
    sharedPreferences.setBool("isLogin", true);
    sharedPreferences.setString("loginId", clientLogin.loginId ?? "");
    sharedPreferences.setString("accessToken", clientLogin.accessToken ?? "");
    sharedPreferences.setString("bookingId", clientLogin.bookingId ?? "");
}
}