import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:secry/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/account/reset_password_page.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';
import 'package:secry/util/validation/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocBuilder<TabbarBloc, TabbarState>(
        builder: (mainContext, mainState) {
          return BlocConsumer<SignInFormBloc, SignInFormState>(
            listener: (context, state) {
              state.signInFailureOrUnitOption.fold(
                () => {},
                (either) => either.fold(
                  (failure) {
                    if (state.isShowingErrorMessages) {
                      DialogHelper().showAlertDialog(
                        context,
                        title: tr('warning_title_general'),
                        description: tr(state.currentErrorMessageTag),
                        extraActionOnClose: () async {
                          context.read<SignInFormBloc>().add(SignInFormEvent.isShowingErrorMessagesUpdated(false));
                        },
                      );
                    }
                  },
                  (_) {
                    // Successfully logged in
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: globalWhite,
                appBar: GeneralAppbar(
                  isSubpage: true,
                ),
                body: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: pagePaddingZeroTop,
                      child: Form(
                        key: _formKey,
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
                                controller: _emailTextEditController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email_outlined),
                                    labelText: tr('account_email'),
                                    suffixIcon: Visibility(
                                      visible: state.isShowingClearEmailButton,
                                      child: IconButton(
                                        onPressed: () {
                                          context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(""));
                                          context
                                              .read<SignInFormBloc>()
                                              .add(SignInFormEvent.isShowingClearEmailInputToggled(false));
                                          _emailTextEditController.clear();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: kMediumGray,
                                        ),
                                      ),
                                    )),
                                onChanged: (value) =>
                                    context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
                                validator: (value) {
                                  final emailInputFailureOrSuccessUnit =
                                      EmailValidator().getEmailInputFailureOrSuccessUnit(email: value ?? '');

                                  return emailInputFailureOrSuccessUnit.fold(
                                    (invalidEmailError) => invalidEmailError.maybeMap(
                                      noEmailEntered: (_) => tr('account_warning_please_enter_email'),
                                      emailInvalid: (_) => tr('account_warning_please_enter_valid_email'),
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  );
                                }),
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
                                height: kButtonHeightMedium,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: kButtonRadiusMedium,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    final isValid = _formKey.currentState?.validate() ?? false;

                                    if (isValid) {
                                      _formKey.currentState?.save();

                                      context.read<SignInFormBloc>().add(SignInFormEvent.signInPressed());
                                    }
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
          );
        },
      ),
    );
  }
}
