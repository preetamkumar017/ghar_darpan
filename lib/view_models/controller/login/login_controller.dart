import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/repository/login_repository/login_repository.dart';
import 'package:ghar_darpan/utils/utils.dart';
import 'package:ghar_darpan/view_models/services/splash_services.dart';
class LoginController extends GetxController
{
  final _loginRepository = LoginRepository();
  Rx<TextEditingController> userId = TextEditingController().obs;
  get getUserId => userId.value;
  get getUserIdText => userId.value.text;

  Rx<TextEditingController> password = TextEditingController().obs;
  get getPassword => password.value;
  get getPasswordText => password.value.text;

  SplashServices obj = new SplashServices();

  submit()
  {
    Map data  = {
      "login_id":getUserIdText,
      "login_password":getPasswordText,
    };
    _loginRepository.loginApi(data).then((value) {
      if(value.code==200)
        {
          obj.makeLogin(value.clientLogin!);
        }else
          {
            Utils.toastMessage("Something went wrong");
          }
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
    });
  }
}