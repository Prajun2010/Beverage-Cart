// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../../features/authentication/presentation/pages/login_page.dart'
    as _i3;
import '../../../features/authentication/presentation/pages/number_verification_page.dart'
    as _i4;
import '../../../features/authentication/presentation/pages/otp_verification_page.dart'
    as _i5;
import '../../../features/authentication/presentation/pages/sign_up_page.dart'
    as _i6;
import '../../../features/dashboard/presentation/pages/dashboard_page.dart'
    as _i7;
import '../../../features/home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart'
    as _i18;
import '../../../features/home/presentation/pages/home_page.dart' as _i2;
import '../../../features/order/presentation/pages/order_details_page.dart'
    as _i12;
import '../../../features/order/presentation/pages/order_history_page.dart'
    as _i11;
import '../../../features/order/presentation/pages/order_ledger_page.dart'
    as _i9;
import '../../../features/product/domain/entities/category_items_entity.dart'
    as _i19;
import '../../../features/product/presentation/pages/payment_success_page.dart'
    as _i15;
import '../../../features/product/presentation/pages/product_detail_page.dart'
    as _i13;
import '../../../features/product/presentation/pages/product_page.dart' as _i8;
import '../../../features/product/presentation/pages/product_payment_page.dart'
    as _i14;
import '../../../features/profile/presentation/pages/profile_page.dart' as _i10;
import '../../../features/splash/presentation/pages/splash_page.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    NumberVerificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NumberVerificationPage());
    },
    OtpVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OtpVerificationRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.OtpVerificationPage(
              key: args.key,
              mobileNumber: args.mobileNumber,
              loginInitiate: args.loginInitiate));
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SignUpPage(key: args.key, phoneNumber: args.phoneNumber));
    },
    DashboardRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DashboardPage());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ProductPage(key: args.key, url: args.url));
    },
    OrderLedgerRoute.name: (routeData) {
      final args = routeData.argsAs<OrderLedgerRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.OrderLedgerPage(
              navigationCubit: args.navigationCubit, key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfilePage());
    },
    OrderHistoryRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.OrderHistoryPage());
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.OrderDetailsPage(key: args.key, url: args.url));
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.ProductDetailPage(
              key: args.key,
              items: args.items,
              navigationBloc: args.navigationBloc));
    },
    ProductPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPaymentRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.ProductPaymentPage(
              key: args.key,
              navigationCubit: args.navigationCubit,
              fromCart: args.fromCart,
              outstandingBalance: args.outstandingBalance));
    },
    PaymentSuccessRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentSuccessRouteArgs>(
          orElse: () => const PaymentSuccessRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.PaymentSuccessPage(
              key: args.key,
              redirectFromCart: args.redirectFromCart,
              outstandingBalance: args.outstandingBalance));
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashRoute.name, path: '/'),
        _i16.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i16.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i16.RouteConfig(NumberVerificationRoute.name,
            path: '/number-verification-page'),
        _i16.RouteConfig(OtpVerificationRoute.name,
            path: '/otp-verification-page'),
        _i16.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i16.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i16.RouteConfig(ProductRoute.name, path: '/product-page'),
        _i16.RouteConfig(OrderLedgerRoute.name, path: '/order-ledger-page'),
        _i16.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i16.RouteConfig(OrderHistoryRoute.name, path: '/order-history-page'),
        _i16.RouteConfig(OrderDetailsRoute.name, path: '/order-details-page'),
        _i16.RouteConfig(ProductDetailRoute.name, path: '/product-detail-page'),
        _i16.RouteConfig(ProductPaymentRoute.name,
            path: '/product-payment-page'),
        _i16.RouteConfig(PaymentSuccessRoute.name,
            path: '/payment-success-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.NumberVerificationPage]
class NumberVerificationRoute extends _i16.PageRouteInfo<void> {
  const NumberVerificationRoute()
      : super(NumberVerificationRoute.name, path: '/number-verification-page');

  static const String name = 'NumberVerificationRoute';
}

/// generated route for
/// [_i5.OtpVerificationPage]
class OtpVerificationRoute
    extends _i16.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute(
      {_i17.Key? key, required String mobileNumber, bool loginInitiate = true})
      : super(OtpVerificationRoute.name,
            path: '/otp-verification-page',
            args: OtpVerificationRouteArgs(
                key: key,
                mobileNumber: mobileNumber,
                loginInitiate: loginInitiate));

  static const String name = 'OtpVerificationRoute';
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs(
      {this.key, required this.mobileNumber, this.loginInitiate = true});

  final _i17.Key? key;

  final String mobileNumber;

  final bool loginInitiate;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key, mobileNumber: $mobileNumber, loginInitiate: $loginInitiate}';
  }
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i16.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i17.Key? key, required String phoneNumber})
      : super(SignUpRoute.name,
            path: '/sign-up-page',
            args: SignUpRouteArgs(key: key, phoneNumber: phoneNumber));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.phoneNumber});

  final _i17.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i7.DashboardPage]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i8.ProductPage]
