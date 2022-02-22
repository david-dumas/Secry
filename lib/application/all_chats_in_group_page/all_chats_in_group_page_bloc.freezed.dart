// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_chats_in_group_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllChatsInGroupPageEventTearOff {
  const _$AllChatsInGroupPageEventTearOff();

  _Initialized initialized(List<GeneralListCellInfoItem> cellInfoItems) {
    return _Initialized(
      cellInfoItems,
    );
  }

  _SearchValueUpdated searchValueUpdated(String newValue) {
    return _SearchValueUpdated(
      newValue,
    );
  }
}

/// @nodoc
const $AllChatsInGroupPageEvent = _$AllChatsInGroupPageEventTearOff();

/// @nodoc
mixin _$AllChatsInGroupPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GeneralListCellInfoItem> cellInfoItems)
        initialized,
    required TResult Function(String newValue) searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult Function(String newValue)? searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatsInGroupPageEventCopyWith<$Res> {
  factory $AllChatsInGroupPageEventCopyWith(AllChatsInGroupPageEvent value,
          $Res Function(AllChatsInGroupPageEvent) then) =
      _$AllChatsInGroupPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllChatsInGroupPageEventCopyWithImpl<$Res>
    implements $AllChatsInGroupPageEventCopyWith<$Res> {
  _$AllChatsInGroupPageEventCopyWithImpl(this._value, this._then);

  final AllChatsInGroupPageEvent _value;
  // ignore: unused_field
  final $Res Function(AllChatsInGroupPageEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<GeneralListCellInfoItem> cellInfoItems});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AllChatsInGroupPageEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? cellInfoItems = freezed,
  }) {
    return _then(_Initialized(
      cellInfoItems == freezed
          ? _value.cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.cellInfoItems);

  @override
  final List<GeneralListCellInfoItem> cellInfoItems;

  @override
  String toString() {
    return 'AllChatsInGroupPageEvent.initialized(cellInfoItems: $cellInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.cellInfoItems, cellInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cellInfoItems));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GeneralListCellInfoItem> cellInfoItems)
        initialized,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return initialized(cellInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return initialized?.call(cellInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult Function(String newValue)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(cellInfoItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AllChatsInGroupPageEvent {
  const factory _Initialized(List<GeneralListCellInfoItem> cellInfoItems) =
      _$_Initialized;

  List<GeneralListCellInfoItem> get cellInfoItems;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AllChatsInGroupPageEventCopyWithImpl<$Res>
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
    return 'AllChatsInGroupPageEvent.searchValueUpdated(newValue: $newValue)';
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
    required TResult Function(List<GeneralListCellInfoItem> cellInfoItems)
        initialized,
    required TResult Function(String newValue) searchValueUpdated,
  }) {
    return searchValueUpdated(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult Function(String newValue)? searchValueUpdated,
  }) {
    return searchValueUpdated?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
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
    required TResult Function(_SearchValueUpdated value) searchValueUpdated,
  }) {
    return searchValueUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
  }) {
    return searchValueUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchValueUpdated value)? searchValueUpdated,
    required TResult orElse(),
  }) {
    if (searchValueUpdated != null) {
      return searchValueUpdated(this);
    }
    return orElse();
  }
}

