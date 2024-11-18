import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:beverage_app/core/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class AppDialogBox {
  static Future<bool?> confirmationDialog(
    BuildContext context, {
    String? title,
    String? content,
    String? confirmText,
    String? rejectText,
    TextAlign? titleAlign,
    TextAlign? contentAlign,
    void Function()? confirmTap,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialogBox(
          title: title,
          content: content,
          confirmText: confirmText,
          confirmTap: confirmTap,
          rejectText: rejectText,
          titleAlign: titleAlign,
          contentAlign: contentAlign,
        );
      },
    );
  }

  static Future<bool?> informationDialog(
    BuildContext context, {
    String? title,
    String? content,
    String? confirmText,
    bool? confirmVisible,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return CustomInfoDialogBox(
          title: title,
          content: content,
          confirmText: confirmText,
          confirmVisible: confirmVisible ?? true,
        );
      },
    );
  }
}

class CustomAlertDialogBox extends StatelessWidget {
  final String? title, content, confirmText, rejectText;
  final TextAlign? titleAlign, contentAlign;
  final void Function()? confirmTap;
  const CustomAlertDialogBox({
    Key? key,
    this.title,
    this.content,
    this.confirmText,
    this.rejectText,
    this.confirmTap,
    this.titleAlign,
    this.contentAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title ?? 'Confirmation',
        textAlign: titleAlign,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      content: Text(
        content ?? '',
        textAlign: contentAlign,
        style: Theme.of(context).textTheme.bodyText2,
        // textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                enableElevation: false,
                onPressed: () {
                  if (confirmTap != null) {
                    confirmTap!();
                  }
                  Navigator.of(context).pop(true);
                },
                text: confirmText ?? 'Delete',
              ),
            ),
            sizedBoxSmallWidth,
            Expanded(
              child: CustomBorderTextButton(
                textColor: AppColor.neutral,
                text: rejectText ?? 'Cancel',
                onTap: () => Navigator.of(context).pop(false),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CustomInfoDialogBox extends StatelessWidget {
  final String? title, content, confirmText;
  final bool confirmVisible;

  const CustomInfoDialogBox({
    Key? key,
    this.title,
    this.content,
    this.confirmText,
    this.confirmVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title ?? 'Information',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
      ),
      content: Text(
        content ?? '',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: confirmVisible
          ? <Widget>[
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      enableElevation: false,
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      text: confirmText ?? 'Ok',
                    ),
                  ),
                ],
              )
            ]
          : [],
    );
  }
}
