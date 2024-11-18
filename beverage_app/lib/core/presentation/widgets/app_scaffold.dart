import 'dart:io';

import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upgrader/upgrader.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? drawer,
      body,
      floatingActionButton,
      bottomNavigationBar,
      bottomSheet;
  final Color? backgroundColor;
  final double? pagePadding;
  final bool? avoidBottomInset;
  const AppScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.drawer,
    this.backgroundColor,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.pagePadding = 16,
    this.avoidBottomInset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeData = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: themeData ? AppColor.background : AppColor.white,
        statusBarBrightness: themeData ? Brightness.dark : Brightness.light,
        statusBarIconBrightness: themeData ? Brightness.light : Brightness.dark,
      ),
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: avoidBottomInset,
            appBar: appBar,
            drawer: drawer,
            bottomSheet: bottomSheet,
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
            body: UpgradeAlert(
              upgrader: Upgrader(
                // appcastConfig: AppcastConfiguration(
                //   supportedOS: ['android', 'ios'],
                //   url:
                //       'https://github.com/Prajun2010/Appcast/blob/main/appcast.xml',
                // ),
                // debugDisplayOnce: false,
                // debugLogging: true,
                // debugDisplayAlways: true,

                showIgnore: false,
                showLater: false,
                dialogStyle: Platform.isIOS
                    ? UpgradeDialogStyle.cupertino
                    : UpgradeDialogStyle.material,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: pagePadding!),
                child: body,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
