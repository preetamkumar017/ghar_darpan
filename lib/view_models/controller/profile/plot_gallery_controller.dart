import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/model/profile/plot_gallery_model.dart';
import 'package:ghar_darpan/repository/profile/profile_repository.dart';
import 'package:ghar_darpan/view_models/controller/dashboard/dashboard_controller.dart';

class PlotGalleryController extends GetxController
{

  final _myRepo = ProfileRepository();


  final status = Status.LOADING.obs;
  get getStatus => status.value;
  setLoading(Status value)=>status.value = value;

  RxString error = ''.obs;
  get getError => error.value;
  void setError(String value) => error.value = value;

  RxString date = ''.obs;
  get getDate => date.value;
  void setDate(String value) => date.value = value;

  Rx<PlotGalleryModel> plotGallery = PlotGalleryModel().obs;
  PlotGalleryModel get getPlotGallery => plotGallery.value;
  setPlotGallery(PlotGalleryModel value)=>plotGallery.value=value;

  final dashboard = Get.find<DashboardController>();
  getData()
  {
    setLoading(Status.LOADING);
    Map data = {
      "site_id":dashboard.getSiteId ?? "",
      "date":date.value
    };
    _myRepo.plotGalleryApi(data).then((value) {
      setLoading(Status.COMPLETED);
      debugPrint(value.toJson().toString());
      if(value.code == 200)
      {
        if(value.result!.isEmpty)
          {
            setLoading(Status.EMPTY);
          }else
            {
              setPlotGallery(value);
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