import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/flutter_flow/flutter_flow_theme.dart';
import 'package:ghar_darsan/res/app_url/app_url.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import 'package:ghar_darsan/view_models/controller/profile/client_image_controller.dart';
import 'package:ghar_darsan/view_models/services/common_methods.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class CctvImageView extends StatefulWidget {


  const CctvImageView({Key? key}) : super(key: key);

  @override
  _CctvImageViewState createState() => _CctvImageViewState();
}

class _CctvImageViewState extends State<CctvImageView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  ClientImageController clientImageViewModel = Get.put(ClientImageController());

  @override
  void initState() {
    clientImageViewModel.fetchCctvDetails(context);
    super.initState();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor:
          Colors.transparent, // Set the background color to transparent
          elevation: 0, // Remove the elevation
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: FlutterFlowTheme
                    .of(context)
                    .iconSecondary), // Set the back arrow color to black
            onPressed: () => Get.back(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2030));

                        if (pickedDate != null) {
                          // log(pickedDate.toString());
                          clientImageViewModel.date.value =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          clientImageViewModel.pp.value = [];
                          clientImageViewModel.getData(context);
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).highlightColour,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Obx(() {
                          return Text(
                            clientImageViewModel.date.value,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: ' Images uploaded from ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: 'CCTV Camera',
                          style: FlutterFlowTheme.of(context).displayLarge,
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 20.0, 0.0, 0.0),
                    child: Obx(() {
                      if (clientImageViewModel.pp.isEmpty) {
                        return Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              clientImageViewModel.pp.value = [];
                              clientImageViewModel.getData(context);
                            },
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              enabled: true,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                                child: GridView.builder(
                                  itemCount: 10,
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 0.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.5,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.15,
                                          color: Colors.white,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.5,
                                          height: 10,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        // log(mainController.pp.value.toString());
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          child: RefreshIndicator(
                            onRefresh: () async {
                              clientImageViewModel.pp.value = [];
                              clientImageViewModel.getData(context);
                            },
                            child: GridView.builder(
                              physics: const BouncingScrollPhysics(),
                              padding: EdgeInsets.zero,
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 0.0,
                                childAspectRatio: 1.0,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: clientImageViewModel.pp.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () {


                                        Get.toNamed(RouteName.myImageView,arguments:  "${AppUrl.imageUrl}${clientImageViewModel.folderName}/${clientImageViewModel.dvrIp}/${clientImageViewModel.date}/${clientImageViewModel.pp[index]}");


                                      },
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.15,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          border: Border.all(
                                            width: 3,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(13),
                                          child: Image.network(
                                            '${AppUrl.imageUrl}${clientImageViewModel.folderName}/${clientImageViewModel.dvrIp}/${clientImageViewModel.date}/${clientImageViewModel.pp[index]}',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      getTimeFromFileName(clientImageViewModel.pp[index]),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      }
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
