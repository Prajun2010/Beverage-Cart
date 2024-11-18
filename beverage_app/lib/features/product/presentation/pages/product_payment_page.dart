import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/features/profile/application/profile_watcher_bloc/profile_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_dialogbox.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../../profile/presentation/widgets/tile_divider.dart';
import '../../application/product_action_bloc/product_action_bloc.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';
import '../widgets/payment_tile.dart';

class ProductPaymentPage extends StatefulWidget {
  final BottomNavigationCubit navigationCubit;
  // To know wether from cart or just by clicking pay button.
  final double? outstandingBalance;
  final bool fromCart;
  const ProductPaymentPage({
    Key? key,
    required this.navigationCubit,
    required this.fromCart,
    this.outstandingBalance,
  }) : super(key: key);

  @override
  State<ProductPaymentPage> createState() => _ProductPaymentPageState();
}

class _ProductPaymentPageState extends State<ProductPaymentPage> {
  final Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final total = widget.outstandingBalance ??
        context.read<ProductWatcherBloc>().state.total;

    final outstandingBalance =
        context.read<ProfileWatcherBloc>().state.failureOrSuccess?.fold(
              (l) => 0.0,
              (r) => r.outstandingBalance,
            );

    final creditLimit =
        context.read<ProfileWatcherBloc>().state.failureOrSuccess?.fold(
              (l) => 0.0,
              (r) => r.creditLimit,
            );

    final remainingBalance = creditLimit! - outstandingBalance!;

    final splitValue = total.toString().split('.');

    final totalValue =
        double.parse(splitValue[0]) * 100 + double.parse(splitValue[1]);

    // void paymentCapture(PaymentSuccessResponse response) {}

    void _handlePaymentSuccess(PaymentSuccessResponse response) async {
      AutoRouter.of(context).push(
        PaymentSuccessRoute(
          outstandingBalance: widget.outstandingBalance,
          redirectFromCart: widget.fromCart,
        ),
      );
    }

    void _handlePaymentError(PaymentFailureResponse response) {
      // Do something when payment fails
    }

    void _handleExternalWallet(ExternalWalletResponse response) {
      // Do something when an external wallet was selected
    }

    return AppScaffold(
      appBar: customAppBar(
        context,
        suffixIconTapped: () {
          widget.navigationCubit.changedTab(tabId: 1);
          AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
        },
        prefixIconTapped: () => AutoRouter.of(context).pop(),
      ),
      body: BlocProvider(
        create: (context) => getIt<ProductActionBloc>(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxLarge,
            Text(
              ' Payment methods',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: BlocConsumer<ProductActionBloc, ProductActionState>(
                  listener: (context, state) {
                    state.failureOrSuccess?.fold(
                        (l) => AppSnackBar.show(context,
                            content: l.message, barType: 'error'), (r) {
                      context
                          .read<ProductWatcherBloc>()
                          .add(const ProductWatcherEvent.resetData());

                      if (widget.fromCart) {
                        AutoRouter.of(context).push(
                          OrderDetailsRoute(url: r),
                        );
                      } else {
                        widget.navigationCubit.changedTab(tabId: 0);
                        context
                            .read<ProfileWatcherBloc>()
                            .add(const ProfileWatcherEvent.fetchProfileData());
                        AutoRouter.of(context).replaceAll([const HomeRoute()]);
                      }
                    });
                  },
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBoxMedium,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  // const TileDivider(),
                                  // PaymentTile(
                                  //   selected: state.paymentSelectId == 0,
                                  //   child:
                                  //       Image.asset('assets/images/razor.png'),
                                  //   onTap: () => context
                                  //       .read<ProductActionBloc>()
                                  //       .add(
                                  //         const ProductActionEvent
                                  //             .selectPaymentMethod(selectId: 0),
                                  //       ),
                                  // ),
                                  const TileDivider(),
                                  Visibility(
                                    visible: widget.fromCart &&
                                        (remainingBalance >= total),
                                    child: Column(
                                      children: [
                                        PaymentTile(
                                          selected: state.paymentSelectId == 1,
                                          onTap: () => context
                                              .read<ProductActionBloc>()
                                              .add(
                                                const ProductActionEvent
                                                        .selectPaymentMethod(
                                                    selectId: 1),
                                              ),
                                          child: Text(
                                            'Buy Now, Pay Later',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ),
                                        const TileDivider(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColor.neutral,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(fontSize: 16),
                                ),
                                BlocBuilder<ProductWatcherBloc,
                                    ProductWatcherState>(
                                  builder: (context, state) {
                                    return Text('Rs. ${state.subTotal}');
                                  },
                                ),
                              ],
                            ),
                            sizedBoxSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Taxes',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(fontSize: 16),
                                ),
                                BlocBuilder<ProductWatcherBloc,
                                    ProductWatcherState>(
                                  builder: (context, state) {
                                    return Text('Rs. ${state.tax}');
                                  },
                                ),
                              ],
                            ),
                            sizedBoxSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(fontSize: 16),
                                ),
                                BlocBuilder<ProductWatcherBloc,
                                    ProductWatcherState>(
                                  builder: (context, state) {
                                    return Text(
                                        'Rs.  ${widget.fromCart ? state.total : widget.outstandingBalance}');
                                  },
                                ),
                              ],
                            ),
                            sizedBoxMedium,
                            CustomElevatedButton(
                              text: 'Pay Now',
                              isLoading: state.isProcessing,
                              onPressed: !state.isProcessing
                                  ? state.paymentSelectId != -1
                                      ? state.paymentSelectId == 0
                                          ? () {
                                              var options = {
                                                'key':
                                                    'rzp_test_wrjp6eHZ5fC2hC',
                                                'amount': '$totalValue',
                                                'currency': 'INR',
                                              };
                                              _razorpay.on(
                                                  Razorpay
                                                      .EVENT_PAYMENT_SUCCESS,
                                                  _handlePaymentSuccess);
                                              _razorpay.on(
                                                  Razorpay.EVENT_PAYMENT_ERROR,
                                                  _handlePaymentError);
                                              _razorpay.on(
                                                  Razorpay
                                                      .EVENT_EXTERNAL_WALLET,
                                                  _handleExternalWallet);

                                              _razorpay.open(options);
                                            }
                                          : () {
                                              AppDialogBox.confirmationDialog(
                                                context,
                                                title: 'Are you sure?',
                                                content:
                                                    'Do you want to place these orders?',
                                                confirmText: 'Yes',
                                                rejectText: 'No',
                                                confirmTap: () => context
                                                    .read<ProductActionBloc>()
                                                    .add(
                                                      ProductActionEvent
                                                          .placeOrder(
                                                        data: context
                                                            .read<
                                                                ProductWatcherBloc>()
                                                            .state
                                                            .itemQuantity,
                                                      ),
                                                    ),
                                              );
                                            }
                                      : () {
                                          AppSnackBar.show(
                                            context,
                                            content:
                                                'Please select payment method!',
                                            barType: 'failure',
                                          );
                                        }
                                  : () {},
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
