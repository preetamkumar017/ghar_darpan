import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/model/dashboard/track_progress_model.dart';
import 'package:ghar_darsan/repository/dashboard_repository/dashboard_repository.dart';

class TrackProgressController extends GetxController
{
  final _dashboardRepository = DashboardRepository();

  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<TrackProgressModel> trackProgress = TrackProgressModel().obs;
  TrackProgressModel get getTrackProgress => trackProgress.value;
  setTrackProgress(TrackProgressModel value)=>trackProgress.value=value;


  getData(){
    log("called");
    setLoading(Status.LOADING);
    _dashboardRepository.trackProgressApi().then((value) {
      setLoading(Status.COMPLETED);
      if(value.code == 200)
      {
        setTrackProgress(value);
      }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });

  }
}