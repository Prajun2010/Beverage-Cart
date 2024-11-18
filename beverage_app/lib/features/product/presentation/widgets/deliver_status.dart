import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/style/colors.dart';

class DeliverStatus extends StatelessWidget {
  final bool deliverStatus;
  const DeliverStatus({
    Key? key,
    required this.deliverStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: deliverStatus ? AppColor.delivered : AppColor.cancelled,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Text(
        deliverStatus ? 'Deliverd' : 'Pending',
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: AppColor.white),
      ),
    );
  }
}
