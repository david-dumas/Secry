// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i3;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i25;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i26;
import 'application/group_overview/group_overview_bloc.dart' as _i27;
import 'application/homepage/homepage_bloc.dart' as _i18;
import 'application/main/main_bloc.dart' as _i11;
import 'application/splash/splash_bloc.dart' as _i13;
import 'application/tabbar/tabbar_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/auth/i_authentication_interface.dart' as _i19;
import 'domain/chats/i_chats_repository.dart' as _i21;
import 'domain/groups/i_groups_repository.dart' as _i9;
import 'domain/surveys/i_surveys_repository.dart' as _i23;
import 'infrastructure/auth/authentication_api_service.dart' as _i16;
import 'infrastructure/auth/authentication_repository.dart' as _i20;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/chats/chats_api_service.dart' as _i17;
import 'infrastructure/chats/chats_repository.dart' as _i22;
import 'infrastructure/core/common_injectable_module.dart' as _i28;
import 'infrastructure/core/firebase_injectable_module.dart' as _i29;
import 'infrastructure/groups/groups_api_service.dart' as _i6;
import 'infrastructure/groups/groups_repository.dart' as _i10;
import 'infrastructure/surveys/surveys_api_service.dart' as _i14;
import 'infrastructure/surveys/surveys_repository.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AllChatsOrSurveysInGroupPageBloc>(
      () => _i3.AllChatsOrSurveysInGroupPageBloc());
  gh.singleton<_i4.Dio>(registerModule.dio);
  gh.singleton<_i5.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i6.GroupsApiService>(_i6.GroupsApiService(get<_i4.Dio>()));
  gh.singleton<_i7.IAuthFacade>(
      _i8.FirebaseAuthFacade(get<_i5.FirebaseAuth>()));
  gh.singleton<_i9.IGroupsRepository>(
      _i10.GroupsRepository(get<_i6.GroupsApiService>()));
  gh.factory<_i11.MainBloc>(() => _i11.MainBloc());
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i13.SplashBloc>(() => _i13.SplashBloc());
  gh.singleton<_i14.SurveysApiService>(_i14.SurveysApiService(get<_i4.Dio>()));
  gh.factory<_i15.TabbarBloc>(() => _i15.TabbarBloc());
  gh.singleton<_i16.AuthenticationApiService>(
      _i16.AuthenticationApiService(get<_i4.Dio>()));
  gh.singleton<_i17.ChatsApiService>(_i17.ChatsApiService(get<_i4.Dio>()));
  gh.factory<_i18.HomepageBloc>(
      () => _i18.HomepageBloc(get<_i9.IGroupsRepository>()));
  gh.singleton<_i19.IAuthenticationInterface>(
      _i20.AuthenticationRepository(get<_i16.AuthenticationApiService>()));
  gh.singleton<_i21.IChatsRepository>(
      _i22.ChatsRepository(get<_i17.ChatsApiService>()));
  gh.singleton<_i23.ISurveysRepository>(
      _i24.SurveysRepository(get<_i14.SurveysApiService>()));
  gh.factory<_i25.ResetPasswordBloc>(
      () => _i25.ResetPasswordBloc(get<_i19.IAuthenticationInterface>()));
  gh.factory<_i26.SignUpFormBloc>(
      () => _i26.SignUpFormBloc(get<_i19.IAuthenticationInterface>()));
  gh.factory<_i27.GroupOverviewBloc>(() => _i27.GroupOverviewBloc(
      get<_i21.IChatsRepository>(), get<_i23.ISurveysRepository>()));
  return get;
}

class _$RegisterModule extends _i28.RegisterModule {}

class _$FirebaseInjectableModule extends _i29.FirebaseInjectableModule {}