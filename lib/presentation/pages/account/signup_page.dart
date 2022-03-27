import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:secry/presentation/pages/account/widgets/password_validation_checker.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/util/validation/password_validator.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final passwordValidationCheckerKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpFormBloc>(),
      child: BlocBuilder<SignUpFormBloc, SignUpFormState>(
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
                                      countryFilter: ['NL', 'BE', 'ES', 'IT', 'FR', 'DE'],
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
                                  final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                                  final regExp = RegExp(pattern);

                                  if (value == null || value.isEmpty) {
                                    return tr('account_warning_please_enter_email');
                                  } else if (!regExp.hasMatch(value)) {
                                    return tr('account_warning_please_enter_valid_email');
                                  } else {
                                    return null;
                                  }
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
                                          icon: state.isShowingPassword
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility),
                                          onPressed: () {
                                            context.read<SignUpFormBloc>().add(
                                                SignUpFormEvent.isShowingPasswordToggled(!state.isShowingPassword));
                                          },
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.length < validationMinimumPasswordLength) {
                                          return "${tr('account_warning_password_at_least_x_characters_part_1')} ${validationMinimumPasswordLength} ${tr('account_warning_password_at_least_x_characters_part_2')}";
                                        } else {
                                          return null;
                                        }
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
                                    },
                                  ),
                                  SizedBox(height: 12.0),
                                  Visibility(
                                      visible: state.isShowingPasswordValidationChecker,
                                      child: PasswordValidationChecker(
                                          passwordValidationStatus:
                                              PasswordValidator().getPasswordValidationStatus(state.passwordInput)))
                                ],
                              ),
                              verticalSpaceSmall,
                              TextFormField(
                                obscureText: !state.isShowingRepeatPassword,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: tr('account_repeat_password'),
                                  suffixIcon: IconButton(
                                    icon: state.isShowingRepeatPassword
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onPressed: () {
                                      context.read<SignUpFormBloc>().add(SignUpFormEvent.isShowingRepeatPasswordToggled(
                                          !state.isShowingRepeatPassword));
                                    },
                                  ),
                                ),
                                validator: (value) {
                                  if (value != state.passwordInput) {
                                    return tr('account_warning_password_does_not_match');
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.visiblePassword,
                                onChanged: (value) =>
                                    context.read<SignUpFormBloc>().add(SignUpFormEvent.repeatPasswordChanged(value)),
                              ),
                              verticalSpaceSmall,
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: kButtonHeightMedium,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      final isValid = _formKey.currentState?.validate() ?? false;

                                      if (isValid) {
                                        _formKey.currentState?.save();

                                        context.read<SignUpFormBloc>().add(SignUpFormEvent.signUpPressed());
                                      }
                                    },
                                    child: Text(
                                      tr('action_register'),
                                      style: buttonTextStyleMedium,
                                    ),
                                  ),
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
      ),
    );
  }
}
