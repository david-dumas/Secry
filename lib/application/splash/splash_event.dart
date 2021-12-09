part of 'splash_bloc.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.redirect(
      PageRouteInfo route, int delayInMilliseconds) = _Redirect;
}
