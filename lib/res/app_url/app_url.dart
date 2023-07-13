

class AppUrl {
  static const String domain  = "http://192.168.1.4";

  static var subMainUrl = '$domain/approvalzone/';
  static const String domainWithBookingApi  = "$domain/cost_calc/index.php/ClientApi";
  static const String domainWithClientManagerApi  = "$domain/approvalzone/index.php/ClientManagerApi";
  static const String login = "$domainWithBookingApi/login";

  /// ************************Start dashboard pages**************************************
  static const String dashboard = "$domainWithBookingApi/dashboard";
  static const String trackProgress = "$domainWithBookingApi/stageView";
  static const String paymentHistory = "$domainWithBookingApi/paymentHistory";
  static const String teamList = "$domainWithBookingApi/teamList";
  /**************************End dashboard pages***************************************/

  /// ************************Start Profile pages**************************************
  static const String addonView = "$domainWithBookingApi/addonView";
  static const String facilityView = "$domainWithBookingApi/facilityView";
  static const String attachDoc = "$domainWithBookingApi/attach_doc";

  static const String plotGallery = "$domainWithClientManagerApi/manualUploadedImages";
/**************************End Profile pages***************************************/

  /// ************************Start Uploads Link**************************************
  static const String uploadedFile  = "$domain/cost_calc/assets/uploads/";
/**************************End Uploads Link***************************************/
}