import 'package:auto_route/auto_route.dart';
import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:beverage_app/features/product/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/router/router.gr.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/app_textfield.dart';
import '../../application/verification_bloc/verification_bloc.dart';

const pageTile = 'OTP Verification';

///
///@params(loginInitiate)
///Indicates whether for registration or for authentication
///Value: true - for authentication
///       false - for registration
class OtpVerificationPage extends StatefulWidget {
  final String mobileNumber;
  final bool loginInitiate;
  const OtpVerificationPage({
    Key? key,
    required this.mobileNumber,
    this.loginInitiate = true,
  }) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  bool resendCheck = false;
  @override
  Widget build(BuildContext context) {
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
            (r) {
              if (widget.loginInitiate) {
                context.read<ProductWatcherBloc>().add(
                    ProductWatcherEvent.fetchProductCategories(
                        url: AppEndPoints.categories));
                AutoRouter.of(context).replaceAll([const HomeRoute()]);
                return;
              }

              AutoRouter.of(context).push(
                SignUpRoute(phoneNumber: widget.mobileNumber),
              );
            },
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Stack(
              children: [
                AppScaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxMedium,
                      GestureDetector(
                        onTap: () => AutoRouter.of(context).pop(),
                        child: Text(
                          'Go Back',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
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
                              Text(
                                'OTP Shared to Mobile no.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                '+91 ' + widget.mobileNumber,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              sizedBoxMedium,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedfirstOtp(
                                                        code: value),
                                              );
                                          FocusScope.of(context).nextFocus();
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedfirstOtp(
                                                    code: null),
                                              );
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .firstCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .firstCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedSecondOtp(
                                                        code: value),
                                              );
                                          FocusScope.of(context).nextFocus();
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedSecondOtp(
                                                    code: null),
                                              );
                                          FocusScope.of(context)
                                              .previousFocus();
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .secondCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .secondCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedThirdOtp(
                                                        code: value),
                                              );

                                          FocusScope.of(context).nextFocus();
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedThirdOtp(
                                                    code: null),
                                              );
                                          FocusScope.of(context)
                                              .previousFocus();
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .thirdCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .thirdCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedFourthOtp(
                                                        code: value),
                                              );

                                          FocusScope.of(context).nextFocus();
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedFourthOtp(
                                                    code: null),
                                              );
                                          FocusScope.of(context)
                                              .previousFocus();
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .fourthCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .fourthCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedFifthOtp(
                                                        code: value),
                                              );

                                          FocusScope.of(context).nextFocus();
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedFifthOtp(
                                                    code: null),
                                              );
                                          FocusScope.of(context)
                                              .previousFocus();
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .fifthCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .fifthCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                  sizedBoxSmallWidth,
                                  Expanded(
                                    child: AppTextField(
                                      autofocus: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'),
                                        ),
                                      ],
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          context.read<VerificationBloc>().add(
                                                VerificationEvent
                                                    .changedSixthOtp(
                                                        code: value),
                                              );
                                        } else if (value.isEmpty) {
                                          context.read<VerificationBloc>().add(
                                                const VerificationEvent
                                                        .changedSixthOtp(
                                                    code: null),
                                              );
                                          FocusScope.of(context)
                                              .previousFocus();
                                        }
                                      },
                                      validator: (_) {
                                        if (context
                                                .read<VerificationBloc>()
                                                .state
                                                .showErrorMessage &&
                                            context
                                                .read<VerificationBloc>()
                                                .state
                                                .sixthCode
                                                .isLeft()) {
                                          return context
                                              .read<VerificationBloc>()
                                              .state
                                              .sixthCode
                                              .fold((l) => '', (r) => null);
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              sizedBoxMedium,
                              CustomElevatedButton(
                                color: AppColor.transit,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.white,
                                    ),
                                width: MediaQuery.of(context).size.width * 0.8,
                                enableElevation: false,
                                text: 'Verify OTP',
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();

                                  SystemChannels.textInput
                                      .invokeMethod('TextInput.hide');
                                  context
                                      .read<VerificationBloc>()
                                      .add(VerificationEvent.verifyToken(
                                        phoneNumber: widget.mobileNumber,
                                        loginInitiate: widget.loginInitiate,
                                      ));
                                },
                              ),
                              sizedBoxLarge,
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Didn\'t get the OTP ?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption),
                                    !resendCheck
                                        ? GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<VerificationBloc>()
                                                  .add(
                                                    VerificationEvent
                                                        .verifyMobile(
                                                      mobileNumber:
                                                          widget.mobileNumber,
                                                      loginInitiate:
                                                          widget.loginInitiate,
                                                    ),
                                                  );
                                              // TODO: Think logic to stop tweenAnimation to display when internet is turned off.
                                              setState(() {});
                                              resendCheck = !resendCheck;
                                            },
                                            child: Text(
                                              ' Resend OTP',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                      color: AppColor.transit),
                                            ),
                                          )
                                        : TweenAnimationBuilder(
                                            tween: Tween(begin: 30.0, end: 0),
                                            duration:
                                                const Duration(seconds: 30),
                                            builder: (context, value, child) =>
                                                Text(
                                                    '${(value as double).toInt()} s'),
                                            onEnd: () {
                                              setState(() {});
                                              resendCheck = !resendCheck;
                                            },
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppSavingOverlay(isSaving: state.isProcessing),
              ],
            ),
          );
        },
      ),
    );
  }
}
