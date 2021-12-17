// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/main/main_bloc.dart' as _i6;
import 'application/splash/splash_bloc.dart' as _i7;
import 'application/tabbar/tabbar_bloc.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.FirebaseAnalytics>(firebaseInjectableModule.analytics);
  gh.singleton<_i4.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i5.FirebaseCrashlytics>(firebaseInjectableModule.crashlytics);
  gh.factory<_i6.MainBloc>(() => _i6.MainBloc());
  gh.factory<_i7.SplashBloc>(() => _i7.SplashBloc());
  gh.factory<_i8.TabbarBloc>(() => _i8.TabbarBloc());
  return get;
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
