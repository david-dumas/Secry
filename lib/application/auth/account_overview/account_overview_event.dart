part of 'account_overview_bloc.dart';

@freezed
class AccountOverviewEvent with _$AccountOverviewEvent {
  const factory AccountOverviewEvent.logoutPressed() = _LogoutPressed;
}
