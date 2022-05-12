// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_group/add_group_page_bloc.dart' as _i33;
import 'application/add_survey/add_survey_page_bloc.dart' as _i3;
import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i4;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i18;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i31;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i32;
import 'application/global_search/global_search_bloc.dart' as _i34;
import 'application/group_overview/group_overview_bloc.dart' as _i21;
import 'application/homepage/homepage_bloc.dart' as _i22;
import 'application/main/main_bloc.dart' as _i12;
import 'application/splash/splash_bloc.dart' as _i14;
import 'application/tabbar/tabbar_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_authentication_interface.dart' as _i23;
import 'domain/chats/i_chats_repository.dart' as _i25;
import 'domain/groups/i_groups_repository.dart' as _i10;
import 'domain/surveys/i_surveys_repository.dart' as _i27;
import 'domain/users/i_users_repository.dart' as _i29;
import 'infrastructure/auth/authentication_api_service.dart' as _i19;
import 'infrastructure/auth/authentication_repository.dart' as _i24;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/chats/chats_api_service.dart' as _i20;
import 'infrastructure/chats/chats_repository.dart' as _i26;
import 'infrastructure/core/common_injectable_module.dart' as _i35;
import 'infrastructure/core/firebase_injectable_module.dart' as _i36;
import 'infrastructure/groups/groups_api_service.dart' as _i7;
import 'infrastructure/groups/groups_repository.dart' as _i11;
import 'infrastructure/surveys/surveys_api_service.dart' as _i15;
import 'infrastructure/surveys/surveys_repository.dart' as _i28;
import 'infrastructure/users/users_api_service.dart' as _i17;
import 'infrastructure/users/users_repository.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AddSurveyPageBloc>(() => _i3.AddSurveyPageBloc());
  gh.factory<_i4.AllChatsOrSurveysInGroupPageBloc>(
      () => _i4.AllChatsOrSurveysInGroupPageBloc());
  gh.singleton<_i5.Dio>(registerModule.dio);
  gh.singleton<_i6.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i7.GroupsApiService>(_i7.GroupsApiService(get<_i5.Dio>()));
  gh.singleton<_i8.IAuthFacade>(
      _i9.FirebaseAuthFacade(get<_i6.FirebaseAuth>()));
  gh.singleton<_i10.IGroupsRepository>(
      _i11.GroupsRepository(get<_i7.GroupsApiService>()));
  gh.factory<_i12.MainBloc>(() => _i12.MainBloc());
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i14.SplashBloc>(() => _i14.SplashBloc());
  gh.singleton<_i15.SurveysApiService>(_i15.SurveysApiService(get<_i5.Dio>()));
  gh.factory<_i16.TabbarBloc>(() => _i16.TabbarBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i17.UsersApiService>(_i17.UsersApiService(get<_i5.Dio>()));
  gh.factory<_i18.AccountOverviewBloc>(
      () => _i18.AccountOverviewBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i19.AuthenticationApiService>(
      _i19.AuthenticationApiService(get<_i5.Dio>()));
  gh.singleton<_i20.ChatsApiService>(_i20.ChatsApiService(get<_i5.Dio>()));
  gh.factory<_i21.GroupOverviewBloc>(
      () => _i21.GroupOverviewBloc(get<_i10.IGroupsRepository>()));
  gh.factory<_i22.HomepageBloc>(
      () => _i22.HomepageBloc(get<_i10.IGroupsRepository>()));
  gh.singleton<_i23.IAuthenticationInterface>(
      _i24.AuthenticationRepository(get<_i19.AuthenticationApiService>()));
  gh.singleton<_i25.IChatsRepository>(
      _i26.ChatsRepository(get<_i20.ChatsApiService>()));
  gh.singleton<_i27.ISurveysRepository>(
      _i28.SurveysRepository(get<_i15.SurveysApiService>()));
  gh.singleton<_i29.IUsersRepository>(
      _i30.UsersRepository(get<_i17.UsersApiService>()));
  gh.factory<_i31.ResetPasswordBloc>(
      () => _i31.ResetPasswordBloc(get<_i23.IAuthenticationInterface>()));
  gh.factory<_i32.SignUpFormBloc>(() => _i32.SignUpFormBloc(
      get<_i23.IAuthenticationInterface>(), get<_i8.IAuthFacade>()));
  gh.factory<_i33.AddGroupPageBloc>(() => _i33.AddGroupPageBloc(
      get<_i29.IUsersRepository>(), get<_i10.IGroupsRepository>()));
  gh.factory<_i34.GlobalSearchBloc>(
      () => _i34.GlobalSearchBloc(get<_i29.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i35.RegisterModule {}

class _$FirebaseInjectableModule extends _i36.FirebaseInjectableModule {}
