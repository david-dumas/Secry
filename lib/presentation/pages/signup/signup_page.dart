import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/constants.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _firstname = '';
  String _lastname = '';
  String _phone = '';
  String _email = '';
  String _password = '';
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                          return tr('account_warning_please_enter_first_name');
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() => _firstname = value!),
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
                      onSaved: (value) => setState(() => _lastname = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Image.asset('icons/flags/png/nl.png',
                              package: 'country_icons'),
                          width: 30,
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
                      onSaved: (value) => setState(() => _phone = value!),
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
                          return tr('account_warning_please_enter_valid_email');
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) => setState(() => _email = value!),
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
                      onSaved: (value) => setState(() => _password = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: tr('account_repeat_password'),
                      ),
                      validator: (value) {
                        if (value != _pass.text) {
                          return tr('account_warning_password_does_not_match');
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
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
                            final isValid = _formKey.currentState?.validate();

                            if (isValid!) {
                              _formKey.currentState?.save();

                              final message =
                                  'Firstname: $_firstname\nLastname: $_lastname\nPhone: $_phone\nPassword: $_password\nEmail: $_email';
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
  }
}
