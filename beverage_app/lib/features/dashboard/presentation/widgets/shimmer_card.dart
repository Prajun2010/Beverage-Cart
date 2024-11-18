import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? baseColor;
  const ShimmerCard({
    Key? key,
    this.height,
    this.width,
    this.baseColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        child: Container(
          height: height ?? 100,
          width: width ?? 100,
          decoration: BoxDecoration(
            color: AppColor.card,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        baseColor: baseColor ?? AppColor.card,
        highlightColor: AppColor.card.withOpacity(0.5),
      );
}
