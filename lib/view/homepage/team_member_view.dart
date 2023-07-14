import 'package:cool_alert/cool_alert.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/model/dashboard/team_list_model.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/flutter_flow/flutter_flow_theme.dart';
import 'package:ghar_darpan/res/assets/image_assets.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/view_models/controller/dashboard/team_list_controller.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamMemberView extends StatefulWidget {
  const TeamMemberView({Key? key}) : super(key: key);

  @override
  _TeamMemberViewState createState() => _TeamMemberViewState();
}

class _TeamMemberViewState extends State<TeamMemberView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final teamListController = Get.put(TeamListController());

  @override
  void initState() {
    super.initState();
    teamListController.getData();
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
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back,
          //         color: FlutterFlowTheme.of(context)
          //             .iconSecondary), // Set the back arrow color to black
          //     onPressed: () {
          //       Get.back();
          //     }
          // ),
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
                  'My Team Members',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
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
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Text(
                  'Team Member those who are working in your Site.',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Expanded(
                child: Obx(() {
                  switch (teamListController.getStatus) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.ERROR:
                      if (teamListController.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            teamListController.getData();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          teamListController.getData();
                        });
                      }
                    case Status.EMPTY:
                      if (teamListController.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            teamListController.getData();
                          },
                        );
                      } else {
                        return DataNotFoundExceptionWidget(onPress: () {
                          teamListController.getData();
                        });
                      }
                    case Status.COMPLETED:
                      return   SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: teamListController.getTeamList.result!.length,
                          itemBuilder: (context, index) {
                          Result data =   teamListController.getTeamList.result![index];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: Get.width,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: FlutterFlowTheme.of(context).shadowColour,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Icon(Icons.person,size: 30,color: FlutterFlowTheme.of(context).iconSecondary,),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data.userName ?? "",
                                                  style: FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _launchDialer(data.mobile ?? "");
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                                        0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons.local_phone_outlined,
                                                          color: FlutterFlowTheme.of(context)
                                                              .highlightColour,
                                                          size: 18,
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                              5, 0, 0, 0),
                                                          child: Text(
                                                            data.mobile ?? "",
                                                            style:
                                                            FlutterFlowTheme.of(context)
                                                                .displayMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(context)
                                                      .badgePrimary,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                                child: Text(
                                                 data.designation ?? "",
                                                  style: FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
              )
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _launchDialer(String phoneNumber) async {
    PermissionStatus permissionStatus = await Permission.phone.request();
    if (permissionStatus.isGranted) {
      String number = phoneNumber;
      CoolAlert.show(
        context: context,
        type: CoolAlertType.confirm,
        onConfirmBtnTap: () async {
          await FlutterPhoneDirectCaller.callNumber(number);
        },
        title: number,
        text: 'Do you want to call!',
        loopAnimation: false,
      );
    } else if (permissionStatus.isDenied) {
      print('Permission denied.');
    } else {
      print('Permission not yet asked.');
    }
  }
}
