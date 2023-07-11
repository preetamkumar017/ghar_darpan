import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/view_models/controller/dashboard_controller/track_progress_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/model/dashboard/track_progress_model.dart';

class MyWorkStageView extends StatefulWidget {
  const MyWorkStageView({Key? key}) : super(key: key);

  @override
  _MyWorkStageViewState createState() =>
      _MyWorkStageViewState();
}

class _MyWorkStageViewState
    extends State<MyWorkStageView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final trackProgressController = Get.put(TrackProgressController());

  @override
  void initState() {
    trackProgressController.getData();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor:
          Colors.transparent, // Set the background color to transparent
          elevation: 0, // Remove the elevation
          leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: FlutterFlowTheme.of(context)
                      .iconSecondary), // Set the back arrow color to black
              onPressed: () {
                Get.back();
              }
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'My Work Stage',
                    style: FlutterFlowTheme.of(context).headlineLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Container(
                    width: Get.width * 0.3,
                    height: 2,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).borderPrimary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                  child: Text(
                    'Here you can see every payments of your stages and there details:',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),

                Obx(() {
                  switch (trackProgressController.getStatus) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.ERROR:
                      if (trackProgressController.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            trackProgressController.getData();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          trackProgressController.getData();
                        });
                      }
                    case Status.EMPTY:
                      if (trackProgressController.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            trackProgressController.getData();
                          },
                        );
                      } else {
                        return DataNotFoundExceptionWidget(onPress: () {
                          trackProgressController.getData();
                        });
                      }
                    case Status.COMPLETED:
                      return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                                itemCount: trackProgressController.getTrackProgress.result!.length,
                                itemBuilder: (context, index) {
                                  Result result = trackProgressController.getTrackProgress.result![index];
                                  var color;
                                  var paymentStatus = "Pending...";
                                  if(result.pendingAmt ==0)
                                    {
                                      paymentStatus = "Paid";
                                    }

                                  switch(result.runningStatus)
                                  {
                                    case "Untouched":
                                      color = FlutterFlowTheme.of(context).iconSecondary;
                                      break;
                                    case "Running":
                                      color = FlutterFlowTheme.of(context).iconSecondary;
                                      break;
                                    case "Completed":
                                      color = FlutterFlowTheme.of(context).iconSecondary;
                                      break;
                                    case "Hold":
                                      color = FlutterFlowTheme.of(context).iconSecondary;
                                      break;
                                  }
                                return // Generated code for this Column Widget...
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Excavation ',
                                                    style: FlutterFlowTheme.of(context).bodyLarge,
                                                  ),
                                                  TextSpan(
                                                    text: '(Stage 1)',
                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                  )
                                                ],
                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(context).borderPrimary,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                  child: Text(
                                                    'Completed',
                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Start Date: 01-Jul-2023',
                                              style: FlutterFlowTheme.of(context).labelMedium,
                                            ),
                                            Text(
                                              'End Date: 31-Jul-2023',
                                              style: FlutterFlowTheme.of(context).labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                          child: Text(
                                            'Total Payable: Rs. 450000',
                                            style: FlutterFlowTheme.of(context).labelMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                          child: Text(
                                            'Pending amount: Rs. 0',
                                            style: FlutterFlowTheme.of(context).labelMedium,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: Get.width * 0.2,
                                              height: Get.height * 0.03,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).buttonPrimary,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Paid',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'More Details',
                                              style: FlutterFlowTheme.of(context).labelSmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ;
                              }
                            ),
                          ),
                        );
                    default:
                      return const SizedBox();
                  }
                }),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [

                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Excavation',
                                    style:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                  Text(
                                    'Stage :1',
                                    style:
                                    FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Start: 01-Jul-2023',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                  Text(
                                    'End: 31-Jul-2023',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Total Payable: Rs. 450000',
                                  style:
                                  FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Pending amount: Rs. 0',
                                  style:
                                  FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                    Get.width * 0.2,
                                    height: Get.height *
                                        0.03,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .iconSecondary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Paid',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'More Details',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                      fontFamily: 'Inter',
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Footing',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                    ),
                                    Text(
                                      'Stage :2',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 5, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Start Date: 01-Jul-2023',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                    Text(
                                      'End Date: 31-Jul-2023',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 0, 0),
                                  child: Text(
                                    'Total Payable: Rs. 450000',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 0, 0),
                                  child: Text(
                                    'Pending amount: Rs. 20,000',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 5, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: Get.width *
                                          0.2,
                                      height:
                                      Get.height *
                                          0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .badgePrimary,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: Text(
                                          'Pending',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'More Details',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        fontFamily: 'Inter',
                                        decoration:
                                        TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Slab Casting',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                    ),
                                    Text(
                                      'Stage :3',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 5, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Start Date: 01-Jul-2023',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                    Text(
                                      'End Date: 31-Jul-2023',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 0, 0),
                                  child: Text(
                                    'Total Payable: Rs. 450000',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 0, 0),
                                  child: Text(
                                    'Pending amount: Rs. 20,000',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 5, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: Get.width *
                                          0.2,
                                      height:
                                      Get.height *
                                          0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .labelHoldColour,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: Text(
                                          'Hold',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'More Details',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        fontFamily: 'Inter',
                                        decoration:
                                        TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
