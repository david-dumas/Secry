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
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
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
  $Res call({String groupId});
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
    Object? groupId = freezed,
  }) {
    return _then(_$_Initialized(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'SurveysEvent.initialized(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) {
    return initialized(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) {
    return initialized?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SurveysEvent {
  const factory _Initialized(final String groupId) = _$_Initialized;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SurveyRefreshedCopyWith<$Res> {
  factory _$$_SurveyRefreshedCopyWith(
          _$_SurveyRefreshed value, $Res Function(_$_SurveyRefreshed) then) =
      __$$_SurveyRefreshedCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$$_SurveyRefreshedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_SurveyRefreshedCopyWith<$Res> {
  __$$_SurveyRefreshedCopyWithImpl(
      _$_SurveyRefreshed _value, $Res Function(_$_SurveyRefreshed) _then)
      : super(_value, (v) => _then(v as _$_SurveyRefreshed));

  @override
  _$_SurveyRefreshed get _value => super._value as _$_SurveyRefreshed;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$_SurveyRefreshed(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SurveyRefreshed implements _SurveyRefreshed {
  const _$_SurveyRefreshed(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'SurveysEvent.SurveyRefreshed(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyRefreshed &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyRefreshedCopyWith<_$_SurveyRefreshed> get copyWith =>
      __$$_SurveyRefreshedCopyWithImpl<_$_SurveyRefreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) {
    return SurveyRefreshed(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) {
    return SurveyRefreshed?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (SurveyRefreshed != null) {
      return SurveyRefreshed(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) {
    return SurveyRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) {
    return SurveyRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (SurveyRefreshed != null) {
      return SurveyRefreshed(this);
    }
    return orElse();
  }
}

abstract class _SurveyRefreshed implements SurveysEvent {
  const factory _SurveyRefreshed(final String groupId) = _$_SurveyRefreshed;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_SurveyRefreshedCopyWith<_$_SurveyRefreshed> get copyWith =>
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
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) {
    return isFetchingUpdated(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) {
    return isFetchingUpdated?.call(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
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
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) {
    return isFetchingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) {
    return isFetchingUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
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
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) {
    return isDataFetchedUpdated(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) {
    return isDataFetchedUpdated?.call(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
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
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) {
    return isDataFetchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) {
    return isDataFetchedUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
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
abstract class _$$_CurrentFeatureTypeUpdatedCopyWith<$Res> {
  factory _$$_CurrentFeatureTypeUpdatedCopyWith(
          _$_CurrentFeatureTypeUpdated value,
          $Res Function(_$_CurrentFeatureTypeUpdated) then) =
      __$$_CurrentFeatureTypeUpdatedCopyWithImpl<$Res>;
  $Res call({FeatureType newFeatureType});
}

/// @nodoc
class __$$_CurrentFeatureTypeUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_CurrentFeatureTypeUpdatedCopyWith<$Res> {
  __$$_CurrentFeatureTypeUpdatedCopyWithImpl(
      _$_CurrentFeatureTypeUpdated _value,
      $Res Function(_$_CurrentFeatureTypeUpdated) _then)
      : super(_value, (v) => _then(v as _$_CurrentFeatureTypeUpdated));

  @override
  _$_CurrentFeatureTypeUpdated get _value =>
      super._value as _$_CurrentFeatureTypeUpdated;

  @override
  $Res call({
    Object? newFeatureType = freezed,
  }) {
    return _then(_$_CurrentFeatureTypeUpdated(
      newFeatureType == freezed
          ? _value.newFeatureType
          : newFeatureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ));
  }
}

/// @nodoc

class _$_CurrentFeatureTypeUpdated implements _CurrentFeatureTypeUpdated {
  const _$_CurrentFeatureTypeUpdated(this.newFeatureType);

  @override
  final FeatureType newFeatureType;

  @override
  String toString() {
    return 'SurveysEvent.currentFeatureTypeUpdated(newFeatureType: $newFeatureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentFeatureTypeUpdated &&
            const DeepCollectionEquality()
                .equals(other.newFeatureType, newFeatureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newFeatureType));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentFeatureTypeUpdatedCopyWith<_$_CurrentFeatureTypeUpdated>
      get copyWith => __$$_CurrentFeatureTypeUpdatedCopyWithImpl<
          _$_CurrentFeatureTypeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(String groupId) SurveyRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
  }) {
    return currentFeatureTypeUpdated(newFeatureType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
  }) {
    return currentFeatureTypeUpdated?.call(newFeatureType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(String groupId)? SurveyRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (currentFeatureTypeUpdated != null) {
      return currentFeatureTypeUpdated(newFeatureType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyRefreshed value) SurveyRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
  }) {
    return currentFeatureTypeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
  }) {
    return currentFeatureTypeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyRefreshed value)? SurveyRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    required TResult orElse(),
  }) {
    if (currentFeatureTypeUpdated != null) {
      return currentFeatureTypeUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentFeatureTypeUpdated implements SurveysEvent {
  const factory _CurrentFeatureTypeUpdated(final FeatureType newFeatureType) =
      _$_CurrentFeatureTypeUpdated;

  FeatureType get newFeatureType;
  @JsonKey(ignore: true)
  _$$_CurrentFeatureTypeUpdatedCopyWith<_$_CurrentFeatureTypeUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurveysState {
  List<SurveyRowInfo> get chatInfoItems => throw _privateConstructorUsedError;
  List<SurveyRowInfo> get surveyInfoItems => throw _privateConstructorUsedError;
  bool get isDataFetched => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  FeatureType get currentFeatureType => throw _privateConstructorUsedError;

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
      {List<SurveyRowInfo> chatInfoItems,
      List<SurveyRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
}

/// @nodoc
class _$SurveysStateCopyWithImpl<$Res> implements $SurveysStateCopyWith<$Res> {
  _$SurveysStateCopyWithImpl(this._value, this._then);

  final SurveysState _value;
  // ignore: unused_field
  final $Res Function(SurveysState) _then;

  @override
  $Res call({
    Object? chatInfoItems = freezed,
    Object? surveyInfoItems = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
    Object? currentFeatureType = freezed,
  }) {
    return _then(_value.copyWith(
      chatInfoItems: chatInfoItems == freezed
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      surveyInfoItems: surveyInfoItems == freezed
          ? _value.surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFeatureType: currentFeatureType == freezed
          ? _value.currentFeatureType
          : currentFeatureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
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
      {List<SurveyRowInfo> chatInfoItems,
      List<SurveyRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
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
    Object? chatInfoItems = freezed,
    Object? surveyInfoItems = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
    Object? currentFeatureType = freezed,
  }) {
    return _then(_$_SurveysState(
      chatInfoItems: chatInfoItems == freezed
          ? _value._chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      surveyInfoItems: surveyInfoItems == freezed
          ? _value._surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFeatureType: currentFeatureType == freezed
          ? _value.currentFeatureType
          : currentFeatureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ));
  }
}

/// @nodoc

class _$_SurveysState implements _SurveysState {
  const _$_SurveysState(
      {required final List<SurveyRowInfo> chatInfoItems,
      required final List<SurveyRowInfo> surveyInfoItems,
      required this.isDataFetched,
      required this.isFetching,
      required this.currentFeatureType})
      : _chatInfoItems = chatInfoItems,
        _surveyInfoItems = surveyInfoItems;

  final List<SurveyRowInfo> _chatInfoItems;
  @override
  List<SurveyRowInfo> get chatInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatInfoItems);
  }

  final List<SurveyRowInfo> _surveyInfoItems;
  @override
  List<SurveyRowInfo> get surveyInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyInfoItems);
  }

  @override
  final bool isDataFetched;
  @override
  final bool isFetching;
  @override
  final FeatureType currentFeatureType;

  @override
  String toString() {
    return 'SurveysState(chatInfoItems: $chatInfoItems, surveyInfoItems: $surveyInfoItems, isDataFetched: $isDataFetched, isFetching: $isFetching, currentFeatureType: $currentFeatureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveysState &&
            const DeepCollectionEquality()
                .equals(other._chatInfoItems, _chatInfoItems) &&
            const DeepCollectionEquality()
                .equals(other._surveyInfoItems, _surveyInfoItems) &&
            const DeepCollectionEquality()
                .equals(other.isDataFetched, isDataFetched) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching) &&
            const DeepCollectionEquality()
                .equals(other.currentFeatureType, currentFeatureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatInfoItems),
      const DeepCollectionEquality().hash(_surveyInfoItems),
      const DeepCollectionEquality().hash(isDataFetched),
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(currentFeatureType));

  @JsonKey(ignore: true)
  @override
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      __$$_SurveysStateCopyWithImpl<_$_SurveysState>(this, _$identity);
}

abstract class _SurveysState implements SurveysState {
  const factory _SurveysState(
      {required final List<SurveyRowInfo> chatInfoItems,
      required final List<SurveyRowInfo> surveyInfoItems,
      required final bool isDataFetched,
      required final bool isFetching,
      required final FeatureType currentFeatureType}) = _$_SurveysState;

  @override
  List<SurveyRowInfo> get chatInfoItems;
  @override
  List<SurveyRowInfo> get surveyInfoItems;
  @override
  bool get isDataFetched;
  @override
  bool get isFetching;
  @override
  FeatureType get currentFeatureType;
  @override
  @JsonKey(ignore: true)
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      throw _privateConstructorUsedError;
}
