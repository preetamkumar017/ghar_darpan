import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/res/components/data_not_found_exception.dart';
import 'package:ghar_darsan/res/components/general_exception.dart';
import 'package:ghar_darsan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darsan/view_models/controller/profile/facility_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darsan/model/profile/facility_model.dart';

class FacilitiesView extends StatefulWidget {
  const FacilitiesView({Key? key}) : super(key: key);

  @override
  _FacilitiesViewState createState() => _FacilitiesViewState();
}

class _FacilitiesViewState extends State<FacilitiesView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final facilities = Get.put(FacilityController());

  @override
  void initState() {
    super.initState();
    facilities.getData();
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
            onPressed: () => Get.back(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: Get.width,
            height: Get.height * 0.95,
            decoration: const BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Facilities',
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
                      'Facilities to Kshitija by U K Concept Designer',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Wrap(
                      // spacing: 20.0,
                      alignment: WrapAlignment.start,
                      children: [

                        Obx(() {
                          switch (facilities.getStatus) {
                            case Status.LOADING:
                              return const Center(child: CircularProgressIndicator());
                            case Status.ERROR:
                              if (facilities.error.value == 'No internet') {
                                return InterNetExceptionWidget(
                                  onPress: () {
                                    facilities.getData();
                                  },
                                );
                              } else {
                                return GeneralExceptionWidget(onPress: () {
                                  facilities.getData();
                                });
                              }
                            case Status.EMPTY:
                              if (facilities.error.value == 'No internet') {
                                return InterNetExceptionWidget(
                                  onPress: () {
                                    facilities.getData();
                                  },
                                );
                              } else {
                                return DataNotFoundExceptionWidget(onPress: () {
                                  facilities.getData();
                                });
                              }
                            case Status.COMPLETED:
                              // Result result = facilities.getFacilities.result!;
                              return Wrap(
                                children: List.generate(
                                    facilities.getFacilities.result!.length,
                                        (index) {

                                          Result result = facilities.getFacilities.result![index];
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
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
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                                      10, 10, 10, 10),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      // ClipRRect(
                                                      //   borderRadius: BorderRadius.circular(0),
                                                      //   child: Image.network(
                                                      //     result.facilityImg ?? "",
                                                      //     width: 30,
                                                      //     height: 30,
                                                      //     fit: BoxFit.cover,
                                                      //     errorBuilder: (context, error, stackTrace) {
                                                      //       return Image.network("https://source.unsplash.com/random",
                                                      //         width: 30,
                                                      //         height: 30,);
                                                      //     },
                                                      //   ),
                                                      // ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                            0, 0, 0, 0),
                                                        child: Text(
                                                          result.name ?? "",
                                                          style: FlutterFlowTheme.of(context)
                                                              .labelSmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                        }),
                              );
                            default:
                              return const SizedBox();
                          }
                        }),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Flexible(
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             color: FlutterFlowTheme.of(context)
                  //                 .secondaryBackground,
                  //             boxShadow: const [
                  //               BoxShadow(
                  //                 blurRadius: 4,
                  //                 color: Color(0x33000000),
                  //                 offset: Offset(0, 2),
                  //               )
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsetsDirectional.fromSTEB(
                  //                 10, 10, 10, 10),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                   child: Image.asset(
                  //                     'assets/images/facial-treatment.png',
                  //                     width: 30,
                  //                     height: 30,
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: const EdgeInsetsDirectional.fromSTEB(
                  //                       10, 0, 0, 0),
                  //                   child: Text(
                  //                     'Spa',
                  //                     style: FlutterFlowTheme.of(context)
                  //                         .labelSmall,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Flexible(
                  //         child: Padding(
                  //           padding:
                  //           const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               color: FlutterFlowTheme.of(context)
                  //                   .secondaryBackground,
                  //               boxShadow: const [
                  //                 BoxShadow(
                  //                   blurRadius: 4,
                  //                   color: Color(0x33000000),
                  //                   offset: Offset(0, 2),
                  //                 )
                  //               ],
                  //               borderRadius: BorderRadius.circular(10),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsetsDirectional.fromSTEB(
                  //                   10, 10, 10, 10),
                  //               child: Row(
                  //                 mainAxisSize: MainAxisSize.min,
                  //                 children: [
                  //                   ClipRRect(
                  //                     borderRadius: BorderRadius.circular(0),
                  //                     child: Image.asset(
                  //                       'assets/images/theater.png',
                  //                       width: 30,
                  //                       height: 30,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsetsDirectional.fromSTEB(
                  //                         10, 0, 0, 0),
                  //                     child: Text(
                  //                       'Mini theater',
                  //                       style: FlutterFlowTheme.of(context)
                  //                           .labelSmall,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Flexible(
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             color: FlutterFlowTheme.of(context)
                  //                 .secondaryBackground,
                  //             boxShadow: const [
                  //               BoxShadow(
                  //                 blurRadius: 4,
                  //                 color: Color(0x33000000),
                  //                 offset: Offset(0, 2),
                  //               )
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsetsDirectional.fromSTEB(
                  //                 10, 10, 10, 10),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                   child: Image.asset(
                  //                     'assets/images/cocktail.png',
                  //                     width: 30,
                  //                     height: 30,
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: const EdgeInsetsDirectional.fromSTEB(
                  //                       10, 0, 0, 0),
                  //                   child: Text(
                  //                     'Bar',
                  //                     style: FlutterFlowTheme.of(context)
                  //                         .labelSmall,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Flexible(
                  //         child: Padding(
                  //           padding:
                  //           const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               color: FlutterFlowTheme.of(context)
                  //                   .secondaryBackground,
                  //               boxShadow: const [
                  //                 BoxShadow(
                  //                   blurRadius: 4,
                  //                   color: Color(0x33000000),
                  //                   offset: Offset(0, 2),
                  //                 )
                  //               ],
                  //               borderRadius: BorderRadius.circular(10),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsetsDirectional.fromSTEB(
                  //                   10, 10, 10, 10),
                  //               child: Row(
                  //                 mainAxisSize: MainAxisSize.min,
                  //                 children: [
                  //                   ClipRRect(
                  //                     borderRadius: BorderRadius.circular(0),
                  //                     child: Image.asset(
                  //                       'assets/images/plant.png',
                  //                       width: 30,
                  //                       height: 30,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                   Padding(
                  //                     padding: const EdgeInsetsDirectional.fromSTEB(
                  //                         10, 0, 0, 0),
                  //                     child: Text(
                  //                       'Gardening',
                  //                       style: FlutterFlowTheme.of(context)
                  //                           .labelSmall,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
