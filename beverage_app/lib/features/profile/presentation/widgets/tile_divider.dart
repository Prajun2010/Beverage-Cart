import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class TileDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  const TileDivider({
    Key? key,
    this.color,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColor.neutral,
      height: height,
    );
  }
}
