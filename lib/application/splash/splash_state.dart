part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({required Option<PageRouteInfo> routeOption, int? delayInMilliseconds}) = _SplashState;

  factory SplashState.initial() => SplashState(
        routeOption: none(),
        delayInMilliseconds: 0,
      );
}
