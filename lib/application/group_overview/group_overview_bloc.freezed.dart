// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupOverviewEventTearOff {
  const _$GroupOverviewEventTearOff();

  _Initialized initialized(String groupId) {
    return _Initialized(
      groupId,
    );
  }

  _ChatInfoItemsUpdated chatInfoItemsUpdated(
      List<GroupOverviewRowInfo> chatInfoItems) {
    return _ChatInfoItemsUpdated(
      chatInfoItems,
    );
  }

  _SurveyInfoItemsUpdated surveyInfoItemsUpdated(
      List<GroupOverviewRowInfo> surveyInfoItems) {
    return _SurveyInfoItemsUpdated(
      surveyInfoItems,
    );
  }

  _GroupOverviewRefreshed groupOverviewRefreshed(String groupId) {
    return _GroupOverviewRefreshed(
      groupId,
    );
  }

  _IsFetchingUpdated isFetchingUpdated(bool isFetching) {
    return _IsFetchingUpdated(
      isFetching,
    );
  }

  _IsDataFetchedUpdated isDataFetchedUpdated(bool isFetched) {
    return _IsDataFetchedUpdated(
      isFetched,
    );
  }

  _CurrentFeatureTypeUpdated currentFeatureTypeUpdated(
      FeatureType newFeatureType) {
    return _CurrentFeatureTypeUpdated(
      newFeatureType,
    );
  }

  _GroupRefreshed groupRefreshed() {
    return const _GroupRefreshed();
  }
}

/// @nodoc
const $GroupOverviewEvent = _$GroupOverviewEventTearOff();

