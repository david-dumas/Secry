import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/presentation/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Firebase.initializeApp();
    await configureInjection(Environment.prod);
  } catch (exception) {
    print(exception);
  }

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('nl'), Locale('en')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: AppWidget()),
  );
}
