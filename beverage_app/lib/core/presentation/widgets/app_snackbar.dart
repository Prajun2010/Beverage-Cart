import 'package:flutter/material.dart';

import '../style/colors.dart';

class AppSnackBar {
  static show(
    BuildContext context, {
    required String content,
    required String barType,
  }) {
    final snackBar = SnackBar(
      backgroundColor:
          barType.toLowerCase() == 'success' ? AppColor.success : null,
      content: Text(
        content,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
