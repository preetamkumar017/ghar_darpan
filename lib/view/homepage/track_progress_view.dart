import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/model/dashboard/track_progress_model.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/flutter_flow/flutter_flow_theme.dart';
import 'package:ghar_darpan/res/assets/image_assets.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/view_models/controller/dashboard_controller/track_progress_controller.dart';
import 'package:ghar_darpan/view_models/services/common_methods.dart';

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
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Text(
                      'Stages for your dream house.',
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

                                         Text("Amount Paid: ${result.totalPaidAmt ?? ""}"),
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
