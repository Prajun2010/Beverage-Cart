import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/core/presentation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../../home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart';
import '../../../product/application/product_watcher_bloc/product_watcher_bloc.dart';
import '../../../product/presentation/widgets/product_cart_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return AppScaffold(
      appBar: customAppBar(
        context,
        suffixIconTapped: () =>
            context.read<BottomNavigationCubit>().changedTab(tabId: 1),
      ),
      // bottomNavigationBar: state.selectedItems.isNotEmpty
      //     ? GestureDetector(
      //         onTap: () => AppDialogBox.confirmationDialog(
      //           context,
      //           title: 'Are you sure?',
      //           content: 'Do you want to place these orders?',
      //           confirmText: 'Yes',
      //           rejectText: 'No',
      //           confirmTap: () =>
      //               context.read<ProductActionBloc>().add(
      //                     ProductActionEvent.placeOrder(
      //                         data: state.itemQuantity),
      //                   ),
      //         ),
      //         child: Container(
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               stops: const [0.0, 1.0],
      //               colors: [
      //                 AppColor.buttonColor2,
      //                 AppColor.buttonColor1,
      //               ],
      //             ),
      //           ),
      //           height: 50,
      //           child: Center(
      //               child: Text(
      //             'Submit Order',
      //             style: Theme.of(context)
      //                 .textTheme
      //                 .headline6
      //                 ?.copyWith(color: AppColor.white),
      //           )),
      //         ),
      //       )
      //     : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxLarge,
          Text(
            ' Cart',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          sizedBoxMedium,
          SingleChildScrollView(
            child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
              builder: (context, state) {
                return Column(
                  children: [
                    state.selectedItems.isNotEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return ProductCartTile(
                                  name: state.selectedItems[index].name +
                                      ' ' +
                                      state.selectedItems[index].quantity,
                                  cartoonDetail:
                                      state.selectedItems[index].cartoonDetail,
                                  image: state.selectedItems[index].image,
                                  quantity: context
                                      .read<ProductWatcherBloc>()
                                      .state
                                      .itemQuantity
                                      .where((element) =>
                                          element['product_id'] ==
                                          state.selectedItems[index].id)
                                      .first['count'],
                                  decrementor: () =>
                                      context.read<ProductWatcherBloc>().add(
                                            ProductWatcherEvent.decrement(
                                                productId: state
                                                    .selectedItems[index].id),
                                          ),
                                  incrementor: () =>
                                      context.read<ProductWatcherBloc>().add(
                                            ProductWatcherEvent.increment(
                                                productId: state
                                                    .selectedItems[index].id),
                                          ),
                                  removeItem: () =>
                                      context.read<ProductWatcherBloc>().add(
                                            ProductWatcherEvent.removeItem(
                                                productId: state
                                                    .selectedItems[index].id),
                                          ),
                                  price: state.selectedItems[index].price,
                                  stock: state.selectedItems[index].stock,
                                  discountedPrice: state
                                      .selectedItems[index].discountedPrice,
                                  specialPrice:
                                      state.selectedItems[index].specialPrice,
                                );
                              },
                              itemCount: state.selectedItems.length,
                            ),
                          )
                        : SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.remove_shopping_cart_outlined,
                                  size: 30,
                                  color: AppColor.neutral,
                                ),
                                sizedBoxMedium,
                                Text(
                                  'Cart is empty !',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        color: AppColor.neutral,
                                      ),
                                ),
                              ],
                            ),
                          ),
                    sizedBoxMedium,
                    Divider(
                      color: AppColor.neutral,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 16),
                            ),
                            Text('Rs. ${state.subTotal}'),
                          ],
                        ),
                        sizedBoxSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taxes',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 16),
                            ),
                            Text('Rs. ${state.tax}'),
                          ],
                        ),
                        sizedBoxSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 16),
                            ),
                            Text('Rs. ${state.total}'),
                          ],
                        ),
                        sizedBoxMedium,
                        CustomElevatedButton(
                            text: 'Checkout',
                            onPressed: () => (state.selectedItems.isNotEmpty)
                                ? AutoRouter.of(context).push(
                                    ProductPaymentRoute(
                                      fromCart: true,
                                      navigationCubit:
                                          context.read<BottomNavigationCubit>(),
                                    ),
                                  )
                                : AppSnackBar.show(
                                    context,
                                    content: 'Items not found to checkout!',
                                    barType: 'failure',
                                  )

                            // onPressed: () => AutoRouter.of(context)
                            //     .pushAndPopUntil(
                            //         const OrderHistoryRoute(),
                            //         predicate: (_) => false),
                            )
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