/// @nodoc
mixin _$GroupOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOverviewEventCopyWith<$Res> {
  factory $GroupOverviewEventCopyWith(
          GroupOverviewEvent value, $Res Function(GroupOverviewEvent) then) =
      _$GroupOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupOverviewEventCopyWithImpl<$Res>
    implements $GroupOverviewEventCopyWith<$Res> {
  _$GroupOverviewEventCopyWithImpl(this._value, this._then);

  final GroupOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(GroupOverviewEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_Initialized(
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
    return 'GroupOverviewEvent.initialized(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return initialized(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return initialized?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
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
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements GroupOverviewEvent {
  const factory _Initialized(String groupId) = _$_Initialized;

  String get groupId;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChatInfoItemsUpdatedCopyWith<$Res> {
  factory _$ChatInfoItemsUpdatedCopyWith(_ChatInfoItemsUpdated value,
          $Res Function(_ChatInfoItemsUpdated) then) =
      __$ChatInfoItemsUpdatedCopyWithImpl<$Res>;
  $Res call({List<GroupOverviewRowInfo> chatInfoItems});
}

/// @nodoc
class __$ChatInfoItemsUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$ChatInfoItemsUpdatedCopyWith<$Res> {
  __$ChatInfoItemsUpdatedCopyWithImpl(
      _ChatInfoItemsUpdated _value, $Res Function(_ChatInfoItemsUpdated) _then)
      : super(_value, (v) => _then(v as _ChatInfoItemsUpdated));

  @override
  _ChatInfoItemsUpdated get _value => super._value as _ChatInfoItemsUpdated;

  @override
  $Res call({
    Object? chatInfoItems = freezed,
  }) {
    return _then(_ChatInfoItemsUpdated(
      chatInfoItems == freezed
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_ChatInfoItemsUpdated implements _ChatInfoItemsUpdated {
  const _$_ChatInfoItemsUpdated(this.chatInfoItems);

  @override
  final List<GroupOverviewRowInfo> chatInfoItems;

  @override
  String toString() {
    return 'GroupOverviewEvent.chatInfoItemsUpdated(chatInfoItems: $chatInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatInfoItemsUpdated &&
            const DeepCollectionEquality()
                .equals(other.chatInfoItems, chatInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chatInfoItems));

  @JsonKey(ignore: true)
  @override
  _$ChatInfoItemsUpdatedCopyWith<_ChatInfoItemsUpdated> get copyWith =>
      __$ChatInfoItemsUpdatedCopyWithImpl<_ChatInfoItemsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return chatInfoItemsUpdated(chatInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return chatInfoItemsUpdated?.call(chatInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
    required TResult orElse(),
  }) {
    if (chatInfoItemsUpdated != null) {
      return chatInfoItemsUpdated(chatInfoItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return chatInfoItemsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return chatInfoItemsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (chatInfoItemsUpdated != null) {
      return chatInfoItemsUpdated(this);
    }
    return orElse();
  }
}

abstract class _ChatInfoItemsUpdated implements GroupOverviewEvent {
  const factory _ChatInfoItemsUpdated(
      List<GroupOverviewRowInfo> chatInfoItems) = _$_ChatInfoItemsUpdated;

  List<GroupOverviewRowInfo> get chatInfoItems;
  @JsonKey(ignore: true)
  _$ChatInfoItemsUpdatedCopyWith<_ChatInfoItemsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SurveyInfoItemsUpdatedCopyWith<$Res> {
  factory _$SurveyInfoItemsUpdatedCopyWith(_SurveyInfoItemsUpdated value,
          $Res Function(_SurveyInfoItemsUpdated) then) =
      __$SurveyInfoItemsUpdatedCopyWithImpl<$Res>;
  $Res call({List<GroupOverviewRowInfo> surveyInfoItems});
}

/// @nodoc
class __$SurveyInfoItemsUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$SurveyInfoItemsUpdatedCopyWith<$Res> {
  __$SurveyInfoItemsUpdatedCopyWithImpl(_SurveyInfoItemsUpdated _value,
      $Res Function(_SurveyInfoItemsUpdated) _then)
      : super(_value, (v) => _then(v as _SurveyInfoItemsUpdated));

  @override
  _SurveyInfoItemsUpdated get _value => super._value as _SurveyInfoItemsUpdated;

  @override
  $Res call({
    Object? surveyInfoItems = freezed,
  }) {
    return _then(_SurveyInfoItemsUpdated(
      surveyInfoItems == freezed
          ? _value.surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_SurveyInfoItemsUpdated implements _SurveyInfoItemsUpdated {
  const _$_SurveyInfoItemsUpdated(this.surveyInfoItems);

  @override
  final List<GroupOverviewRowInfo> surveyInfoItems;

  @override
  String toString() {
    return 'GroupOverviewEvent.surveyInfoItemsUpdated(surveyInfoItems: $surveyInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyInfoItemsUpdated &&
            const DeepCollectionEquality()
                .equals(other.surveyInfoItems, surveyInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(surveyInfoItems));

  @JsonKey(ignore: true)
  @override
  _$SurveyInfoItemsUpdatedCopyWith<_SurveyInfoItemsUpdated> get copyWith =>
      __$SurveyInfoItemsUpdatedCopyWithImpl<_SurveyInfoItemsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return surveyInfoItemsUpdated(surveyInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return surveyInfoItemsUpdated?.call(surveyInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
    required TResult orElse(),
  }) {
    if (surveyInfoItemsUpdated != null) {
      return surveyInfoItemsUpdated(surveyInfoItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return surveyInfoItemsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return surveyInfoItemsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (surveyInfoItemsUpdated != null) {
      return surveyInfoItemsUpdated(this);
    }
    return orElse();
  }
}

abstract class _SurveyInfoItemsUpdated implements GroupOverviewEvent {
  const factory _SurveyInfoItemsUpdated(
      List<GroupOverviewRowInfo> surveyInfoItems) = _$_SurveyInfoItemsUpdated;

  List<GroupOverviewRowInfo> get surveyInfoItems;
  @JsonKey(ignore: true)
  _$SurveyInfoItemsUpdatedCopyWith<_SurveyInfoItemsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupOverviewRefreshedCopyWith<$Res> {
  factory _$GroupOverviewRefreshedCopyWith(_GroupOverviewRefreshed value,
          $Res Function(_GroupOverviewRefreshed) then) =
      __$GroupOverviewRefreshedCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$GroupOverviewRefreshedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$GroupOverviewRefreshedCopyWith<$Res> {
  __$GroupOverviewRefreshedCopyWithImpl(_GroupOverviewRefreshed _value,
      $Res Function(_GroupOverviewRefreshed) _then)
      : super(_value, (v) => _then(v as _GroupOverviewRefreshed));

  @override
  _GroupOverviewRefreshed get _value => super._value as _GroupOverviewRefreshed;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_GroupOverviewRefreshed(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GroupOverviewRefreshed implements _GroupOverviewRefreshed {
  const _$_GroupOverviewRefreshed(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupOverviewEvent.groupOverviewRefreshed(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupOverviewRefreshed &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$GroupOverviewRefreshedCopyWith<_GroupOverviewRefreshed> get copyWith =>
      __$GroupOverviewRefreshedCopyWithImpl<_GroupOverviewRefreshed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return groupOverviewRefreshed(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return groupOverviewRefreshed?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
    required TResult orElse(),
  }) {
    if (groupOverviewRefreshed != null) {
      return groupOverviewRefreshed(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return groupOverviewRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return groupOverviewRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (groupOverviewRefreshed != null) {
      return groupOverviewRefreshed(this);
    }
    return orElse();
  }
}

abstract class _GroupOverviewRefreshed implements GroupOverviewEvent {
  const factory _GroupOverviewRefreshed(String groupId) =
      _$_GroupOverviewRefreshed;

  String get groupId;
  @JsonKey(ignore: true)
  _$GroupOverviewRefreshedCopyWith<_GroupOverviewRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsFetchingUpdatedCopyWith<$Res> {
  factory _$IsFetchingUpdatedCopyWith(
          _IsFetchingUpdated value, $Res Function(_IsFetchingUpdated) then) =
      __$IsFetchingUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetching});
}

/// @nodoc
class __$IsFetchingUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$IsFetchingUpdatedCopyWith<$Res> {
  __$IsFetchingUpdatedCopyWithImpl(
      _IsFetchingUpdated _value, $Res Function(_IsFetchingUpdated) _then)
      : super(_value, (v) => _then(v as _IsFetchingUpdated));

  @override
  _IsFetchingUpdated get _value => super._value as _IsFetchingUpdated;

  @override
  $Res call({
    Object? isFetching = freezed,
  }) {
    return _then(_IsFetchingUpdated(
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
    return 'GroupOverviewEvent.isFetchingUpdated(isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsFetchingUpdated &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$IsFetchingUpdatedCopyWith<_IsFetchingUpdated> get copyWith =>
      __$IsFetchingUpdatedCopyWithImpl<_IsFetchingUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return isFetchingUpdated(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return isFetchingUpdated?.call(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
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
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return isFetchingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return isFetchingUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (isFetchingUpdated != null) {
      return isFetchingUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsFetchingUpdated implements GroupOverviewEvent {
  const factory _IsFetchingUpdated(bool isFetching) = _$_IsFetchingUpdated;

  bool get isFetching;
  @JsonKey(ignore: true)
  _$IsFetchingUpdatedCopyWith<_IsFetchingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsDataFetchedUpdatedCopyWith<$Res> {
  factory _$IsDataFetchedUpdatedCopyWith(_IsDataFetchedUpdated value,
          $Res Function(_IsDataFetchedUpdated) then) =
      __$IsDataFetchedUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetched});
}

/// @nodoc
class __$IsDataFetchedUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$IsDataFetchedUpdatedCopyWith<$Res> {
  __$IsDataFetchedUpdatedCopyWithImpl(
      _IsDataFetchedUpdated _value, $Res Function(_IsDataFetchedUpdated) _then)
      : super(_value, (v) => _then(v as _IsDataFetchedUpdated));

  @override
  _IsDataFetchedUpdated get _value => super._value as _IsDataFetchedUpdated;

  @override
  $Res call({
    Object? isFetched = freezed,
  }) {
    return _then(_IsDataFetchedUpdated(
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
    return 'GroupOverviewEvent.isDataFetchedUpdated(isFetched: $isFetched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsDataFetchedUpdated &&
            const DeepCollectionEquality().equals(other.isFetched, isFetched));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetched));

  @JsonKey(ignore: true)
  @override
  _$IsDataFetchedUpdatedCopyWith<_IsDataFetchedUpdated> get copyWith =>
      __$IsDataFetchedUpdatedCopyWithImpl<_IsDataFetchedUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return isDataFetchedUpdated(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return isDataFetchedUpdated?.call(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
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
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return isDataFetchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return isDataFetchedUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (isDataFetchedUpdated != null) {
      return isDataFetchedUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsDataFetchedUpdated implements GroupOverviewEvent {
  const factory _IsDataFetchedUpdated(bool isFetched) = _$_IsDataFetchedUpdated;

  bool get isFetched;
  @JsonKey(ignore: true)
  _$IsDataFetchedUpdatedCopyWith<_IsDataFetchedUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentFeatureTypeUpdatedCopyWith<$Res> {
  factory _$CurrentFeatureTypeUpdatedCopyWith(_CurrentFeatureTypeUpdated value,
          $Res Function(_CurrentFeatureTypeUpdated) then) =
      __$CurrentFeatureTypeUpdatedCopyWithImpl<$Res>;
  $Res call({FeatureType newFeatureType});
}

/// @nodoc
class __$CurrentFeatureTypeUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$CurrentFeatureTypeUpdatedCopyWith<$Res> {
  __$CurrentFeatureTypeUpdatedCopyWithImpl(_CurrentFeatureTypeUpdated _value,
      $Res Function(_CurrentFeatureTypeUpdated) _then)
      : super(_value, (v) => _then(v as _CurrentFeatureTypeUpdated));

  @override
  _CurrentFeatureTypeUpdated get _value =>
      super._value as _CurrentFeatureTypeUpdated;

  @override
  $Res call({
    Object? newFeatureType = freezed,
  }) {
    return _then(_CurrentFeatureTypeUpdated(
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
    return 'GroupOverviewEvent.currentFeatureTypeUpdated(newFeatureType: $newFeatureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentFeatureTypeUpdated &&
            const DeepCollectionEquality()
                .equals(other.newFeatureType, newFeatureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newFeatureType));

  @JsonKey(ignore: true)
  @override
  _$CurrentFeatureTypeUpdatedCopyWith<_CurrentFeatureTypeUpdated>
      get copyWith =>
          __$CurrentFeatureTypeUpdatedCopyWithImpl<_CurrentFeatureTypeUpdated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return currentFeatureTypeUpdated(newFeatureType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return currentFeatureTypeUpdated?.call(newFeatureType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
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
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return currentFeatureTypeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return currentFeatureTypeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (currentFeatureTypeUpdated != null) {
      return currentFeatureTypeUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentFeatureTypeUpdated implements GroupOverviewEvent {
  const factory _CurrentFeatureTypeUpdated(FeatureType newFeatureType) =
      _$_CurrentFeatureTypeUpdated;

  FeatureType get newFeatureType;
  @JsonKey(ignore: true)
  _$CurrentFeatureTypeUpdatedCopyWith<_CurrentFeatureTypeUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupRefreshedCopyWith<$Res> {
  factory _$GroupRefreshedCopyWith(
          _GroupRefreshed value, $Res Function(_GroupRefreshed) then) =
      __$GroupRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GroupRefreshedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$GroupRefreshedCopyWith<$Res> {
  __$GroupRefreshedCopyWithImpl(
      _GroupRefreshed _value, $Res Function(_GroupRefreshed) _then)
      : super(_value, (v) => _then(v as _GroupRefreshed));

  @override
  _GroupRefreshed get _value => super._value as _GroupRefreshed;
}

/// @nodoc

class _$_GroupRefreshed implements _GroupRefreshed {
  const _$_GroupRefreshed();

  @override
  String toString() {
    return 'GroupOverviewEvent.groupRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GroupRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
    required TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)
        surveyInfoItemsUpdated,
    required TResult Function(String groupId) groupOverviewRefreshed,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(FeatureType newFeatureType)
        currentFeatureTypeUpdated,
    required TResult Function() groupRefreshed,
  }) {
    return groupRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
  }) {
    return groupRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult Function(String groupId)? groupOverviewRefreshed,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult Function()? groupRefreshed,
    required TResult orElse(),
  }) {
    if (groupRefreshed != null) {
      return groupRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
    required TResult Function(_SurveyInfoItemsUpdated value)
        surveyInfoItemsUpdated,
    required TResult Function(_GroupOverviewRefreshed value)
        groupOverviewRefreshed,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentFeatureTypeUpdated value)
        currentFeatureTypeUpdated,
    required TResult Function(_GroupRefreshed value) groupRefreshed,
  }) {
    return groupRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
  }) {
    return groupRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult Function(_GroupRefreshed value)? groupRefreshed,
    required TResult orElse(),
  }) {
    if (groupRefreshed != null) {
      return groupRefreshed(this);
    }
    return orElse();
  }
}

abstract class _GroupRefreshed implements GroupOverviewEvent {
  const factory _GroupRefreshed() = _$_GroupRefreshed;
}

/// @nodoc
class _$GroupOverviewStateTearOff {
  const _$GroupOverviewStateTearOff();

  _GroupOverviewState call(
      {required List<GroupOverviewRowInfo> chatInfoItems,
      required List<GroupOverviewRowInfo> surveyInfoItems,
      required bool isDataFetched,
      required bool isFetching,
      required FeatureType currentFeatureType}) {
    return _GroupOverviewState(
      chatInfoItems: chatInfoItems,
      surveyInfoItems: surveyInfoItems,
      isDataFetched: isDataFetched,
      isFetching: isFetching,
      currentFeatureType: currentFeatureType,
    );
  }
}

/// @nodoc
const $GroupOverviewState = _$GroupOverviewStateTearOff();

/// @nodoc
mixin _$GroupOverviewState {
  List<GroupOverviewRowInfo> get chatInfoItems =>
      throw _privateConstructorUsedError;
  List<GroupOverviewRowInfo> get surveyInfoItems =>
      throw _privateConstructorUsedError;
  bool get isDataFetched => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  FeatureType get currentFeatureType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupOverviewStateCopyWith<GroupOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOverviewStateCopyWith<$Res> {
  factory $GroupOverviewStateCopyWith(
          GroupOverviewState value, $Res Function(GroupOverviewState) then) =
      _$GroupOverviewStateCopyWithImpl<$Res>;
  $Res call(
      {List<GroupOverviewRowInfo> chatInfoItems,
      List<GroupOverviewRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
}

/// @nodoc
class _$GroupOverviewStateCopyWithImpl<$Res>
    implements $GroupOverviewStateCopyWith<$Res> {
  _$GroupOverviewStateCopyWithImpl(this._value, this._then);

  final GroupOverviewState _value;
  // ignore: unused_field
  final $Res Function(GroupOverviewState) _then;

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
              as List<GroupOverviewRowInfo>,
      surveyInfoItems: surveyInfoItems == freezed
          ? _value.surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
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
abstract class _$GroupOverviewStateCopyWith<$Res>
    implements $GroupOverviewStateCopyWith<$Res> {
  factory _$GroupOverviewStateCopyWith(
          _GroupOverviewState value, $Res Function(_GroupOverviewState) then) =
      __$GroupOverviewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GroupOverviewRowInfo> chatInfoItems,
      List<GroupOverviewRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
}

/// @nodoc
class __$GroupOverviewStateCopyWithImpl<$Res>
    extends _$GroupOverviewStateCopyWithImpl<$Res>
    implements _$GroupOverviewStateCopyWith<$Res> {
  __$GroupOverviewStateCopyWithImpl(
      _GroupOverviewState _value, $Res Function(_GroupOverviewState) _then)
      : super(_value, (v) => _then(v as _GroupOverviewState));

  @override
  _GroupOverviewState get _value => super._value as _GroupOverviewState;

  @override
  $Res call({
    Object? chatInfoItems = freezed,
    Object? surveyInfoItems = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
    Object? currentFeatureType = freezed,
  }) {
    return _then(_GroupOverviewState(
      chatInfoItems: chatInfoItems == freezed
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      surveyInfoItems: surveyInfoItems == freezed
          ? _value.surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
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

class _$_GroupOverviewState implements _GroupOverviewState {
  const _$_GroupOverviewState(
      {required this.chatInfoItems,
      required this.surveyInfoItems,
      required this.isDataFetched,
      required this.isFetching,
      required this.currentFeatureType});

  @override
  final List<GroupOverviewRowInfo> chatInfoItems;
  @override
  final List<GroupOverviewRowInfo> surveyInfoItems;
  @override
  final bool isDataFetched;
  @override
  final bool isFetching;
  @override
  final FeatureType currentFeatureType;

  @override
  String toString() {
    return 'GroupOverviewState(chatInfoItems: $chatInfoItems, surveyInfoItems: $surveyInfoItems, isDataFetched: $isDataFetched, isFetching: $isFetching, currentFeatureType: $currentFeatureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupOverviewState &&
            const DeepCollectionEquality()
                .equals(other.chatInfoItems, chatInfoItems) &&
            const DeepCollectionEquality()
                .equals(other.surveyInfoItems, surveyInfoItems) &&
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
      const DeepCollectionEquality().hash(chatInfoItems),
      const DeepCollectionEquality().hash(surveyInfoItems),
      const DeepCollectionEquality().hash(isDataFetched),
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(currentFeatureType));

  @JsonKey(ignore: true)
  @override
  _$GroupOverviewStateCopyWith<_GroupOverviewState> get copyWith =>
      __$GroupOverviewStateCopyWithImpl<_GroupOverviewState>(this, _$identity);
}

abstract class _GroupOverviewState implements GroupOverviewState {
  const factory _GroupOverviewState(
      {required List<GroupOverviewRowInfo> chatInfoItems,
      required List<GroupOverviewRowInfo> surveyInfoItems,
      required bool isDataFetched,
      required bool isFetching,
      required FeatureType currentFeatureType}) = _$_GroupOverviewState;

  @override
  List<GroupOverviewRowInfo> get chatInfoItems;
  @override
  List<GroupOverviewRowInfo> get surveyInfoItems;
  @override
  bool get isDataFetched;
  @override
  bool get isFetching;
  @override
  FeatureType get currentFeatureType;
  @override
  @JsonKey(ignore: true)
  _$GroupOverviewStateCopyWith<_GroupOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
