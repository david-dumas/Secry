part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({required int initialState}) = _MainState;

  factory MainState.initial() => MainState(initialState: 0);
}
