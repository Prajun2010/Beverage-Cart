import 'package:flutter/material.dart';

import '../../../../core/presentation/style/colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final String status;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final double? width;
  const OrderStatusWidget({
    Key? key,
    required this.status,
    this.padding,
    this.radius,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: status.toLowerCase() == 'order cancelled'
            ? AppColor.danger
            : status.toLowerCase() == 'order booked'
                ? AppColor.booked
                : status.toLowerCase() == 'in-transit'
                    ? AppColor.transit
                    : AppColor.delivered,
        // gradient: status.toLowerCase() == 'in-transit'
        //     ? LinearGradient(colors: [
        //         AppColor.danger.withOpacity(1),
        //         AppColor.buttonColor1.withOpacity(1),
        //       ])
        //     : null,
        borderRadius: BorderRadius.circular(radius ?? 12),
      ),
      child: Text(
        status,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: status.toLowerCase() == 'order booked'
                  ? AppColor.appTextColor
                  : AppColor.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
