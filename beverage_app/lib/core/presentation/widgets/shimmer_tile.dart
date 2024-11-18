import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTile extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? highlightColor;
  final Color? baseColor;

  const ShimmerTile({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
    this.margin,
    this.padding,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColor.background,
      highlightColor: highlightColor ?? AppColor.card,
      child: Container(
        margin: margin ?? const EdgeInsets.only(bottom: 16),
        padding: padding,
        height: height ?? 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0)),
          // border: Border(
          //   top: BorderSide(color: AppColor.neutral),
          //   bottom: BorderSide(
          //     color: AppColor.background,
          //   ),
          // ),
          color: baseColor ?? AppColor.card,
        ),
      ),
    );
  }
}
