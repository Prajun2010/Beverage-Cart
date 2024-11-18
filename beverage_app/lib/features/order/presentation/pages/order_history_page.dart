import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_error_page.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../../core/presentation/widgets/shimmer_tile.dart';
import '../../../authentication/application/account_removal_bloc/account_removal_bloc.dart';
import '../../application/order_history_watcher_bloc/order_history_watcher_bloc.dart';
import '../widgets/order_history_tile.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => getIt<OrderHistoryWatcherBloc>()
        ..add(
          const OrderHistoryWatcherEvent.fetchOrderHistory(),
        ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<OrderHistoryWatcherBloc, OrderHistoryWatcherState>(
            listener: (context, state) {
              state.failureOrSuccess?.fold(
                (l) => AppSnackBar.show(
                  context,
                  content: l.message,
                  barType: 'error',
                ),
                (r) => null,
              );
            },
          ),
          BlocListener<AccountRemovalBloc, AccountRemovalState>(
            listener: (context, state) {
              state.failureOrSuccess?.fold(
                (l) {
                  return AppSnackBar.show(
                    context,
                    content: l.message,
                    barType: 'error',
                  );
                },
                (r) => AutoRouter.of(context).replaceAll(const [LoginRoute()]),
              );
            },
          )
        ],
        child: BlocBuilder<OrderHistoryWatcherBloc, OrderHistoryWatcherState>(
          builder: (context, state) {
            return WillPopScope(
              onWillPop: () async {
                AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
                return true;
                // final response = await AppDialogBox.confirmationDialog(
                //   context,
                //   title: 'Exit conformation',
                //   content: 'Do you want to exit the app?',
                //   confirmText: 'Yes',
                //   rejectText: 'No',
                // );

                // return Future.value(response);
              },
              child: AppScaffold(
                appBar: customAppBar(
                  context,
                  prefixIconTapped: () {
                    AutoRouter.of(context)
                        .popUntilRouteWithName(HomeRoute.name);
                  },
                  suffixIconTapped: () {
                    AutoRouter.of(context)
                        .popUntilRouteWithName(HomeRoute.name);
                  },
                ),
                // bottomNavigationBar: const BottomNavigation(),
                body: state.isProcessing
                    ? ListView.builder(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.06),
                        itemBuilder: (context, index) => ShimmerTile(
                          baseColor: themeDark ? AppColor.card : AppColor.white,
                          highlightColor: Colors.black54,
                          height: 100,
                          borderRadius: 10,
                        ),
                        itemCount: 8,
                      )
                    : state.failureOrSuccess?.fold(
                        (l) => AppErrorPage(
                          onTap: () => context
                              .read<OrderHistoryWatcherBloc>()
                              .add(const OrderHistoryWatcherEvent
                                  .fetchOrderHistory()),
                        ),
                        (r) {
                          return r.isNotEmpty
                              ? RefreshIndicator(
                                  onRefresh: () async {
                                    context.read<OrderHistoryWatcherBloc>().add(
                                        const OrderHistoryWatcherEvent
                                            .fetchOrderHistory());
                                  },
                                  child: ListView.builder(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(
                                      parent: BouncingScrollPhysics(),
                                    ),
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.06),
                                    itemBuilder: (context, index) {
                                      return OrderHistoryTile(
                                        backgroundColor: AppColor.card,
                                        onTap: () {
                                          AutoRouter.of(context)
                                              .push(
                                                OrderDetailsRoute(
                                                  url: r[index].url,
                                                ),
                                              )
                                              .then((value) => context
                                                  .read<
                                                      OrderHistoryWatcherBloc>()
                                                  .add(const OrderHistoryWatcherEvent
                                                      .fetchOrderHistory()));
                                        },
                                        orderNo: r[index].orderNo.toString(),
                                        orderDate: r[index].date,
                                        distributorName: r[index].distributor,
                                        status: r[index].status,
                                        totalAmount: r[index].totalAmount,
                                        quantity: r[index].quantity,
                                      );
                                    },
                                    itemCount: r.length,
                                  ),
                                )
                              : Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Order history not available!',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      sizedBoxMedium,
                                      AppTextButton(
                                        text: 'Refresh',
                                        onTap: () => context
                                            .read<OrderHistoryWatcherBloc>()
                                            .add(const OrderHistoryWatcherEvent
                                                .fetchOrderHistory()),
                                      )
                                    ],
                                  ),
                                );
                        },
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
