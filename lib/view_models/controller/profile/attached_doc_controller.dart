import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/profile/attached_doc_model.dart';
import 'package:ghar_darpan/repository/profile/profile_repository.dart';

class AttachDocController extends GetxController
{
  final _myRepo = ProfileRepository();


  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<AttachedDocModel> addon = AttachedDocModel().obs;
  AttachedDocModel get getAddon => addon.value;
  setAddon(AttachedDocModel value)=>addon.value=value;

  getData()
  {
    setLoading(Status.LOADING);
    _myRepo.attachDocApi().then((value) {
      setLoading(Status.COMPLETED);
      debugPrint(value.toJson().toString());
      if(value.code == 200)
      {
        setAddon(value);
      }else
      {
        setLoading(Status.EMPTY);
      }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });
  }
}