import 'package:beverage_app/app_widget.dart';
import 'package:beverage_app/core/application/injection.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(AppWidget());
}
