import 'package:get/get.dart';
import 'package:ghar_darpan/res/assets/image_assets.dart';
import 'package:ghar_darpan/view_models/controller/login/login_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginController = Get.put(LoginController());


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
      backgroundColor: FlutterFlowTheme
          .of(context)
          .primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          child: Stack(
            children: [
              Form(
                key: loginController.getFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 30,
                      decoration: const BoxDecoration(),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          ImageAssets.login,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.85,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'See your ',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .headlineLarge,
                              ),
                              TextSpan(
                                text: 'DREAM HOUSE PROGRESS ',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .titleSmall,
                              ),
                              const TextSpan(
                                text: '\nin some Simple Steps',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme
                                .of(context)
                                .headlineLarge,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20, 40, 0, 0),
                      child: Text(
                        'User Name ',
                        style: FlutterFlowTheme
                            .of(context)
                            .headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20, 10, 20, 0),
                      child: TextFormField(
                        controller: loginController.getUserId,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .headlineMedium,
                          hintText: 'Enter User Name',
                          hintStyle: FlutterFlowTheme
                              .of(context)
                              .headlineMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .info,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .borderPrimary,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .error,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .error,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme
                              .of(context)
                              .buttonSecondary,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 0, 0),
                        ),
                        style: FlutterFlowTheme
                            .of(context)
                            .headlineMedium,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Username is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20, 20, 0, 0),
                      child: Text(
                        'Password',
                        style: FlutterFlowTheme
                            .of(context)
                            .headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20, 10, 20, 0),
                      child: Obx(() {
                        return TextFormField(
                          controller: loginController.getPassword,
                          obscureText: loginController.getObscureText,
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                loginController.setObscureText(
                                    !loginController.getObscureText);
                              },
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                !loginController.getObscureText
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: FlutterFlowTheme
                                    .of(context)
                                    .iconSecondary,
                                size: 22,
                              ),
                            ),
                            labelStyle: FlutterFlowTheme
                                .of(context)
                                .headlineMedium,
                            hintText: 'Enter Password',
                            hintStyle: FlutterFlowTheme
                                .of(context)
                                .headlineMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .info,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .borderPrimary,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .error,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .error,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme
                                .of(context)
                                .buttonSecondary,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                          ),
                          style: FlutterFlowTheme
                              .of(context)
                              .headlineMedium,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        );
                      }),
                    ),
                    InkWell(
                      onTap:() =>  loginController.submit(context),
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 40, 20, 0),
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.9,
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.06,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .buttonPrimary,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .shadowColour,
                                  offset: const Offset(5, 4),
                                )
                              ],
                            ),
                            alignment: const AlignmentDirectional(0, 0),
                            child: Text(
                              'Click For Successful login',
                              style: FlutterFlowTheme
                                  .of(context)
                                  .titleMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return Visibility(
                  visible: loginController.getLoading,
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    color: Colors.white60,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
