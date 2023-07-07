import 'package:get/get.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SubmittedDocumentsView extends StatefulWidget {
  const SubmittedDocumentsView({Key? key}) : super(key: key);

  @override
  _SubmittedDocumentsViewState createState() =>
      _SubmittedDocumentsViewState();
}

class _SubmittedDocumentsViewState extends State<SubmittedDocumentsView> {

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
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor: Colors.transparent, // Set the background color to transparent
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
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'My Submitted Documents',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Container(
                  width: Get.width * 0.5,
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
                  'Documents you have submitted while booking',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            height: Get.height * 0.13,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color:
                                  FlutterFlowTheme.of(context).shadowColour,
                                  offset: const Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color:
                                FlutterFlowTheme.of(context).borderPrimary,
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(19),
                              child: Image.network(
                                'https://picsum.photos/seed/759/600',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            'B1 Certificate',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
