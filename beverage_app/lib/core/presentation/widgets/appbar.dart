import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:beverage_app/core/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

// AppBar customAppBar({
//   required BuildContext context,
//   Widget? title,
//   List<Widget>? actions,
//   double? elevation,
//   Color? backgroundColor,
// }) =>
//     AppBar(
//       backgroundColor: backgroundColor ?? AppColor.transparent,
//       foregroundColor: AppColor.appTextColor,
//       title: title,
//       actions: actions,
//       centerTitle: true,
//       elevation: elevation ?? 0,
//     );

PreferredSize customAppBar(
  BuildContext context, {
  String? title,
  Function()? prefixIconTapped,
  Function()? suffixIconTapped,
}) =>
    PreferredSize(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.neutral.withOpacity(0.5),
              offset: const Offset(0, 1),
              blurRadius: 2,
            )
          ],
          color: Theme.of(context).brightness == Brightness.light
              ? AppColor.white
              : AppColor.background,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Visibility(
                  visible: prefixIconTapped != null,
                  child: GestureDetector(
                    onTap: prefixIconTapped,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 28,
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColor.background
                          : AppColor.white,
                    ),
                  ),
                ),
                sizedBoxMediumWidth,
                Text(
                  title != null ? 'Hey,\n$title' : 'Beverages Made\nEasy!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.03),
              child: AppIconButton(
                onTap: suffixIconTapped,
              ),
            ),
          ],
        ),
      ),
      preferredSize: const Size.fromHeight(100),
    );
