import 'dart:convert';
import 'dart:developer';

import 'package:cool_alert/cool_alert.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darsan/repository/dashboard_repository/dashboard_repository.dart';
import 'package:ghar_darsan/view_models/services/common_methods.dart';

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

  RxString calcId =  "".obs;
  get getCalId => calcId.value;
  setCalId(String value) => calcId.value = value;

  RxString bookingId =  "".obs;
  get getBookingId => bookingId.value;
  setBookingId(String value) => bookingId.value = value;

  RxString address =  "".obs;
  get getAddress {
    if(address.value!="") {
     return jsonDecode(address.value);
    }else
      {
        return jsonDecode("{\"p_hno\":\"\",\"p_street\":\"\",\"p_landmark\":\"\",\"p_city\":\"\",\"p_state\":\"\",\"p_pincode\":\"\"}") ;
      }
  }
  setAddress(String value) => address.value = value;


  void getData(context)
  {
    log("called");
    setLoading(Status.LOADING);
    _dashboardRepository.dashboardApi().then((value) {
      log(value.toJson().toString());
      setLoading(Status.COMPLETED);
      if(value.code == 200)
        {
          setDashboard(value);
          setName(value.clientInfo!.clientName ?? "");
          setEmail(value.clientInfo!.emailId ?? "");
          setMobile(value.clientInfo!.mobileNo ?? "");
          setAddress(value.clientInfo!.permanentAddr ?? "");
          setSiteId(value.clientInfo!.siteId ?? "");
          setCalId(value.clientInfo!.calcId ?? "");
          setBookingId(value.clientInfo!.bookingId ?? "");

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
        }else
          {
            setLoading(Status.EMPTY);
          }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}