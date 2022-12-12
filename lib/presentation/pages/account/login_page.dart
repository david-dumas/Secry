import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/infrastructure/auth/authentication_repository.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/account/widgets/social_media_buttons.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/util/dialogs/dialog_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        context.read<SignInFormBloc>().add(SignInFormEvent.isShowingErrorMessagesUpdated(false));
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
                        Column(
                          children: [
                            SocialMediaButton(context,
                                socialMediaIcon: Image.asset('assets/fonts/google_icon.png'),
                                buttonColor: SocialMediaButton.googleButtonColor,
                                buttonText: tr('action_login_with_google'),
                                textColor: Colors.black,
                                buttonPressed: () {}),
                            SocialMediaButton(
                              context,
                              socialMediaIcon: Image.asset('assets/fonts/apple_icon.png'),
                              buttonColor: SocialMediaButton.appleButtonColor,
                              buttonText: tr('action_login_with_apple'),
                              textColor: Colors.white,
                              buttonPressed: () {
                                // Todo add bloc event
                              },
                            ),
                            SocialMediaButton(
                              context,
                              socialMediaIcon: Image.asset('assets/fonts/facebook_icon.png'),
                              buttonColor: SocialMediaButton.facebookButtonColor,
                              buttonText: tr('action_login_with_facebook'),
                              textColor: Colors.white,
                              buttonPressed: () {
                                context.read<SignInFormBloc>().add(SignInFormEvent.continueWithFacebookPressed());
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
