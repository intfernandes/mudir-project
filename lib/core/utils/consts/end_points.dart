class EndPoints {
  static const String baseUrl = "";

  // *>>>>>>>>>>>>>>>>>> Authentication <<<<<<<<<<<<<<<<<<<<

  // ? register
  static const String register = "user_register/user_register/";
  static const String verifyCodeRegister = "$register{id}/verify_otp/";
  static const String resendCodeRegister = "$register{id}/regenerate_otp/";

  // ? login
  static const String anonymous = 'anonymous/';
  static const String login = "user_login/";

  // ? profile
  static const String logout = "logout/";
  //! not immplymented
  static const String deleteAccount = "$register{id}";

  static const String phoneOrEmail = "reset_password_emaillink/";
  static const String verifyCodeForget = "password-reset/verify-otp/";
  static const String resetPassword = "password-reset/";

  static const String advertisements = 'advertisements/';
 
  //*
  static const String allVendors = "customer/vendors";
  static const String vendorDetailes = "customer/vendors";
  static const String vendorRates = "customer/vendors/rates/{id}";
  static const String addVendorRates = "customer/vendors/rates/add"; 

  static const String getUserData = "{id}/edit_profile";
  static const String updateProfile = "{id}/edit_profile";
  static const String contactUs = "public/contact-us";

  static const String customerInquiries = "customer/inquiry";

  static const String chatsList = "customer/chats/list";
  static const String sendMessage = "customer/chats/send";
  static const String getChatMessage = "customer/chats/send";

  static const String allAds = "customer/ads";
  static const String blockAds = "customer/ads/block/{id}";

  static const String allMyAds = "customer/ads/my-ads";
  static const String createAds = "customer/ads/create";
  static const String editAds = "customer/ads/edit/{id}";
  static const String deleteAds = "customer/ads/delete/{id}";

  static const String aboutUsData = 'public/data/abouts';

  static const String notifications = "public/notifications"; 
}
