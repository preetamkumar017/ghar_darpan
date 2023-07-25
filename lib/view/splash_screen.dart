import 'package:ghar_darsan/view_models/services/splash_services.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin();
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/splash.gif',
                  width: MediaQuery.sizeOf(context).width*0.8,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Client Portal',
                  style: FlutterFlowTheme.of(context).titleSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'See your Dream House Full Analytic',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.4,
                decoration: const BoxDecoration(),
              ),
              Text(
                'Powered By',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Text(
                  'UK Concept Designer',
                  style: FlutterFlowTheme.of(context).labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