abstract class _SearchValueUpdated implements AllChatsInGroupPageEvent {
  const factory _SearchValueUpdated(String newValue) = _$_SearchValueUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$SearchValueUpdatedCopyWith<_SearchValueUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AllChatsInGroupPageStateTearOff {
  const _$AllChatsInGroupPageStateTearOff();

  _AllChatsInGroupPageState call(
      {required List<GeneralListCellInfoItem> cellInfoItems,
      required String searchValue}) {
    return _AllChatsInGroupPageState(
      cellInfoItems: cellInfoItems,
      searchValue: searchValue,
    );
  }
}

/// @nodoc
const $AllChatsInGroupPageState = _$AllChatsInGroupPageStateTearOff();

/// @nodoc
mixin _$AllChatsInGroupPageState {
  List<GeneralListCellInfoItem> get cellInfoItems =>
      throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllChatsInGroupPageStateCopyWith<AllChatsInGroupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatsInGroupPageStateCopyWith<$Res> {
  factory $AllChatsInGroupPageStateCopyWith(AllChatsInGroupPageState value,
          $Res Function(AllChatsInGroupPageState) then) =
      _$AllChatsInGroupPageStateCopyWithImpl<$Res>;
  $Res call({List<GeneralListCellInfoItem> cellInfoItems, String searchValue});
}

/// @nodoc
class _$AllChatsInGroupPageStateCopyWithImpl<$Res>
    implements $AllChatsInGroupPageStateCopyWith<$Res> {
  _$AllChatsInGroupPageStateCopyWithImpl(this._value, this._then);

  final AllChatsInGroupPageState _value;
  // ignore: unused_field
  final $Res Function(AllChatsInGroupPageState) _then;

  @override
  $Res call({
    Object? cellInfoItems = freezed,
    Object? searchValue = freezed,
  }) {
    return _then(_value.copyWith(
      cellInfoItems: cellInfoItems == freezed
          ? _value.cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AllChatsInGroupPageStateCopyWith<$Res>
    implements $AllChatsInGroupPageStateCopyWith<$Res> {
  factory _$AllChatsInGroupPageStateCopyWith(_AllChatsInGroupPageState value,
          $Res Function(_AllChatsInGroupPageState) then) =
      __$AllChatsInGroupPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<GeneralListCellInfoItem> cellInfoItems, String searchValue});
}

/// @nodoc
class __$AllChatsInGroupPageStateCopyWithImpl<$Res>
    extends _$AllChatsInGroupPageStateCopyWithImpl<$Res>
    implements _$AllChatsInGroupPageStateCopyWith<$Res> {
  __$AllChatsInGroupPageStateCopyWithImpl(_AllChatsInGroupPageState _value,
      $Res Function(_AllChatsInGroupPageState) _then)
      : super(_value, (v) => _then(v as _AllChatsInGroupPageState));

  @override
  _AllChatsInGroupPageState get _value =>
      super._value as _AllChatsInGroupPageState;

  @override
  $Res call({
    Object? cellInfoItems = freezed,
    Object? searchValue = freezed,
  }) {
    return _then(_AllChatsInGroupPageState(
      cellInfoItems: cellInfoItems == freezed
          ? _value.cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AllChatsInGroupPageState implements _AllChatsInGroupPageState {
  const _$_AllChatsInGroupPageState(
      {required this.cellInfoItems, required this.searchValue});

  @override
  final List<GeneralListCellInfoItem> cellInfoItems;
  @override
  final String searchValue;

  @override
  String toString() {
    return 'AllChatsInGroupPageState(cellInfoItems: $cellInfoItems, searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllChatsInGroupPageState &&
            const DeepCollectionEquality()
                .equals(other.cellInfoItems, cellInfoItems) &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cellInfoItems),
      const DeepCollectionEquality().hash(searchValue));

  @JsonKey(ignore: true)
  @override
  _$AllChatsInGroupPageStateCopyWith<_AllChatsInGroupPageState> get copyWith =>
      __$AllChatsInGroupPageStateCopyWithImpl<_AllChatsInGroupPageState>(
          this, _$identity);
}

abstract class _AllChatsInGroupPageState implements AllChatsInGroupPageState {
  const factory _AllChatsInGroupPageState(
      {required List<GeneralListCellInfoItem> cellInfoItems,
      required String searchValue}) = _$_AllChatsInGroupPageState;

  @override
  List<GeneralListCellInfoItem> get cellInfoItems;
  @override
  String get searchValue;
  @override
  @JsonKey(ignore: true)
  _$AllChatsInGroupPageStateCopyWith<_AllChatsInGroupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
