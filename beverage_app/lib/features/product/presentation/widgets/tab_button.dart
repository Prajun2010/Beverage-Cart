import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';

class TabButton extends StatelessWidget {
  final String name, image;
  final bool? isSelected;
  final void Function()? onTap;
  const TabButton({
    Key? key,
    required this.image,
    required this.name,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected!
              ? themeDark
                  ? AppColor.card
                  : AppColor.backgroundSecond
              : null,
          border: !isSelected!
              ? Border(
                  bottom: BorderSide(
                    color: AppColor.neutral,
                  ),
                  right: BorderSide(
                    color: AppColor.neutral,
                  ),
                )
              : null,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(
              imageUrl: image,
              height: 62,
              width: 62,
              fit: BoxFit.contain,
              placeholder: (context, url) => Image.asset(
                'assets/images/untitled_logo.png',
                scale: 4,
              ),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/untitled_logo.png',
                scale: 4,
              ),
            ),
            sizedBoxMedium,
            Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: isSelected! ? AppColor.white : null,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