class ProductRoute extends _i16.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i17.Key? key, String? url})
      : super(ProductRoute.name,
            path: '/product-page', args: ProductRouteArgs(key: key, url: url));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, this.url});

  final _i17.Key? key;

  final String? url;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i9.OrderLedgerPage]
class OrderLedgerRoute extends _i16.PageRouteInfo<OrderLedgerRouteArgs> {
  OrderLedgerRoute(
      {required _i18.BottomNavigationCubit navigationCubit, _i17.Key? key})
      : super(OrderLedgerRoute.name,
            path: '/order-ledger-page',
            args: OrderLedgerRouteArgs(
                navigationCubit: navigationCubit, key: key));

  static const String name = 'OrderLedgerRoute';
}

class OrderLedgerRouteArgs {
  const OrderLedgerRouteArgs({required this.navigationCubit, this.key});

  final _i18.BottomNavigationCubit navigationCubit;

  final _i17.Key? key;

  @override
  String toString() {
    return 'OrderLedgerRouteArgs{navigationCubit: $navigationCubit, key: $key}';
  }
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i11.OrderHistoryPage]
class OrderHistoryRoute extends _i16.PageRouteInfo<void> {
  const OrderHistoryRoute()
      : super(OrderHistoryRoute.name, path: '/order-history-page');

  static const String name = 'OrderHistoryRoute';
}

/// generated route for
/// [_i12.OrderDetailsPage]
class OrderDetailsRoute extends _i16.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({_i17.Key? key, required String url})
      : super(OrderDetailsRoute.name,
            path: '/order-details-page',
            args: OrderDetailsRouteArgs(key: key, url: url));

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.url});

  final _i17.Key? key;

  final String url;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i13.ProductDetailPage]
class ProductDetailRoute extends _i16.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute(
      {_i17.Key? key,
      required _i19.CategoryItemsEntity items,
      required _i18.BottomNavigationCubit navigationBloc})
      : super(ProductDetailRoute.name,
            path: '/product-detail-page',
            args: ProductDetailRouteArgs(
                key: key, items: items, navigationBloc: navigationBloc));

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs(
      {this.key, required this.items, required this.navigationBloc});

  final _i17.Key? key;

  final _i19.CategoryItemsEntity items;

  final _i18.BottomNavigationCubit navigationBloc;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, items: $items, navigationBloc: $navigationBloc}';
  }
}

/// generated route for
/// [_i14.ProductPaymentPage]
class ProductPaymentRoute extends _i16.PageRouteInfo<ProductPaymentRouteArgs> {
  ProductPaymentRoute(
      {_i17.Key? key,
      required _i18.BottomNavigationCubit navigationCubit,
      required bool fromCart,
      double? outstandingBalance})
      : super(ProductPaymentRoute.name,
            path: '/product-payment-page',
            args: ProductPaymentRouteArgs(
                key: key,
                navigationCubit: navigationCubit,
                fromCart: fromCart,
                outstandingBalance: outstandingBalance));

  static const String name = 'ProductPaymentRoute';
}

class ProductPaymentRouteArgs {
  const ProductPaymentRouteArgs(
      {this.key,
      required this.navigationCubit,
      required this.fromCart,
      this.outstandingBalance});

  final _i17.Key? key;

  final _i18.BottomNavigationCubit navigationCubit;

  final bool fromCart;

  final double? outstandingBalance;

  @override
  String toString() {
    return 'ProductPaymentRouteArgs{key: $key, navigationCubit: $navigationCubit, fromCart: $fromCart, outstandingBalance: $outstandingBalance}';
  }
}

/// generated route for
/// [_i15.PaymentSuccessPage]
class PaymentSuccessRoute extends _i16.PageRouteInfo<PaymentSuccessRouteArgs> {
  PaymentSuccessRoute(
      {_i17.Key? key,
      bool? redirectFromCart = true,
      double? outstandingBalance})
      : super(PaymentSuccessRoute.name,
            path: '/payment-success-page',
            args: PaymentSuccessRouteArgs(
                key: key,
                redirectFromCart: redirectFromCart,
                outstandingBalance: outstandingBalance));

  static const String name = 'PaymentSuccessRoute';
}

class PaymentSuccessRouteArgs {
  const PaymentSuccessRouteArgs(
      {this.key, this.redirectFromCart = true, this.outstandingBalance});

  final _i17.Key? key;

  final bool? redirectFromCart;

  final double? outstandingBalance;

  @override
  String toString() {
    return 'PaymentSuccessRouteArgs{key: $key, redirectFromCart: $redirectFromCart, outstandingBalance: $outstandingBalance}';
  }
}
