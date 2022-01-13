import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/account/reset_password_page.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: globalWhite,
            appBar: GeneralAppbar(
              isSubpage: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.1),
                child: Center(
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: tr('account_email'),
                          ),
                          onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
                        ),
                        SizedBox(height: 12),
                        TextFormField(
                          obscureText: !state.isShowingPassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock_outline),
                            labelText: tr('account_password'),
                            suffixIcon: IconButton(
                              icon: state.isShowingPassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                              onPressed: () {
                                context
                                    .read<SignInFormBloc>()
                                    .add(SignInFormEvent.isShowingPasswordToggled(!state.isShowingPassword));
                              },
                            ),
                          ),
                          onChanged: (value) =>
                              context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                pushNewScreen(
                                  context,
                                  screen: ResetPasswordPage(),
                                  withNavBar: true,
                                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Text(
                                tr('account_forgot_your_password'),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
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
