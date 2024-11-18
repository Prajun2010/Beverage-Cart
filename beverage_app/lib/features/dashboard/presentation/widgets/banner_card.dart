import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/widgets/app_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  final String bannerImage;
  final int margin;
  final double mrp;
  final void Function()? onTap;

  const BannerCard({
    Key? key,
    required this.bannerImage,
    required this.margin,
    required this.mrp,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          color: AppColor.card,
          child: Stack(
            children: [
              CachedNetworkImage(
                width: double.maxFinite,
                imageUrl: bannerImage,
                fit: BoxFit.fill,
              ),
              Positioned(
                right: MediaQuery.of(context).size.width / 7,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Launch!',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                        shadows: [
                          Shadow(
                            offset: const Offset(0, 1),
                            blurRadius: 3.0,
                            color: AppColor.neutral,
                          )
                        ],
                        color: AppColor.white,
                      ),
                    ),
                    Text(
                      'MRP:$mrp/-',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                        shadows: [
                          Shadow(
                            offset: const Offset(0, 1),
                            blurRadius: 3.0,
                            color: AppColor.neutral,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Margin:$margin%',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                        shadows: [
                          Shadow(
                            offset: const Offset(0, 1),
                            blurRadius: 3.0,
                            color: AppColor.neutral,
                          )
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      borderRadius: 5,
                      color: AppColor.white,
                      width: MediaQuery.of(context).size.width / 5,
                      height: 30,
                      text: 'Shop Now!',
                      textStyle: Theme.of(context).textTheme.caption?.copyWith(
                            fontSize: 10,
                            color: AppColor.appTextColor,
                          ),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
