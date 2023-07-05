import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darpan/repository/dashboard_repository/dashboard_repository.dart';

class DashboardController extends GetxController
{
  final _dashboardRepository = DashboardRepository();

  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<DashboardModel> dashboard = DashboardModel().obs;
  DashboardModel get getDashboard => dashboard.value;
  setDashboard(DashboardModel value)=>dashboard.value=value;

  RxString name =  "".obs;
  get getName => name.value;
  setName(String value) => name.value = value;

  RxString email =  "".obs;
  get getEmail => email.value;
  setEmail(String value)=> email.value = value;

  RxString mobile =  "".obs;
  get getMobile => mobile.value;
  setMobile(String value) => mobile.value = value;

  RxString address =  "".obs;
  get getAddress => address.value;
  setAddress(String value) => address.value = value;


  init()
  {
    log("called");
    setLoading(Status.LOADING);
    _dashboardRepository.dashboardApi().then((value) {
      setLoading(Status.COMPLETED);
      if(value.code == 200)
        {
          setDashboard(value);
          setName(value.clientInfo!.clientName ?? "");
          setEmail(value.clientInfo!.emailId ?? "");
          setMobile(value.clientInfo!.mobileNo ?? "");
          setAddress(value.clientInfo!.permanentAddr ?? "");
        }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}