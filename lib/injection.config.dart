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
import 'application/add_group/add_group_page_bloc.dart' as _i37;
import 'application/add_survey/add_survey_page_bloc.dart' as _i4;
import 'application/all_chats_or_surveys_in_group_page/all_chats_or_surveys_in_group_page_bloc.dart'
    as _i5;
import 'application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart'
    as _i21;
import 'application/auth/account_overview/account_overview_bloc.dart' as _i22;
import 'application/auth/reset_password/reset_password_bloc.dart' as _i35;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i36;
import 'application/filter_survey/filter_survey_bloc.dart' as _i7;
import 'application/global_search/global_search_bloc.dart' as _i38;
import 'application/group_overview/group_overview_bloc.dart' as _i25;
import 'application/homepage/homepage_bloc.dart' as _i26;
import 'application/main/main_bloc.dart' as _i14;
import 'application/report_dialog/report_dialog_bloc.dart' as _i15;
import 'application/splash/splash_bloc.dart' as _i17;
import 'application/tabbar/tabbar_bloc.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/auth/i_authentication_interface.dart' as _i27;
import 'domain/chats/i_chats_repository.dart' as _i29;
import 'domain/groups/i_groups_repository.dart' as _i12;
import 'domain/surveys/i_surveys_repository.dart' as _i31;
import 'domain/users/i_users_repository.dart' as _i33;
import 'infrastructure/auth/authentication_api_service.dart' as _i23;
import 'infrastructure/auth/authentication_repository.dart' as _i28;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/chats/chats_api_service.dart' as _i24;
import 'infrastructure/chats/chats_repository.dart' as _i30;
import 'infrastructure/core/common_injectable_module.dart' as _i39;
import 'infrastructure/core/firebase_injectable_module.dart' as _i40;
import 'infrastructure/groups/groups_api_service.dart' as _i9;
import 'infrastructure/groups/groups_repository.dart' as _i13;
import 'infrastructure/surveys/surveys_api_service.dart' as _i18;
import 'infrastructure/surveys/surveys_repository.dart' as _i32;
import 'infrastructure/users/users_api_service.dart' as _i20;
import 'infrastructure/users/users_repository.dart'
    as _i34; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
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
  gh.factory<_i14.MainBloc>(() => _i14.MainBloc());
  gh.factory<_i15.ReportDialogBloc>(() => _i15.ReportDialogBloc());
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i17.SplashBloc>(() => _i17.SplashBloc());
  gh.singleton<_i18.SurveysApiService>(_i18.SurveysApiService(get<_i6.Dio>()));
  gh.factory<_i19.TabbarBloc>(() => _i19.TabbarBloc(get<_i10.IAuthFacade>()));
  gh.singleton<_i20.UsersApiService>(_i20.UsersApiService(get<_i6.Dio>()));
  gh.factory<_i21.AccountGoToLoginOrSignupPageBloc>(
      () => _i21.AccountGoToLoginOrSignupPageBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i22.AccountOverviewBloc>(
      () => _i22.AccountOverviewBloc(get<_i10.IAuthFacade>()));
  gh.singleton<_i23.AuthenticationApiService>(
      _i23.AuthenticationApiService(get<_i6.Dio>()));
  gh.singleton<_i24.ChatsApiService>(_i24.ChatsApiService(get<_i6.Dio>()));
  gh.factory<_i25.GroupOverviewBloc>(
      () => _i25.GroupOverviewBloc(get<_i12.IGroupsRepository>()));
  gh.factory<_i26.HomepageBloc>(
      () => _i26.HomepageBloc(get<_i12.IGroupsRepository>()));
  gh.singleton<_i27.IAuthenticationInterface>(
      _i28.AuthenticationRepository(get<_i23.AuthenticationApiService>()));
  gh.singleton<_i29.IChatsRepository>(
      _i30.ChatsRepository(get<_i24.ChatsApiService>()));
  gh.singleton<_i31.ISurveysRepository>(
      _i32.SurveysRepository(get<_i18.SurveysApiService>()));
  gh.singleton<_i33.IUsersRepository>(
      _i34.UsersRepository(get<_i20.UsersApiService>()));
  gh.factory<_i35.ResetPasswordBloc>(
      () => _i35.ResetPasswordBloc(get<_i27.IAuthenticationInterface>()));
  gh.factory<_i36.SignUpFormBloc>(() => _i36.SignUpFormBloc(
        get<_i27.IAuthenticationInterface>(),
        get<_i10.IAuthFacade>(),
      ));
  gh.factory<_i37.AddGroupPageBloc>(() => _i37.AddGroupPageBloc(
        get<_i33.IUsersRepository>(),
        get<_i12.IGroupsRepository>(),
      ));
  gh.factory<_i38.GlobalSearchBloc>(
      () => _i38.GlobalSearchBloc(get<_i33.IUsersRepository>()));
  return get;
}

class _$RegisterModule extends _i39.RegisterModule {}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
