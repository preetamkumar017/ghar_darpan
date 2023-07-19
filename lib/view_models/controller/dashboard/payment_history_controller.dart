import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/model/dashboard/payment_history_model.dart';
import 'package:ghar_darsan/repository/dashboard_repository/dashboard_repository.dart';

class PaymentHistoryController extends GetxController
{
  final _dashboardRepository = DashboardRepository();

  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<PaymentHistoryModel> paymentHistory = PaymentHistoryModel().obs;
  PaymentHistoryModel get getPaymentHistory => paymentHistory.value;
  setPaymentHistory(PaymentHistoryModel value)=>paymentHistory.value=value;


  getData(){
    log("called");
    setLoading(Status.LOADING);
    _dashboardRepository.paymentHistoryApi().then((value) {

      if(value.code == 200)
      {
        setLoading(Status.COMPLETED);
        setPaymentHistory(value);
      }else
        {
          setLoading(Status.EMPTY);
        }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}