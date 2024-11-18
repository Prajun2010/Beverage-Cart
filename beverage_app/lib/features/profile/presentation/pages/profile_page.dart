import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/application/theme_bloc/theme_bloc.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_dialogbox.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../authentication/application/account_removal_bloc/account_removal_bloc.dart';
import '../../../authentication/application/auth_bloc/auth_bloc.dart';
import '../../../dashboard/presentation/widgets/shimmer_card.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../application/link_watcher_bloc/link_watcher_bloc.dart';
import '../../application/profile_watcher_bloc/profile_watcher_bloc.dart';
import '../widgets/profile_list_tile.dart';
import '../widgets/tile_divider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppScaffold(
      pagePadding: 0,
      appBar: customAppBar(
        context,
        title: context.read<ProfileWatcherBloc>().state.username,
      ),
      // bottomNavigationBar: const BottomNavigation(),
      body: BlocProvider(
        create: (context) =>
            getIt<LinkWatcherBloc>()..add(const LinkWatcherEvent.started()),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxEXXL,
              const TileDivider(),
              ProfileListTile(
                title: 'Orders',
                onTap: () => AutoRouter.of(context).push(
                  const OrderHistoryRoute(),
                ),
              ),
              const TileDivider(),
              ProfileListTile(
                title: 'View Ledger',
                onTap: () => AutoRouter.of(context).push(OrderLedgerRoute(
                    navigationCubit: context.read<BottomNavigationCubit>())),
              ),
              const TileDivider(),
              BlocBuilder<LinkWatcherBloc, LinkWatcherState>(
                builder: (context, state) {
                  return ProfileListTile(
                    title: 'Increase Credit Limit',
                    onTap: (state.creditLink != null && state.creditLink != '')
                        ? () async => await launchUrl(
                              Uri.parse(state.creditLink!),
                              mode: LaunchMode.inAppWebView,
                              webViewConfiguration: const WebViewConfiguration(
                                enableDomStorage: false,
                              ),
                            )
                        : () {},
                  );
                },
              ),
              const TileDivider(),
              BlocBuilder<LinkWatcherBloc, LinkWatcherState>(
                builder: (context, state) => ProfileListTile(
                  title: 'Request a Product',
                  onTap: (state.requestProductLink != null &&
                          state.requestProductLink != '')
                      ? () async => await launchUrl(
                            Uri.parse(state.requestProductLink!),
                            mode: LaunchMode.inAppWebView,
                            webViewConfiguration: const WebViewConfiguration(
                              enableDomStorage: false,
                            ),
                          )
                      : () {},
                ),
              ),
              const TileDivider(),
              BlocBuilder<LinkWatcherBloc, LinkWatcherState>(
                builder: (context, state) => ProfileListTile(
                  title: 'Privacy Policy',
                  onTap: (state.privacyLink != null && state.privacyLink != '')
                      ? () async => await launchUrl(
                            Uri.parse(state.privacyLink!),
                            mode: LaunchMode.inAppWebView,
                            webViewConfiguration: const WebViewConfiguration(
                              enableDomStorage: false,
                            ),
                          )
                      : () {},
                ),
              ),
              const TileDivider(),
              BlocBuilder<LinkWatcherBloc, LinkWatcherState>(
                builder: (context, state) => ProfileListTile(
                  title: 'Terms',
                  onTap: (state.termsLink != null && state.termsLink != '')
                      ? () async => await launchUrl(
                            Uri.parse(state.termsLink!),
                            mode: LaunchMode.inAppWebView,
                            webViewConfiguration: const WebViewConfiguration(
                              enableDomStorage: false,
                            ),
                          )
                      : () {},
                ),
              ),
              const TileDivider(),
              ProfileListTile(
                title: 'Remove Account',
                onTap: () {
                  AppDialogBox.confirmationDialog(context,
                      title: 'Account Removal',
                      content:
                          'Are your sure you want to remove this account ?',
                      confirmText: 'Confirm',
                      rejectText: 'Reject',
                      titleAlign: TextAlign.center,
                      contentAlign: TextAlign.center, confirmTap: () {
                    context.read<AccountRemovalBloc>().add(
                          const AccountRemovalEvent.removeAccount(),
                        );
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());

                    AutoRouter.of(context).replaceAll([const LoginRoute()]);
                  });
                },
              ),
              const TileDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change theme',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.light_mode,
                        ),
                        BlocBuilder<ThemeBloc, ThemeState>(
                          builder: (context, state) {
                            return CupertinoSwitch(
                              activeColor: AppColor.backgroundSecond,
                              value: state.themeMode == ThemeMode.dark,
                              onChanged: (value) {
                                if (value) {
                                  context.read<ThemeBloc>().add(
                                      const ThemeEvent.changeTheme(
                                          ThemeMode.dark));
                                  return;
                                }
                                context.read<ThemeBloc>().add(
                                    const ThemeEvent.changeTheme(
                                        ThemeMode.light));
                              },
                            );
                          },
                        ),
                        const Icon(Icons.dark_mode),
                      ],
                    ),
                  ],
                ),
              ),
              const TileDivider(),
              ProfileListTile(
                title: 'Logout',
                onTap: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());

                  AutoRouter.of(context).replaceAll([const LoginRoute()]);
                },
              ),
              sizedBoxLarge,
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'App version 1.0.0',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontSize: 9,
                            color: AppColor.neutral.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    sizedBoxLarge,
                    Text(
                      'Your Account',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    sizedBoxLarge,
                    Text(
                      'Outstanding Balance',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    sizedBoxLarge,
                    BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
                        builder: (context, state) => state.isLoading
                            ? ShimmerCard(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
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
                    //         (l) => CustomElevatedButton(
                    //           color: AppColor.card,
                    //           text: 'Pay Now',
                    //           enableElevation: false,
                    //         ),
                    //         (r) => Visibility(
                    //           visible: r.outstandingBalance > 0,
                    //           child: CustomElevatedButton(
                    //             color: themeDark
                    //                 ? AppColor.card
                    //                 : AppColor.backgroundSecond,
                    //             text: 'Pay Now',
                    //             enableElevation: false,
                    //             onPressed: () => AutoRouter.of(context).push(
                    //               ProductPaymentRoute(
                    //                   fromCart: false,
                    //                   outstandingBalance: r.outstandingBalance,
                    //                   navigationCubit: context
                    //                       .read<BottomNavigationCubit>()),
                    //             ),
                    //           ),
                    //         ),
                    //       ) ??
                    //       Container(),
                    // ),
                  ],
                ),
              ),
              sizedBoxLarge,
            ],
          ),
        ),
      ),
    );
  }
}
