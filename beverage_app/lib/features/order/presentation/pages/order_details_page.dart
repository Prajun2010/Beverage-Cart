import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/helpers/date_time_helper.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_error_page.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../application/order_details_action_bloc/order_details_action_bloc.dart';
import '../../application/order_details_watcher_bloc/order_details_watcher_bloc.dart';
import '../widgets/order_status_widget.dart';
import '../widgets/product_tiles.dart';

class OrderDetailsPage extends StatelessWidget {
  final String url;
  const OrderDetailsPage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OrderDetailsWatcherBloc>()
            ..add(
              OrderDetailsWatcherEvent.fetchOrderDetails(url: url),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<OrderDetailsActionBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<OrderDetailsWatcherBloc, OrderDetailsWatcherState>(
            listener: (context, state) {
              state.failureOrSuccess?.fold(
                (l) => AppSnackBar.show(
                  context,
                  barType: 'error',
                  content: l.message,
                ),
                (r) {
                  // TODO: Do something here
                },
              );
            },
          ),
        ],
        child: PageBuilder(
          url: url,
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  final String url;
  const PageBuilder({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderDetailsWatcherBloc, OrderDetailsWatcherState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            AutoRouter.of(context).pop();
            // AutoRouter.of(context).pushAndPopUntil(const OrderHistoryRoute(),
            //     predicate: (_) => true);
            return true;
          },
          child: Stack(
            children: [
              AppScaffold(
                appBar: customAppBar(
                  context,
                  prefixIconTapped: () => AutoRouter.of(context)
                      .popUntilRouteWithName(HomeRoute.name),
                  suffixIconTapped: () => AutoRouter.of(context)
                      .popUntilRouteWithName(HomeRoute.name),
                ),
                // bottomNavigationBar: const BottomNavigation(),
                body: state.failureOrSuccess?.fold(
                  (l) => AppErrorPage(
                    onTap: () => context.read<OrderDetailsWatcherBloc>().add(
                          OrderDetailsWatcherEvent.fetchOrderDetails(url: url),
                        ),
                  ),
                  (r) {
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<OrderDetailsWatcherBloc>().add(
                              OrderDetailsWatcherEvent.fetchOrderDetails(
                                  url: url),
                            );
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxExtraLarge,
                            Text(
                              'Order Details',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            sizedBoxSmall,
                            Text(
                              'Order No. #${r.orderNo}',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            sizedBoxSmall,
                            Text(
                              'Date: ${DateTimeHelper.dateTimeFormatter(
                                r.date,
                                format: 'd MMM y',
                                enableOrdinals: true,
                              )}',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            sizedBoxSmall,
                            Text(
                              r.distributor,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            sizedBoxSmall,
                            Text(
                              r.address,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            sizedBoxSmall,
                            OrderStatusWidget(status: r.status),
                            sizedBoxSmall,
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.42,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return ProductTile(
                                    image: r.products[index].image,
                                    name: r.products[index].name,
                                    quantity:
                                        r.products[index].quantity.toString(),
                                    detail: r.products[index].detail,
                                    lineTotal: r.products[index].lineTotal,
                                    deliverdStatus: r.products[index].delivered,
                                    orderStatus: r.status,
                                  );
                                },
                                itemCount: r.products.length,
                              ),
                            ),
                            sizedBoxMedium,
                            Divider(
                              color: AppColor.neutral,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(fontSize: 16),
                                    ),
                                    Text('Rs. ${r.subTotal}'),
                                  ],
                                ),
                                sizedBoxSmall,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Taxes',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(fontSize: 16),
                                    ),
                                    Text('Rs. ${r.tax}'),
                                  ],
                                ),
                                sizedBoxSmall,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(fontSize: 16),
                                    ),
                                    Text('Rs. ${r.totalAmount}'),
                                  ],
                                ),
                                sizedBoxMedium,
                                CustomElevatedButton(
                                  text: 'Done',
                                  onPressed: () => AutoRouter.of(context)
                                      .popAndPush(const OrderHistoryRoute()),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              AppSavingOverlay(
                  isSaving: state.isProcessing ||
                      context
                          .watch<OrderDetailsActionBloc>()
                          .state
                          .isProcessing),
            ],
          ),
        );
      },
    );
  }
}
