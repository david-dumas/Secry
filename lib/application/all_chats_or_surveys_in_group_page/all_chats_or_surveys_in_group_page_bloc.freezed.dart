// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_chats_or_surveys_in_group_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllChatsOrSurveysInGroupPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GeneralListCellInfoItem> cellInfoItems)
        initialized,
    required TResult Function(String newValue) searchValueUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult? Function(String newValue)? searchValueUpdated,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchValueUpdated value)? searchValueUpdated,
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
abstract class $AllChatsOrSurveysInGroupPageEventCopyWith<$Res> {
  factory $AllChatsOrSurveysInGroupPageEventCopyWith(
          AllChatsOrSurveysInGroupPageEvent value,
          $Res Function(AllChatsOrSurveysInGroupPageEvent) then) =
      _$AllChatsOrSurveysInGroupPageEventCopyWithImpl<$Res,
          AllChatsOrSurveysInGroupPageEvent>;
}

/// @nodoc
class _$AllChatsOrSurveysInGroupPageEventCopyWithImpl<$Res,
        $Val extends AllChatsOrSurveysInGroupPageEvent>
    implements $AllChatsOrSurveysInGroupPageEventCopyWith<$Res> {
  _$AllChatsOrSurveysInGroupPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GeneralListCellInfoItem> cellInfoItems});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$AllChatsOrSurveysInGroupPageEventCopyWithImpl<$Res,
        _$_Initialized> implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellInfoItems = null,
  }) {
    return _then(_$_Initialized(
      null == cellInfoItems
          ? _value._cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(final List<GeneralListCellInfoItem> cellInfoItems)
      : _cellInfoItems = cellInfoItems;

  final List<GeneralListCellInfoItem> _cellInfoItems;
  @override
  List<GeneralListCellInfoItem> get cellInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cellInfoItems);
  }

  @override
  String toString() {
    return 'AllChatsOrSurveysInGroupPageEvent.initialized(cellInfoItems: $cellInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality()
                .equals(other._cellInfoItems, _cellInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cellInfoItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
    TResult? Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult? Function(String newValue)? searchValueUpdated,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchValueUpdated value)? searchValueUpdated,
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

abstract class _Initialized implements AllChatsOrSurveysInGroupPageEvent {
  const factory _Initialized(
      final List<GeneralListCellInfoItem> cellInfoItems) = _$_Initialized;

  List<GeneralListCellInfoItem> get cellInfoItems;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchValueUpdatedCopyWith<$Res> {
  factory _$$_SearchValueUpdatedCopyWith(_$_SearchValueUpdated value,
          $Res Function(_$_SearchValueUpdated) then) =
      __$$_SearchValueUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String newValue});
}

/// @nodoc
class __$$_SearchValueUpdatedCopyWithImpl<$Res>
    extends _$AllChatsOrSurveysInGroupPageEventCopyWithImpl<$Res,
        _$_SearchValueUpdated> implements _$$_SearchValueUpdatedCopyWith<$Res> {
  __$$_SearchValueUpdatedCopyWithImpl(
      _$_SearchValueUpdated _value, $Res Function(_$_SearchValueUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$_SearchValueUpdated(
      null == newValue
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
    return 'AllChatsOrSurveysInGroupPageEvent.searchValueUpdated(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchValueUpdated &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchValueUpdatedCopyWith<_$_SearchValueUpdated> get copyWith =>
      __$$_SearchValueUpdatedCopyWithImpl<_$_SearchValueUpdated>(
          this, _$identity);

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
    TResult? Function(List<GeneralListCellInfoItem> cellInfoItems)? initialized,
    TResult? Function(String newValue)? searchValueUpdated,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchValueUpdated value)? searchValueUpdated,
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

abstract class _SearchValueUpdated
    implements AllChatsOrSurveysInGroupPageEvent {
  const factory _SearchValueUpdated(final String newValue) =
      _$_SearchValueUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$$_SearchValueUpdatedCopyWith<_$_SearchValueUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllChatsOrSurveysInGroupPageState {
  List<GeneralListCellInfoItem> get cellInfoItems =>
      throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllChatsOrSurveysInGroupPageStateCopyWith<AllChatsOrSurveysInGroupPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatsOrSurveysInGroupPageStateCopyWith<$Res> {
  factory $AllChatsOrSurveysInGroupPageStateCopyWith(
          AllChatsOrSurveysInGroupPageState value,
          $Res Function(AllChatsOrSurveysInGroupPageState) then) =
      _$AllChatsOrSurveysInGroupPageStateCopyWithImpl<$Res,
          AllChatsOrSurveysInGroupPageState>;
  @useResult
  $Res call({List<GeneralListCellInfoItem> cellInfoItems, String searchValue});
}

/// @nodoc
class _$AllChatsOrSurveysInGroupPageStateCopyWithImpl<$Res,
        $Val extends AllChatsOrSurveysInGroupPageState>
    implements $AllChatsOrSurveysInGroupPageStateCopyWith<$Res> {
  _$AllChatsOrSurveysInGroupPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellInfoItems = null,
    Object? searchValue = null,
  }) {
    return _then(_value.copyWith(
      cellInfoItems: null == cellInfoItems
          ? _value.cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllChatsOrSurveysInGroupPageStateCopyWith<$Res>
    implements $AllChatsOrSurveysInGroupPageStateCopyWith<$Res> {
  factory _$$_AllChatsOrSurveysInGroupPageStateCopyWith(
          _$_AllChatsOrSurveysInGroupPageState value,
          $Res Function(_$_AllChatsOrSurveysInGroupPageState) then) =
      __$$_AllChatsOrSurveysInGroupPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeneralListCellInfoItem> cellInfoItems, String searchValue});
}

/// @nodoc
class __$$_AllChatsOrSurveysInGroupPageStateCopyWithImpl<$Res>
    extends _$AllChatsOrSurveysInGroupPageStateCopyWithImpl<$Res,
        _$_AllChatsOrSurveysInGroupPageState>
    implements _$$_AllChatsOrSurveysInGroupPageStateCopyWith<$Res> {
  __$$_AllChatsOrSurveysInGroupPageStateCopyWithImpl(
      _$_AllChatsOrSurveysInGroupPageState _value,
      $Res Function(_$_AllChatsOrSurveysInGroupPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellInfoItems = null,
    Object? searchValue = null,
  }) {
    return _then(_$_AllChatsOrSurveysInGroupPageState(
      cellInfoItems: null == cellInfoItems
          ? _value._cellInfoItems
          : cellInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GeneralListCellInfoItem>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AllChatsOrSurveysInGroupPageState
    implements _AllChatsOrSurveysInGroupPageState {
  const _$_AllChatsOrSurveysInGroupPageState(
      {required final List<GeneralListCellInfoItem> cellInfoItems,
      required this.searchValue})
      : _cellInfoItems = cellInfoItems;

  final List<GeneralListCellInfoItem> _cellInfoItems;
  @override
  List<GeneralListCellInfoItem> get cellInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cellInfoItems);
  }

  @override
  final String searchValue;

  @override
  String toString() {
    return 'AllChatsOrSurveysInGroupPageState(cellInfoItems: $cellInfoItems, searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllChatsOrSurveysInGroupPageState &&
            const DeepCollectionEquality()
                .equals(other._cellInfoItems, _cellInfoItems) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cellInfoItems), searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllChatsOrSurveysInGroupPageStateCopyWith<
          _$_AllChatsOrSurveysInGroupPageState>
      get copyWith => __$$_AllChatsOrSurveysInGroupPageStateCopyWithImpl<
          _$_AllChatsOrSurveysInGroupPageState>(this, _$identity);
}

abstract class _AllChatsOrSurveysInGroupPageState
    implements AllChatsOrSurveysInGroupPageState {
  const factory _AllChatsOrSurveysInGroupPageState(
          {required final List<GeneralListCellInfoItem> cellInfoItems,
          required final String searchValue}) =
      _$_AllChatsOrSurveysInGroupPageState;

  @override
  List<GeneralListCellInfoItem> get cellInfoItems;
  @override
  String get searchValue;
  @override
  @JsonKey(ignore: true)
  _$$_AllChatsOrSurveysInGroupPageStateCopyWith<
          _$_AllChatsOrSurveysInGroupPageState>
      get copyWith => throw _privateConstructorUsedError;
}
