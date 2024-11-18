import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:beverage_app/features/dashboard/presentation/widgets/ribbon_tag.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String imageUrl;
  final double price;
  final String brand;
  final String name;
  final double? specialPrice;
  final double? discountedPrice;
  final double? discountPercentage;
  final void Function()? onTap;
  const FeaturedCard({
    Key? key,
    required this.imageUrl,
    required this.price,
    required this.brand,
    required this.name,
    this.specialPrice,
    this.discountedPrice,
    this.discountPercentage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: themeDark ? AppColor.card : Colors.white,
                border: !themeDark ? Border.all(color: Colors.black12) : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: imageUrl,
                    child: CachedNetworkImage(
                      height: 90,
                      width: 70,
                      imageUrl: imageUrl,
                      placeholder: (context, url) => Image.asset(
                        'assets/images/untitled_logo.png',
                        scale: 4,
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/images/untitled_logo.png',
                        scale: 4,
                      ),
                    ),
                  ),
                  sizedBoxSmall,
                  Text(
                    brand,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: AppColor.neutral,
                          fontSize: 10,
                        ),
                  ),
                  sizedBoxSmall,
                  Text(
                    name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  sizedBoxSmall,
                  specialPrice != null
                      ? Text(
                          'Rs. $specialPrice/-',
                          style: Theme.of(context).textTheme.caption,
                        )
                      : discountedPrice != null
                          ? Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    'Rs. $discountedPrice/-',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                          color: AppColor.delivered,
                                        ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Text(
                                    'Rs. $price/-',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                  )
                                ],
                              ),
                            )
                          : Text(
                              'Rs. $price/-',
                              style: Theme.of(context).textTheme.caption,
                            ),
                ],
              ),
            ),
            Visibility(
              visible: discountPercentage != null,
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
                            discountPercentage != null
                                ? discountPercentage!.toStringAsFixed(0) + '%'
                                : '',
                            style: Theme.of(context).textTheme.button?.copyWith(
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
    );
  }
}
