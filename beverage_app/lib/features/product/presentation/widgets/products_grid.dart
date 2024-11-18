import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';
import 'product_grid_tile.dart';

class ProductsGrid extends StatelessWidget {
  final List productList;
  final String? url;
  const ProductsGrid({
    Key? key,
    required this.productList,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return productList.isNotEmpty
        ? RefreshIndicator(
            onRefresh: () async {
              context.read<ProductWatcherBloc>().add(
                  ProductWatcherEvent.fetchProductCategories(
                      url: AppEndPoints.categories));
            },
            child: GridView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => AutoRouter.of(context).push(ProductDetailRoute(
                      items: productList[index],
                      navigationBloc: context.read<BottomNavigationCubit>())),
                  child: ProductGridTile(
                    items: productList[index],
                  ),
                );
              },
              itemCount: productList.length,
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Products not available!'),
                sizedBoxSmall,
                AppTextButton(
                  text: 'Refresh',
                  onTap: () => context.read<ProductWatcherBloc>().add(
                      ProductWatcherEvent.fetchProductCategories(
                          url: AppEndPoints.categories)),
                )
              ],
            ),
          );
  }
}
