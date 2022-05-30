// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_group/add_group_page_bloc.dart' as _i34;
import 'application/add_survey/add_survey_page_bloc.dart' as _i3;
import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i4;
import 'application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart'
    as _i18;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i19;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i32;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i33;
import 'application/global_search/global_search_bloc.dart' as _i35;
import 'application/group_overview/group_overview_bloc.dart' as _i22;
import 'application/homepage/homepage_bloc.dart' as _i23;
import 'application/main/main_bloc.dart' as _i12;
import 'application/splash/splash_bloc.dart' as _i14;
import 'application/tabbar/tabbar_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_authentication_interface.dart' as _i24;
import 'domain/chats/i_chats_repository.dart' as _i26;
import 'domain/groups/i_groups_repository.dart' as _i10;
import 'domain/surveys/i_surveys_repository.dart' as _i28;
import 'domain/users/i_users_repository.dart' as _i30;
import 'infrastructure/auth/authentication_api_service.dart' as _i20;
import 'infrastructure/auth/authentication_repository.dart' as _i25;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/chats/chats_api_service.dart' as _i21;
import 'infrastructure/chats/chats_repository.dart' as _i27;
import 'infrastructure/core/common_injectable_module.dart' as _i36;
import 'infrastructure/core/firebase_injectable_module.dart' as _i37;
import 'infrastructure/groups/groups_api_service.dart' as _i7;
import 'infrastructure/groups/groups_repository.dart' as _i11;
import 'infrastructure/surveys/surveys_api_service.dart' as _i15;
import 'infrastructure/surveys/surveys_repository.dart' as _i29;
import 'infrastructure/users/users_api_service.dart' as _i17;
import 'infrastructure/users/users_repository.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i18.AccountGoToLoginOrSignupPageBloc>(
      () => _i18.AccountGoToLoginOrSignupPageBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i19.AccountOverviewBloc>(
      () => _i19.AccountOverviewBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i20.AuthenticationApiService>(
      _i20.AuthenticationApiService(get<_i5.Dio>()));
  gh.singleton<_i21.ChatsApiService>(_i21.ChatsApiService(get<_i5.Dio>()));
  gh.factory<_i22.GroupOverviewBloc>(
      () => _i22.GroupOverviewBloc(get<_i10.IGroupsRepository>()));
  gh.factory<_i23.HomepageBloc>(
      () => _i23.HomepageBloc(get<_i10.IGroupsRepository>()));
  gh.singleton<_i24.IAuthenticationInterface>(
      _i25.AuthenticationRepository(get<_i20.AuthenticationApiService>()));
  gh.singleton<_i26.IChatsRepository>(
      _i27.ChatsRepository(get<_i21.ChatsApiService>()));
  gh.singleton<_i28.ISurveysRepository>(
      _i29.SurveysRepository(get<_i15.SurveysApiService>()));
  gh.singleton<_i30.IUsersRepository>(
      _i31.UsersRepository(get<_i17.UsersApiService>()));
  gh.factory<_i32.ResetPasswordBloc>(
      () => _i32.ResetPasswordBloc(get<_i24.IAuthenticationInterface>()));
  gh.factory<_i33.SignUpFormBloc>(() => _i33.SignUpFormBloc(
      get<_i24.IAuthenticationInterface>(), get<_i8.IAuthFacade>()));
  gh.factory<_i34.AddGroupPageBloc>(() => _i34.AddGroupPageBloc(
      get<_i30.IUsersRepository>(), get<_i10.IGroupsRepository>()));
  gh.factory<_i35.GlobalSearchBloc>(
      () => _i35.GlobalSearchBloc(get<_i30.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i36.RegisterModule {}

class _$FirebaseInjectableModule extends _i37.FirebaseInjectableModule {}
