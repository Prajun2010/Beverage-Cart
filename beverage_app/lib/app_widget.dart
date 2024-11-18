import 'package:beverage_app/core/application/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/application/injection.dart';
import 'core/presentation/router/router.gr.dart';
import 'core/presentation/style/app_theme.dart';
import 'features/authentication/application/account_removal_bloc/account_removal_bloc.dart';
import 'features/authentication/application/auth_bloc/auth_bloc.dart';
import 'features/product/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'features/profile/application/profile_watcher_bloc/profile_watcher_bloc.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(create: (context) => getIt<ProductWatcherBloc>()),
        BlocProvider(
          create: (context) => getIt<ProfileWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AccountRemovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeBloc>(),
        )
        // BlocProvider(
        //   create: (context) => getIt<SearchBloc>(),
        // ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: lightAppTheme,
            darkTheme: darkAppTheme,
            themeMode: state.themeMode,
            debugShowCheckedModeBanner: false,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
          );
        },
      ),
    );
  }
}
