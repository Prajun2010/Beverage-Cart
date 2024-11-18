import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/features/profile/application/profile_watcher_bloc/profile_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../application/product_action_bloc/product_action_bloc.dart';
import '../../application/product_watcher_bloc/product_watcher_bloc.dart';

class PaymentSuccessPage extends StatelessWidget {
  final bool? redirectFromCart;
  final double? outstandingBalance;
  const PaymentSuccessPage({
    Key? key,
    this.redirectFromCart = true,
    this.outstandingBalance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        if (redirectFromCart!) {
          return getIt<ProductActionBloc>()
            ..add(ProductActionEvent.payment(
              amount: context.read<ProductWatcherBloc>().state.total,
              data: context.read<ProductWatcherBloc>().state.itemQuantity,
            ));
        } else {
          return getIt<ProductActionBloc>()
            ..add(ProductActionEvent.paymentOutstanding(
                amount: outstandingBalance!));
        }
      },
      child: BlocConsumer<ProductActionBloc, ProductActionState>(
        builder: (context, state) => AppScaffold(
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: AppColor.background,
              ),
              AppSavingOverlay(
                isSaving: state.isProcessing,
                text: 'Payment is processing ...',
              ),
            ],
          ),
        ),
        listener: (context, state) {
          state.failureOrSuccess?.fold((l) {
            // debugPrint('this was called not >>>>>>>>>>>.');
          }, (r) {
            if (redirectFromCart!) {
              context
                  .read<ProductWatcherBloc>()
                  .add(const ProductWatcherEvent.resetData());
              // debugPrint(' this was called >>>>>>>>>>>.');
              AutoRouter.of(context).push(OrderDetailsRoute(url: r));
            } else {
              context
                  .read<ProfileWatcherBloc>()
                  .add(const ProfileWatcherEvent.fetchProfileData());
              AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
            }
          });
        },
      ),
    );
  }
}
