import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/constants.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        hintText: 'Firstname',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Lastname',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Phone',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Repeat password',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please insert some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
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
                            // the form is invalid.
                            if (_formKey.currentState!.validate()) {
                              // Process data.
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
