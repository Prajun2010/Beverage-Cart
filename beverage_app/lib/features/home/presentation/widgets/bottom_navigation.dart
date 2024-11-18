import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../product/application/product_watcher_bloc/product_watcher_bloc.dart';
import '../../application/bottom_navigation_cubut/bottom_navigation_cubit.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: themeDark ? AppColor.background : AppColor.white,
        boxShadow: [
          BoxShadow(
            color: themeDark
                ? AppColor.white.withOpacity(0.5)
                : AppColor.neutral.withOpacity(0.5),
            offset: const Offset(0, -2),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () =>
                context.read<BottomNavigationCubit>().changedTab(tabId: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
                  builder: (context, state) {
                    return Flexible(
                      child: Icon(
                        Icons.home_outlined,
                        size: state.tabPosition == 0 ? 32 : 28,
                        color: state.tabPosition == 0
                            ? AppColor.backgroundSecond
                            : themeDark
                                ? AppColor.white
                                : AppColor.neutral,
                      ),
                    );
                  },
                ),
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () =>
                context.read<BottomNavigationCubit>().changedTab(tabId: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
                  builder: (context, state) {
                    return Flexible(
                      child: Icon(
                        Icons.person_outline_outlined,
                        size: state.tabPosition == 1 ? 32 : 28,
                        color: state.tabPosition == 1
                            ? AppColor.backgroundSecond
                            : themeDark
                                ? AppColor.white
                                : AppColor.neutral,
                      ),
                    );
                  },
                ),
                Text(
                  'Account',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              context.read<BottomNavigationCubit>().changedTab(tabId: 2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
                  builder: (context, state) {
                    return Flexible(
                      child: Icon(
                        Icons.category_outlined,
                        size: state.tabPosition == 2 ? 32 : 28,
                        color: state.tabPosition == 2
                            ? AppColor.backgroundSecond
                            : themeDark
                                ? AppColor.white
                                : AppColor.neutral,
                      ),
                    );
                  },
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              context.read<BottomNavigationCubit>().changedTab(tabId: 3);

              context
                  .read<ProductWatcherBloc>()
                  .add(const ProductWatcherEvent.computeAmount());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Stack(
                    children: [
                      BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
                        builder: (context, state) {
                          return Icon(
                            Icons.shopping_cart_outlined,
                            size: state.tabPosition == 3 ? 32 : 28,
                            color: state.tabPosition == 3
                                ? AppColor.backgroundSecond
                                : themeDark
                                    ? AppColor.white
                                    : AppColor.neutral,
                          );
                        },
                      ),
                      BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: state.cartCount != 0,
                            child: Positioned(
                              top: 0.01,
                              right: 0.2,
                              child: CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: AppColor.danger,
                                child: Text(
                                  '${state.cartCount}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(
                                        color: AppColor.white,
                                        fontSize: 7,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Text(
                  'Cart',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
