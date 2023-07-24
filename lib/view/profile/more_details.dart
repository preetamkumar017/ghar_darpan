import 'package:get/get.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({Key? key}) : super(key: key);

  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  Map data = {};
  List<String> listItems = [];

  @override
  void initState() {
    super.initState();
    data = Get.arguments;
    if(data['work_tag'] != "")
    {
      listItems = data['work_tag'].toString().split(",");
    }
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
            child: Text(
              data['stage_name'],
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
            padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
            child: Text(
              'Work Tag about Plinth.',
              style: FlutterFlowTheme.of(context).headlineMedium,
            ),
          ),


          Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
            child: Wrap(
              children:List.generate(

                  listItems.length,
                      (index) {
                  return Container(
                    margin: const EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                    decoration: BoxDecoration(
                      color:
                      FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: FlutterFlowTheme.of(context).borderPrimary,
                          offset: const Offset(0, 0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                      child: Text(
                        listItems[index],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
            child: Text(
              'Description:',
              style: FlutterFlowTheme.of(context).headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 20),
            child: Text(
            data['stage_details'],
             style: FlutterFlowTheme.of(context).labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
