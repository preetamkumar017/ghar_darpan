import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/flutter_flow/flutter_flow_theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFScreen extends StatefulWidget {
  final String? path;

  PDFScreen( {Key? key, this.path}) : super(key: key);

  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {

  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  void initState() {

    _pdfViewerController = PdfViewerController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 35,
          backgroundColor:
          Colors.transparent, // Set the background color to transparent
          elevation: 0, // Remove the elevation
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: FlutterFlowTheme.of(context)
                    .iconSecondary), // Set the back arrow color to black
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SfPdfViewer.network(
            widget.path ?? "",
            controller: _pdfViewerController,
            key: _pdfViewerStateKey),
      ),
    );
  }
}