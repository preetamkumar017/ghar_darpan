import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/res/components/data_not_found_exception.dart';
import 'package:ghar_darsan/res/components/general_exception.dart';
import 'package:ghar_darsan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import 'package:ghar_darsan/view_models/controller/dashboard/track_progress_controller.dart';
import 'package:ghar_darsan/view_models/services/common_methods.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darsan/model/dashboard/track_progress_model.dart';

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
                      physics: const BouncingScrollPhysics(),
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

                              if(result.pendingAmt == "0")
                                {
                                  color = FlutterFlowTheme.of(context).displayMedium;
                                  paymentStatus = "Paid";
                                }else
                                  {
                                    color = FlutterFlowTheme.of(context).displayLarge;
                                  }

                              return  Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: FlutterFlowTheme.of(context).shadowColour,
                                          offset: const Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
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
                                                      text: result.stageName ?? "" ,
                                                      style: FlutterFlowTheme.of(context).bodyLarge,
                                                    ),
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
                                                      result.runningStatus ?? "",
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
                                                'Start : ${myDateFormat(result.startDate ?? "")}',
                                                style: FlutterFlowTheme.of(context).labelMedium,
                                              ),
                                              Text(
                                                'End : ${myDateFormat(result.endDate ?? "")}',
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
                                              'Total Payable: Rs. ${result.payableAmt ?? ""}',
                                              style: FlutterFlowTheme.of(context).labelMedium,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                            child: Text(
                                              'Pending amount: Rs. ${result.pendingAmt ?? ""}',
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
                                              Text(
                                                'Payment Status: ${paymentStatus}',
                                                style:color,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Map data = {
                                                    'work_tag': result.workTag,
                                                    'stage_details':result.stageDetails,
                                                    'stage_name':result.stageName,
                                                    'remark':result.remark ?? ""
                                                  };
                                                  Get.toNamed(RouteName.moreDetails,arguments: data);
                                                },
                                                child: Text(
                                                  'More Details',
                                                  style: FlutterFlowTheme.of(context).labelSmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                            }
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
