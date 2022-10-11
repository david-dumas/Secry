// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surveys_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveysEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveysEventCopyWith<$Res> {
  factory $SurveysEventCopyWith(
          SurveysEvent value, $Res Function(SurveysEvent) then) =
      _$SurveysEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveysEventCopyWithImpl<$Res> implements $SurveysEventCopyWith<$Res> {
  _$SurveysEventCopyWithImpl(this._value, this._then);

  final SurveysEvent _value;
  // ignore: unused_field
  final $Res Function(SurveysEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Initialized(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SurveysEvent.initialized(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
  }) {
    return initialized(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
  }) {
    return initialized?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SurveysEvent {
  const factory _Initialized(final String id) = _$_Initialized;

  String get id;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SurveyQuestionsUpdatedCopyWith<$Res> {
  factory _$$_SurveyQuestionsUpdatedCopyWith(_$_SurveyQuestionsUpdated value,
          $Res Function(_$_SurveyQuestionsUpdated) then) =
      __$$_SurveyQuestionsUpdatedCopyWithImpl<$Res>;
  $Res call({List<SurveyRowInfo> SurveyQuestionsInfo});
}

/// @nodoc
class __$$_SurveyQuestionsUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_SurveyQuestionsUpdatedCopyWith<$Res> {
  __$$_SurveyQuestionsUpdatedCopyWithImpl(_$_SurveyQuestionsUpdated _value,
      $Res Function(_$_SurveyQuestionsUpdated) _then)
      : super(_value, (v) => _then(v as _$_SurveyQuestionsUpdated));

  @override
  _$_SurveyQuestionsUpdated get _value =>
      super._value as _$_SurveyQuestionsUpdated;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
  }) {
    return _then(_$_SurveyQuestionsUpdated(
      SurveyQuestionsInfo == freezed
          ? _value._SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
    ));
  }
}

/// @nodoc

class _$_SurveyQuestionsUpdated implements _SurveyQuestionsUpdated {
  const _$_SurveyQuestionsUpdated(final List<SurveyRowInfo> SurveyQuestionsInfo)
      : _SurveyQuestionsInfo = SurveyQuestionsInfo;

  final List<SurveyRowInfo> _SurveyQuestionsInfo;
  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SurveyQuestionsInfo);
  }

  @override
  String toString() {
    return 'SurveysEvent.SurveyQuestionsUpdated(SurveyQuestionsInfo: $SurveyQuestionsInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyQuestionsUpdated &&
            const DeepCollectionEquality()
                .equals(other._SurveyQuestionsInfo, _SurveyQuestionsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_SurveyQuestionsInfo));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyQuestionsUpdatedCopyWith<_$_SurveyQuestionsUpdated> get copyWith =>
      __$$_SurveyQuestionsUpdatedCopyWithImpl<_$_SurveyQuestionsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
  }) {
    return SurveyQuestionsUpdated(SurveyQuestionsInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
  }) {
    return SurveyQuestionsUpdated?.call(SurveyQuestionsInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (SurveyQuestionsUpdated != null) {
      return SurveyQuestionsUpdated(SurveyQuestionsInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
  }) {
    return SurveyQuestionsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
  }) {
    return SurveyQuestionsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (SurveyQuestionsUpdated != null) {
      return SurveyQuestionsUpdated(this);
    }
    return orElse();
  }
}

abstract class _SurveyQuestionsUpdated implements SurveysEvent {
  const factory _SurveyQuestionsUpdated(
          final List<SurveyRowInfo> SurveyQuestionsInfo) =
      _$_SurveyQuestionsUpdated;

  List<SurveyRowInfo> get SurveyQuestionsInfo;
  @JsonKey(ignore: true)
  _$$_SurveyQuestionsUpdatedCopyWith<_$_SurveyQuestionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsFetchingUpdatedCopyWith<$Res> {
  factory _$$_IsFetchingUpdatedCopyWith(_$_IsFetchingUpdated value,
          $Res Function(_$_IsFetchingUpdated) then) =
      __$$_IsFetchingUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetching});
}

/// @nodoc
class __$$_IsFetchingUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_IsFetchingUpdatedCopyWith<$Res> {
  __$$_IsFetchingUpdatedCopyWithImpl(
      _$_IsFetchingUpdated _value, $Res Function(_$_IsFetchingUpdated) _then)
      : super(_value, (v) => _then(v as _$_IsFetchingUpdated));

  @override
  _$_IsFetchingUpdated get _value => super._value as _$_IsFetchingUpdated;

