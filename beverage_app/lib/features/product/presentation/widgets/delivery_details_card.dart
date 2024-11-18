import 'package:flutter/material.dart';

import '../../../../core/presentation/style/properties.dart';

class DeliveryDetailsCard extends StatelessWidget {
  final String? address;
  const DeliveryDetailsCard({
    Key? key,
    this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery Details',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              sizedBoxSmall,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Address: ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text: address ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 12),
                  // maxLines: 4,
                  // overflow: TextOverflow.ellipsis,
                  // textAlign: TextAlign.center,
                ),
              ])),
              sizedBoxSmall,
            ],
          ),
        ),
      ),
    );
  }
}
