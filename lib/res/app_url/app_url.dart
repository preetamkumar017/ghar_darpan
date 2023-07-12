

class AppUrl {
  static const String domain  = "http://192.168.1.4";
  static const String domainWithBookingApi  = "$domain/cost_calc/index.php/ClientApi";
  static const String login = "$domainWithBookingApi/login";
  static const String dashboard = "$domainWithBookingApi/dashboard";

  /**************************Start Profile pages***************************************/
  static const String addonView = "$domainWithBookingApi/addonView";
  static const String facilityView = "$domainWithBookingApi/facilityView";
  static const String attachDoc = "$domainWithBookingApi/attach_doc";
/**************************End Profile pages***************************************/

  /**************************Start Uploads Link***************************************/
  //http://localhost/cost_calc/assets/uploads/adhar_1684148204.jpg
  static const String uploadedFile  = "$domain/cost_calc/assets/uploads/";
/**************************End Uploads Link***************************************/
}