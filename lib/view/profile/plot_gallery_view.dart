import 'dart:developer';

import 'package:get/get.dart';
import 'package:ghar_darpan/data/response/status.dart';
import 'package:ghar_darpan/flutter_flow/flutter_flow_util.dart';
import 'package:ghar_darpan/res/app_url/app_url.dart';
import 'package:ghar_darpan/res/components/data_not_found_exception.dart';
import 'package:ghar_darpan/res/components/general_exception.dart';
import 'package:ghar_darpan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/view_models/controller/profile/plot_gallery_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darpan/model/profile/plot_gallery_model.dart';
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
                    log("No internet");

                      return DataNotFoundExceptionWidget(onPress: () {
                        galleryController.getData();
                      });

                  case Status.COMPLETED:
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 15, 20, 20),
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: galleryController.getPlotGallery.result!
                              .length,
                          itemBuilder: (context, index) {
                            Result result = galleryController.getPlotGallery
                                .result![index];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: Get.width * 0.5,
                                  height: Get.height * 0.2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color:
                                      FlutterFlowTheme
                                          .of(context)
                                          .borderPrimary,
                                      width: 2,
                                    ),
                                  ),
                                  child: InkWell(

                                    onTap: () {
                                      log("message");
                                      Get.toNamed(RouteName.myImageView,arguments:  "${AppUrl.subMainUrl}/assets/site_images/manual_upload/${result.imageName}");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(9),
                                      child: Image.network(
                                        "${AppUrl.subMainUrl}/assets/site_images/manual_upload/${result
                                            .imageName}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    result.imageName ?? "",
                                    style: FlutterFlowTheme
                                        .of(context)
                                        .bodyLarge,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            );
                          },
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
