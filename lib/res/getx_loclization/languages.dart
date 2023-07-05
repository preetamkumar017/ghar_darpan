

import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {

  @override
  Map<String , Map<String, String>> get keys => {
    'en_US' : {
      'ghar_darpan':'Ghar Darpan',
      'email_hint' : 'Email' ,
      'internet_exception' : "We're unable tp show results.\nPlease check your data\nconenction." ,
      'general_exception' : "We're unable to process your request.\n Please try again" ,
      'not_found_exception' : "We're unable to process your request.\n Please try again" ,
      'welcome_back' : 'Welcome\nBack' ,
      'login' :'Login' ,
      'password_hint' :'Password' ,
    },
    'hi_IN' : {
      'ghar_darpan':'घर दर्पण',
      'email_hint' : 'ईमेल',
      'internet_exception' : 'हम परिणाम नहीं दिखा सकते।\nकृपया अपनी डेटा कनेक्शन जांचें।',
      'general_exception' : 'हम आपका अनुरोध प्रसंस्करण नहीं कर सकते।\nकृपया पुनः प्रयास करें।',
      'welcome_back' : 'वापसी पर स्वागत\nहै',
      'login' : 'लॉगिन',
      'password_hint' : 'पासवर्ड',
    },

  };
}