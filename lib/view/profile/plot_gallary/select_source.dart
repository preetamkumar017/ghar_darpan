import 'package:get/get.dart';
import 'package:ghar_darsan/res/assets/image_assets.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SelectSourceView extends StatefulWidget {
  const SelectSourceView({Key? key}) : super(key: key);

  @override
  _SelectSourceViewState createState() => _SelectSourceViewState();
}

class _SelectSourceViewState extends State<SelectSourceView> {
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
    return Scaffold(
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
              child: Text(
                'Source of the',
                style: FlutterFlowTheme.of(context).headlineLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.2,
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
                'Select the Source of the images.',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.plotGallery);
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.32,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: FlutterFlowTheme.of(context).shadowColour,
                            offset: const Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).borderPrimary,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Image.asset(
                                ImageAssets.manualUpload,
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Text(
                              'Manual Uploaded  Images',
                              style: FlutterFlowTheme.of(context).headlineLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.cctvImageView);
                    },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.32,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: FlutterFlowTheme.of(context).shadowColour,
                            offset: const Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).borderPrimary,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Image.asset(
                                ImageAssets.cctvUpload,
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Text(
                              'CCTV Image upload',
                              style: FlutterFlowTheme.of(context).headlineLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
