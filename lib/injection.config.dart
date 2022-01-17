// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/reset_password/reset_password_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i8;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i15;
import 'application/main/main_bloc.dart' as _i7;
import 'application/splash/splash_bloc.dart' as _i9;
import 'application/tabbar/tabbar_bloc.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/auth/i_authentication_interface.dart' as _i12;
import 'infrastructure/auth/authentication_api_service.dart' as _i11;
import 'infrastructure/auth/authentication_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/common_injectable_module.dart' as _i16;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.Dio>(registerModule.dio);
  gh.singleton<_i4.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i5.IAuthFacade>(
      _i6.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.factory<_i7.MainBloc>(() => _i7.MainBloc());
  gh.factory<_i8.SignInFormBloc>(
      () => _i8.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i9.SplashBloc>(() => _i9.SplashBloc());
  gh.factory<_i10.TabbarBloc>(() => _i10.TabbarBloc());
  gh.singleton<_i11.AuthenticationApiService>(
      _i11.AuthenticationApiService(get<_i3.Dio>()));
  gh.singleton<_i12.IAuthenticationInterface>(
      _i13.AuthenticationRepository(get<_i11.AuthenticationApiService>()));
  gh.factory<_i14.ResetPasswordBloc>(
      () => _i14.ResetPasswordBloc(get<_i12.IAuthenticationInterface>()));
  gh.factory<_i15.SignUpFormBloc>(
      () => _i15.SignUpFormBloc(get<_i12.IAuthenticationInterface>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
