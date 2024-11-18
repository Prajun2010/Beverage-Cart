import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../style/colors.dart';
import '../style/properties.dart';
import 'app_button.dart';

class AppErrorPage extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  const AppErrorPage({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                'assets/animations/error-page.json',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Something went wrong.',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Please try again !',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: AppColor.neutral),
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextButton(
                text: text,
                onTap: onTap,
              ),
              sizedBoxExtraLarge,
            ],
          ),
        ),
      ),
    );
  }
}
