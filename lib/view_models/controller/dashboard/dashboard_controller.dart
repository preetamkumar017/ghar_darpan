import 'dart:convert';
import 'dart:developer';

import 'package:cool_alert/cool_alert.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darpan/repository/dashboard_repository/dashboard_repository.dart';
import 'package:ghar_darpan/view_models/services/common_methods.dart';

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

  RxString siteId =  "".obs;
  get getSiteId => siteId.value;
  setSiteId(String value) => siteId.value = value;

  RxString address =  "".obs;
  get getAddress => jsonDecode(address.value);
  setAddress(String value) => address.value = value;


  init(context)
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
          setSiteId(value.clientInfo!.siteId ?? "");

          if(value.isDue ?? false)
            {
              for (var element in value.notification!) {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  // text: element.pendingAmt,
                  title: "Upcoming  Payment ${element.pendingAmt ?? ""}/-",
                  text: "Your Next Payment  Date is ${myDateFormat(element.payableDate ?? "")}",
                );
              }
            }
        }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}