import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:country_picker/country_picker.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpFormBloc>(),
      child: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        builder: (context, state) {
          return Scaffold(
              body: SingleChildScrollView(
            child: Padding(
              padding: pagePadding,
              child: Column(
                children: <Widget>[
                  verticalSpaceLarge,
                  Text(
                    tr('action_create_account'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: kPrimaryColor),
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
                                return tr(
                                    'account_warning_please_enter_first_name');
                              }
                              return null;
                            },
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.firstNameChanged(value)),
                          ),
                          verticalSpaceSmall,
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: tr('account_last_name'),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return tr(
                                    'account_warning_please_enter_last_name');
                              }
                              return null;
                            },
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.lastNameChanged(value)),
                          ),
                          verticalSpaceSmall,
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.all(10.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    showCountryPicker(
                                      context: context,
                                      //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                                      exclude: <String>['KN', 'MF'],
                                      //Optional. Shows phone code before the country name.
                                      showPhoneCode: true,
                                      onSelect: (Country country) {
                                        print(
                                            'Select country: ${country.displayName}');
                                      },
                                      // Optional. Sets the theme for the country list picker.
                                      countryListTheme: CountryListThemeData(
                                        // Optional. Sets the border radius for the bottomsheet.
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40.0),
                                          topRight: Radius.circular(40.0),
                                        ),
                                        // Optional. Styles the search field.
                                        inputDecoration: InputDecoration(
                                          labelText: 'Search',
                                          hintText: 'Start typing to search',
                                          prefixIcon: const Icon(Icons.search),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: const Color(0xFF8C98A8)
                                                  .withOpacity(0.2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('Show countries'),
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: tr('account_phone'),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return tr(
                                    'account_warning_please_enter_phone_number');
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.phoneChanged(value)),
                          ),
                          verticalSpaceSmall,
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: tr('account_email'),
                            ),
                            validator: (value) {
                              final pattern =
                                  r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                              final regExp = RegExp(pattern);

                              if (value == null || value.isEmpty) {
                                return tr('account_warning_please_enter_email');
                              } else if (!regExp.hasMatch(value)) {
                                return tr(
                                    'account_warning_please_enter_valid_email');
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.emailChanged(value)),
                          ),
                          verticalSpaceSmall,
                          TextFormField(
                            controller: _pass,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: tr('account_password'),
                            ),
                            validator: (value) {
                              if (value!.length < 6) {
                                return tr(
                                    'account_warning_password_at_least_x_characters');
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.firstPasswordChanged(
                                    value)),
                          ),
                          verticalSpaceSmall,
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: tr('account_repeat_password'),
                            ),
                            validator: (value) {
                              if (value != state.passwordInput) {
                                return tr(
                                    'account_warning_password_does_not_match');
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.repeatPasswordChanged(
                                    value)),
                          ),
                          verticalSpaceMedium,
                          Text(
                            tr('page_register_password_condition'),
                            textAlign: TextAlign.center,
                            style: buttonTextStyleMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 44,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  final isValid =
                                      _formKey.currentState?.validate();

                                  if (isValid!) {
                                    _formKey.currentState?.save();

                                    final message =
                                        'Firstname: ${state.firstNameInput}\nLastname: ${state.lastNameInput}\nPhone: ${state.phoneInput}\nPassword: ${state.passwordInput}\nEmail: ${state.emailInput}';
                                    final snackBar = SnackBar(
                                      content: Text(
                                        message,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      backgroundColor: Colors.green,
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        tr('account_terms_agree_text'),
                        textAlign: TextAlign.center,
                        style: mainContentTextStyleMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          tr('account_terms_of_use'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        tr('general_and'),
                        style: mainContentTextStyleMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          tr('account_privacy_policy'),
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
