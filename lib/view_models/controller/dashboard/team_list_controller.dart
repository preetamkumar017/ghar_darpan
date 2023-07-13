import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/dashboard/team_list_model.dart';
import 'package:ghar_darpan/repository/dashboard_repository/dashboard_repository.dart';

class TeamListController extends GetxController
{

  final _dashboardRepository = DashboardRepository();

  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<TeamListModel> teamList = TeamListModel().obs;
  TeamListModel get getTeamList => teamList.value;
  setTeamList(TeamListModel value)=>teamList.value=value;


  getData(){
    log("called");
    setLoading(Status.LOADING);
    _dashboardRepository.teamListApi().then((value) {

      if(value.code == 200)
      {
        setLoading(Status.COMPLETED);
        setTeamList(value);
      }else
      {
        setLoading(Status.EMPTY);
      }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}