import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:beverage_app/core/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class NoticeCard extends StatelessWidget {
  final String noticeText;
  final void Function()? refetch;
  const NoticeCard({
    Key? key,
    required this.noticeText,
    this.refetch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
          color: darkTheme ? AppColor.card : AppColor.neutral.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            noticeText,
            style: Theme.of(context).textTheme.caption,
          ),
          sizedBoxMedium,
          AppTextButton(
            onTap: refetch,
            text: 'Refresh',
            buttonColor: AppColor.backgroundSecond,
          )
        ],
      ),
    );
  }
}
