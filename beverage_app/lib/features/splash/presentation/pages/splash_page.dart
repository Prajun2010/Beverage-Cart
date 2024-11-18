import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../authentication/application/auth_bloc/auth_bloc.dart';
import '../../../product/application/product_watcher_bloc/product_watcher_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.read<ProductWatcherBloc>().add(
                  ProductWatcherEvent.fetchProductCategories(
                      url: AppEndPoints.categories),
                );
            AutoRouter.of(context)
                .pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
          },
          unauthenticated: (_) => AutoRouter.of(context).replace(
            const LoginRoute(),
          ),
        );
      },
      builder: (context, state) {
        return const AppScaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
