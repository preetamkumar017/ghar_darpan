import 'dart:async';
import 'package:get/get.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/view_models/services/box_storage.dart';

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
}