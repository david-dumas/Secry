import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/reset_password/reset_password_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class ResetPasswordPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailTextEditController = TextEditingController();

  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return BlocProvider(
      create: (context) => getIt<ResetPasswordBloc>(),
      child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.isPasswordResetMailSuccessfullySent) {
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (context) => SimpleDialog(
                insetPadding: EdgeInsets.all(20),
                contentPadding: EdgeInsets.all(32),
                children: [
                  Text(
                    tr('success_message_success_title'),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tr('success_message_password_reset_mail_successfully_sent_description'),
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Text(
                          tr('success_message_password_reset_mail_tip'),
                          style: TextStyle(color: kPrimaryColor, fontSize: 18),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: kButtonHeightMedium,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(context);

                        Navigator.of(buildContext).popUntil((route) {
                          return route.settings.name == LoginPageRoute.name;
                        });
                      },
                      child: Text(
                        tr('action_go_to_login'),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            if (state.didTryToResetPassword) {
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
                            Navigator.of(context).pop(context);
                          },
                          child: Text(tr('action_ok')),
                        ),
                      ],
                    );
                  });
            }
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
                          if (value == null || value.isEmpty) {
                            return tr('account_warning_please_enter_email');
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            context.read<ResetPasswordBloc>().add(ResetPasswordEvent.emailChanged(value)),
                      ),
                      verticalSpaceMedium,
                      SizedBox(
                        width: double.infinity,
                        height: kButtonHeightMedium,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                              ),
                            ),
                          ),
                          onPressed: () {
                            final isValid = _formKey.currentState?.validate();

                            if (isValid!) {
                              _formKey.currentState?.save();

                              context.read<ResetPasswordBloc>().add(ResetPasswordEvent.resetPasswordPressed());
                            }
                          },
                          child: Text(
                            tr('action_reset_password'),
                            style: buttonTextStyleMedium,
                          ),
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
