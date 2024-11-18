import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../dashboard/presentation/widgets/ribbon_tag.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';
import '../../domain/entities/category_items_entity.dart';
import 'incrementor_decrementor.dart';

class ProductGridTile extends StatelessWidget {
  final CategoryItemsEntity items;
  const ProductGridTile({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: themeDark ? AppColor.card : AppColor.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: !themeDark
                  ? Border.all(
                      color: Colors.black12,
                    )
                  : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sizedBoxMedium,
                SizedBox(
                  height: 100,
                  width: 80,
                  child: CachedNetworkImage(
                    imageUrl: items.image,
                    placeholder: (context, url) => Image.asset(
                      'assets/images/untitled_logo.png',
                      scale: 3,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/untitled_logo.png',
                      scale: 3,
                    ),
                  ),
                ),
                sizedBoxSmall,
                Text(
                  items.brand,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: AppColor.neutral.withOpacity(0.5),
                        fontSize: 10,
                      ),
                  textAlign: TextAlign.center,
                ),
                sizedBoxSmall,
                Text(
                  items.name,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                sizedBoxSmall,
                Text(
                  ' (${items.cartoonDetail})',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                sizedBoxSmall,
                items.specialPrice != null
                    ? Text(
                        'Rs. ${items.specialPrice}/-',
                        style: Theme.of(context).textTheme.caption,
                      )
                    : items.discountedPrice != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rs. ${items.discountedPrice}/-',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color: AppColor.delivered,
                                    ),
                              ),
                              sizedBoxSmallWidth,
                              Text(
                                'Rs. ${items.price}/-',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
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
                items.stock < 1
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
                            increment: () =>
                                context.read<ProductWatcherBloc>().add(
                                      ProductWatcherEvent.increment(
                                          productId: items.id),
                                    ),
                            decrement: () => context
                                .read<ProductWatcherBloc>()
                                .add(ProductWatcherEvent.decrement(
                                    productId: items.id)),
                            quantity: context
                                .read<ProductWatcherBloc>()
                                .state
                                .itemQuantity
                                .where(
                                  (element) =>
                                      element['product_id'] == items.id,
                                )
                                .first['count'],
                            stock: items.stock,
                          )
                        : AddButton(
                            onTap: () => context.read<ProductWatcherBloc>().add(
                                  ProductWatcherEvent.addItems(
                                      selectedItem: items),
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
                // height: 20,
                // width: 45,
                child: CustomPaint(
                    painter: RibbonTag(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 8,
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Save',
                            style: Theme.of(context).textTheme.button?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.white,
                                ),
                          ),
                          Text(
                            items.discountPercentage != null
                                ? items.discountPercentage!.toStringAsFixed(0) +
                                    '%'
                                : '',
                            style: Theme.of(context).textTheme.button?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.white,
                                ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final void Function()? onTap;
  const AddButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 31,
        width: 90,
        decoration: BoxDecoration(
          color: themeDark ? AppColor.background : AppColor.backgroundSecond,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Add to Cart',
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}
