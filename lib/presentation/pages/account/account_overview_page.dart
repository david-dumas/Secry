import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/infrastructure/auth/authentication_api_service.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/application/auth/account_overview/account_overview_bloc.dart';

import 'package:secry/injection.dart';

import '../../routes/router.gr.dart';

class AccountOverviewPage extends StatelessWidget {
  const AccountOverviewPage({Key? key}) : super(key: key); //required this.user

  //final GoogleSignInAccount user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return BlocProvider(
          create: (context) => getIt<AccountOverviewBloc>(),
          child: BlocBuilder<AccountOverviewBloc, AccountOverviewState>(
            builder: (context, state) {
              return Scaffold(
                appBar: GeneralAppbar(),
                body: Padding(
                  padding: EdgeInsets.only(bottom: verticalSafetyScrollOffsetHeight),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: pagePaddingZeroTop,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              width: MediaQuery.of(context).size.width * 0.3,
                              image: AssetImage('assets/launcher/foreground.png'),
                            ),
                            Text(
                              tr('account_general_welcome_title'),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: kButtonHeightMedium,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                                    ),
                                  ),
                                ),
                                onPressed: () async {
                                  await GoogleSignInApi.logout();
                                  AutoRouter.of(context).replace(AccountGoToLoginOrSignUpPageRoute());
                                  // context.read<AccountOverviewBloc>().add(AccountOverviewEvent.logoutPressed());
                                },
                                child: Text(
                                  tr('account_title_sign_out'),
                                  style: buttonTextStyleMedium,
                                ),
                              ),
                            ),
                            verticalSafetyScrollOffset
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
      },
    );
  }
}
