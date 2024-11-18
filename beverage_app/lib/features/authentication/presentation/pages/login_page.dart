import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/core/presentation/router/router.gr.dart';

import '../../../../core/presentation/style/colors.dart';

import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/app_textfield.dart';
import '../../application/verification_bloc/verification_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => getIt<VerificationBloc>(),
      child: BlocConsumer<VerificationBloc, VerificationState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold(
            (l) => AppSnackBar.show(
              context,
              barType: 'error',
              content: l.message,
            ),
            (r) => AutoRouter.of(context).push(OtpVerificationRoute(
                mobileNumber: state.mobileNumber.getOrElse(() => ''))),
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: AppScaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/dark_logo.png',
                          scale: 2.5,
                        ),
                        Text(
                          'Let\'s Get Started',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        sizedBoxSmall,
                        Text(
                          'What is your mobile no.?',
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
                          text: 'Login',
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

                            return context
                                .read<VerificationBloc>()
                                .add(const VerificationEvent.verifyMobile());
                          },
                        ),
                        sizedBoxLarge,
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account ?',
                                  style: Theme.of(context).textTheme.caption),
                              const VerticalDivider(
                                thickness: 1,
                              ),
                              GestureDetector(
                                onTap: () {
                                  AutoRouter.of(context)
                                      .push(const NumberVerificationRoute());
                                  // AutoRouter.of(context)
                                  //     .push(const SignUpRoute());
                                },
                                // onTap: () {
                                //   context.read<VerificationBloc>().add(
                                //       VerificationEvent.verifyMobile(
                                //           mobileNumber: widget.mobileNumber));
                                //   // TODO: Think logic to stop tweenAnimation to display when internet is turned off.
                                //   setState(() {});
                                //   resendCheck = !resendCheck;
                                // },
                                child: Text(
                                  'Register Here!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: AppColor.transit),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
