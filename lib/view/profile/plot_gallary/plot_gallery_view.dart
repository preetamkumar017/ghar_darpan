import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/flutter_flow/flutter_flow_util.dart';
import 'package:ghar_darsan/res/app_url/app_url.dart';
import 'package:ghar_darsan/res/components/data_not_found_exception.dart';
import 'package:ghar_darsan/res/components/general_exception.dart';
import 'package:ghar_darsan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import 'package:ghar_darsan/view_models/controller/profile/plot_gallery_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlotGalleryView extends StatefulWidget {
  const PlotGalleryView({Key? key}) : super(key: key);

  @override
  _PlotGalleryViewState createState() => _PlotGalleryViewState();
}

class _PlotGalleryViewState extends State<PlotGalleryView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final galleryController = Get.put(PlotGalleryController());

  @override
  void initState() {
    galleryController.getData();
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
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryBackground,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text(
                  'Gallery Of your Plot',
                  style: FlutterFlowTheme
                      .of(context)
                      .headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Container(
                  width: Get.width * 0.3,
                  height: 2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme
                        .of(context)
                        .borderPrimary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                child: Text(
                  'From here you can see gallery of the plot.',
                  style: FlutterFlowTheme
                      .of(context)
                      .labelMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() {
                      return Text(
                        'Today(${galleryController.date.value})',
                        style: FlutterFlowTheme
                            .of(context)
                            .bodyLarge,
                      );
                    }),
                    InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2030));

                        if (pickedDate != null) {
                          // log(pickedDate.toString());
                          galleryController.date.value =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          galleryController.getData();
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: FlutterFlowTheme
                                .of(context)
                                .badgePrimary,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(-0.6, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7, 3, 7, 3),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.calendarDay,
                                  color:
                                  FlutterFlowTheme
                                      .of(context)
                                      .badgePrimary,
                                  size: 18,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'Select Date',
                                    style:
                                    FlutterFlowTheme
                                        .of(context)
                                        .displaySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Obx(() {
                switch (galleryController.getStatus) {
                  case Status.LOADING:
                    return const Center(child: CircularProgressIndicator());
                  case Status.ERROR:
                    if (galleryController.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          galleryController.getData();
                        },
                      );
                    } else {
                      return GeneralExceptionWidget(onPress: () {
                        galleryController.getData();
                      });
                    }
                  case Status.EMPTY:

                      return DataNotFoundExceptionWidget(onPress: () {
                        galleryController.getData();
                      });

                  case Status.COMPLETED:
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 15, 20, 20),
                        child: ListView.builder(
                            shrinkWrap: false,
                            itemCount: galleryController.getPlotGallery.result!.length,
                            itemBuilder:(context, idx)   {

                              // log(galleryController.getPlotGallery.result!.length.toString() ?? "");
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: Get.width,
                                      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        // color: Colors.brown[400],
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Text("Remark:- ${galleryController.getPlotGallery.result![idx].remark ?? ""}",
                                        style: const TextStyle(
                                          // color: Colors.white,
                                            fontSize: 15
                                        ),
                                      )),
                                  GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: galleryController.getPlotGallery.result![idx].imageNames!.length,
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 0.1,
                                      childAspectRatio: 1.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, index) {
                                      // log(galleryController.getPlotGallery.result![idx].imageNames!.length.toString() ?? "");
                                      String data =  galleryController.getPlotGallery.result![idx].imageNames![index];
                                      // log(AppUrl.subMainUrl+"/assets/site_images/manual_upload/"+ data.imageName.toString());
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // Map<String, String> da = {
                                              //   'image':
                                              //   "${AppUrl.subMainUrl}/assets/site_images/manual_upload/$data"
                                              // };
                                              log("message");
                                              Get.toNamed(RouteName.myImageView,arguments:  "${AppUrl.subMainUrl}/assets/site_images/manual_upload/$data");

                                            },
                                            child: Container(
                                              width: MediaQuery.of(context).size.width *
                                                  0.8,
                                              height:
                                              MediaQuery.of(context).size.height *
                                                  0.17,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                border: Border.all(
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(13.0),
                                                child: Image.network(
                                                  "${AppUrl.subMainUrl}/assets/site_images/manual_upload/$data",
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width * 0.7,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height * 0.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // Center(
                                          //   child: Text(
                                          //     data ?? "",
                                          //     style: FlutterFlowTheme.of(context)
                                          //         .labelMedium,
                                          //     overflow: TextOverflow.ellipsis,
                                          //   ),
                                          // ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              );
                            }
                        ),
                      ),
                    );
                  default:
                    return const SizedBox();
                }
              }),

            ],
          ),
        ),
      ),
    );
  }
}
