part of 'tabbar_bloc.dart';

@freezed
abstract class TabbarEvent with _$TabbarEvent {
  const factory TabbarEvent.initialized() = _Initialized;
  const factory TabbarEvent.selectedIndexChanged(int index) =
      _SelectedIndexChanged;
}
