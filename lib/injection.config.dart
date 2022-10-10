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
    as _i20;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i21;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i34;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i35;
import 'application/global_search/global_search_bloc.dart' as _i37;
import 'application/group_overview/group_overview_bloc.dart' as _i24;
import 'application/homepage/homepage_bloc.dart' as _i25;
import 'application/main/main_bloc.dart' as _i13;
import 'application/report_dialog/report_dialog_bloc.dart' as _i14;
import 'application/splash/splash_bloc.dart' as _i16;
import 'application/tabbar/tabbar_bloc.dart' as _i18;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/auth/i_authentication_interface.dart' as _i26;
import 'domain/chats/i_chats_repository.dart' as _i28;
import 'domain/groups/i_groups_repository.dart' as _i11;
import 'domain/surveys/i_surveys_repository.dart' as _i30;
import 'domain/users/i_users_repository.dart' as _i32;
import 'infrastructure/auth/authentication_api_service.dart' as _i22;
import 'infrastructure/auth/authentication_repository.dart' as _i27;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/chats/chats_api_service.dart' as _i23;
import 'infrastructure/chats/chats_repository.dart' as _i29;
import 'infrastructure/core/common_injectable_module.dart' as _i38;
import 'infrastructure/core/firebase_injectable_module.dart' as _i39;
import 'infrastructure/groups/groups_api_service.dart' as _i8;
import 'infrastructure/groups/groups_repository.dart' as _i12;
import 'infrastructure/surveys/surveys_api_service.dart' as _i17;
import 'infrastructure/surveys/surveys_repository.dart' as _i31;
import 'infrastructure/users/users_api_service.dart' as _i19;
import 'infrastructure/users/users_repository.dart'
    as _i33; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i14.ReportDialogBloc>(() => _i14.ReportDialogBloc());
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i16.SplashBloc>(() => _i16.SplashBloc());
  gh.singleton<_i17.SurveysApiService>(_i17.SurveysApiService(get<_i6.Dio>()));
  gh.factory<_i18.TabbarBloc>(() => _i18.TabbarBloc(get<_i9.IAuthFacade>()));
  gh.singleton<_i19.UsersApiService>(_i19.UsersApiService(get<_i6.Dio>()));
  gh.factory<_i20.AccountGoToLoginOrSignupPageBloc>(
      () => _i20.AccountGoToLoginOrSignupPageBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i21.AccountOverviewBloc>(
      () => _i21.AccountOverviewBloc(get<_i9.IAuthFacade>()));
  gh.singleton<_i22.AuthenticationApiService>(
      _i22.AuthenticationApiService(get<_i6.Dio>()));
  gh.singleton<_i23.ChatsApiService>(_i23.ChatsApiService(get<_i6.Dio>()));
  gh.factory<_i24.GroupOverviewBloc>(
      () => _i24.GroupOverviewBloc(get<_i11.IGroupsRepository>()));
  gh.factory<_i25.HomepageBloc>(
      () => _i25.HomepageBloc(get<_i11.IGroupsRepository>()));
  gh.singleton<_i26.IAuthenticationInterface>(
      _i27.AuthenticationRepository(get<_i22.AuthenticationApiService>()));
  gh.singleton<_i28.IChatsRepository>(
      _i29.ChatsRepository(get<_i23.ChatsApiService>()));
  gh.singleton<_i30.ISurveysRepository>(
      _i31.SurveysRepository(get<_i17.SurveysApiService>()));
  gh.singleton<_i32.IUsersRepository>(
      _i33.UsersRepository(get<_i19.UsersApiService>()));
  gh.factory<_i34.ResetPasswordBloc>(
      () => _i34.ResetPasswordBloc(get<_i26.IAuthenticationInterface>()));
  gh.factory<_i35.SignUpFormBloc>(() => _i35.SignUpFormBloc(
      get<_i26.IAuthenticationInterface>(), get<_i9.IAuthFacade>()));
  gh.factory<_i36.AddGroupPageBloc>(() => _i36.AddGroupPageBloc(
      get<_i32.IUsersRepository>(), get<_i11.IGroupsRepository>()));
  gh.factory<_i37.GlobalSearchBloc>(
      () => _i37.GlobalSearchBloc(get<_i32.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i38.RegisterModule {}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}
