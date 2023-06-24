

class AppUrl {

  static const String baseUrl = 'https://reqres.in' ;


  static const String loginApi = '$baseUrl/api/login' ;

  static const String userListApi = 'https://webhook.site/3c05a17b-3c4e-4f07-96f6-c613b4df4d74' ;

  // static const String bookingFormUrl  = "https://www.ukcdesigner.in/client_manager/index.php/bookingApi";
  // static const String bookingFormUrlForDownload  = "https://www.ukcdesigner.in/client_manager/index.php/welcome/";

  static const String domain  = "http://192.168.1.4";
  static const String bookingFormUrl  = "$domain/cost_calc/index.php/bookingApi";
  static const String mailUrl  = "$domain/cost_calc/index.php/Mail";
  static const String bookingFormUrlForDownload  = "http://192.168.1.4/cost_calc/index.php/welcome/client_booking_pdf/";

  static const String login = '$bookingFormUrl/login' ;
  static const String ajaxClientInfoUrl  = "$bookingFormUrl/ajax_client_info";
  static const String ajaxDecisionMaker  = "$bookingFormUrl/ajax_decision_maker";
  static const String ajaxClientPayee  = "$bookingFormUrl/ajax_client_payee";
  static const String ajaxBookingTransaction  = "$bookingFormUrl/ajax_booking_transaction";
  static const String ajaxPlotDetails  = "$bookingFormUrl/ajax_plot_details";
  static const String ajaxAttachedDocument  = "$bookingFormUrl/ajax_attached_document";
  static const String bookingList  = "$bookingFormUrl/booking_list";
  static const String bookingDetails  = "$bookingFormUrl/booking_details";
  static const String commitmentList  = "$bookingFormUrl/commitment_list";
  static const String addCommitment  = "$bookingFormUrl/addCommitment";
  static const String commitment  = "$bookingFormUrl/getCommit";
  static const String dashboard  = "$bookingFormUrl/dashboard";
  static const String profile  = "$bookingFormUrl/profile";
  static const String deleteBooking  = "$bookingFormUrl/ajax_truncate";
  static const String dataFromCalc  = "$bookingFormUrl/ajax_client_data";

  static const String quickBooking  = "$bookingFormUrl/ajax_quick_booking";
  static const String quickTransaction  = "$bookingFormUrl/ajax_quick_transaction";
  static const String sendMail  = "$mailUrl/send_booking_mail";



}