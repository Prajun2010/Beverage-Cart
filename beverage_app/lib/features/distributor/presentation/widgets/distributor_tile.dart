import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class DistributorTile extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  final String? caption;
  final String? image;
  const DistributorTile({
    Key? key,
    this.onTap,
    this.title,
    this.caption,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 16),
          child: Row(
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: image?.isNotEmpty ?? false
                    ? Image.network(image!)
                    : Image.asset('assets/images/untitled_logo.png'),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 2,
                    ),
                    Text(
                      'GSTIN: ${caption ?? ''}',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColor.appTextColor.withOpacity(0.6),
                            letterSpacing: 0.2,
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
