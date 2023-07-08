import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class MyImageViewManual extends StatefulWidget {
  const MyImageViewManual({super.key});
  @override
  State<MyImageViewManual> createState() => _MyImageViewManualState();
}
class _MyImageViewManualState extends State<MyImageViewManual> {
  final args = Get.arguments;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  PhotoView(
         imageProvider:NetworkImage(args)
          ),
      ),
    );
  }
}

