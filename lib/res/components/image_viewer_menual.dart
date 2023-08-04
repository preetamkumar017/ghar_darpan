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
        appBar: AppBar(
        // toolbarHeight: 35,
        backgroundColor:
        Colors.black, // Set the background color to transparent
        elevation: 0, // Remove the elevation
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color(0xffffffff)), // Set the back arrow color to black
          onPressed: () => Get.back(),
        ),
      ),
        body:  PhotoView(
         imageProvider:NetworkImage(args)
          ),
      ),
    );
  }
}

