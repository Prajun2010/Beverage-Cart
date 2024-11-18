import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  final bool selected;
  final Widget child;
  final void Function()? onTap;

  const PaymentTile({
    Key? key,
    required this.selected,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        color: selected ? AppColor.transit : null,
        height: MediaQuery.of(context).size.height * 0.09,
        child: child,
      ),
    );
  }
}
