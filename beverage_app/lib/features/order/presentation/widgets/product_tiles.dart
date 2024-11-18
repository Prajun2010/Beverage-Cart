import 'package:flutter/material.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../product/presentation/widgets/deliver_status.dart';

class ProductTile extends StatelessWidget {
  final String? image;
  final String name, quantity, detail, orderStatus;
  final double lineTotal;
  final bool deliverdStatus;

  const ProductTile({
    Key? key,
    this.image,
    required this.lineTotal,
    required this.name,
    required this.quantity,
    required this.detail,
    required this.deliverdStatus,
    required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  'Rs. $lineTotal',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            sizedBoxSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '($detail)',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Qty:$quantity',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: AppColor.neutral),
                ),
              ],
            ),
            sizedBoxSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    'Rs. ${lineTotal / double.parse(quantity)}/-',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(child: DeliverStatus(deliverStatus: deliverdStatus))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
