

class AppUrl {
  // static const String domain  = "https://ukcdesigner.in";
  // static const String domainWithClientApi  = "$domain/client_manager/index.php/ClientApi";
  static const String domain  = "http://192.168.1.4";
  static const String domainWithClientApi  = "$domain/cost_calc/index.php/ClientApi";

  static var subMainUrl = '$domain/approvalzone/';
  static const String domainWithClientManagerApi  = "$domain/approvalzone/index.php/ClientManagerApi";
  static const String login = "$domainWithClientApi/login";

  /// ************************Start dashboard pages**************************************
  static const String dashboard = "$domainWithClientApi/dashboard";
  static const String trackProgress = "$domainWithClientApi/stageView";
  static const String paymentHistory = "$domainWithClientApi/paymentHistory";
  static const String teamList = "$domainWithClientApi/teamList";
  /**************************End dashboard pages***************************************/

  /// ************************Start Profile pages**************************************
  static const String addonView = "$domainWithClientApi/addonView";
  static const String facilityView = "$domainWithClientApi/facilityView";
  static const String attachDoc = "$domainWithClientApi/attach_doc";
  static const String notification = "$domainWithClientApi/notification";


  static const String plotGallery = "$domainWithClientApi/manualUploadedImages";
  static const String cctvDetails =  '$domainWithClientApi/cctv_details' ;
  static const String ftpIdPassword =  '$domainWithClientApi/ftp_id_password' ;
  /**************************End Profile pages***************************************/

  /// ************************Start Uploads/download Link**************************************
  static const String uploadedFile  = "$domain/cost_calc/assets/uploads/";
  static const String estimateWithGST  = "$domain/cost_calculator/pdf2/estimate_with_gst.php?cid=";
  static const String clientBookingPdf  = "$domain/cost_calc/index.php/booking/client_booking_pdf/";
  static const String anubandhPdf  = "$domain/cost_calc/index.php/anubandh/anubandh_pdf/";
/// ************************End Uploads/download Link**************************************

  static const String imageUrl  = "https://ukcdesigner.in/site_camera_data/";

}