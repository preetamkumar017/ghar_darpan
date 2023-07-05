import 'package:get/get.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class FacilitiesView extends StatefulWidget {
  const FacilitiesView({Key? key}) : super(key: key);

  @override
  _FacilitiesViewState createState() => _FacilitiesViewState();
}

class _FacilitiesViewState extends State<FacilitiesView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
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
                        Padding(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Swimming Pool',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      'https://picsum.photos/200/2',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Gym',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Pool',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      'https://picsum.photos/200/2',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Gym',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      'https://picsum.photos/200/2',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Gym',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
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
