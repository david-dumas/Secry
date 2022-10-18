// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_chat/add_chat_page_bloc.dart' as _i3;
import 'application/add_group/add_group_page_bloc.dart' as _i36;
import 'application/add_survey/add_survey_page_bloc.dart' as _i4;
import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i5;
import 'application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart'
    as _i19;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i20;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i33;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i34;
import 'application/global_search/global_search_bloc.dart' as _i37;
import 'application/group_overview/group_overview_bloc.dart' as _i23;
import 'application/homepage/homepage_bloc.dart' as _i24;
import 'application/main/main_bloc.dart' as _i13;
import 'application/splash/splash_bloc.dart' as _i15;
import 'application/surveys/surveys_bloc.dart' as _i35;
import 'application/tabbar/tabbar_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/auth/i_authentication_interface.dart' as _i25;
import 'domain/chats/i_chats_repository.dart' as _i27;
import 'domain/groups/i_groups_repository.dart' as _i11;
import 'domain/surveys/i_surveys_repository.dart' as _i29;
import 'domain/users/i_users_repository.dart' as _i31;
import 'infrastructure/auth/authentication_api_service.dart' as _i21;
import 'infrastructure/auth/authentication_repository.dart' as _i26;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/chats/chats_api_service.dart' as _i22;
import 'infrastructure/chats/chats_repository.dart' as _i28;
import 'infrastructure/core/common_injectable_module.dart' as _i38;
import 'infrastructure/core/firebase_injectable_module.dart' as _i39;
import 'infrastructure/groups/groups_api_service.dart' as _i8;
import 'infrastructure/groups/groups_repository.dart' as _i12;
import 'infrastructure/surveys/surveys_api_service.dart' as _i16;
import 'infrastructure/surveys/surveys_repository.dart' as _i30;
import 'infrastructure/users/users_api_service.dart' as _i18;
import 'infrastructure/users/users_repository.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AddChatPageBloc>(() => _i3.AddChatPageBloc());
  gh.factory<_i4.AddSurveyPageBloc>(() => _i4.AddSurveyPageBloc());
  gh.factory<_i5.AllChatsOrSurveysInGroupPageBloc>(
      () => _i5.AllChatsOrSurveysInGroupPageBloc());
  gh.singleton<_i6.Dio>(registerModule.dio);
  gh.singleton<_i7.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i8.GroupsApiService>(_i8.GroupsApiService(get<_i6.Dio>()));
  gh.singleton<_i9.IAuthFacade>(
      _i10.FirebaseAuthFacade(get<_i7.FirebaseAuth>()));
  gh.singleton<_i11.IGroupsRepository>(
      _i12.GroupsRepository(get<_i8.GroupsApiService>()));
  gh.factory<_i13.MainBloc>(() => _i13.MainBloc());
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i15.SplashBloc>(() => _i15.SplashBloc());
  gh.singleton<_i16.SurveysApiService>(_i16.SurveysApiService(get<_i6.Dio>()));
  gh.factory<_i17.TabbarBloc>(() => _i17.TabbarBloc(get<_i9.IAuthFacade>()));
  gh.singleton<_i18.UsersApiService>(_i18.UsersApiService(get<_i6.Dio>()));
  gh.factory<_i19.AccountGoToLoginOrSignupPageBloc>(
      () => _i19.AccountGoToLoginOrSignupPageBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i20.AccountOverviewBloc>(
      () => _i20.AccountOverviewBloc(get<_i9.IAuthFacade>()));
  gh.singleton<_i21.AuthenticationApiService>(
      _i21.AuthenticationApiService(get<_i6.Dio>()));
  gh.singleton<_i22.ChatsApiService>(_i22.ChatsApiService(get<_i6.Dio>()));
  gh.factory<_i23.GroupOverviewBloc>(
      () => _i23.GroupOverviewBloc(get<_i11.IGroupsRepository>()));
  gh.factory<_i24.HomepageBloc>(
      () => _i24.HomepageBloc(get<_i11.IGroupsRepository>()));
  gh.singleton<_i25.IAuthenticationInterface>(
      _i26.AuthenticationRepository(get<_i21.AuthenticationApiService>()));
  gh.singleton<_i27.IChatsRepository>(
      _i28.ChatsRepository(get<_i22.ChatsApiService>()));
  gh.singleton<_i29.ISurveysRepository>(
      _i30.SurveysRepository(get<_i16.SurveysApiService>()));
  gh.singleton<_i31.IUsersRepository>(
      _i32.UsersRepository(get<_i18.UsersApiService>()));
  gh.factory<_i33.ResetPasswordBloc>(
      () => _i33.ResetPasswordBloc(get<_i25.IAuthenticationInterface>()));
  gh.factory<_i34.SignUpFormBloc>(() => _i34.SignUpFormBloc(
      get<_i25.IAuthenticationInterface>(), get<_i9.IAuthFacade>()));
  gh.factory<_i35.SurveysBloc>(
      () => _i35.SurveysBloc(get<_i29.ISurveysRepository>()));
  gh.factory<_i36.AddGroupPageBloc>(() => _i36.AddGroupPageBloc(
      get<_i31.IUsersRepository>(), get<_i11.IGroupsRepository>()));
  gh.factory<_i37.GlobalSearchBloc>(
      () => _i37.GlobalSearchBloc(get<_i31.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i38.RegisterModule {}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}
