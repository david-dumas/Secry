import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: globalWhite,
            appBar: GeneralAppbar(
              isSubpage: true,
            ),
            body: Center(
              child: Padding(
                padding: pagePadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        tr('account_login_title'),
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(height: 26),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: tr('account_email'),
                      ),
                      onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
                    ),
                    SizedBox(height: 12),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: tr('account_password'),
                      ),
                      onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tr('account_forgot_your_password'),
                          textAlign: TextAlign.center,
                          style: mainContentTextStyleMedium,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            tr('action_click_here'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: pagePadding,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.read<SignInFormBloc>().add(SignInFormEvent.signInPressed());
                        },
                        child: Text(
                          tr('action_login'),
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
