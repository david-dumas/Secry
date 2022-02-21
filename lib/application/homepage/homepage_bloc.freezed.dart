// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homepage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomepageEventTearOff {
  const _$HomepageEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _PrivateGroupsInfoUpdated privateGroupsInfoUpdated(
      List<GroupOverviewRowInfo> privateGroupsRowsInfo) {
    return _PrivateGroupsInfoUpdated(
      privateGroupsRowsInfo,
    );
  }

  _UpdatedIsShowingSearchBar updatedIsShowingSearchBar(bool isShowing) {
    return _UpdatedIsShowingSearchBar(
      isShowing,
    );
  }

  _SearchValueUpdated searchValueUpdated(String newValue) {
    return _SearchValueUpdated(
      newValue,
    );
  }
}

/// @nodoc
const $HomepageEvent = _$HomepageEventTearOff();

/// @nodoc
mixin _$HomepageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)
        privateGroupsInfoUpdated,
    required TResult Function(bool isShowing) updatedIsShowingSearchBar,
    required TResult Function(String newValue) searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PrivateGroupsInfoUpdated value)
        privateGroupsInfoUpdated,
    required TResult Function(_UpdatedIsShowingSearchBar value)
        updatedIsShowingSearchBar,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageEventCopyWith<$Res> {
  factory $HomepageEventCopyWith(
          HomepageEvent value, $Res Function(HomepageEvent) then) =
      _$HomepageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomepageEventCopyWithImpl<$Res>
    implements $HomepageEventCopyWith<$Res> {
  _$HomepageEventCopyWithImpl(this._value, this._then);

  final HomepageEvent _value;
  // ignore: unused_field
  final $Res Function(HomepageEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$HomepageEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'HomepageEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)
        privateGroupsInfoUpdated,
    required TResult Function(bool isShowing) updatedIsShowingSearchBar,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PrivateGroupsInfoUpdated value)
        privateGroupsInfoUpdated,
    required TResult Function(_UpdatedIsShowingSearchBar value)
        updatedIsShowingSearchBar,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HomepageEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$PrivateGroupsInfoUpdatedCopyWith<$Res> {
  factory _$PrivateGroupsInfoUpdatedCopyWith(_PrivateGroupsInfoUpdated value,
          $Res Function(_PrivateGroupsInfoUpdated) then) =
      __$PrivateGroupsInfoUpdatedCopyWithImpl<$Res>;
  $Res call({List<GroupOverviewRowInfo> privateGroupsRowsInfo});
}

/// @nodoc
class __$PrivateGroupsInfoUpdatedCopyWithImpl<$Res>
    extends _$HomepageEventCopyWithImpl<$Res>
    implements _$PrivateGroupsInfoUpdatedCopyWith<$Res> {
  __$PrivateGroupsInfoUpdatedCopyWithImpl(_PrivateGroupsInfoUpdated _value,
      $Res Function(_PrivateGroupsInfoUpdated) _then)
      : super(_value, (v) => _then(v as _PrivateGroupsInfoUpdated));

  @override
  _PrivateGroupsInfoUpdated get _value =>
      super._value as _PrivateGroupsInfoUpdated;

  @override
  $Res call({
    Object? privateGroupsRowsInfo = freezed,
  }) {
    return _then(_PrivateGroupsInfoUpdated(
      privateGroupsRowsInfo == freezed
          ? _value.privateGroupsRowsInfo
          : privateGroupsRowsInfo // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_PrivateGroupsInfoUpdated implements _PrivateGroupsInfoUpdated {
  const _$_PrivateGroupsInfoUpdated(this.privateGroupsRowsInfo);

  @override
  final List<GroupOverviewRowInfo> privateGroupsRowsInfo;

  @override
  String toString() {
    return 'HomepageEvent.privateGroupsInfoUpdated(privateGroupsRowsInfo: $privateGroupsRowsInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrivateGroupsInfoUpdated &&
            const DeepCollectionEquality()
                .equals(other.privateGroupsRowsInfo, privateGroupsRowsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(privateGroupsRowsInfo));

  @JsonKey(ignore: true)
  @override
  _$PrivateGroupsInfoUpdatedCopyWith<_PrivateGroupsInfoUpdated> get copyWith =>
      __$PrivateGroupsInfoUpdatedCopyWithImpl<_PrivateGroupsInfoUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)
        privateGroupsInfoUpdated,
    required TResult Function(bool isShowing) updatedIsShowingSearchBar,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return privateGroupsInfoUpdated(privateGroupsRowsInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return privateGroupsInfoUpdated?.call(privateGroupsRowsInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (privateGroupsInfoUpdated != null) {
      return privateGroupsInfoUpdated(privateGroupsRowsInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PrivateGroupsInfoUpdated value)
        privateGroupsInfoUpdated,
    required TResult Function(_UpdatedIsShowingSearchBar value)
        updatedIsShowingSearchBar,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return privateGroupsInfoUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return privateGroupsInfoUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (privateGroupsInfoUpdated != null) {
      return privateGroupsInfoUpdated(this);
    }
    return orElse();
  }
}

abstract class _PrivateGroupsInfoUpdated implements HomepageEvent {
  const factory _PrivateGroupsInfoUpdated(
          List<GroupOverviewRowInfo> privateGroupsRowsInfo) =
      _$_PrivateGroupsInfoUpdated;

  List<GroupOverviewRowInfo> get privateGroupsRowsInfo;
  @JsonKey(ignore: true)
  _$PrivateGroupsInfoUpdatedCopyWith<_PrivateGroupsInfoUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedIsShowingSearchBarCopyWith<$Res> {
  factory _$UpdatedIsShowingSearchBarCopyWith(_UpdatedIsShowingSearchBar value,
          $Res Function(_UpdatedIsShowingSearchBar) then) =
      __$UpdatedIsShowingSearchBarCopyWithImpl<$Res>;
  $Res call({bool isShowing});
}

/// @nodoc
class __$UpdatedIsShowingSearchBarCopyWithImpl<$Res>
    extends _$HomepageEventCopyWithImpl<$Res>
    implements _$UpdatedIsShowingSearchBarCopyWith<$Res> {
  __$UpdatedIsShowingSearchBarCopyWithImpl(_UpdatedIsShowingSearchBar _value,
      $Res Function(_UpdatedIsShowingSearchBar) _then)
      : super(_value, (v) => _then(v as _UpdatedIsShowingSearchBar));

  @override
  _UpdatedIsShowingSearchBar get _value =>
      super._value as _UpdatedIsShowingSearchBar;

  @override
  $Res call({
    Object? isShowing = freezed,
  }) {
    return _then(_UpdatedIsShowingSearchBar(
      isShowing == freezed
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdatedIsShowingSearchBar implements _UpdatedIsShowingSearchBar {
  const _$_UpdatedIsShowingSearchBar(this.isShowing);

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'HomepageEvent.updatedIsShowingSearchBar(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedIsShowingSearchBar &&
            const DeepCollectionEquality().equals(other.isShowing, isShowing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isShowing));

  @JsonKey(ignore: true)
  @override
  _$UpdatedIsShowingSearchBarCopyWith<_UpdatedIsShowingSearchBar>
      get copyWith =>
          __$UpdatedIsShowingSearchBarCopyWithImpl<_UpdatedIsShowingSearchBar>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)
        privateGroupsInfoUpdated,
    required TResult Function(bool isShowing) updatedIsShowingSearchBar,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return updatedIsShowingSearchBar(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return updatedIsShowingSearchBar?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (updatedIsShowingSearchBar != null) {
      return updatedIsShowingSearchBar(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PrivateGroupsInfoUpdated value)
        privateGroupsInfoUpdated,
    required TResult Function(_UpdatedIsShowingSearchBar value)
        updatedIsShowingSearchBar,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return updatedIsShowingSearchBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return updatedIsShowingSearchBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (updatedIsShowingSearchBar != null) {
      return updatedIsShowingSearchBar(this);
    }
    return orElse();
  }
}

abstract class _UpdatedIsShowingSearchBar implements HomepageEvent {
  const factory _UpdatedIsShowingSearchBar(bool isShowing) =
      _$_UpdatedIsShowingSearchBar;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$UpdatedIsShowingSearchBarCopyWith<_UpdatedIsShowingSearchBar>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchValueUpdatedCopyWith<$Res> {
  factory _$SearchValueUpdatedCopyWith(
          _SearchValueUpdated value, $Res Function(_SearchValueUpdated) then) =
      __$SearchValueUpdatedCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class __$SearchValueUpdatedCopyWithImpl<$Res>
    extends _$HomepageEventCopyWithImpl<$Res>
    implements _$SearchValueUpdatedCopyWith<$Res> {
  __$SearchValueUpdatedCopyWithImpl(
      _SearchValueUpdated _value, $Res Function(_SearchValueUpdated) _then)
      : super(_value, (v) => _then(v as _SearchValueUpdated));

  @override
  _SearchValueUpdated get _value => super._value as _SearchValueUpdated;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_SearchValueUpdated(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchValueUpdated implements _SearchValueUpdated {
  const _$_SearchValueUpdated(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'HomepageEvent.searchValueUpdated(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchValueUpdated &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$SearchValueUpdatedCopyWith<_SearchValueUpdated> get copyWith =>
      __$SearchValueUpdatedCopyWithImpl<_SearchValueUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)
        privateGroupsInfoUpdated,
    required TResult Function(bool isShowing) updatedIsShowingSearchBar,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return searchValueUpdated(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return searchValueUpdated?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<GroupOverviewRowInfo> privateGroupsRowsInfo)?
        privateGroupsInfoUpdated,
    TResult Function(bool isShowing)? updatedIsShowingSearchBar,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (searchValueUpdated != null) {
      return searchValueUpdated(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PrivateGroupsInfoUpdated value)
        privateGroupsInfoUpdated,
    required TResult Function(_UpdatedIsShowingSearchBar value)
        updatedIsShowingSearchBar,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return searchValueUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return searchValueUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PrivateGroupsInfoUpdated value)? privateGroupsInfoUpdated,
    TResult Function(_UpdatedIsShowingSearchBar value)?
        updatedIsShowingSearchBar,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (searchValueUpdated != null) {
      return searchValueUpdated(this);
    }
    return orElse();
  }
}

abstract class _SearchValueUpdated implements HomepageEvent {
  const factory _SearchValueUpdated(String newValue) = _$_SearchValueUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$SearchValueUpdatedCopyWith<_SearchValueUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomepageStateTearOff {
  const _$HomepageStateTearOff();

  _HomepageState call(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required bool isShowingSearchBar,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs}) {
    return _HomepageState(
      privateGroupsRowsInfo: privateGroupsRowsInfo,
      isShowingSearchBar: isShowingSearchBar,
      searchValue: searchValue,
      privateGroupAvatarSvgs: privateGroupAvatarSvgs,
    );
  }
}

/// @nodoc
const $HomepageState = _$HomepageStateTearOff();

/// @nodoc
mixin _$HomepageState {
  List<GroupOverviewRowInfo> get privateGroupsRowsInfo =>
      throw _privateConstructorUsedError;
  bool get isShowingSearchBar => throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;
  List<DrawableRoot?> get privateGroupAvatarSvgs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomepageStateCopyWith<HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageStateCopyWith<$Res> {
  factory $HomepageStateCopyWith(
          HomepageState value, $Res Function(HomepageState) then) =
      _$HomepageStateCopyWithImpl<$Res>;
  $Res call(
      {List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      bool isShowingSearchBar,
      String searchValue,
      List<DrawableRoot?> privateGroupAvatarSvgs});
}

/// @nodoc
class _$HomepageStateCopyWithImpl<$Res>
    implements $HomepageStateCopyWith<$Res> {
  _$HomepageStateCopyWithImpl(this._value, this._then);

  final HomepageState _value;
  // ignore: unused_field
  final $Res Function(HomepageState) _then;

  @override
  $Res call({
    Object? privateGroupsRowsInfo = freezed,
    Object? isShowingSearchBar = freezed,
    Object? searchValue = freezed,
    Object? privateGroupAvatarSvgs = freezed,
  }) {
    return _then(_value.copyWith(
      privateGroupsRowsInfo: privateGroupsRowsInfo == freezed
          ? _value.privateGroupsRowsInfo
          : privateGroupsRowsInfo // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      isShowingSearchBar: isShowingSearchBar == freezed
          ? _value.isShowingSearchBar
          : isShowingSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      privateGroupAvatarSvgs: privateGroupAvatarSvgs == freezed
          ? _value.privateGroupAvatarSvgs
          : privateGroupAvatarSvgs // ignore: cast_nullable_to_non_nullable
              as List<DrawableRoot?>,
    ));
  }
}

/// @nodoc
abstract class _$HomepageStateCopyWith<$Res>
    implements $HomepageStateCopyWith<$Res> {
  factory _$HomepageStateCopyWith(
          _HomepageState value, $Res Function(_HomepageState) then) =
      __$HomepageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      bool isShowingSearchBar,
      String searchValue,
      List<DrawableRoot?> privateGroupAvatarSvgs});
}

/// @nodoc
class __$HomepageStateCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res>
    implements _$HomepageStateCopyWith<$Res> {
  __$HomepageStateCopyWithImpl(
      _HomepageState _value, $Res Function(_HomepageState) _then)
      : super(_value, (v) => _then(v as _HomepageState));

  @override
  _HomepageState get _value => super._value as _HomepageState;

  @override
  $Res call({
    Object? privateGroupsRowsInfo = freezed,
    Object? isShowingSearchBar = freezed,
    Object? searchValue = freezed,
    Object? privateGroupAvatarSvgs = freezed,
  }) {
    return _then(_HomepageState(
      privateGroupsRowsInfo: privateGroupsRowsInfo == freezed
          ? _value.privateGroupsRowsInfo
          : privateGroupsRowsInfo // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      isShowingSearchBar: isShowingSearchBar == freezed
          ? _value.isShowingSearchBar
          : isShowingSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      privateGroupAvatarSvgs: privateGroupAvatarSvgs == freezed
          ? _value.privateGroupAvatarSvgs
          : privateGroupAvatarSvgs // ignore: cast_nullable_to_non_nullable
              as List<DrawableRoot?>,
    ));
  }
}

/// @nodoc

class _$_HomepageState implements _HomepageState {
  const _$_HomepageState(
      {required this.privateGroupsRowsInfo,
      required this.isShowingSearchBar,
      required this.searchValue,
      required this.privateGroupAvatarSvgs});

  @override
  final List<GroupOverviewRowInfo> privateGroupsRowsInfo;
  @override
  final bool isShowingSearchBar;
  @override
  final String searchValue;
  @override
  final List<DrawableRoot?> privateGroupAvatarSvgs;

  @override
  String toString() {
    return 'HomepageState(privateGroupsRowsInfo: $privateGroupsRowsInfo, isShowingSearchBar: $isShowingSearchBar, searchValue: $searchValue, privateGroupAvatarSvgs: $privateGroupAvatarSvgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomepageState &&
            const DeepCollectionEquality()
                .equals(other.privateGroupsRowsInfo, privateGroupsRowsInfo) &&
            const DeepCollectionEquality()
                .equals(other.isShowingSearchBar, isShowingSearchBar) &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue) &&
            const DeepCollectionEquality()
                .equals(other.privateGroupAvatarSvgs, privateGroupAvatarSvgs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(privateGroupsRowsInfo),
      const DeepCollectionEquality().hash(isShowingSearchBar),
      const DeepCollectionEquality().hash(searchValue),
      const DeepCollectionEquality().hash(privateGroupAvatarSvgs));

  @JsonKey(ignore: true)
  @override
  _$HomepageStateCopyWith<_HomepageState> get copyWith =>
      __$HomepageStateCopyWithImpl<_HomepageState>(this, _$identity);
}

abstract class _HomepageState implements HomepageState {
  const factory _HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required bool isShowingSearchBar,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs}) = _$_HomepageState;

  @override
  List<GroupOverviewRowInfo> get privateGroupsRowsInfo;
  @override
  bool get isShowingSearchBar;
  @override
  String get searchValue;
  @override
  List<DrawableRoot?> get privateGroupAvatarSvgs;
  @override
  @JsonKey(ignore: true)
  _$HomepageStateCopyWith<_HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}
