import 'package:beverage_app/core/application/injection.dart';
import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/features/cart/presentation/pages/cart_page.dart';
import 'package:beverage_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:beverage_app/features/home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import 'package:beverage_app/features/product/presentation/pages/product_page.dart';
import 'package:beverage_app/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BottomNavigationCubit>(),
      child: Scaffold(
        body: Container(
          color: AppColor.background,
          child: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
            builder: (context, state) => state.tabPosition == 0
                ? const DashboardPage()
                : state.tabPosition == 1
                    ? const ProfilePage()
                    : state.tabPosition == 2
                        ? const ProductPage()
                        : const CartPage(),
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
