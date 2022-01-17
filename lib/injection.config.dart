// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/reset_password/reset_password_bloc.dart' as _i11;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i13;
import 'application/main/main_bloc.dart' as _i10;
import 'application/splash/splash_bloc.dart' as _i14;
import 'application/tabbar/tabbar_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/auth/i_authentication_interface.dart' as _i8;
import 'infrastructure/auth/authentication_api_service.dart' as _i3;
import 'infrastructure/auth/authentication_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AuthenticationApiService>(
      _i3.AuthenticationApiService(get<_i4.Dio>()));
  gh.singleton<_i5.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i6.IAuthFacade>(
      _i7.FirebaseAuthFacade(get<_i5.FirebaseAuth>()));
  gh.singleton<_i8.IAuthenticationInterface>(_i9.AuthenticationRepository());
  gh.factory<_i10.MainBloc>(() => _i10.MainBloc());
  gh.factory<_i11.ResetPasswordBloc>(
      () => _i11.ResetPasswordBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i13.SignUpFormBloc>(
      () => _i13.SignUpFormBloc(get<_i8.IAuthenticationInterface>()));
  gh.factory<_i14.SplashBloc>(() => _i14.SplashBloc());
  gh.factory<_i15.TabbarBloc>(() => _i15.TabbarBloc());
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
