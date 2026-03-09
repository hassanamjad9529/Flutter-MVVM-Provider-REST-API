class AppUrl {
  // static const baseUrl = "http://192.168.18.156:8000/api"; // local
  // static String socketUrl = "http://192.168.18.156:8000";

  static const baseUrl = "https://paktruckapi.hifahdevs.com/api"; // live
  static String socketUrl = "wss://paktruckapi.hifahdevs.com";

  static var sendEmailOtp = '$baseUrl/auth/send-email-otp'; // done
  static var sendPhoneOtp = '$baseUrl/auth/send-phone-otp'; // done
  static var verifyPhoneOtp = '$baseUrl/auth/verify-phone-otp'; // done
  static var reSendPhoneOtp = '$baseUrl/auth/otp/send';

  static var signupEmail = '$baseUrl/auth/sign-up-email';
  static var signInEmail = '$baseUrl/auth/signInEmail';

  static var selectAccountMode = '$baseUrl/auth/select-account-mode';
  static var completeProfile = '$baseUrl/auth/send-otp';

  static var forgotPassword = '$baseUrl/auth/forgot-password';
  static var verifyOtpResetPassword = '$baseUrl/auth/verify-otp-reset-password';
  static var resetPassword = '$baseUrl/auth/reset-password';
  static var changePassword = '$baseUrl/auth/change-password';

  static var myprofile = '$baseUrl/profile/';
  static var editprofile = '$baseUrl/profile/edit-profile';
  static var checkVerification = '$baseUrl/profile/check-verification';
  static var verifyIndividualAccount =
      '$baseUrl/profile/verify-individual-account';
  static var verifyShopAccount = '$baseUrl/profile/verify-shop-account';
  static var toggleFavoriteAd = '$baseUrl/profile/favorites/toggleFavorite';
  static var myFavorite = '$baseUrl/profile/favorites/';

  static var createVehicleAd = '$baseUrl/vehicle-ad/create';
  static var myVehicleAds = '$baseUrl/vehicle-ad/my-ads';
  static var adDetail = '$baseUrl/vehicle-ad/get-ad-details';
  static var allVehicleAds = '$baseUrl/vehicle-ad/all';

  static var createSparePartAd = '$baseUrl/sparepart-ad/create';

  static markAsSoldVehicle(String adType, String itemId) =>
      '$baseUrl/vehicle-ad/mark-as-sold/${adType.replaceAll(' ', '')}/$itemId';

  static removeAd(String adType, String itemId) =>
      '$baseUrl/vehicle-ad/remove/${adType.replaceAll(' ', '')}/$itemId';
  static var shops = '$baseUrl/users/shops'; // Add this line

  static const uploadMedia = "$baseUrl/chat/upload-file";
  static const notifications = "$baseUrl/profile/notifications";
  static const deleteAccount = "$baseUrl/auth/delete-account";
  static const googleAuth = "$baseUrl/auth/google-auth";

  static const fetchNews = "$baseUrl/profile/get-news";
  static const fetchVideos = "$baseUrl/vehicle-ad/get-videos";
  static const submitContactRequest = "$baseUrl/users/contact-us";
  static const updateFCM = "$baseUrl/profile/fcm-Token";
  static const vehicleAdVideos = "$baseUrl/vehicle-ad/get-vehicle-videos";
  static const spareAdVideos = "$baseUrl/vehicle-ad/get-sparepart-videos";
  static markNotificationsAsRead(String notificationId) =>
      "$baseUrl/profile/notifications/$notificationId/read";
}
