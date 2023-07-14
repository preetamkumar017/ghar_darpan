import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/view_models/controller/profile/notification_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/model/profile/notification_model.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final notificationController = Get.put(NotificationController());

  @override
  void initState() {
    notificationController.getData();
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
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryBackground,
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor:
          Colors.transparent, // Set the background color to transparent
          elevation: 0, // Remove the elevation
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: FlutterFlowTheme
                    .of(context)
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
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text(
                  'Notification',
                  style: FlutterFlowTheme
                      .of(context)
                      .headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Container(
                  width: Get.width * 0.2,
                  height: 2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme
                        .of(context)
                        .borderPrimary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notification  you  received:',
                      style: FlutterFlowTheme
                          .of(context)
                          .labelMedium,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme
                            .of(context)
                            .badgePrimary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(7, 7, 7,
                              7),
                          child: Obx(() {
                            return Text(
                              '${notificationController.getNo} New Message',
                              style: FlutterFlowTheme
                                  .of(context)
                                  .bodyMedium,
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                switch (notificationController.getStatus) {
                  case Status.LOADING:
                    return const Center(child: CircularProgressIndicator());
                  case Status.ERROR:
                    if (notificationController.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          notificationController.getData();
                        },
                      );
                    } else {
                      return GeneralExceptionWidget(onPress: () {
                        notificationController.getData();
                      });
                    }
                  case Status.EMPTY:
                    if (notificationController.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          notificationController.getData();
                        },
                      );
                    } else {
                      return DataNotFoundExceptionWidget(onPress: () {
                        notificationController.getData();
                      });
                    }
                  case Status.COMPLETED:
                  // Result result = submittedDoc.getFacilities.result!;
                    return SingleChildScrollView(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: notificationController.getNotification
                            .notificationData!.length,
                        itemBuilder: (context, index) {
                          NotificationData data = notificationController
                              .getNotification.notificationData![index];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 5, 0, 0),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color:
                                FlutterFlowTheme
                                    .of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .shadowColour,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.check,
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .iconSecondary,
                                          size: 24,
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
                                              15, 0, 0, 0),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Payment done for ',
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: 'Brick Casting',
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .displayMedium,
                                                )
                                              ],
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                    );
                  default:
                    return const SizedBox();
                }
              }),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .iconSecondary,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment done for ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Brick Casting',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.warning_rounded,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .warning,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment For ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Label Cating ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          ),
                                          TextSpan(
                                            text: 'is pending',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .error,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment Not Yet done for ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Footing',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .iconSecondary,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment done for ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Brick Casting',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.warning_rounded,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .warning,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment For ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Label Cating ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          ),
                                          TextSpan(
                                            text: 'is pending',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .error,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment Not Yet done for ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Footing',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .iconSecondary,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment done for ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Brick Casting',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Container(
                        width: Get.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme
                                  .of(context)
                                  .shadowColour,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0,
                              20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.warning_rounded,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .warning,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        15, 0, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment For ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          ),
                                          TextSpan(
                                            text: 'Label Cating ',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .displayMedium,
                                          ),
                                          TextSpan(
                                            text: 'is pending',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
