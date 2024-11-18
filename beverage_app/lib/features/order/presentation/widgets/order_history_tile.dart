import 'package:beverage_app/core/helpers/date_time_helper.dart';
import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:beverage_app/features/order/presentation/widgets/order_status_widget.dart';
import 'package:flutter/material.dart';

class OrderHistoryTile extends StatelessWidget {
  final void Function()? onTap;
  final String orderNo, orderDate, distributorName, status;
  final double totalAmount;
  final int quantity;
  final Color? backgroundColor;

  const OrderHistoryTile({
    Key? key,
    this.onTap,
    required this.orderNo,
    required this.orderDate,
    required this.distributorName,
    required this.status,
    required this.totalAmount,
    required this.quantity,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: themeDark ? backgroundColor : AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order No. #$orderNo',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
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
                    DateTimeHelper.dateTimeFormatter(orderDate,
                        format: 'd MMM y', enableOrdinals: true),
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.white,
                        ),
                  ),
                  sizedBoxSmall,
                  Text(
                    'Rs. $totalAmount',
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
              sizedBoxMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: OrderStatusWidget(
                      status: status,
                      radius: 50,
                    ),
                  ),
                  // SizedBox(width: 10),
                  Flexible(child: Text('Qty: $quantity'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
