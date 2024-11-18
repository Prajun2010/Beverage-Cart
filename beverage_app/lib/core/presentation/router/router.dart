import 'package:auto_route/annotations.dart';
import 'package:beverage_app/features/product/presentation/pages/payment_success_page.dart';

import '../../../features/authentication/presentation/pages/login_page.dart';
import '../../../features/authentication/presentation/pages/number_verification_page.dart';
import '../../../features/authentication/presentation/pages/otp_verification_page.dart';
import '../../../features/authentication/presentation/pages/sign_up_page.dart';
import '../../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../../features/home/presentation/pages/home_page.dart';
import '../../../features/order/presentation/pages/order_details_page.dart';
import '../../../features/order/presentation/pages/order_history_page.dart';
import '../../../features/order/presentation/pages/order_ledger_page.dart';
import '../../../features/product/presentation/pages/product_detail_page.dart';
import '../../../features/product/presentation/pages/product_page.dart';
import '../../../features/product/presentation/pages/product_payment_page.dart';
import '../../../features/profile/presentation/pages/profile_page.dart';
import '../../../features/splash/presentation/pages/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: NumberVerificationPage),
    AutoRoute(page: OtpVerificationPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: DashboardPage),
    AutoRoute(page: ProductPage),
    AutoRoute(page: OrderLedgerPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: OrderHistoryPage),
    AutoRoute(page: OrderDetailsPage),
    AutoRoute(page: ProductDetailPage),
    AutoRoute(page: ProductPaymentPage),
    AutoRoute(page: PaymentSuccessPage),
  ],
)
class $AppRouter {}
