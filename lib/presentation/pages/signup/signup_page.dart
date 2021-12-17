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
  String firstname = '';
  String lastname = '';
  String phone = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Go back'),
        // ),
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
                      decoration: const InputDecoration(
                        hintText: 'First name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() => firstname = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Last name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() => lastname = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Phone',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onSaved: (value) => setState(() => phone = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        final pattern =
                            r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                        final regExp = RegExp(pattern);

                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Enter a valid email';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) => setState(() => email = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.length < 6) {
                          return 'Password must be at least 6 characters long';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onSaved: (value) => setState(() => password = value!),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Repeat password',
                      ),
                      validator: (value) {
                        if (value == password) {
                          return null;
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
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
                            // Validate will return true if the form is valid, or false if
                            final isValid = _formKey.currentState?.validate();
                            // FocusScope.of(context).unfocus();

                            if (isValid!) {
                              _formKey.currentState?.save();

                              final message =
                                  'Firstname: $firstname\nLastname: $lastname\nPhone: $phone\nPassword: $password\nEmail: $email';
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
                  tr('By tapping register, you agree to our'),
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
                  tr('and'),
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
