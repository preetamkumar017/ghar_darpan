import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/res/getx_loclization/languages.dart';
import 'package:ghar_darsan/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
  WidgetsBinding.instance.addPostFrameCallback( (timeStamp) async {
    if (Platform.isAndroid) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghar Darsan',
      translations: Languages(),
      // this were you will give your local, like if its hindi, urdu, spanish
      locale: const Locale('en', 'US'),
      fallbackLocale:  const Locale('en','US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
