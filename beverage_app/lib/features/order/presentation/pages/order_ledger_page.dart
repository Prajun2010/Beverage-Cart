import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_error_page.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../../core/presentation/widgets/shimmer_tile.dart';
import '../../../dashboard/presentation/widgets/shimmer_card.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../../profile/application/profile_watcher_bloc/profile_watcher_bloc.dart';
import '../../application/order_ledger_watcher_bloc/order_ledger_watcher_bloc.dart';
import '../widgets/order_ledger_tile.dart';

class OrderLedgerPage extends StatelessWidget {
  final BottomNavigationCubit navigationCubit;
  const OrderLedgerPage({
    required this.navigationCubit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    context
        .read<ProfileWatcherBloc>()
        .add(const ProfileWatcherEvent.fetchProfileData());
    return AppScaffold(
      appBar: customAppBar(
        context,
        prefixIconTapped: () => AutoRouter.of(context).pop(),
        suffixIconTapped: () => AutoRouter.of(context).pop(),
      ),
      pagePadding: 0,
      body: BlocProvider(
        create: (context) => getIt<OrderLedgerWatcherBloc>()
          ..add(
            const OrderLedgerWatcherEvent.fetchOrderLedgers(),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxEXXL,
            BlocBuilder<OrderLedgerWatcherBloc, OrderLedgerWatcherState>(
              builder: (context, state) {
                return state.isLoading
                    ? Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) => ShimmerTile(
                            baseColor: !themeDark ? AppColor.white : null,
                            borderRadius: 10,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                          ),
                          itemCount: 5,
                        ),
                      )
                    : state.failureOrSuccess?.fold(
                          (l) => Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: AppErrorPage(
                                onTap: () => context
                                    .read<OrderLedgerWatcherBloc>()
                                    .add(const OrderLedgerWatcherEvent
                                        .fetchOrderLedgers()),
                              ),
                            ),
                          ),
                          (r) => r.isNotEmpty
                              ? Expanded(
                                  child: ListView.builder(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(
                                            parent: BouncingScrollPhysics()),

                                    // physics: const BouncingScrollPhysics(),
                                    // shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        OrderLedgerTile(
                                      amount: r[index].amount,
                                      transactionDate: r[index].date,
                                      transactionType: r[index].transactionType,
                                      transactionName: r[index].transactionName,
                                    ),
                                    itemCount: r.length,
                                  ),
                                )
                              : Expanded(
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('No Ledgers data found !',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        sizedBoxMedium,
                                        AppTextButton(
                                          text: 'Refresh',
                                          onTap: () => context
                                              .read<OrderLedgerWatcherBloc>()
                                              .add(
                                                const OrderLedgerWatcherEvent
                                                    .fetchOrderLedgers(),
                                              ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                        ) ??
                        Container();
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Your Account',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  sizedBoxLarge,
                  Text(
                    ' Outstanding Balance',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  sizedBoxLarge,
                  BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
                      builder: (context, state) => state.isLoading
                          ? ShimmerCard(
                              height: MediaQuery.of(context).size.height * 0.02,
                            )
                          : state.failureOrSuccess?.fold(
                                  (l) => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            ' XXXXXXX',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                          GestureDetector(
                                            onTap: () => context
                                                .read<ProfileWatcherBloc>()
                                                .add(const ProfileWatcherEvent
                                                    .fetchProfileData()),
                                            child: const Icon(Icons.refresh),
                                          )
                                        ],
                                      ),
                                  (r) => Text(
                                        ' Rs. ${r.outstandingBalance}/-',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: AppColor.delivered,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      )) ??
                              Container()),
                  sizedBoxLarge,
                  // BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
                  //   builder: (context, state) =>
                  //       state.failureOrSuccess?.fold(
                  //           (l) => CustomElevatedButton(
                  //                 color: AppColor.card,
                  //                 text: 'Pay Now',
                  //                 enableElevation: false,
                  //               ),
                  //           (r) => Visibility(
                  //                 visible: r.outstandingBalance > 0,
                  //                 child: CustomElevatedButton(
                  //                   color: themeDark
                  //                       ? AppColor.card
                  //                       : AppColor.backgroundSecond,
                  //                   text: 'Pay Now',
                  //                   enableElevation: false,
                  //                   onPressed: () =>
                  //                       AutoRouter.of(context).push(
                  //                     ProductPaymentRoute(
                  //                         fromCart: false,
                  //                         outstandingBalance:
                  //                             r.outstandingBalance,
                  //                         navigationCubit: navigationCubit),
                  //                   ),
                  //                 ),
                  //               )) ??
                  //       Container(),
                  // ),
                  sizedBoxLarge,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
