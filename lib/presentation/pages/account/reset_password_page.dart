import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/reset_password/reset_password_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';
import 'package:secry/util/validation/email_validator.dart';
import 'package:secry/presentation/pages/general/widgets/general_progress_button.dart';

class ResetPasswordPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailTextEditController = TextEditingController();
  bool isShowingDialog = false;

  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return BlocProvider(
      create: (context) => getIt<ResetPasswordBloc>(),
      child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.isPasswordResetMailSuccessfullySent && !isShowingDialog && !state.isLoading) {
            isShowingDialog = true;

            DialogHelper().showSimpleDialogWithTip(context,
                title: tr('success_message_success_title'),
                description: tr('success_message_password_reset_mail_successfully_sent_description'),
                tip: tr('success_message_password_reset_mail_tip'),
                buttonText: tr('action_go_to_login'), onButtonPressed: () {
              Navigator.of(buildContext).popUntil((route) {
                return route.settings.name == LoginPageRoute.name;
              });
            });
          } else if (state.didTryToResetPassword && !isShowingDialog && !state.isLoading) {
            isShowingDialog = true;
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) {
                  // TODO Show title / description based on error code

                  return AlertDialog(
                    title: Text(tr('account_error_title')),
                    content: SingleChildScrollView(
                      child:
                          Padding(padding: const EdgeInsets.only(top: 8.0), child: Text(tr('account_error_general'))),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          isShowingDialog = false;
                          Navigator.of(context).pop(context);
                        },
                        child: Text(tr('action_ok')),
                      ),
                    ],
                  );
                });
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GeneralAppbar(
              isSubpage: true,
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr('account_forgot_password_description'),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        controller: _emailTextEditController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: tr('account_email'),
                          suffixIcon: Visibility(
                            visible: state.isShowingClearEmailButton,
                            child: IconButton(
                              onPressed: () {
                                context.read<ResetPasswordBloc>().add(ResetPasswordEvent.emailChanged(""));
                                context
                                    .read<ResetPasswordBloc>()
                                    .add(ResetPasswordEvent.isShowingClearEmailInputToggled(false));
                                _emailTextEditController.clear();
                              },
                              icon: Icon(
                                Icons.clear,
                                color: kMediumGray,
                              ),
                            ),
                          ),
                        ),
                        validator: (value) {
                          final emailValidator = EmailValidator();
                          final emailInputFailureOrSuccessUnit =
                              emailValidator.getEmailInputFailureOrSuccessUnit(email: value ?? '');

                          return emailInputFailureOrSuccessUnit.fold(
                            (invalidEmailError) => emailValidator.getErrorTextForFailure(failure: invalidEmailError),
                            (_) => null,
                          );
                        },
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            context.read<ResetPasswordBloc>().add(ResetPasswordEvent.emailChanged(value)),
                      ),
                      verticalSpaceMedium,
                      SizedBox(
                        width: double.infinity,
                        height: kButtonHeightMedium,
                        child: GeneralProgressButton(
                          title: tr('action_reset_password'),
                          isLoading: state.isLoading,
                          onButtonPressed: () {
                            final isValid = _formKey.currentState?.validate();

                            if (isValid!) {
                              _formKey.currentState?.save();

                              context.read<ResetPasswordBloc>().add(ResetPasswordEvent.resetPasswordPressed());
                            }
                          },
                        ),
                      ),
                    ],
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
