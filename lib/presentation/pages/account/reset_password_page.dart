import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/auth/reset_password/reset_password_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class ResetPasswordPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _emailTextEditController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<ResetPasswordBloc>(),
      child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
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
                        height: 50.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
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
