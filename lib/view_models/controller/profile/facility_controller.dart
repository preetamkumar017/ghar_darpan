
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/profile/facility_model.dart';
import 'package:ghar_darpan/repository/profile/profile_repository.dart';

class FacilityController extends GetxController
{
  final _myRepo = ProfileRepository();


  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  Rx<FacilityModel> facilities = FacilityModel().obs;
  FacilityModel get getFacilities => facilities.value;
  setFacilities(FacilityModel value)=>facilities.value=value;

  getData()
  {
    setLoading(Status.LOADING);
    _myRepo.facilityApi().then((value) {
      setLoading(Status.COMPLETED);
      debugPrint(value.toJson().toString());
      if(value.code == 200)
      {
        setFacilities(value);

      }else
      {
        setLoading(Status.EMPTY);
      }
    }).onError((error, stackTrace){
      setLoading(Status.ERROR);
    });
  }
}