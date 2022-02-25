part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.redirect(PageRouteInfo route, int delayInMilliseconds) = _Redirect;
}
