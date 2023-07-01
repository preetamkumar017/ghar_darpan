import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darpan/model/dashboard/dashboard_model.dart';
import 'package:ghar_darpan/repository/dashboard_repository/dashboard_repository.dart';

class DashboardController extends GetxController
{
  final _dashboardRepository = DashboardRepository();

  RxBool loading = false.obs;
  get getLoading => loading.value;
  setLoading(bool value)=>loading.value = value;



  Rx<DashboardModel> dashboard = DashboardModel().obs;
  get getDashboard => dashboard.value;
  setDashboard(DashboardModel value)=>dashboard.value=value;

  init()
  {
    log("called");
    setLoading(true);
    _dashboardRepository.dashboardApi().then((value) {

      setLoading(false);
      if(value.code == 200)
        {
          setDashboard(value);
        }
    }).onError((error, stackTrace){
      setLoading(false);
    });

  }
}