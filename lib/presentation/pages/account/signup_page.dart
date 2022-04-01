import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/auth/password_type.dart';
import 'package:secry/injection.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:secry/presentation/pages/account/widgets/password_validation_checker.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/util/validation/email_validator.dart';
import 'package:secry/util/validation/password_validator.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';
import 'package:secry/presentation/pages/general/widgets/general_progress_button.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final passwordValidationCheckerKey = new GlobalKey();
  bool isShowingDialog = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
          listener: (context, state) {
            state.signUpFailureOrUnitOption.fold(
              () => {},
              (either) => either.fold(
                (failure) {
                  if (!state.isLoading && state.isShowingErrorMessages && !isShowingDialog) {
                    isShowingDialog = true;

                    DialogHelper().showAlertDialog(
                      context,
                      title: tr('warning_title_general'),
                      description: tr(state.currentErrorMessageTag),
                      extraActionOnClose: () async {
                        isShowingDialog = false;
                        context.read<SignUpFormBloc>().add(SignUpFormEvent.isShowingErrorMessagesUpdated(false));
                      },
                    );
                  }
                },
                (_) {},
              ),
            );
          },
          builder: (context, state) {
            return Scaffold(
                appBar: GeneralAppbar(
                  isSubpage: true,
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      bottom: 32,
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tr('action_create_account'),
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: kPrimaryColor),
                        ),
                        verticalSpaceRegular,
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: tr('account_first_name'),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return tr('account_warning_please_enter_first_name');
                                    }
                                    return null;
                                  },
                                  onChanged: (value) =>
                                      context.read<SignUpFormBloc>().add(SignUpFormEvent.firstNameChanged(value)),
                                ),
                                verticalSpaceSmall,
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: tr('account_last_name'),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return tr('account_warning_please_enter_last_name');
                                    }
                                    return null;
                                  },
                                  onChanged: (value) =>
                                      context.read<SignUpFormBloc>().add(SignUpFormEvent.lastNameChanged(value)),
                                ),
                                verticalSpaceSmall,
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: CountryCodePicker(
                                        initialSelection: 'NL',
                                        onInit: (value) => context
                                            .read<SignUpFormBloc>()
                                            .add(SignUpFormEvent.phoneDialCodeChanged(value!.dialCode.toString())),
                                        enabled: true,
                                        onChanged: (value) => context
                                            .read<SignUpFormBloc>()
                                            .add(SignUpFormEvent.phoneDialCodeChanged(value.dialCode.toString())),
                                        // Initial selection
                                        favorite: ['+31', 'NL'],
                                        showFlagDialog: true,
                                      ),
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: tr('account_phone'),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return tr('account_warning_please_enter_phone_number');
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  onChanged: (value) =>
                                      context.read<SignUpFormBloc>().add(SignUpFormEvent.phoneChanged(value)),
                                ),
                                verticalSpaceSmall,
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: tr('account_email'),
                                  ),
                                  validator: (value) {
                                    final emailValidator = EmailValidator();
                                    final emailInputFailureOrSuccessUnit =
                                        emailValidator.getEmailInputFailureOrSuccessUnit(email: value ?? '');

                                    return emailInputFailureOrSuccessUnit.fold(
                                      (invalidEmailError) =>
                                          emailValidator.getErrorTextForFailure(failure: invalidEmailError),
                                      (_) => null,
                                    );
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value) =>
                                      context.read<SignUpFormBloc>().add(SignUpFormEvent.emailChanged(value)),
                                ),
                                verticalSpaceSmall,
                                Column(
                                  key: passwordValidationCheckerKey,
                                  children: [
                                    Focus(
                                      child: TextFormField(
                                        controller: _pass,
                                        obscureText: !state.isShowingPassword,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: tr('account_password'),
                                          suffixIcon: IconButton(
                                            icon: state.isPasswordCheckedAndValid
                                                ? Icon(Icons.check)
                                                : (state.isShowingPassword
                                                    ? Icon(Icons.visibility_off)
                                                    : Icon(Icons.visibility)),
                                            color: state.isPasswordCheckedAndValid ? kPrimaryColor : kMediumGrayV2,
                                            onPressed: () {
                                              context.read<SignUpFormBloc>().add(
                                                  SignUpFormEvent.isShowingPasswordToggled(!state.isShowingPassword));
                                            },
                                          ),
                                        ),
                                        validator: (value) {
                                          final passwordValidator = PasswordValidator();
                                          final passwordInputFailureOrSuccessUnit = passwordValidator
                                              .getPasswordInputFailureOrSuccessUnit(password: value ?? '');

                                          return passwordInputFailureOrSuccessUnit.fold(
                                            (invalidPasswordError) {
                                              context.read<SignUpFormBloc>().add(
                                                  SignUpFormEvent.isPasswordCheckedAndValidUpdated(isValid: false));

                                              return passwordValidator.getErrorTextForFailure(
                                                  passwordFailure: invalidPasswordError,
                                                  deviceWidth: MediaQuery.of(context).size.width);
                                            },
                                            (_) => null,
                                          );
                                        },
                                        keyboardType: TextInputType.visiblePassword,
                                        onChanged: (value) => context
                                            .read<SignUpFormBloc>()
                                            .add(SignUpFormEvent.firstPasswordChanged(value)),
                                      ),
                                      onFocusChange: (hasFocus) {
                                        context
                                            .read<SignUpFormBloc>()
                                            .add(SignUpFormEvent.isShowingPasswordValidationChecker(hasFocus));

                                        if (hasFocus && passwordValidationCheckerKey.currentContext != null) {
                                          Scrollable.ensureVisible(passwordValidationCheckerKey.currentContext!);
                                        }

                                        Future.delayed(Duration.zero, () {
                                          handlePasswordValidationForLayout(
                                              context: context,
                                              hasFocus: hasFocus,
                                              passwordType: PasswordType.firstPassword,
                                              password: state.passwordInput,
                                              repeatPassword: state.repeatPasswordInput);
                                        });

                                        handlePasswordValidationForLayout(
                                            context: context,
                                            hasFocus: false,
                                            passwordType: PasswordType.repeatPassword,
                                            password: state.passwordInput,
                                            repeatPassword: state.repeatPasswordInput);
                                      },
                                    ),
                                    Visibility(
                                        visible: state.isShowingPasswordValidationChecker, child: verticalSpaceSmall),
                                    Visibility(
                                        visible: state.isShowingPasswordValidationChecker,
                                        child: PasswordValidationChecker(
                                            passwordValidationStatus:
                                                PasswordValidator().getPasswordValidationStatus(state.passwordInput)))
                                  ],
                                ),
                                verticalSpaceSmall,
                                Focus(
                                  child: TextFormField(
                                    obscureText: !state.isShowingRepeatPassword,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: tr('account_repeat_password'),
                                      suffixIcon: IconButton(
                                        icon: (state.isRepeatPasswordCheckedAndValid ||
                                                state.passwordInput == state.repeatPasswordInput)
                                            ? Icon(Icons.check)
                                            : (state.isShowingRepeatPassword
                                                ? Icon(Icons.visibility_off)
                                                : Icon(Icons.visibility)),
                                        color: (state.isRepeatPasswordCheckedAndValid ||
                                                state.passwordInput == state.repeatPasswordInput)
                                            ? kPrimaryColor
                                            : kMediumGrayV2,
                                        onPressed: () {
                                          context.read<SignUpFormBloc>().add(
                                              SignUpFormEvent.isShowingRepeatPasswordToggled(
                                                  !state.isShowingRepeatPassword));
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value != state.passwordInput) {
                                        return tr('account_warning_password_does_not_match');
                                      } else {
                                        final passwordValidator = PasswordValidator();
                                        final passwordInputFailureOrSuccessUnit = passwordValidator
                                            .getPasswordInputFailureOrSuccessUnit(password: value ?? '');

                                        return passwordInputFailureOrSuccessUnit.fold(
                                          (invalidPasswordError) {
                                            context.read<SignUpFormBloc>().add(
                                                SignUpFormEvent.isRepeatPasswordCheckedAndValidUpdated(isValid: false));

                                            return passwordValidator.getErrorTextForFailure(
                                                passwordFailure: invalidPasswordError,
                                                deviceWidth: MediaQuery.of(context).size.width);
                                          },
                                          (_) => null,
                                        );
                                      }
                                    },
                                    keyboardType: TextInputType.visiblePassword,
                                    onChanged: (value) => context
                                        .read<SignUpFormBloc>()
                                        .add(SignUpFormEvent.repeatPasswordChanged(value)),
                                  ),
                                  onFocusChange: (hasFocus) {
                                    handlePasswordValidationForLayout(
                                        context: context,
                                        hasFocus: false,
                                        passwordType: PasswordType.firstPassword,
                                        password: state.passwordInput,
                                        repeatPassword: state.repeatPasswordInput);

                                    Future.delayed(Duration.zero, () {
                                      handlePasswordValidationForLayout(
                                          context: context,
                                          hasFocus: hasFocus,
                                          passwordType: PasswordType.repeatPassword,
                                          password: state.passwordInput,
                                          repeatPassword: state.repeatPasswordInput);
                                    });
                                  },
                                ),
                                verticalSpaceSmall,
                                SizedBox(
                                  width: double.infinity,
                                  height: kButtonHeightMedium,
                                  child: GeneralProgressButton(
                                    title: tr('action_register'),
                                    isLoading: state.isLoading,
                                    onButtonPressed: () {
                                      final isValid = _formKey.currentState?.validate() ?? false;

                                      if (isValid) {
                                        _formKey.currentState?.save();

                                        context.read<SignUpFormBloc>().add(SignUpFormEvent.signUpPressed());
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )),
                        RichText(
                          text: TextSpan(
                            style: mainContentTextStyleMedium,
                            children: <TextSpan>[
                              TextSpan(text: tr("account_terms_agree_text") + " "),
                              TextSpan(
                                  text: tr("account_terms_of_use"),
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // TODO open terms of service page
                                    }),
                              TextSpan(text: " " + tr("general_and") + " "),
                              TextSpan(
                                  text: tr("account_privacy_policy"),
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // TODO open Privacy Policy page
                                    }),
                            ],
                          ),
                        ),
                        verticalSafetyScrollOffset
                      ],
                    ),
                  ),
                ));
          },
        ));
  }

  void handlePasswordValidationForLayout(
      {required BuildContext context,
      required bool hasFocus,
      required PasswordType passwordType,
      required String password,
      required String repeatPassword}) {
    if (!hasFocus) {
      final passwordInputFailureOrSuccessUnit = PasswordValidator().getPasswordInputFailureOrSuccessUnit(
          password: passwordType == PasswordType.firstPassword ? password : repeatPassword);

      return passwordInputFailureOrSuccessUnit.fold(
        (failure) {
          if (passwordType == PasswordType.firstPassword) {
            context.read<SignUpFormBloc>().add(SignUpFormEvent.isPasswordCheckedAndValidUpdated(isValid: false));
          } else {
            context.read<SignUpFormBloc>().add(SignUpFormEvent.isRepeatPasswordCheckedAndValidUpdated(isValid: false));
          }
        },
        (success) {
          if (passwordType == PasswordType.firstPassword) {
            context.read<SignUpFormBloc>().add(SignUpFormEvent.isPasswordCheckedAndValidUpdated(isValid: true));
          } else {
            if (password == repeatPassword) {
              context.read<SignUpFormBloc>().add(SignUpFormEvent.isRepeatPasswordCheckedAndValidUpdated(isValid: true));
            } else {
              context
                  .read<SignUpFormBloc>()
                  .add(SignUpFormEvent.isRepeatPasswordCheckedAndValidUpdated(isValid: false));
            }
          }
        },
      );
    } else {
      if (passwordType == PasswordType.firstPassword) {
        context.read<SignUpFormBloc>().add(SignUpFormEvent.isPasswordCheckedAndValidUpdated(isValid: false));
      } else {
        context.read<SignUpFormBloc>().add(SignUpFormEvent.isRepeatPasswordCheckedAndValidUpdated(isValid: false));
      }
    }
  }
}
