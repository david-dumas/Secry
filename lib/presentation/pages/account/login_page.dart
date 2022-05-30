import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:secry/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:secry/constants.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/account/reset_password_page.dart';
import 'package:secry/presentation/pages/account/widgets/or_divider.dart';
import 'package:secry/presentation/pages/account/widgets/social_media_buttons.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/util/dialogs/dialog_helper.dart';
import 'package:secry/util/validation/email_validator.dart';
import 'package:secry/util/validation/password_validator.dart';
import 'package:secry/presentation/pages/general/widgets/general_progress_button.dart';

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
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
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
                        context.read<SignInFormBloc>().add(
                            SignInFormEvent.isShowingErrorMessagesUpdated(
                                false));
                      },
                    );
                  }
                },
                (success) {},
              ),
            );
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: globalWhite,
              appBar: GeneralAppbar(
                isSubpage: true,
              ),
              body: SingleChildScrollView(
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: kPrimaryColor),
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
                                      context.read<SignInFormBloc>().add(
                                          SignInFormEvent.emailChanged(""));
                                      context.read<SignInFormBloc>().add(
                                          SignInFormEvent
                                              .isShowingClearEmailInputToggled(
                                                  false));
                                      _emailTextEditController.clear();
                                    },
                                    icon: Icon(
                                      Icons.clear,
                                      color: kMediumGray,
                                    ),
                                  ),
                                )),
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.emailChanged(value)),
                            validator: (value) {
                              final emailValidator = EmailValidator();
                              final emailInputFailureOrSuccessUnit =
                                  emailValidator
                                      .getEmailInputFailureOrSuccessUnit(
                                          email: value ?? '');

                              return emailInputFailureOrSuccessUnit.fold(
                                (invalidEmailError) =>
                                    emailValidator.getErrorTextForFailure(
                                        failure: invalidEmailError),
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
                                icon: state.isShowingPassword
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  context.read<SignInFormBloc>().add(
                                      SignInFormEvent.isShowingPasswordToggled(
                                          !state.isShowingPassword));
                                },
                              ),
                            ),
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (value) {
                              final passwordValidator = PasswordValidator();
                              final passwordInputFailureOrSuccessUnit =
                                  passwordValidator
                                      .getPasswordInputFailureOrSuccessUnit(
                                          password: value ?? '');

                              return passwordInputFailureOrSuccessUnit.fold(
                                (invalidPasswordError) =>
                                    passwordValidator.getErrorTextForFailure(
                                        passwordFailure: invalidPasswordError,
                                        deviceWidth:
                                            MediaQuery.of(context).size.width),
                                (_) => null,
                              );
                            }),
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
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
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
                        SizedBox(
                          width: double.infinity,
                          height: kButtonHeightMedium,
                          child: GeneralProgressButton(
                              title: tr('action_login'),
                              isLoading: state.isLoading,
                              onButtonPressed: () {
                                final isValid =
                                    _formKey.currentState?.validate() ?? false;

                                if (isValid) {
                                  _formKey.currentState?.save();

                                  context
                                      .read<SignInFormBloc>()
                                      .add(SignInFormEvent.signInPressed());
                                }
                              }),
                        ),
                        SizedBox(height: 10.0),
                        OrDivider(),
                        Column(
                          children: [
                            SocialMediaButton(context,
                                socialMediaIcon:
                                    Image.asset('assets/fonts/google_icon.png'),
                                buttonColor:
                                    SocialMediaButton.googleButtonColor,
                                buttonText: tr('action_login_with_google'),
                                textColor: Colors.black, buttonPressed: () {
                              context.read<SignInFormBloc>().add(
                                  SignInFormEvent.continueWithGooglePressed());
                            }),
                            SocialMediaButton(
                              context,
                              socialMediaIcon:
                                  Image.asset('assets/fonts/twitter_icon.png'),
                              buttonColor: SocialMediaButton.twitterButtonColor,
                              buttonText: tr('action_login_with_twitter'),
                              textColor: Colors.white,
                              buttonPressed: () {
                                context.read<SignInFormBloc>().add(
                                    SignInFormEvent
                                        .continueWithTwitterPressed());
                              },
                            ),
                            SocialMediaButton(
                              context,
                              socialMediaIcon:
                                  Image.asset('assets/fonts/facebook_icon.png'),
                              buttonColor:
                                  SocialMediaButton.facebookButtonColor,
                              buttonText: tr('action_login_with_facebook'),
                              textColor: Colors.white,
                              buttonPressed: () {
                                context.read<SignInFormBloc>().add(
                                    SignInFormEvent
                                        .continueWithFacebookPressed());
                              },
                            ),
                          ],
                        ),
                        verticalSafetyScrollOffset
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
