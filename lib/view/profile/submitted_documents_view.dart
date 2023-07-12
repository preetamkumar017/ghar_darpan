import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/res/app_url/app_url.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/view_models/controller/profile/attached_doc_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SubmittedDocumentsView extends StatefulWidget {
  const SubmittedDocumentsView({Key? key}) : super(key: key);

  @override
  _SubmittedDocumentsViewState createState() =>
      _SubmittedDocumentsViewState();
}

class _SubmittedDocumentsViewState extends State<SubmittedDocumentsView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final submittedDoc = Get.put(AttachDocController());

  @override
  void initState() {
    submittedDoc.getData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor: Colors.transparent, // Set the background color to transparent
          elevation: 0, // Remove the elevation
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: FlutterFlowTheme.of(context)
                    .iconSecondary), // Set the back arrow color to black
            onPressed: () => Get.back(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'My Submitted Documents',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Container(
                  width: Get.width * 0.5,
                  height: 2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).borderPrimary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Text(
                  'Documents you have submitted while booking',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),

              Obx(() {
                switch (submittedDoc.getStatus) {
                  case Status.LOADING:
                    return const Center(child: CircularProgressIndicator());
                  case Status.ERROR:
                    if (submittedDoc.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          submittedDoc.getData();
                        },
                      );
                    } else {
                      return GeneralExceptionWidget(onPress: () {
                        submittedDoc.getData();
                      });
                    }
                  case Status.EMPTY:
                    if (submittedDoc.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          submittedDoc.getData();
                        },
                      );
                    } else {
                      return DataNotFoundExceptionWidget(onPress: () {
                        submittedDoc.getData();
                      });
                    }
                  case Status.COMPLETED:
                  // Result result = submittedDoc.getFacilities.result!;
                    return
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                          child: GridView(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkAdharCopy == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.adharCopy ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.adharCopy ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Aadhaar Card',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkPancardCopy == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.pancardCopy ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.pancardCopy ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Pan Card',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkElectricBill == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.electricBill ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.electricBill ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Electric Bill',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkRegistryCopy == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.registryCopy ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.registryCopy ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Registry Copy',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkBOneCopy == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.bOneCopy ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.bOneCopy ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'B1 Certificate',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkKhasraMap == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.khasraMap ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.khasraMap ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Khasra Map',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkApprovedTncp == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.approvedTncp ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.approvedTncp ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Approved TNCP',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkTaxReceipt == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.taxReceipt ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.taxReceipt ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Tax Receipt',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: submittedDoc.getAttachDoc.result?.chkAnyOther == "yes",
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.myImageView, arguments: "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.anyOther ?? ""}");
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Get.width * 0.5,
                                        height: Get.height * 0.2,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: FlutterFlowTheme.of(context).shadowColour,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context).borderPrimary,
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(19),
                                          child: Image.network(
                                            "${AppUrl.uploadedFile}${submittedDoc.getAttachDoc.result?.anyOther ?? ""}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Any Other',
                                        style: FlutterFlowTheme.of(context).labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                  default:
                    return const SizedBox();
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
