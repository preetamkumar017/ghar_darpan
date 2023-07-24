import 'package:get/get.dart';
import 'package:ghar_darsan/data/response/status.dart';
import 'package:ghar_darsan/res/assets/image_assets.dart';
import 'package:ghar_darsan/res/components/data_not_found_exception.dart';
import 'package:ghar_darsan/res/components/general_exception.dart';
import 'package:ghar_darsan/res/components/internet_exceptions_widget.dart';
import 'package:ghar_darsan/view_models/controller/dashboard/payment_history_controller.dart';
import 'package:ghar_darsan/view_models/services/common_methods.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:ghar_darsan/model/dashboard/payment_history_model.dart';

class PaymentHistoryView extends StatefulWidget {
  const PaymentHistoryView({Key? key}) : super(key: key);

  @override
  _PaymentHistoryViewState createState() =>
      _PaymentHistoryViewState();
}

class _PaymentHistoryViewState extends State<PaymentHistoryView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final paymentHistory = Get.put(PaymentHistoryController());
  @override
  void initState() {
    paymentHistory.getData();
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
                  'Payments History',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                child: Text(
                  'Here you can see every payments you have made till now:',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),

              Expanded(
                child: Obx(() {
                  switch (paymentHistory.getStatus) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.ERROR:
                      if (paymentHistory.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            paymentHistory.getData();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          paymentHistory.getData();
                        });
                      }
                    case Status.EMPTY:
                      if (paymentHistory.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            paymentHistory.getData();
                          },
                        );
                      } else {
                        return DataNotFoundExceptionWidget(onPress: () {
                          paymentHistory.getData();
                        });
                      }
                    case Status.COMPLETED:
                      return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            physics: const BouncingScrollPhysics(),
                            itemCount: paymentHistory.getPaymentHistory.result!.length,
                            itemBuilder: (context, index) {
                              Result result = paymentHistory.getPaymentHistory.result![index];
                              var img = "";
                              var re = "";
                              if(result.receivedAs == "money")
                                {
                                  img = ImageAssets.money;
                                  re = "Money";
                                }else
                                  {
                                    img = ImageAssets.processing;
                                    re = "Material";

                                  }
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              result.stageName ?? "",
                                              style:
                                              FlutterFlowTheme.of(context).bodyLarge,
                                            ),
                                            Text(
                                              'Rs. ${result.paidAmt}',
                                              style:
                                              FlutterFlowTheme.of(context).bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(15, 5, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(0),
                                                  child: Image.asset(
                                                    ImageAssets.redo,
                                                    width: 15,
                                                    height: 15,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                                      5, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Payable: Rs. ${result.payableAmt}',
                                                        style:
                                                        FlutterFlowTheme.of(context)
                                                            .labelMedium,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional
                                                            .fromSTEB(0, 5, 0, 0),
                                                        child: Text(
                                                          'Pending: Rs. ${result.pendingAmt}',
                                                          style:
                                                          FlutterFlowTheme.of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                    ],
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
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                        5, 5, 5, 5),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(0),
                                                      child: Image.asset(
                                                        img,
                                                        width: 15,
                                                        height: 14,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                        5, 5, 5, 5),
                                                    child: Text(
                                                      re,
                                                      style: FlutterFlowTheme.of(context)
                                                          .displaySmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(15, 5, 15, 15),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              myDateFormat(result.createDate ?? ""),
                                              style: FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                            ),
                                            Text(
                                              'Received By: Mountain Men',
                                              style: FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                    default:
                      return const SizedBox();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
