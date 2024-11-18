import 'package:beverage_app/core/helpers/date_time_helper.dart';
import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:flutter/material.dart';

class OrderLedgerTile extends StatelessWidget {
  final String transactionName;
  final String transactionType;
  final String transactionDate;
  final double amount;
  final void Function()? onTap;
  const OrderLedgerTile({
    Key? key,
    required this.transactionName,
    required this.transactionType,
    required this.transactionDate,
    required this.amount,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColor.neutral,
            ),
            bottom: BorderSide(
              color: AppColor.neutral,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transactionName,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Transform.rotate(
                  angle: transactionType.toLowerCase() == 'dr' ? 244 : 260,
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: 32,
                    color: transactionType.toLowerCase() == 'dr'
                        ? Colors.red
                        : Colors.green,
                  ),
                )
              ],
            ),
            sizedBoxLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateTimeHelper.dateTimeFormatter(transactionDate,
                      format: 'd MMM y', enableOrdinals: true),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'Rs. $amount',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
