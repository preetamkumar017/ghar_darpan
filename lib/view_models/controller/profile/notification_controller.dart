
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/model/profile/notification_model.dart';
import 'package:ghar_darsan/repository/profile/profile_repository.dart';

class NotificationController extends GetxController
{
  final _myRepo = ProfileRepository();


  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<NotificationModel> notification = NotificationModel().obs;
  NotificationModel get getNotification => notification.value;
  setNotification(NotificationModel value)=>notification.value=value;

  RxInt no = 0.obs;
  int get getNo => no.value;
  setNo(int value) => no.value=value;

  getData()
  {
    setLoading(Status.LOADING);
    _myRepo.notificationApi().then((value) {
      setLoading(Status.COMPLETED);
      debugPrint(value.toJson().toString());
      if(value.code == 200)
      {
        setNotification(value);
        if(value.notificationData!.isNotEmpty)
          {
            setNo(value.notificationData!.length);
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