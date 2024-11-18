import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/helpers/search_delegates.dart';
import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_searchbox.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../../product/application/feature_product_bloc/featured_product_bloc.dart';
import '../../../product/application/product_watcher_bloc/product_watcher_bloc.dart';
import '../../../product/domain/entities/category_items_entity.dart';
import '../../../profile/application/profile_watcher_bloc/profile_watcher_bloc.dart';
import '../../application/banner_watcher_bloc/banner_watcher_bloc.dart';
import '../widgets/banner_card.dart';
import '../widgets/category_card.dart';
import '../widgets/featured_card.dart';
import '../widgets/notice_card.dart';
import '../widgets/shimmer_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    context
        .read<ProfileWatcherBloc>()
        .add(const ProfileWatcherEvent.fetchProfileData());
    return BlocProvider(
      create: (context) => getIt<FeaturedProductBloc>()
        ..add(
          const FeaturedProductEvent.fetchFeaturedProducts(),
        ),

      child: AppScaffold(
          body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            titleSpacing: 0,
            automaticallyImplyLeading: false,
            floating: false,
            snap: false,
            pinned: true,
            backgroundColor: themeDark ? AppColor.background : AppColor.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: customAppBar(
                  context,
                  suffixIconTapped: () => context
                      .read<BottomNavigationCubit>()
                      .changedTab(tabId: 1),
                ),
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.2,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(5),
              child: GestureDetector(
                onTap: () {
                  showSearch(
                      context: context,
                      delegate: SearchBox(
                          navigationCubit:
                              context.read<BottomNavigationCubit>()));
                },
                child: AppSearchBox(
                  readOnly: true,
                  borderRadius: 15,
                  enableFillColor: true,
                  fillColor: themeDark ? AppColor.card : AppColor.white,
                  borderColor: themeDark ? AppColor.transparent : AppColor.card,
                  hintText: 'Search...',
                  onTap: () => showSearch(
                          context: context,
                          delegate: SearchBox(
                              navigationCubit:
                                  context.read<BottomNavigationCubit>()))
                      .then((value) =>
                          FocusManager.instance.primaryFocus?.unfocus()),
                ),
              ),
            ),
          )
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            sizedBoxLarge,
            /* Banner section */

            BlocProvider(
              create: (context) => getIt<BannerWatcherBloc>()
                ..add(const BannerWatcherEvent.fetchBanner()),
              child: BlocBuilder<BannerWatcherBloc, BannerWatcherState>(
                builder: (context, state) => state.isLoading
                    ? ShimmerCard(
                        baseColor: !themeDark ? AppColor.white : null,
                        height: MediaQuery.of(context).size.height * 0.15,
                      )
                    : state.failureOrSuccess?.fold(
                          (l) => null,
                          (r) => BannerCard(
                            bannerImage: r.bannerImage,
                            margin: r.margin,
                            mrp: r.mrp,
                            onTap: () => AutoRouter.of(context).push(
                              ProductDetailRoute(
                                items: CategoryItemsEntity(
                                  id: r.id,
                                  brand: r.brand,
                                  name: r.name,
                                  quantity: r.quantity,
                                  cartoonDetail: r.cartoonDetail,
                                  image: r.productImage,
                                  price: r.price,
                                  code: r.code,
                                  stock: r.stock,
                                  taxPercentage: r.taxPercentage,
                                  packSize: r.packSize,
                                  description: r.description,
                                ),
                                navigationBloc:
                                    context.read<BottomNavigationCubit>(),
                              ),
                            ),
                          ),
                        ) ??
                        Container(),
              ),
            ),
            sizedBoxMedium,
            /* Featured section */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: Theme.of(context).textTheme.headline6,
                ),
                sizedBoxMedium,
                LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height * 0.23,
                  child: BlocBuilder<FeaturedProductBloc, FeaturedProductState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => ShimmerCard(
                                baseColor: !themeDark ? AppColor.white : null,
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      sizedBoxMediumWidth,
                              itemCount: 5,
                            )
                          : state.failureOrSuccess?.fold(
                                (l) => NoticeCard(
                                  noticeText:
                                      'Featured products not available!',
                                  refetch: () => context
                                      .read<FeaturedProductBloc>()
                                      .add(const FeaturedProductEvent
                                          .fetchFeaturedProducts()),
                                ),
                                (r) => r.isNotEmpty
                                    ? ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: r.length,
                                        itemBuilder: (context, index) =>
                                            FeaturedCard(
                                          imageUrl: r[index].image,
                                          price: r[index].price,
                                          brand: r[index].brand,
                                          name: r[index].name,
                                          discountedPrice:
                                              r[index].discountedPrice,
                                          specialPrice: r[index].specialPrice,
                                          discountPercentage:
                                              r[index].discountPercentage,
                                          onTap: () =>
                                              AutoRouter.of(context).push(
                                            ProductDetailRoute(
                                                items: r[index],
                                                navigationBloc: context.read<
                                                    BottomNavigationCubit>()),
                                          ),
                                        ),
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                sizedBoxMediumWidth,
                                      )
                                    : NoticeCard(
                                        noticeText:
                                            'Featured products not available!',
                                        refetch: () => context
                                            .read<FeaturedProductBloc>()
                                            .add(const FeaturedProductEvent
                                                .fetchFeaturedProducts()),
                                      ),
                              ) ??
                              NoticeCard(
                                noticeText: 'Featured products not available!',
                                refetch: () => context
                                    .read<FeaturedProductBloc>()
                                    .add(const FeaturedProductEvent
                                        .fetchFeaturedProducts()),
                              );
                    },
                  ),
                )
              ],
            ),
            sizedBoxMedium,
            /* Categories section */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<BottomNavigationCubit>()
                            .changedTab(tabId: 2);
                      },
                      child: Text(
                        'View All',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
                sizedBoxMedium,
                LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height * 0.18,
                  child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
                    builder: (context, state) {
                      // debugPrint('${state.isLoading}');
                      return state.isLoading
                          ? ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => ShimmerCard(
                                baseColor: !themeDark ? AppColor.white : null,
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      sizedBoxMediumWidth,
                              itemCount: 5,
                            )
                          : state.failureOrSuccess?.fold(
                                (l) => NoticeCard(
                                  noticeText:
                                      'Product categories not available!',
                                  refetch: () => context
                                      .read<ProductWatcherBloc>()
                                      .add(ProductWatcherEvent
                                          .fetchProductCategories(
                                              url: AppEndPoints.categories)),
                                ),
                                (r) => r.isNotEmpty
                                    ? ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: r.length,
                                        itemBuilder: (context, index) =>
                                            CategoryCard(
                                          imageUrl: r[index].image,
                                          categoryName: r[index].name,
                                          numberOfProducts:
                                              r[index].products.length,
                                          onTap: () async {
                                            context
                                                .read<BottomNavigationCubit>()
                                                .changedTab(
                                                  tabId: 2,
                                                );
                                            context
                                                .read<ProductWatcherBloc>()
                                                .add(
                                                  ProductWatcherEvent
                                                      .changePage(page: index),
                                                );
                                          },
                                        ),
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                sizedBoxMediumWidth,
                                      )
                                    : NoticeCard(
                                        noticeText:
                                            'Product categories not available!',
                                        refetch: () => context
                                            .read<ProductWatcherBloc>()
                                            .add(ProductWatcherEvent
                                                .fetchProductCategories(
                                                    url: AppEndPoints
                                                        .categories)),
                                      ),
                              ) ??
                              NoticeCard(
                                noticeText: 'Product categories not available!',
                                refetch: () => context
                                    .read<ProductWatcherBloc>()
                                    .add(ProductWatcherEvent
                                        .fetchProductCategories(
                                            url: AppEndPoints.categories)),
                              );
                    },
                  ),
                )
              ],
            ),
            sizedBoxMedium,
            Text(
              ' Your Account',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            sizedBoxLarge,
            Text(
              ' Outstanding Balance',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            sizedBoxLarge,
            BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
              builder: (context, state) => state.isLoading
                  ? ShimmerCard(
                      height: MediaQuery.of(context).size.height * 0.02,
                    )
                  : state.failureOrSuccess?.fold(
                        (l) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' XXXXXXX',
                              style: Theme.of(context).textTheme.caption,
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
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: AppColor.delivered,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ) ??
                      Container(),
            ),
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
            //                 fromCart: false,
            //                 outstandingBalance: r.outstandingBalance,
            //                 navigationCubit:
            //                     context.read<BottomNavigationCubit>(),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ) ??
            //       Container(),
            // ),
            sizedBoxLarge,
          ],
        ),
      )),
      // ),
    );
  }
}
