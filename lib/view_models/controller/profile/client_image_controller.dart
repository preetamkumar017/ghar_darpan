import 'dart:developer';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ftpconnect/ftpconnect.dart';
import 'package:ftpconnect/src/ftp_entry.dart';
import 'package:ghar_darsan/data/response/api_response.dart';
import 'package:ghar_darsan/repository/profile/profile_repository.dart';
import 'package:ghar_darsan/utils/utils.dart';
import 'package:intl/intl.dart';

class ClientImageController extends GetxController {
  final _myRepo = ProfileRepository();
  Rx<ApiResponse> cctvDetails = ApiResponse.loading().obs;


  RxString folderName = "".obs;
  RxString dvrIp = "".obs;
  RxString date = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;
  RxList<String> pp = <String>[].obs;
  RxList<FTPEntry> aa = <FTPEntry>[].obs;
  RxString imageName = "".obs;

  setCctvDetails(ctvDetails) => cctvDetails.value = ctvDetails;

  Future<void> fetchCctvDetails(context) async {
    setCctvDetails(ApiResponse.loading());
    _myRepo.fetchCctvDetails().then((value) {
      if (value.code == 200)
      {
        setCctvDetails(ApiResponse.completed(value));
        folderName.value = cctvDetails.value.data!.result!.folderName ?? "";
        dvrIp.value = cctvDetails.value.data!.result!.dvrIp ?? "";
        getData(context);
      } else {
        Utils.toastMessage("Something Went Wrong");
      }
    }).onError((error, stackTrace) {
      setCctvDetails(ApiResponse.error(error.toString()));
      Utils.toastMessage(error.toString());
      debugPrint(error.toString());
    });
  }

  Future<void> getData(BuildContext context) async {
    _myRepo.ftpDetails().then((value) async {
      if(value.code == 200)
        {

        String host =  value.result!.ftpHost ?? "";
        String user =  value.result!.ftpUser ?? "";
        String pass =  value.result!.ftpPass ?? "";
        Rx<FTPConnect> ftpConnect =  FTPConnect(host,user: user, pass: pass).obs;

        try {
            await ftpConnect.value.connect();
            bool exist = await ftpConnect.value.checkFolderExistence("${folderName.value}/${dvrIp.value}/${date.value}");
            log(exist.toString());
            log("${folderName.value}/${dvrIp.value}/${date.value}");
            if (exist) {
              await ftpConnect.value.changeDirectory(
                  "${folderName.value}/${dvrIp.value}/${date.value}");
              aa.value = await ftpConnect.value.listDirectoryContent();

              aa.sort((a, b) => b.modifyTime!.compareTo(a.modifyTime!));
              pp.clear();
              for (FTPEntry entry in aa) {
                String name = entry.name;
                pp.add(name);
              }

              pp.value = pp
                  .where(
                      (item) => item != '.' && item != '..' && item.endsWith('.jpg'))
                  .toList();
              // log(pp.toString());
              // log("${folderName.value}/${dvrIp.value}/${date.value}");
            } else {
              CoolAlert.show(
                context: context,
                type: CoolAlertType.info,
                text: "Please change date for images!",
                title: "Images not available",
              );
            }
          } catch (e) {
            log(e.toString());
            CoolAlert.show(
              context: context,
              type: CoolAlertType.info,
              text: "Please change date for images!"+e.toString(),
              title: "Images not available",
            );
          }

        ftpConnect.value.disconnect();
        }

    }).onError((error, stackTrace) {

    });



  }
}
