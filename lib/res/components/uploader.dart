// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
//
//
// XFile? showBottomSheeta(BuildContext context,String mt) {
//   AttachDocumentsController adc = Get.put(AttachDocumentsController());
//   final ImagePicker _picker = ImagePicker();
//    XFile? photo ;
//   showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return  Container(
//         width: 355.5,
//         height: 163.3,
//         decoration: BoxDecoration(
//           color: FlutterFlowTheme.of(context).secondaryBackground,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Upload File ',
//                     style: FlutterFlowTheme.of(context).subtitle1,
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   InkWell(
//                     onTap: () async {
//                        photo = await _picker.pickImage(source: ImageSource.gallery);
//                     },
//                     child: Icon(
//                       Icons.folder_rounded,
//                       color: FlutterFlowTheme.of(context).buttonColor,
//                       size: 50,
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () async {
//                       photo = await _picker.pickImage(source: ImageSource.camera);
//                       // //debugPrint(photo!.name);
//                     },
//                     child: Icon(
//                       Icons.photo_camera,
//                       color: FlutterFlowTheme.of(context).buttonColor,
//                       size: 50,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
//   adc.aadhaarFile.value = photo;
//
//   return photo;
// }