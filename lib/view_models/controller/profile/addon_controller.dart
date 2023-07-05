import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/profile/addon_model.dart';
import 'package:ghar_darpan/repository/profile/profile_repository.dart';

class AddonController extends GetxController
{
  final _myRepo = ProfileRepository();


  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<AddonModel> addon = AddonModel().obs;
  AddonModel get getAddon => addon.value;
  setAddon(AddonModel value)=>addon.value=value;

  getData()
  {
    setLoading(Status.LOADING);
    _myRepo.addonApi().then((value) {
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