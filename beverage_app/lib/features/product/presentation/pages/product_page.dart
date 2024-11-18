import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/search_delegates.dart';
import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_error_page.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_searchbox.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';
import '../widgets/products_grid.dart';
import '../widgets/tab_button.dart';

class ProductPage extends StatelessWidget {
  final String? url;

  const ProductPage({
    Key? key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    context.read<ProductWatcherBloc>().add(
          ProductWatcherEvent.fetchProductCategories(
            url: AppEndPoints.categories,
          ),
        );
    PageController _controller = PageController();

    return BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
      builder: (context, state) {
        // return WillPopScope(

        //   onWillPop: () async {
        //     final response = await AppDialogBox.confirmationDialog(
        //       context,
        //       title: 'Exit conformation',
        //       content: 'Do you want to exit the app?',
        //       confirmText: 'Yes',
        //       rejectText: 'No',
        //     );

        //     return Future.value(response);
        //   },
        // child:
        return Stack(
          children: [
            AppScaffold(
              appBar: customAppBar(
                context,
                suffixIconTapped: () =>
                    context.read<BottomNavigationCubit>().changedTab(tabId: 1),
              ),
              pagePadding: 0,
              body: state.failureOrSuccess?.fold(
                (l) => AppErrorPage(
                  onTap: () => context.read<ProductWatcherBloc>().add(
                        ProductWatcherEvent.fetchProductCategories(
                          url: AppEndPoints.categories,
                        ),
                      ),
                ),
                (r) {
                  return Column(
                    children: [
                      sizedBoxMedium,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: AppSearchBox(
                          borderRadius: 15,
                          enableFillColor: true,
                          fillColor: themeDark ? AppColor.card : AppColor.white,
                          borderColor:
                              themeDark ? AppColor.transparent : AppColor.card,
                          hintText: 'Search...',
                          readOnly: true,
                          onTap: () => showSearch(
                              context: context,
                              delegate: SearchBox(
                                  navigationCubit:
                                      context.read<BottomNavigationCubit>())),
                        ),
                      ),
                      sizedBoxLarge,
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.neutral,
                                  ),
                                ],
                                color: themeDark
                                    ? AppColor.background
                                    : AppColor.white,
                              ),
                              width: 86,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return TabButton(
                                    isSelected: state.selectedPage == index,
                                    onTap: () {
                                      context.read<ProductWatcherBloc>().add(
                                          ProductWatcherEvent.changePage(
                                              page: index));
                                      _controller.jumpToPage(index);
                                    },
                                    image: r[index].image,
                                    name: r[index].name,
                                  );
                                },
                                itemCount: r.length,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: PageView.builder(
                                      controller: _controller,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        var productList =
                                            r[state.selectedPage].products;

                                        if (state.searchKey != null) {
                                          productList = productList
                                              .where(
                                                (element) =>
                                                    element.name
                                                        .toLowerCase()
                                                        .contains(
                                                          state.searchKey!
                                                              .toLowerCase(),
                                                        ) ||
                                                    element.brand
                                                        .toLowerCase()
                                                        .contains(
                                                          state.searchKey!
                                                              .toLowerCase(),
                                                        ),
                                              )
                                              .toList();
                                        }

                                        return ProductsGrid(
                                          url: url,
                                          productList: productList,
                                        );
                                      },
                                      itemCount: r.length,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            AppSavingOverlay(isSaving: state.isLoading),
          ],
        );
      },
    );
  }
}
