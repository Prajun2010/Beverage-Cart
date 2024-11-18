import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/app_textfield.dart';
import '../../application/verification_bloc/verification_bloc.dart';

// const pageTitle = 'Mobile Verification';

class NumberVerificationPage extends StatelessWidget {
  const NumberVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return BlocProvider(
      create: (context) => getIt<VerificationBloc>(),
      child: AppScaffold(
        // appBar: customAppBar(context),
        body: BlocConsumer<VerificationBloc, VerificationState>(
          listener: (context, state) {
            state.failureOrSuccess?.fold(
              (l) => AppSnackBar.show(
                context,
                barType: 'error',
                content: l.message,
              ),
              (r) => AutoRouter.of(context).push(
                OtpVerificationRoute(
                  mobileNumber: state.mobileNumber.getOrElse(() => ''),
                  loginInitiate: false,
                ),
              ),
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                sizedBoxMedium,
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => AutoRouter.of(context).pop(),
                      child: Text(
                        'Go Back',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Flexible(
                        child: Center(
                            child: Text(
                      'Verification',
                      style: Theme.of(context).textTheme.headline6,
                    ))),
                  ],
                ),
                Expanded(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/dark_logo.png',
                          scale: 2.5,
                        ),
                        // sizedBoxSmall,
                        Text(
                          'Mobile verification',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        sizedBoxLarge,
                        AppTextField(
                          showCursor: true,
                          maxLength: 10,
                          enableFilled: true,
                          borderRadius: 10,
                          borderColor:
                              themeDark ? Colors.transparent : Colors.black26,
                          filledColor:
                              themeDark ? AppColor.card : AppColor.white,
                          textAlign: TextAlign.center,
                          hintText: 'Mobile No.',
                          keyboardType: TextInputType.number,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold),
                          width: MediaQuery.of(context).size.width * 0.8,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]'),
                            ),
                          ],
                          onChanged: (value) =>
                              context.read<VerificationBloc>().add(
                                    VerificationEvent.changedNumber(
                                        phoneNumber: value),
                                  ),
                          validator: (_) {
                            if (context
                                .read<VerificationBloc>()
                                .state
                                .showErrorMessage) {
                              return state.mobileNumber.fold(
                                (l) => l.msg,
                                (r) => null,
                              );
                            }
                          },
                        ),
                        sizedBoxLarge,
                        CustomElevatedButton(
                          width: MediaQuery.of(context).size.width * 0.8,
                          enableElevation: false,
                          text: 'Continue',
                          textStyle:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.white,
                                  ),
                          color: AppColor.transit,
                          isLoading: state.isProcessing,
                          onPressed: () {
                            SystemChannels.textInput
                                .invokeMethod('TextInput.hide');

                            return context.read<VerificationBloc>().add(
                                  const VerificationEvent.verifyMobile(
                                    loginInitiate: false,
                                  ),
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
