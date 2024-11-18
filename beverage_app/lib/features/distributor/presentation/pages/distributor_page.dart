import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_dialogbox.dart';
import '../../../../core/presentation/widgets/app_error_page.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/appbar.dart';
import '../../application/distributor_watcher_bloc/distributor_watcher_bloc.dart';
import '../widgets/distributor_tile.dart';

class DistributorPage extends StatelessWidget {
  const DistributorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<DistributorWatcherBloc>()
        .add(const DistributorWatcherEvent.fetchDistributor());
    return BlocConsumer<DistributorWatcherBloc, DistributorWatcherState>(
      listener: (context, state) {
        state.failureOrSuccess?.fold(
          (l) => AppSnackBar.show(
            context,
            barType: 'error',
            content: l.message,
          ),
          (r) {
            if (r.length == 1) {
              AutoRouter.of(context).replaceAll([ProductRoute(url: r[0].url)]);
            }
          },
        );
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            final response = await AppDialogBox.confirmationDialog(
              context,
              title: 'Exit conformation',
              content: 'Do you want to exit the app?',
              confirmText: 'Yes',
              rejectText: 'No',
            );

            return Future.value(response);
          },
          child: Stack(
            children: [
              AppScaffold(
                appBar: customAppBar(context),
                body: state.failureOrSuccess?.fold(
                  (l) => AppErrorPage(
                    onTap: () => context.read<DistributorWatcherBloc>().add(
                          const DistributorWatcherEvent.fetchDistributor(),
                        ),
                  ),
                  (r) {
                    return Column(
                      children: [
                        sizedBoxLarge,
                        Text(
                          'Select Distributor',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        sizedBoxLarge,
                        Expanded(
                          child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            itemBuilder: (context, index) {
                              return DistributorTile(
                                title: r[index].distributor,
                                caption: r[index].gstin,
                                onTap: () {
                                  // TODO: Pass url to product fetch event (product watcher bloc not created yet.)
                                  AutoRouter.of(context).replaceAll(
                                      [ProductRoute(url: r[index].url)]);
                                },
                              );
                            },
                            itemCount: r.length,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              AppSavingOverlay(isSaving: state.isProcessing)
            ],
          ),
        );
      },
    );
  }
}
