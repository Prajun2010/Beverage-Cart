import '../../config.dart';

class AppEndPoints {
  /* end point for mobile verification */
  static final mobileVerify = absolutePath('api/mobile-verify/');

  /* end point for mobile verication during registration */
  static final mobileVerifyRegistration =
      absolutePath('api/register/mobile-verify/');

  /* end point for otp verification */
  static final otpVerify = absolutePath('api/login/');

  /* end point for otp verification during registration */
  static final otpVerifyRegistration = absolutePath('api/register/otp/');

  /* end point to fetch distributor  */
  static final distributor = absolutePath('api/vendors/');

  /* end point to fetch products */
  static final categories = absolutePath('api/products/');

  /* end point to fetch featured products */
  static final featuredProducts = absolutePath('api/featured/');

  /* end point to fetch order history */
  static final orderHistory = absolutePath('api/orders/');

  /* end point to fetch address */
  static final address = absolutePath('api/address/');

  /* end point to place orders */
  static final placeOrder = absolutePath('api/order-place/');

  /* end point to place orders */
  static final productCart = absolutePath('api/cart/');

  /* end point to calculate */
  static final calculate = absolutePath('api/calculate/');

  /* end point to register new user */
  static final signup = absolutePath('api/signup/');

  /* end point to register new user */
  static final removeAccount = absolutePath('api/account-delete/');

  /* end point to fetch links */
  static final links = absolutePath('api/links/');

  /* end point to fetch ledger data */
  static final leadger = absolutePath('api/customer-ledger/');

  /* end point to fetch banner */
  static final banner = absolutePath('api/banner/');

  /* end point for storing payment records */
  static final paymentRecord = absolutePath('api/payment/');

  /* end point to fetch customer profile */
  static final customerProfile = absolutePath('api/customer/');

  /* end point to search products */
  static final productSearch = absolutePath('api/search/');

  /*static method to return absolute path for end point */
  static absolutePath(String path) => '$baseUrl$path';
}
