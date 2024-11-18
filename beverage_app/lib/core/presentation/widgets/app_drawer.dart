import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/core/presentation/router/router.gr.dart';
import 'package:beverage_app/core/presentation/widgets/app_dialogbox.dart';
import 'package:beverage_app/features/authentication/application/account_removal_bloc/account_removal_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../features/authentication/application/auth_bloc/auth_bloc.dart';
import '../../../features/distributor/application/distributor_watcher_bloc/distributor_watcher_bloc.dart';
import '../style/colors.dart';

Drawer appDrawer(BuildContext context) {
  /* Drawer item created for logout */
  final logout = DrawerItem(
    iconData: Icons.logout,
    title: 'Logout',
    onTap: () {
      context.read<AuthBloc>().add(const AuthEvent.signedOut());
      AutoRouter.of(context).replaceAll([const LoginRoute()]);
    },
  );

  /* Multi level drawer item created for distributor selector */
  final distributorSelector = ExpandedDrawerItem(
    iconData: Icons.device_hub_rounded,
    title: 'Select Distributor',
    drawerItems:
        context.watch<DistributorWatcherBloc>().state.failureOrSuccess?.fold(
      (l) => [],
      (r) {
        return r
            .map((e) => DrawerItem(
                  title: e.distributor,
                  onTap: () {
                    // TODO: Pass url to the fetchProducts event (Product Watcher bloc not created yet.)
                    AutoRouter.of(context).pushAndPopUntil(
                        ProductRoute(url: e.url),
                        predicate: (_) => false);
                  },
                ))
            .toList();
      },
    ),
  );

  /* drawer item for order history */
  final orderHistory = DrawerItem(
    title: 'Order History',
    iconData: Icons.history_rounded,
    onTap: () {
      AutoRouter.of(context)
          .pushAndPopUntil(const OrderHistoryRoute(), predicate: (_) => false);
    },
  );

  /* account remove item */
  final accountRemove = DrawerItem(
    title: 'Remove Account',
    iconData: Icons.person_remove_rounded,
    onTap: () {
      AppDialogBox.confirmationDialog(context,
          title: 'Account Removal',
          content: 'Are your sure you want to remove this account ?',
          confirmText: 'Confirm',
          rejectText: 'Reject',
          titleAlign: TextAlign.center,
          contentAlign: TextAlign.center, confirmTap: () {
        context
            .read<AccountRemovalBloc>()
            .add(const AccountRemovalEvent.removeAccount());
      });
    },
  );

  /* drawer */
  return Drawer(
    child: Column(
      children: [
        const CustomDrawerHeader(),
        distributorSelector,
        orderHistory,
        Expanded(child: Container()),
        accountRemove,
        logout,
      ],
    ),
  );
}

/* Class for drawer header */
class CustomDrawerHeader extends StatelessWidget {
  final Widget? widget;
  const CustomDrawerHeader({Key? key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: DrawerHeader(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: AppColor.neutral,
              blurRadius: 0.5,
              blurStyle: BlurStyle.solid)
        ], color: AppColor.white),
        child: widget ??
            Image.asset(
              'assets/images/actionbar.png',
              scale: 6,
            ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData? iconData;
  final String title;
  final void Function()? onTap;
  const DrawerItem({
    Key? key,
    this.iconData,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title),
      onTap: onTap,
    );
  }
}

/* Tile for multiple selection in app drawer */
class ExpandedDrawerItem extends StatelessWidget {
  final List<DrawerItem>? drawerItems;
  final String title;
  final IconData? iconData;

  const ExpandedDrawerItem({
    Key? key,
    this.drawerItems,
    this.iconData,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: AppColor.transparent),
      child: ExpansionTile(
        leading: Icon(iconData),
        title: Text(title),
        children: drawerItems ?? [],
      ),
    );
  }
}
