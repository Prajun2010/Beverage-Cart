import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  final int numberOfProducts;
  final void Function()? onTap;
  const CategoryCard({
    Key? key,
    required this.imageUrl,
    required this.categoryName,
    required this.numberOfProducts,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: themeDark ? AppColor.card : AppColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: !themeDark ? Border.all(color: Colors.black12) : null,
        ),
        child: Column(
          children: [
            CachedNetworkImage(
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
            sizedBoxSmall,
            Text(
              categoryName,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            sizedBoxSmall,
            Text(
              '$numberOfProducts products',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: AppColor.neutral,
                    fontSize: 10,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
