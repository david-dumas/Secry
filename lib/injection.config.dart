// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_chat/add_chat_page_bloc.dart' as _i3;
import 'application/add_group/add_group_page_bloc.dart' as _i40;
import 'application/add_survey/add_survey_page_bloc.dart' as _i4;
import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i5;
import 'application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart'
    as _i23;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i24;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i38;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i39;
import 'application/chat/chat_page_bloc.dart' as _i26;
import 'application/filter_survey/filter_survey_bloc.dart' as _i7;
import 'application/global_search/global_search_bloc.dart' as _i41;
import 'application/group_overview/group_overview_bloc.dart' as _i28;
import 'application/homepage/homepage_bloc.dart' as _i29;
import 'application/main/main_bloc.dart' as _i16;
import 'application/report_dialog/report_dialog_bloc.dart' as _i17;
import 'application/splash/splash_bloc.dart' as _i19;
import 'application/tabbar/tabbar_bloc.dart' as _i21;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/auth/i_authentication_interface.dart' as _i30;
import 'domain/chats/i_chats_repository.dart' as _i32;
import 'domain/chats/view/i_view_chats_repository.dart' as _i14;
import 'domain/groups/i_groups_repository.dart' as _i12;
import 'domain/surveys/i_surveys_repository.dart' as _i34;
import 'domain/users/i_users_repository.dart' as _i36;
import 'infrastructure/auth/authentication_api_service.dart' as _i25;
import 'infrastructure/auth/authentication_repository.dart' as _i31;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/chats/chats_api_service.dart' as _i27;
import 'infrastructure/chats/chats_repository.dart' as _i33;
import 'infrastructure/chats/view/view_chats_repository.dart' as _i15;
import 'infrastructure/core/common_injectable_module.dart' as _i42;
import 'infrastructure/core/firebase_injectable_module.dart' as _i43;
import 'infrastructure/groups/groups_api_service.dart' as _i9;
import 'infrastructure/groups/groups_repository.dart' as _i13;
import 'infrastructure/surveys/surveys_api_service.dart' as _i20;
import 'infrastructure/surveys/surveys_repository.dart' as _i35;
import 'infrastructure/users/users_api_service.dart' as _i22;
import 'infrastructure/users/users_repository.dart'
    as _i37; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.FilterSurveyBloc>(() => _i7.FilterSurveyBloc());
  gh.singleton<_i8.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i9.GroupsApiService>(_i9.GroupsApiService(get<_i6.Dio>()));
  gh.singleton<_i10.IAuthFacade>(
      _i11.FirebaseAuthFacade(get<_i8.FirebaseAuth>()));
  gh.singleton<_i12.IGroupsRepository>(
      _i13.GroupsRepository(get<_i9.GroupsApiService>()));
  gh.singleton<_i14.IViewChatsRepository>(_i15.ViewChatsRepository());
  gh.factory<_i16.MainBloc>(() => _i16.MainBloc());
  gh.factory<_i17.ReportDialogBloc>(() => _i17.ReportDialogBloc());
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i19.SplashBloc>(() => _i19.SplashBloc());
  gh.singleton<_i20.SurveysApiService>(_i20.SurveysApiService(get<_i6.Dio>()));
  gh.factory<_i21.TabbarBloc>(() => _i21.TabbarBloc(get<_i10.IAuthFacade>()));
  gh.singleton<_i22.UsersApiService>(_i22.UsersApiService(get<_i6.Dio>()));
  gh.factory<_i23.AccountGoToLoginOrSignupPageBloc>(
      () => _i23.AccountGoToLoginOrSignupPageBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i24.AccountOverviewBloc>(
      () => _i24.AccountOverviewBloc(get<_i10.IAuthFacade>()));
  gh.singleton<_i25.AuthenticationApiService>(
      _i25.AuthenticationApiService(get<_i6.Dio>()));
  gh.factory<_i26.ChatPageBloc>(
      () => _i26.ChatPageBloc(get<_i14.IViewChatsRepository>()));
  gh.singleton<_i27.ChatsApiService>(_i27.ChatsApiService(get<_i6.Dio>()));
  gh.factory<_i28.GroupOverviewBloc>(
      () => _i28.GroupOverviewBloc(get<_i12.IGroupsRepository>()));
  gh.factory<_i29.HomepageBloc>(
      () => _i29.HomepageBloc(get<_i12.IGroupsRepository>()));
  gh.singleton<_i30.IAuthenticationInterface>(
      _i31.AuthenticationRepository(get<_i25.AuthenticationApiService>()));
  gh.singleton<_i32.IChatsRepository>(
      _i33.ChatsRepository(get<_i27.ChatsApiService>()));
  gh.singleton<_i34.ISurveysRepository>(
      _i35.SurveysRepository(get<_i20.SurveysApiService>()));
  gh.singleton<_i36.IUsersRepository>(
      _i37.UsersRepository(get<_i22.UsersApiService>()));
  gh.factory<_i38.ResetPasswordBloc>(
      () => _i38.ResetPasswordBloc(get<_i30.IAuthenticationInterface>()));
  gh.factory<_i39.SignUpFormBloc>(() => _i39.SignUpFormBloc(
      get<_i30.IAuthenticationInterface>(), get<_i10.IAuthFacade>()));
  gh.factory<_i40.AddGroupPageBloc>(() => _i40.AddGroupPageBloc(
      get<_i36.IUsersRepository>(), get<_i12.IGroupsRepository>()));
  gh.factory<_i41.GlobalSearchBloc>(
      () => _i41.GlobalSearchBloc(get<_i36.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i42.RegisterModule {}

class _$FirebaseInjectableModule extends _i43.FirebaseInjectableModule {}
