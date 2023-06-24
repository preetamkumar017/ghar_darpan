import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/res/getx_loclization/languages.dart';
import 'package:ghar_darpan/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ghar Darpan',
      translations: Languages(),
      // this were you will give your local, like if its hindi, urdu, spanish
      locale: Locale('en', 'US'),
      fallbackLocale:  Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
