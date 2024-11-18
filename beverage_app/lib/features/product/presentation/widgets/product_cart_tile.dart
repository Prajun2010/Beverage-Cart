import 'package:flutter/material.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_dialogbox.dart';
import 'incrementor_decrementor.dart';

class ProductCartTile extends StatelessWidget {
  final String name, cartoonDetail, image;
  final void Function()? incrementor;
  final void Function()? decrementor;
  final void Function()? removeItem;
  final double price;
  final int stock;
  final double? discountedPrice;
  final double? specialPrice;

  final int quantity;

  const ProductCartTile({
    Key? key,
    required this.name,
    required this.cartoonDetail,
    required this.image,
    required this.quantity,
    required this.decrementor,
    required this.incrementor,
    required this.removeItem,
    required this.price,
    required this.stock,
    this.discountedPrice,
    this.specialPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: themeDark ? AppColor.card : AppColor.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                AppDialogBox.confirmationDialog(
                  context,
                  title: 'Remove item',
                  content: 'Do you want to remove this item?',
                  confirmText: 'Yes',
                  rejectText: 'No',
                  confirmTap: removeItem,
                );
              },
              child: Icon(
                Icons.cancel_rounded,
                color: AppColor.danger,
              ),
            ),
            sizedBoxExtraWidth,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          name,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold),
                          maxLines: 4,
                        ),
                      ),
                      Text(
                        'Rs. ${(quantity * (specialPrice ?? discountedPrice ?? price)).toStringAsFixed(2)}',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  sizedBoxSmall,
                  Row(
                    children: [
                      Text(
                        '($cartoonDetail)',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      specialPrice != null
                          ? Text(
                              'Rs. $specialPrice',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            )
                          : discountedPrice != null
                              ? Text(
                                  'Rs. $discountedPrice',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  'Rs. $price',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                      IncrementorDecrementor(
                        stock: stock,
                        increment: incrementor,
                        decrement: () => quantity != 1
                            ? decrementor!()
                            : AppDialogBox.confirmationDialog(
                                context,
                                title: 'Remove item',
                                content: 'Do you want to remove this item?',
                                confirmText: 'Yes',
                                rejectText: 'No',
                                confirmTap: decrementor,
                              ),
                        quantity: quantity,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
