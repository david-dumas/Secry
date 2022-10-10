// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newValue) reportedTileExcecuted,
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReportedTileExcecuted value)
        reportedTileExcecuted,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDialogEventCopyWith<$Res> {
  factory $ReportDialogEventCopyWith(
          ReportDialogEvent value, $Res Function(ReportDialogEvent) then) =
      _$ReportDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportDialogEventCopyWithImpl<$Res>
    implements $ReportDialogEventCopyWith<$Res> {
  _$ReportDialogEventCopyWithImpl(this._value, this._then);

  final ReportDialogEvent _value;
  // ignore: unused_field
  final $Res Function(ReportDialogEvent) _then;
}

/// @nodoc
abstract class _$$_ReportedTileExcecutedCopyWith<$Res> {
  factory _$$_ReportedTileExcecutedCopyWith(_$_ReportedTileExcecuted value,
          $Res Function(_$_ReportedTileExcecuted) then) =
      __$$_ReportedTileExcecutedCopyWithImpl<$Res>;
  $Res call({int newValue});
}

/// @nodoc
class __$$_ReportedTileExcecutedCopyWithImpl<$Res>
    extends _$ReportDialogEventCopyWithImpl<$Res>
    implements _$$_ReportedTileExcecutedCopyWith<$Res> {
  __$$_ReportedTileExcecutedCopyWithImpl(_$_ReportedTileExcecuted _value,
      $Res Function(_$_ReportedTileExcecuted) _then)
      : super(_value, (v) => _then(v as _$_ReportedTileExcecuted));

  @override
  _$_ReportedTileExcecuted get _value =>
      super._value as _$_ReportedTileExcecuted;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$_ReportedTileExcecuted(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReportedTileExcecuted implements _ReportedTileExcecuted {
  const _$_ReportedTileExcecuted(this.newValue);

  @override
  final int newValue;

  @override
  String toString() {
    return 'ReportDialogEvent.reportedTileExcecuted(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportedTileExcecuted &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$_ReportedTileExcecutedCopyWith<_$_ReportedTileExcecuted> get copyWith =>
      __$$_ReportedTileExcecutedCopyWithImpl<_$_ReportedTileExcecuted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newValue) reportedTileExcecuted,
    required TResult Function() initialized,
  }) {
    return reportedTileExcecuted(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
  }) {
    return reportedTileExcecuted?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (reportedTileExcecuted != null) {
      return reportedTileExcecuted(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReportedTileExcecuted value)
        reportedTileExcecuted,
    required TResult Function(_Initialized value) initialized,
  }) {
    return reportedTileExcecuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
  }) {
    return reportedTileExcecuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (reportedTileExcecuted != null) {
      return reportedTileExcecuted(this);
    }
    return orElse();
  }
}

abstract class _ReportedTileExcecuted implements ReportDialogEvent {
  const factory _ReportedTileExcecuted(final int newValue) =
      _$_ReportedTileExcecuted;

  int get newValue;
  @JsonKey(ignore: true)
  _$$_ReportedTileExcecutedCopyWith<_$_ReportedTileExcecuted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ReportDialogEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'ReportDialogEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newValue) reportedTileExcecuted,
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newValue)? reportedTileExcecuted,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReportedTileExcecuted value)
        reportedTileExcecuted,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportedTileExcecuted value)? reportedTileExcecuted,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ReportDialogEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
mixin _$ReportDialogState {
  int get selectedReportTile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportDialogStateCopyWith<ReportDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDialogStateCopyWith<$Res> {
  factory $ReportDialogStateCopyWith(
          ReportDialogState value, $Res Function(ReportDialogState) then) =
      _$ReportDialogStateCopyWithImpl<$Res>;
  $Res call({int selectedReportTile});
}

/// @nodoc
class _$ReportDialogStateCopyWithImpl<$Res>
    implements $ReportDialogStateCopyWith<$Res> {
  _$ReportDialogStateCopyWithImpl(this._value, this._then);

  final ReportDialogState _value;
  // ignore: unused_field
  final $Res Function(ReportDialogState) _then;

  @override
  $Res call({
    Object? selectedReportTile = freezed,
  }) {
    return _then(_value.copyWith(
      selectedReportTile: selectedReportTile == freezed
          ? _value.selectedReportTile
          : selectedReportTile // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportDialogStateCopyWith<$Res>
    implements $ReportDialogStateCopyWith<$Res> {
  factory _$$_ReportDialogStateCopyWith(_$_ReportDialogState value,
          $Res Function(_$_ReportDialogState) then) =
      __$$_ReportDialogStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedReportTile});
}

/// @nodoc
class __$$_ReportDialogStateCopyWithImpl<$Res>
    extends _$ReportDialogStateCopyWithImpl<$Res>
    implements _$$_ReportDialogStateCopyWith<$Res> {
  __$$_ReportDialogStateCopyWithImpl(
      _$_ReportDialogState _value, $Res Function(_$_ReportDialogState) _then)
      : super(_value, (v) => _then(v as _$_ReportDialogState));

  @override
  _$_ReportDialogState get _value => super._value as _$_ReportDialogState;

  @override
  $Res call({
    Object? selectedReportTile = freezed,
  }) {
    return _then(_$_ReportDialogState(
      selectedReportTile: selectedReportTile == freezed
          ? _value.selectedReportTile
          : selectedReportTile // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReportDialogState implements _ReportDialogState {
  const _$_ReportDialogState({required this.selectedReportTile});

  @override
  final int selectedReportTile;

  @override
  String toString() {
    return 'ReportDialogState(selectedReportTile: $selectedReportTile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportDialogState &&
            const DeepCollectionEquality()
                .equals(other.selectedReportTile, selectedReportTile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedReportTile));

  @JsonKey(ignore: true)
  @override
  _$$_ReportDialogStateCopyWith<_$_ReportDialogState> get copyWith =>
      __$$_ReportDialogStateCopyWithImpl<_$_ReportDialogState>(
          this, _$identity);
}

abstract class _ReportDialogState implements ReportDialogState {
  const factory _ReportDialogState({required final int selectedReportTile}) =
      _$_ReportDialogState;

  @override
  int get selectedReportTile;
  @override
  @JsonKey(ignore: true)
  _$$_ReportDialogStateCopyWith<_$_ReportDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}
