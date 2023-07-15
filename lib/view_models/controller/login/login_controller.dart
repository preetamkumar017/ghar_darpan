import 'dart:developer';
import 'package:cool_alert/cool_alert.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/repository/login_repository/login_repository.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/utils/utils.dart';
import 'package:ghar_darpan/view_models/services/splash_services.dart';
class LoginController extends GetxController
{
  final _loginRepository = LoginRepository();


  Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;
  get getFormKey => formKey.value;

  Rx<TextEditingController> userId = TextEditingController().obs;
  get getUserId => userId.value;
  get getUserIdText => userId.value.text;

  Rx<TextEditingController> password = TextEditingController().obs;
  get getPassword => password.value;
  get getPasswordText => password.value.text;

  RxBool obscureText = true.obs;
  get getObscureText => obscureText.value;
  setObscureText(bool value)=>obscureText.value = value;

  RxBool loading = false.obs;
  get getLoading => loading.value;
  setLoading(bool value)=>loading.value = value;



  SplashServices obj = SplashServices();

  submit(context)
  {
    setLoading(true);
    log("Called");
    if (getFormKey.currentState.validate()) {
      Map data = {
        "login_id": getUserIdText,
        "login_password": getPasswordText,
      };
      log(data.toString());
      _loginRepository.loginApi(data).then((value) async {
        setLoading(false);
        if (value.code == 200) {
          obj.makeLogin(value.clientLogin!);
        await CoolAlert.show(
            context: context,
            type: CoolAlertType.success,
            text: "Login successful!",
          );
          Get.toNamed(RouteName.homePage);
          Utils.toastMessage("Login SuccessFull");

        } else
        {
         await CoolAlert.show(
            context: context,
            type: CoolAlertType.error,
            text: "Login id or password incorrect",
          );
          Utils.toastMessage("Login Attempted Failed");
        }
      }).onError((error, stackTrace) {
        debugPrint(error.toString());
      });
    }
    setLoading(false);
  }
}