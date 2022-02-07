// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/reset_password/reset_password_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i19;
import 'application/homepage/homepage_bloc.dart' as _i15;
import 'application/main/main_bloc.dart' as _i10;
import 'application/splash/splash_bloc.dart' as _i12;
import 'application/tabbar/tabbar_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/auth/i_authentication_interface.dart' as _i16;
import 'domain/groups/i_groups_repository.dart' as _i8;
import 'infrastructure/auth/authentication_api_service.dart' as _i14;
import 'infrastructure/auth/authentication_repository.dart' as _i17;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/common_injectable_module.dart' as _i20;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/groups/groups_api_service.dart' as _i5;
import 'infrastructure/groups/groups_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.Dio>(registerModule.dio);
  gh.singleton<_i4.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i5.GroupsApiService>(_i5.GroupsApiService(get<_i3.Dio>()));
  gh.singleton<_i6.IAuthFacade>(
      _i7.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.singleton<_i8.IGroupsRepository>(
      _i9.GroupsRepository(get<_i5.GroupsApiService>()));
  gh.factory<_i10.MainBloc>(() => _i10.MainBloc());
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.SplashBloc>(() => _i12.SplashBloc());
  gh.factory<_i13.TabbarBloc>(() => _i13.TabbarBloc());
  gh.singleton<_i14.AuthenticationApiService>(
      _i14.AuthenticationApiService(get<_i3.Dio>()));
  gh.factory<_i15.HomepageBloc>(
      () => _i15.HomepageBloc(get<_i8.IGroupsRepository>()));
  gh.singleton<_i16.IAuthenticationInterface>(
      _i17.AuthenticationRepository(get<_i14.AuthenticationApiService>()));
  gh.factory<_i18.ResetPasswordBloc>(
      () => _i18.ResetPasswordBloc(get<_i16.IAuthenticationInterface>()));
  gh.factory<_i19.SignUpFormBloc>(
      () => _i19.SignUpFormBloc(get<_i16.IAuthenticationInterface>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
