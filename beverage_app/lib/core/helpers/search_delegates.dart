import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../application/injection.dart';
import '../application/search_bloc/search_bloc.dart';
import '../presentation/router/router.gr.dart';
import '../presentation/style/colors.dart';
import '../presentation/widgets/shimmer_tile.dart';

class SearchBox extends SearchDelegate {
  final BottomNavigationCubit navigationCubit;

  SearchBox({required this.navigationCubit});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          if (query == '') {
            close(context, null);
          }
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: BlocProvider(
        create: (context) => getIt<SearchBloc>()
          ..add(SearchEvent.searchProducts(searchKey: query)),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.isLoading
                ? ListView.builder(
                    itemBuilder: (context, index) => ShimmerTile(
                      baseColor: !themeDark ? AppColor.white : null,
                      borderRadius: 10,
                    ),
                    itemCount: 10,
                  )
                : state.failureOrSuccess?.fold(
                      (l) => null,
                      // (l) => AppSnackBar.show(
                      //   context,
                      //   content: l.message,
                      //   barType: "failure",
                      // ),
                      (r) => r.isNotEmpty
                          ? ListView.builder(
                              itemCount: r.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Column(
                                children: [
                                  ListTile(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        side: !themeDark
                                            ? const BorderSide(
                                                color: Colors.black26,
                                              )
                                            : BorderSide.none),
                                    tileColor: themeDark ? AppColor.card : null,
                                    onTap: () =>
                                        AutoRouter.of(context).popAndPush(
                                      ProductDetailRoute(
                                        items: r[index],
                                        navigationBloc: navigationCubit,
                                      ),
                                    ),
                                    title: Text(
                                      r[index].brand +
                                          ' ' +
                                          r[index].name +
                                          ' ' +
                                          r[index].cartoonDetail,
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ),
                                  sizedBoxMedium,
                                ],
                              ),
                            )
                          : Center(
                              child: Text(
                                'Search results not found !',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                    ) ??
                    ListView.builder(
                      itemBuilder: (context, index) => const ShimmerTile(
                        borderRadius: 10,
                      ),
                      itemCount: 10,
                    );
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
