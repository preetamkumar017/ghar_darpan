import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/model/dashboard/track_progress_model.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/flutter_flow/flutter_flow_theme.dart';
import 'package:ghar_darsan/res/assets/image_assets.dart';
import 'package:ghar_darsan/res/components/data_not_found_exception.dart';
import 'package:ghar_darsan/res/components/general_exception.dart';
import 'package:ghar_darsan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darsan/view_models/controller/dashboard/track_progress_controller.dart';
import 'package:ghar_darsan/view_models/services/common_methods.dart';

class TrackProgressView extends StatefulWidget {
  const TrackProgressView({Key? key}) : super(key: key);

  @override
  State<TrackProgressView> createState() => _TrackProgressViewState();
}

class _TrackProgressViewState extends State<TrackProgressView> {
  final trackProgressController = Get.put(TrackProgressController());

  @override
  void initState() {
    trackProgressController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        // toolbarHeight: 35,
        backgroundColor:
        Colors.transparent, // Set the background color to transparent
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'My Stages',
                      style: FlutterFlowTheme.of(context).headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: 70,
                      height: 2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).borderPrimary,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                    child: Text(
                      'Stages for your dream house.',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    decoration: BoxDecoration(
                      // color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).indexgreencompleted,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Text(
                                    'Completed',
                                    style: FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).indexhold,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Text(
                                    'Hold',
                                    style: FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).indexrunning,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Text(
                                    'Running',
                                    style: FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).indexuntouched,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Text(
                                    'Untouched',
                                    style: FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                        return   SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: trackProgressController.getTrackProgress.result!.length,
                            itemBuilder: (context, index) {
                              Result result = trackProgressController.getTrackProgress.result![index];
                              var image;
                              switch(result.runningStatus)
                              {
                                case "Untouched":
                                  image =ImageAssets.untouched;
                                  break;
                                case "Running":
                                  image =ImageAssets.running;
                                  break;
                                case "Completed":
                                  image =ImageAssets.completed;
                                  break;
                                case "Hold":
                                  image =ImageAssets.hold;
                                  break;
                              }
                              return  ExpansionTile(title:  Text(result.stageName ?? ""),
                                leading: Image.asset(image),
                                children: [
                                  ListTile(
                                    leading: Image.asset(image),
                                    title: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:   [
                                            Text("Start: ${myDateFormat(result.startDate ?? "")}"),
                                            Text("End: ${myDateFormat(result.endDate ?? "")}"),
                                          ],
                                        ),

                                         Text("Amount Paid: "+(int.parse(result.payableAmt ?? "0") - int.parse(result.pendingAmt ?? "0")).toString()),
                                      ],
                                    ),),
                                ],);
                            },),
                        );
                      default:
                        return const SizedBox();
                    }
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
