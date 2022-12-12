import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/main/main_bloc.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'package:secry/util/colors/hex_color_helper.dart';
import 'package:theme_provider/theme_provider.dart';

import 'package:secry/injection.dart';
import 'package:secry/theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themes: [
        buildLightTheme(),
        buildDarkTheme(),
      ],
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<MainBloc>()..add(const MainEvent.initialized())),
        ],
        child: BlocConsumer<MainBloc, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            return ThemeConsumer(
              child: Builder(builder: (themeContext) {
                return MaterialApp.router(
                  title: 'Secry',
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  routerDelegate: _appRouter.delegate(),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(),
                  darkTheme: ThemeData.dark(),
                  themeMode: ThemeMode.system,
                );
              }),
            );
          },
        ),
      ),
    );
  }

  AppTheme buildDarkTheme() {
    return AppTheme(
      id: 'dark',
      data: AppTheme.dark().data.copyWith(
            primaryColor: HexColor.fromHex('#0081b3'),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
      options: ThemeOptions(
        backgroundColor: Colors.black,
        iconColor: HexColor.fromHex('#008fd5'),
        headerGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5, 0.9],
          colors: [
            Colors.grey.shade800.withOpacity(0.9),
            Colors.grey.shade800.withOpacity(0.8),
            Colors.grey.shade800.withOpacity(0.8),
          ],
        ),
      ),
      description: 'The default dark theme',
    );
  }

  AppTheme buildLightTheme() {
    return AppTheme(
      id: 'light',
      data: AppTheme.light().data.copyWith(
            primaryColor: HexColor.fromHex('#20b0e5'),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
      options: ThemeOptions(
        backgroundColor: Colors.grey.shade200,
        iconColor: Colors.grey.shade700,
        headerGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5, 0.9],
          colors: [
            HexColor.fromHex('#36b8e8').withOpacity(0.7),
            HexColor.fromHex('#20b0e5').withOpacity(0.7),
            HexColor.fromHex('#1d9ece').withOpacity(0.7),
          ],
        ),
      ),
      description: 'The default light theme',
    );
  }
}
