import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/splash/splash_bloc.dart';
import 'package:secry/injection.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigateToTabbarAfterDelay();
    super.initState();
  }

  navigateToTabbarAfterDelay() {
    Future.delayed(Duration(milliseconds: 1500)).then((value) => AutoRouter.of(context).replace(TabbarPageRoute()));
  }

  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return BlocProvider(
      create: (context) => getIt<SplashBloc>(),
      child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: globalWhite,
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Image(
                  image: AssetImage('assets/launcher/foreground.png'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
