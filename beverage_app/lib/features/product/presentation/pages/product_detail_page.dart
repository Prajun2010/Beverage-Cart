import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

import '../../../../core/helpers/search_delegates.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_searchbox.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../dashboard/presentation/widgets/ribbon_tag.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';
import '../../domain/entities/category_items_entity.dart';
import '../widgets/incrementor_decrementor.dart';
import '../widgets/product_grid_tile.dart';

class ProductDetailPage extends StatelessWidget {
  final CategoryItemsEntity items;
  final BottomNavigationCubit navigationBloc;
  const ProductDetailPage({
    Key? key,
    required this.items,
    required this.navigationBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppScaffold(
      appBar: customAppBar(
        context,
        prefixIconTapped: () {
          // navigationBloc.changedTab(tabId: 1);
          AutoRouter.of(context).pop();
          // AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
        },
        suffixIconTapped: () {
          navigationBloc.changedTab(tabId: 1);
          AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
        },
      ),
      body: Column(
        children: [
          sizedBoxLarge,
          AppSearchBox(
            borderRadius: 15,
            enableFillColor: true,
            fillColor: themeDark ? AppColor.card : AppColor.white,
            borderColor: themeDark ? AppColor.transparent : Colors.black87,
            hintText: 'Search...',
            readOnly: true,
            onTap: () => showSearch(
              context: context,
              delegate: SearchBox(
                navigationCubit: navigationBloc,
              ),
            ),
          ),
          sizedBoxMedium,
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: themeDark ? AppColor.card : AppColor.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: !themeDark
                                ? Border.all(color: Colors.black12)
                                : null),
                        height: MediaQuery.of(context).size.height * 0.30,
                        child: Column(
                          children: [
                            Expanded(
                              child: CachedNetworkImage(
                                imageUrl: items.image,
                              ),
                            ),
                            sizedBoxMedium,
                            BlocBuilder<ProductWatcherBloc,
                                ProductWatcherState>(
                              builder: (context, state) => items.stock < 1
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.neutral,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: Text(
                                        'Out of Stock',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            ?.copyWith(color: AppColor.white),
                                      ),
                                    )
                                  : context
                                          .read<ProductWatcherBloc>()
                                          .state
                                          .selectedItems
                                          .map((e) => e.id)
                                          .toList()
                                          .contains(items.id)
                                      ? IncrementorDecrementor(
                                          increment: () => context
                                              .read<ProductWatcherBloc>()
                                              .add(
                                                ProductWatcherEvent.increment(
                                                    productId: items.id),
                                              ),
                                          decrement: () => context
                                              .read<ProductWatcherBloc>()
                                              .add(
                                                  ProductWatcherEvent.decrement(
                                                      productId: items.id)),
                                          quantity: context
                                              .read<ProductWatcherBloc>()
                                              .state
                                              .itemQuantity
                                              .where((element) =>
                                                  element['product_id'] ==
                                                  items.id)
                                              .first['count'],
                                          stock: items.stock,
                                        )
                                      : AddButton(
                                          onTap: () => context
                                              .read<ProductWatcherBloc>()
                                              .add(
                                                ProductWatcherEvent.addItems(
                                                  selectedItem: items,
                                                ),
                                              ),
                                        ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: items.discountPercentage != null,
                        child: Positioned(
                          right: 0,
                          child: Container(
                            constraints: const BoxConstraints(
                              maxHeight: 130,
                              minHeight: 130,
                              minWidth: 45,
                            ),
                            child: CustomPaint(
                              painter: RibbonTag(),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                  vertical: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Save',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.white,
                                          ),
                                    ),
                                    Text(
                                      items.discountPercentage != null
                                          ? items.discountPercentage!
                                                  .toStringAsFixed(0) +
                                              '%'
                                          : '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items.brand,
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            color: AppColor.neutral,
                          ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<ProductWatcherBloc>()
                            .add(const ProductWatcherEvent.computeAmount());
                        navigationBloc.changedTab(tabId: 3);

                        AutoRouter.of(context)
                            .popUntilRouteWithName(HomeRoute.name);
                      },
                      child: Stack(
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                              size: 24,
                              color: themeDark
                                  ? AppColor.white
                                  : AppColor.backgroundSecond),
                          BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
                            builder: (context, state) {
                              return Visibility(
                                visible: context
                                    .read<ProductWatcherBloc>()
                                    .state
                                    .selectedItems
                                    .map((e) => e.id)
                                    .toList()
                                    .contains(items.id),
                                child: Positioned(
                                  top: 0.01,
                                  right: 0.2,
                                  child: CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: AppColor.danger,
                                    child: Text(
                                      '${context.read<ProductWatcherBloc>().state.selectedItems.map((e) => e.id).toList().contains(items.id) ? context.read<ProductWatcherBloc>().state.itemQuantity.where((element) => element['product_id'] == items.id).first['count'] : 0}',
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
                    )
                  ],
                ),
                sizedBoxSmall,
                Text(
                  items.name,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                sizedBoxSmall,
                Text(
                  '(${items.cartoonDetail})',
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                sizedBoxSmall,
                items.specialPrice != null
                    ? Text(
                        'Rs. ${items.specialPrice}/-',
                        style: Theme.of(context).textTheme.caption,
                      )
                    : items.discountedPrice != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ${items.discountedPrice}/-',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color: AppColor.delivered,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              sizedBoxSmallWidth,
                              Text(
                                'Rs. ${items.price}/-',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                              )
                            ],
                          )
                        : Text(
                            'Rs. ${items.price}/-',
                            style: Theme.of(context).textTheme.caption,
                          ),
                sizedBoxMedium,
                Text(
                  items.description,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
