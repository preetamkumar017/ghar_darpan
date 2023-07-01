import 'package:get/get.dart';
import 'package:ghar_darpan/res/assets/image_assets.dart';
import 'package:ghar_darpan/view_models/controller/dashboard_controller/dashboard_controller.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final dashData = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();
    dashData.init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, -1),
                          child: Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              ImageAssets.users,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, -1),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kshitija',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                                Text(
                                  'kshitija@gmail.com',
                                  style: FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: Text(
                      'DashBoard',
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
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Stack(
                      alignment: const AlignmentDirectional(1, 0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.98,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color:
                                    FlutterFlowTheme.of(context).shadowColour,
                                    offset: const Offset(5, 4),
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height *
                                          0.05,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .buttonPrimary,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      alignment: const AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Plot Details',
                                              style: FlutterFlowTheme.of(context)
                                                  .headlineSmall,
                                            ),
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.25,
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    0.03,
                                                decoration: BoxDecoration(
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .buttonSecondary,
                                                  borderRadius:
                                                  BorderRadius.circular(2),
                                                ),
                                                child: Align(
                                                  alignment:
                                                  const AlignmentDirectional(0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons.download_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .iconSecondary,
                                                        size: 18,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          'About Plot',
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Project Cost:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: 'Rs. 1,00,000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Add. Cost:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: 'Rs. 50,000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Booking Date: ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: '31 Aug, 2023',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Agreement on: ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: '31 Aug, 2023',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Start Date:  ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                              ),
                                              TextSpan(
                                                text: '28 Aug, 2022',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge,
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'End Date:  ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                              ),
                                              TextSpan(
                                                text: '31 Aug, 2023',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge,
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .badgeSecondary,
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 10),
                                          child: Text(
                                            'Total Cost: 20,00,000',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.82, -0.33),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              ImageAssets.img2,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Stack(
                      alignment: const AlignmentDirectional(1, 0.3),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.98,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color:
                                    FlutterFlowTheme.of(context).shadowColour,
                                    offset: const Offset(5, 4),
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height *
                                          0.05,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .buttonPrimary,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      alignment: const AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Payment Status',
                                              style: FlutterFlowTheme.of(context)
                                                  .headlineSmall,
                                            ),
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.25,
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    0.03,
                                                decoration: BoxDecoration(
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .buttonSecondary,
                                                  borderRadius:
                                                  BorderRadius.circular(2),
                                                ),
                                                child: Align(
                                                  alignment:
                                                  const AlignmentDirectional(0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .label_important_outlined,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .iconSecondary,
                                                        size: 18,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          'Pending',
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Payment Status Summary:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: 'Rs. 1,00,000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Upcoming Payment:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: 'Rs. 20,000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Paid Till Date:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: '28 Aug, 2022',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 20),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Last Payment:  ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                          TextSpan(
                                            text: 'Rs. 50,000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .badgeSecondary,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          'Any Dues Left: Rs. 10,00,000',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.76, 0.19),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              ImageAssets.img2,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: const AlignmentDirectional(1, 1),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.98,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color:
                                  FlutterFlowTheme.of(context).shadowColour,
                                  offset: const Offset(5, 4),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.05,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .buttonPrimary,
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        alignment: const AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Running Stage',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall,
                                              ),
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(2),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.25,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                      0.03,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .buttonSecondary,
                                                    borderRadius:
                                                    BorderRadius.circular(2),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                    const AlignmentDirectional(
                                                        0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              5, 0, 0, 0),
                                                          child: Text(
                                                            'Stage 20',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Start Date:  ',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                                ),
                                                TextSpan(
                                                  text: '05 Nov, 2022',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'End Date:  ',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                                ),
                                                TextSpan(
                                                  text: '31 Nov,2022',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Payment:  ',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                                ),
                                                TextSpan(
                                                  text: 'Rs. 20,000',
                                                  style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.03,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context)
                                                  .buttonPrimary,
                                              borderRadius:
                                              BorderRadius.circular(2),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.03,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .buttonPrimary,
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.3,
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    0.03,
                                                decoration: BoxDecoration(
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .buttonPrimary,
                                                  borderRadius:
                                                  BorderRadius.circular(2),
                                                ),
                                                child: Align(
                                                  alignment:
                                                  const AlignmentDirectional(0, 0),
                                                  child: Text(
                                                    'Payment Done',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 20),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.495,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'Due to pending in the last transaction.',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
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
                      Align(
                        alignment: const AlignmentDirectional(0.95, 1.04),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            ImageAssets.img1,
                            width: 65,
                            height: 65,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.98,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).buttonPrimary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: FlutterFlowTheme.of(context).shadowColour,
                              offset: const Offset(5, 4),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Want to see Attachment?',
                                    style:
                                    FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .badgePrimary,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'See Details',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
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
                  ),
                ],
              ),
            ),
            Obx(() {
              return Visibility(
                visible: dashData.getLoading,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  color: Colors.white60,
                  child: const Center(child: CircularProgressIndicator()),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}