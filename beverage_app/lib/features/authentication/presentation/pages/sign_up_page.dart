import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/application/injection.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/properties.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_savingoverlay.dart';
import '../../../../core/presentation/widgets/app_scaffold.dart';
import '../../../../core/presentation/widgets/app_snackbar.dart';
import '../../../../core/presentation/widgets/app_textfield.dart';
import '../../application/sign_up_bloc/sign_up_bloc.dart';

class SignUpPage extends StatelessWidget {
  final String phoneNumber;
  const SignUpPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold(
            (l) => AppSnackBar.show(
              context,
              content: l.message,
              barType: 'error',
            ),
            (r) {
              AppSnackBar.show(
                context,
                content:
                    'Your account has been successfully registered!\n Try login with your registered number.',
                barType: 'success',
              );
              AutoRouter.of(context).popUntilRouteWithName('LoginRoute');
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              AppScaffold(
                body: WillPopScope(
                  onWillPop: () async {
                    AutoRouter.of(context)
                        .popUntilRouteWithName('NumberVerificationRoute');
                    return false;
                  },
                  child: Column(
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
                              'Registration',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                        ],
                      ),
                      sizedBoxMedium,
                      Expanded(
                        child: Form(
                          autovalidateMode: AutovalidateMode.always,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                sizedBoxMedium,
                                const TradeTextField(),
                                sizedBoxMedium,
                                const OutletTextField(),
                                sizedBoxMedium,
                                const AddressTextField(),
                                sizedBoxMedium,
                                const Address2TextField(),
                                sizedBoxMedium,
                                const CountryTextField(),
                                sizedBoxMedium,
                                const StateTextField(),
                                // sizedBoxMedium,
                                // const PhoneNumberTextField(),
                                sizedBoxMedium,
                                const CityTextField(),
                                sizedBoxMedium,
                                const PostalCodeTextField(),
                                sizedBoxMedium,
                                const GstTextField(),
                                sizedBoxMedium,
                                const EmailTextField(),
                                sizedBoxLarge,
                                CustomElevatedButton(
                                  text: 'Register',
                                  enableElevation: false,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.white,
                                      ),
                                  color: AppColor.transit,
                                  isLoading: state.isProcessing,
                                  onPressed: () {
                                    SystemChannels.textInput
                                        .invokeMethod('TextInput.hide');
                                    context.read<SignUpBloc>().add(
                                          SignUpEvent.pressedSubmit(
                                              phoneNumber: phoneNumber),
                                        );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSavingOverlay(isSaving: state.isProcessing)
            ],
          );
        },
      ),
    );
  }
}

class TradeTextField extends StatelessWidget {
  const TradeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'Trade Name',
      labelText: 'Trade Name',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedTradeName(tradeName: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.tradeName.isLeft()) {
          return context.read<SignUpBloc>().state.tradeName.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class OutletTextField extends StatelessWidget {
  const OutletTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'Outlet Name',
      labelText: 'Outlet Name',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedOutletName(outletName: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.outletName.isLeft()) {
          return context.read<SignUpBloc>().state.outletName.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class AddressTextField extends StatelessWidget {
  const AddressTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'Address 1',
      labelText: 'Address 1',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedAddress(address: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.address.isLeft()) {
          return context.read<SignUpBloc>().state.address.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class Address2TextField extends StatelessWidget {
  const Address2TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'Address 2',
      labelText: 'Address 2',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedAddress2(address2: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.address2.isLeft()) {
          return context.read<SignUpBloc>().state.address2.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class CountryTextField extends StatelessWidget {
  const CountryTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'Country',
      labelText: 'Country',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedCountry(country: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.country.isLeft()) {
          return context.read<SignUpBloc>().state.country.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class StateTextField extends StatelessWidget {
  const StateTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'State',
      labelText: 'State',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedState(state: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.state.isLeft()) {
          return context.read<SignUpBloc>().state.state.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

// class PhoneNumberTextField extends StatelessWidget {
//   const PhoneNumberTextField({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppTextField(
//       showCursor: true,
//       maxLength: 10,
//       hintText: 'Mobile number',
//       labelText: 'Mobile number',
//       keyboardType: TextInputType.number,
//       inputFormatters: [
//         FilteringTextInputFormatter.allow(
//           RegExp(r'[0-9]'),
//         ),
//       ],
//       onChanged: (e) => context.read<SignUpBloc>().add(
//             SignUpEvent.changedPhoneNumber(phoneNumber: e),
//           ),
//       validator: (_) {
//         if (context.read<SignUpBloc>().state.showErrorMessage) {
//           return context.read<SignUpBloc>().state.phoneNumber.fold(
//                 (l) => l.msg,
//                 (r) => null,
//               );
//         }
//       },
//     );
//   }
// }

class CityTextField extends StatelessWidget {
  const CityTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'City',
      labelText: 'City',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedCity(city: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage &&
            context.read<SignUpBloc>().state.city.isLeft()) {
          return context.read<SignUpBloc>().state.city.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class PostalCodeTextField extends StatelessWidget {
  const PostalCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      maxLength: 6,
      hintText: 'Postal Code',
      labelText: 'Postal Code',
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[0-9]'),
        ),
      ],
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedPostal(postal: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage) {
          return context.read<SignUpBloc>().state.postalCode.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class GstTextField extends StatelessWidget {
  const GstTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'GSTN',
      labelText: 'GSTN',
      keyboardType: TextInputType.text,
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedGstn(gstn: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage) {
          return context.read<SignUpBloc>().state.gstn.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool themeDark = Theme.of(context).brightness == Brightness.dark;

    return AppTextField(
      showCursor: true,
      enableFilled: true,
      borderRadius: 10,
      borderColor: themeDark ? Colors.transparent : Colors.black26,
      filledColor: themeDark ? AppColor.card : AppColor.white,
      hintText: 'you@example.com',
      labelText: 'Email',
      keyboardType: TextInputType.emailAddress,
      // inputFormatters: [
      //   FilteringTextInputFormatter.allow(
      //       RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')),
      // ],
      onChanged: (e) => context.read<SignUpBloc>().add(
            SignUpEvent.changedEmail(email: e),
          ),
      validator: (_) {
        if (context.read<SignUpBloc>().state.showErrorMessage) {
          return context.read<SignUpBloc>().state.email.fold(
                (l) => l.msg,
                (r) => null,
              );
        }
      },
    );
  }
}


// class GstTextField extends StatelessWidget {
//   const CityTextField({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppTextField(
//       showCursor: true,
//       hintText: 'City',
//       labelText: 'City',
//       keyboardType: TextInputType.text,
//       onChanged: (e) => context.read<SignUpBloc>().add(
//             SignUpEvent.changedCity(city: e),
//           ),
//       validator: (_) {
//         if (context.read<SignUpBloc>().state.showErrorMessage &&
//             context.read<SignUpBloc>().state.city.isLeft()) {
//           return context.read<SignUpBloc>().state.city.fold(
//                 (l) => l.msg,
//                 (r) => null,
//               );
//         }
//       },
//     );
//   }
// }