  @override
  $Res call({
    Object? isFetching = freezed,
  }) {
    return _then(_$_IsFetchingUpdated(
      isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsFetchingUpdated implements _IsFetchingUpdated {
  const _$_IsFetchingUpdated(this.isFetching);

  @override
  final bool isFetching;

  @override
  String toString() {
    return 'SurveysEvent.isFetchingUpdated(isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsFetchingUpdated &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$$_IsFetchingUpdatedCopyWith<_$_IsFetchingUpdated> get copyWith =>
      __$$_IsFetchingUpdatedCopyWithImpl<_$_IsFetchingUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
  }) {
    return isFetchingUpdated(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
  }) {
    return isFetchingUpdated?.call(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (isFetchingUpdated != null) {
      return isFetchingUpdated(isFetching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
  }) {
    return isFetchingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
  }) {
    return isFetchingUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (isFetchingUpdated != null) {
      return isFetchingUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsFetchingUpdated implements SurveysEvent {
  const factory _IsFetchingUpdated(final bool isFetching) =
      _$_IsFetchingUpdated;

  bool get isFetching;
  @JsonKey(ignore: true)
  _$$_IsFetchingUpdatedCopyWith<_$_IsFetchingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsDataFetchedUpdatedCopyWith<$Res> {
  factory _$$_IsDataFetchedUpdatedCopyWith(_$_IsDataFetchedUpdated value,
          $Res Function(_$_IsDataFetchedUpdated) then) =
      __$$_IsDataFetchedUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetched});
}

/// @nodoc
class __$$_IsDataFetchedUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_IsDataFetchedUpdatedCopyWith<$Res> {
  __$$_IsDataFetchedUpdatedCopyWithImpl(_$_IsDataFetchedUpdated _value,
      $Res Function(_$_IsDataFetchedUpdated) _then)
      : super(_value, (v) => _then(v as _$_IsDataFetchedUpdated));

  @override
  _$_IsDataFetchedUpdated get _value => super._value as _$_IsDataFetchedUpdated;

  @override
  $Res call({
    Object? isFetched = freezed,
  }) {
    return _then(_$_IsDataFetchedUpdated(
      isFetched == freezed
          ? _value.isFetched
          : isFetched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsDataFetchedUpdated implements _IsDataFetchedUpdated {
  const _$_IsDataFetchedUpdated(this.isFetched);

  @override
  final bool isFetched;

  @override
  String toString() {
    return 'SurveysEvent.isDataFetchedUpdated(isFetched: $isFetched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsDataFetchedUpdated &&
            const DeepCollectionEquality().equals(other.isFetched, isFetched));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetched));

  @JsonKey(ignore: true)
  @override
  _$$_IsDataFetchedUpdatedCopyWith<_$_IsDataFetchedUpdated> get copyWith =>
      __$$_IsDataFetchedUpdatedCopyWithImpl<_$_IsDataFetchedUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
  }) {
    return isDataFetchedUpdated(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
  }) {
    return isDataFetchedUpdated?.call(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (isDataFetchedUpdated != null) {
      return isDataFetchedUpdated(isFetched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
  }) {
    return isDataFetchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
  }) {
    return isDataFetchedUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    required TResult orElse(),
  }) {
    if (isDataFetchedUpdated != null) {
      return isDataFetchedUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsDataFetchedUpdated implements SurveysEvent {
  const factory _IsDataFetchedUpdated(final bool isFetched) =
      _$_IsDataFetchedUpdated;

  bool get isFetched;
  @JsonKey(ignore: true)
  _$$_IsDataFetchedUpdatedCopyWith<_$_IsDataFetchedUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurveysState {
  List<SurveyRowInfo> get SurveyQuestionsInfo =>
      throw _privateConstructorUsedError;
  bool get isDataFetched => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveysStateCopyWith<SurveysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveysStateCopyWith<$Res> {
  factory $SurveysStateCopyWith(
          SurveysState value, $Res Function(SurveysState) then) =
      _$SurveysStateCopyWithImpl<$Res>;
  $Res call(
      {List<SurveyRowInfo> SurveyQuestionsInfo,
      bool isDataFetched,
      bool isFetching});
}

/// @nodoc
class _$SurveysStateCopyWithImpl<$Res> implements $SurveysStateCopyWith<$Res> {
  _$SurveysStateCopyWithImpl(this._value, this._then);

  final SurveysState _value;
  // ignore: unused_field
  final $Res Function(SurveysState) _then;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_value.copyWith(
      SurveyQuestionsInfo: SurveyQuestionsInfo == freezed
          ? _value.SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveysStateCopyWith<$Res>
    implements $SurveysStateCopyWith<$Res> {
  factory _$$_SurveysStateCopyWith(
          _$_SurveysState value, $Res Function(_$_SurveysState) then) =
      __$$_SurveysStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SurveyRowInfo> SurveyQuestionsInfo,
      bool isDataFetched,
      bool isFetching});
}

/// @nodoc
class __$$_SurveysStateCopyWithImpl<$Res>
    extends _$SurveysStateCopyWithImpl<$Res>
    implements _$$_SurveysStateCopyWith<$Res> {
  __$$_SurveysStateCopyWithImpl(
      _$_SurveysState _value, $Res Function(_$_SurveysState) _then)
      : super(_value, (v) => _then(v as _$_SurveysState));

  @override
  _$_SurveysState get _value => super._value as _$_SurveysState;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_$_SurveysState(
      SurveyQuestionsInfo: SurveyQuestionsInfo == freezed
          ? _value._SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SurveysState implements _SurveysState {
  const _$_SurveysState(
      {required final List<SurveyRowInfo> SurveyQuestionsInfo,
      required this.isDataFetched,
      required this.isFetching})
      : _SurveyQuestionsInfo = SurveyQuestionsInfo;

  final List<SurveyRowInfo> _SurveyQuestionsInfo;
  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SurveyQuestionsInfo);
  }

  @override
  final bool isDataFetched;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'SurveysState(SurveyQuestionsInfo: $SurveyQuestionsInfo, isDataFetched: $isDataFetched, isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveysState &&
            const DeepCollectionEquality()
                .equals(other._SurveyQuestionsInfo, _SurveyQuestionsInfo) &&
            const DeepCollectionEquality()
                .equals(other.isDataFetched, isDataFetched) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_SurveyQuestionsInfo),
      const DeepCollectionEquality().hash(isDataFetched),
      const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      __$$_SurveysStateCopyWithImpl<_$_SurveysState>(this, _$identity);
}

abstract class _SurveysState implements SurveysState {
  const factory _SurveysState(
      {required final List<SurveyRowInfo> SurveyQuestionsInfo,
      required final bool isDataFetched,
      required final bool isFetching}) = _$_SurveysState;

  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo;
  @override
  bool get isDataFetched;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      throw _privateConstructorUsedError;
}
