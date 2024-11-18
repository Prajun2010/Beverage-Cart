import 'package:flutter/material.dart';

import 'colors.dart';

const appTextTheme = 'Montserrat';

enum ThemeConfigure {
  light,
  dark,
}

final ThemeData dark = ThemeData.dark();

final ThemeData light = ThemeData.light();

final darkAppTheme = dark.copyWith(
  textTheme: dark.textTheme.copyWith(
    bodyText1: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    bodyText2: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    button: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    caption: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline1: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline2: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline3: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline4: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline5: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    headline6: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    overline: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    subtitle1: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
    subtitle2: TextStyle(fontFamily: appTextTheme, color: AppColor.white),
  ),
  scaffoldBackgroundColor: AppColor.background,
  snackBarTheme: light.snackBarTheme.copyWith(
    contentTextStyle: light.textTheme.caption?.copyWith(
      color: AppColor.appTextColor,
      fontFamily: appTextTheme,
    ),
  ),
);

final lightAppTheme = light.copyWith(
  textTheme: light.textTheme.copyWith(
    bodyText1: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    bodyText2: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    button: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    caption: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline1: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline2: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline3: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline4: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline5: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    headline6: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    overline: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    subtitle1: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
    subtitle2: TextStyle(fontFamily: appTextTheme, color: AppColor.background),
  ),
  scaffoldBackgroundColor: AppColor.white,
  bottomAppBarColor: AppColor.white,
  snackBarTheme: light.snackBarTheme.copyWith(
    contentTextStyle: light.textTheme.caption?.copyWith(
      color: AppColor.white,
      fontFamily: appTextTheme,
    ),
  ),
);
