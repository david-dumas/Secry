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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
      _$GroupOverviewEventCopyWithImpl<$Res, GroupOverviewEvent>;
}

/// @nodoc
class _$GroupOverviewEventCopyWithImpl<$Res, $Val extends GroupOverviewEvent>
    implements $GroupOverviewEventCopyWith<$Res> {
  _$GroupOverviewEventCopyWithImpl(this._value, this._then);

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
  $Res call({String groupId});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$_Initialized(
      null == groupId
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
            other is _$_Initialized &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
  const factory _Initialized(final String groupId) = _$_Initialized;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatInfoItemsUpdatedCopyWith<$Res> {
  factory _$$_ChatInfoItemsUpdatedCopyWith(_$_ChatInfoItemsUpdated value,
          $Res Function(_$_ChatInfoItemsUpdated) then) =
      __$$_ChatInfoItemsUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupOverviewRowInfo> chatInfoItems});
}

/// @nodoc
class __$$_ChatInfoItemsUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_ChatInfoItemsUpdated>
    implements _$$_ChatInfoItemsUpdatedCopyWith<$Res> {
  __$$_ChatInfoItemsUpdatedCopyWithImpl(_$_ChatInfoItemsUpdated _value,
      $Res Function(_$_ChatInfoItemsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatInfoItems = null,
  }) {
    return _then(_$_ChatInfoItemsUpdated(
      null == chatInfoItems
          ? _value._chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_ChatInfoItemsUpdated implements _ChatInfoItemsUpdated {
  const _$_ChatInfoItemsUpdated(final List<GroupOverviewRowInfo> chatInfoItems)
      : _chatInfoItems = chatInfoItems;

  final List<GroupOverviewRowInfo> _chatInfoItems;
  @override
  List<GroupOverviewRowInfo> get chatInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatInfoItems);
  }

  @override
  String toString() {
    return 'GroupOverviewEvent.chatInfoItemsUpdated(chatInfoItems: $chatInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInfoItemsUpdated &&
            const DeepCollectionEquality()
                .equals(other._chatInfoItems, _chatInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatInfoItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatInfoItemsUpdatedCopyWith<_$_ChatInfoItemsUpdated> get copyWith =>
      __$$_ChatInfoItemsUpdatedCopyWithImpl<_$_ChatInfoItemsUpdated>(
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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
      final List<GroupOverviewRowInfo> chatInfoItems) = _$_ChatInfoItemsUpdated;

  List<GroupOverviewRowInfo> get chatInfoItems;
  @JsonKey(ignore: true)
  _$$_ChatInfoItemsUpdatedCopyWith<_$_ChatInfoItemsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SurveyInfoItemsUpdatedCopyWith<$Res> {
  factory _$$_SurveyInfoItemsUpdatedCopyWith(_$_SurveyInfoItemsUpdated value,
          $Res Function(_$_SurveyInfoItemsUpdated) then) =
      __$$_SurveyInfoItemsUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupOverviewRowInfo> surveyInfoItems});
}

/// @nodoc
class __$$_SurveyInfoItemsUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_SurveyInfoItemsUpdated>
    implements _$$_SurveyInfoItemsUpdatedCopyWith<$Res> {
  __$$_SurveyInfoItemsUpdatedCopyWithImpl(_$_SurveyInfoItemsUpdated _value,
      $Res Function(_$_SurveyInfoItemsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyInfoItems = null,
  }) {
    return _then(_$_SurveyInfoItemsUpdated(
      null == surveyInfoItems
          ? _value._surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_SurveyInfoItemsUpdated implements _SurveyInfoItemsUpdated {
  const _$_SurveyInfoItemsUpdated(
      final List<GroupOverviewRowInfo> surveyInfoItems)
      : _surveyInfoItems = surveyInfoItems;

  final List<GroupOverviewRowInfo> _surveyInfoItems;
  @override
  List<GroupOverviewRowInfo> get surveyInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyInfoItems);
  }

  @override
  String toString() {
    return 'GroupOverviewEvent.surveyInfoItemsUpdated(surveyInfoItems: $surveyInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyInfoItemsUpdated &&
            const DeepCollectionEquality()
                .equals(other._surveyInfoItems, _surveyInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_surveyInfoItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyInfoItemsUpdatedCopyWith<_$_SurveyInfoItemsUpdated> get copyWith =>
      __$$_SurveyInfoItemsUpdatedCopyWithImpl<_$_SurveyInfoItemsUpdated>(
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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
          final List<GroupOverviewRowInfo> surveyInfoItems) =
      _$_SurveyInfoItemsUpdated;

  List<GroupOverviewRowInfo> get surveyInfoItems;
  @JsonKey(ignore: true)
  _$$_SurveyInfoItemsUpdatedCopyWith<_$_SurveyInfoItemsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GroupOverviewRefreshedCopyWith<$Res> {
  factory _$$_GroupOverviewRefreshedCopyWith(_$_GroupOverviewRefreshed value,
          $Res Function(_$_GroupOverviewRefreshed) then) =
      __$$_GroupOverviewRefreshedCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$_GroupOverviewRefreshedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_GroupOverviewRefreshed>
    implements _$$_GroupOverviewRefreshedCopyWith<$Res> {
  __$$_GroupOverviewRefreshedCopyWithImpl(_$_GroupOverviewRefreshed _value,
      $Res Function(_$_GroupOverviewRefreshed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$_GroupOverviewRefreshed(
      null == groupId
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
            other is _$_GroupOverviewRefreshed &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupOverviewRefreshedCopyWith<_$_GroupOverviewRefreshed> get copyWith =>
      __$$_GroupOverviewRefreshedCopyWithImpl<_$_GroupOverviewRefreshed>(
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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
  const factory _GroupOverviewRefreshed(final String groupId) =
      _$_GroupOverviewRefreshed;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_GroupOverviewRefreshedCopyWith<_$_GroupOverviewRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsFetchingUpdatedCopyWith<$Res> {
  factory _$$_IsFetchingUpdatedCopyWith(_$_IsFetchingUpdated value,
          $Res Function(_$_IsFetchingUpdated) then) =
      __$$_IsFetchingUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFetching});
}

/// @nodoc
class __$$_IsFetchingUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_IsFetchingUpdated>
    implements _$$_IsFetchingUpdatedCopyWith<$Res> {
  __$$_IsFetchingUpdatedCopyWithImpl(
      _$_IsFetchingUpdated _value, $Res Function(_$_IsFetchingUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
  }) {
    return _then(_$_IsFetchingUpdated(
      null == isFetching
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
            other is _$_IsFetchingUpdated &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsFetchingUpdatedCopyWith<_$_IsFetchingUpdated> get copyWith =>
      __$$_IsFetchingUpdatedCopyWithImpl<_$_IsFetchingUpdated>(
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
    return isFetchingUpdated(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
  @useResult
  $Res call({bool isFetched});
}

/// @nodoc
class __$$_IsDataFetchedUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_IsDataFetchedUpdated>
    implements _$$_IsDataFetchedUpdatedCopyWith<$Res> {
  __$$_IsDataFetchedUpdatedCopyWithImpl(_$_IsDataFetchedUpdated _value,
      $Res Function(_$_IsDataFetchedUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetched = null,
  }) {
    return _then(_$_IsDataFetchedUpdated(
      null == isFetched
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
            other is _$_IsDataFetchedUpdated &&
            (identical(other.isFetched, isFetched) ||
                other.isFetched == isFetched));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFetched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsDataFetchedUpdatedCopyWith<_$_IsDataFetchedUpdated> get copyWith =>
      __$$_IsDataFetchedUpdatedCopyWithImpl<_$_IsDataFetchedUpdated>(
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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
  @useResult
  $Res call({FeatureType newFeatureType});
}

/// @nodoc
class __$$_CurrentFeatureTypeUpdatedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_CurrentFeatureTypeUpdated>
    implements _$$_CurrentFeatureTypeUpdatedCopyWith<$Res> {
  __$$_CurrentFeatureTypeUpdatedCopyWithImpl(
      _$_CurrentFeatureTypeUpdated _value,
      $Res Function(_$_CurrentFeatureTypeUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFeatureType = null,
  }) {
    return _then(_$_CurrentFeatureTypeUpdated(
      null == newFeatureType
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
            other is _$_CurrentFeatureTypeUpdated &&
            (identical(other.newFeatureType, newFeatureType) ||
                other.newFeatureType == newFeatureType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFeatureType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentFeatureTypeUpdatedCopyWith<_$_CurrentFeatureTypeUpdated>
      get copyWith => __$$_CurrentFeatureTypeUpdatedCopyWithImpl<
          _$_CurrentFeatureTypeUpdated>(this, _$identity);

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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
  const factory _CurrentFeatureTypeUpdated(final FeatureType newFeatureType) =
      _$_CurrentFeatureTypeUpdated;

  FeatureType get newFeatureType;
  @JsonKey(ignore: true)
  _$$_CurrentFeatureTypeUpdatedCopyWith<_$_CurrentFeatureTypeUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GroupRefreshedCopyWith<$Res> {
  factory _$$_GroupRefreshedCopyWith(
          _$_GroupRefreshed value, $Res Function(_$_GroupRefreshed) then) =
      __$$_GroupRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GroupRefreshedCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res, _$_GroupRefreshed>
    implements _$$_GroupRefreshedCopyWith<$Res> {
  __$$_GroupRefreshedCopyWithImpl(
      _$_GroupRefreshed _value, $Res Function(_$_GroupRefreshed) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_GroupRefreshed);
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
    TResult? Function(String groupId)? initialized,
    TResult? Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    TResult? Function(List<GroupOverviewRowInfo> surveyInfoItems)?
        surveyInfoItemsUpdated,
    TResult? Function(String groupId)? groupOverviewRefreshed,
    TResult? Function(bool isFetching)? isFetchingUpdated,
    TResult? Function(bool isFetched)? isDataFetchedUpdated,
    TResult? Function(FeatureType newFeatureType)? currentFeatureTypeUpdated,
    TResult? Function()? groupRefreshed,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    TResult? Function(_SurveyInfoItemsUpdated value)? surveyInfoItemsUpdated,
    TResult? Function(_GroupOverviewRefreshed value)? groupOverviewRefreshed,
    TResult? Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult? Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult? Function(_CurrentFeatureTypeUpdated value)?
        currentFeatureTypeUpdated,
    TResult? Function(_GroupRefreshed value)? groupRefreshed,
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
      _$GroupOverviewStateCopyWithImpl<$Res, GroupOverviewState>;
  @useResult
  $Res call(
      {List<GroupOverviewRowInfo> chatInfoItems,
      List<GroupOverviewRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
}

/// @nodoc
class _$GroupOverviewStateCopyWithImpl<$Res, $Val extends GroupOverviewState>
    implements $GroupOverviewStateCopyWith<$Res> {
  _$GroupOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatInfoItems = null,
    Object? surveyInfoItems = null,
    Object? isDataFetched = null,
    Object? isFetching = null,
    Object? currentFeatureType = null,
  }) {
    return _then(_value.copyWith(
      chatInfoItems: null == chatInfoItems
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      surveyInfoItems: null == surveyInfoItems
          ? _value.surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      isDataFetched: null == isDataFetched
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFeatureType: null == currentFeatureType
          ? _value.currentFeatureType
          : currentFeatureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupOverviewStateCopyWith<$Res>
    implements $GroupOverviewStateCopyWith<$Res> {
  factory _$$_GroupOverviewStateCopyWith(_$_GroupOverviewState value,
          $Res Function(_$_GroupOverviewState) then) =
      __$$_GroupOverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GroupOverviewRowInfo> chatInfoItems,
      List<GroupOverviewRowInfo> surveyInfoItems,
      bool isDataFetched,
      bool isFetching,
      FeatureType currentFeatureType});
}

/// @nodoc
class __$$_GroupOverviewStateCopyWithImpl<$Res>
    extends _$GroupOverviewStateCopyWithImpl<$Res, _$_GroupOverviewState>
    implements _$$_GroupOverviewStateCopyWith<$Res> {
  __$$_GroupOverviewStateCopyWithImpl(
      _$_GroupOverviewState _value, $Res Function(_$_GroupOverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatInfoItems = null,
    Object? surveyInfoItems = null,
    Object? isDataFetched = null,
    Object? isFetching = null,
    Object? currentFeatureType = null,
  }) {
    return _then(_$_GroupOverviewState(
      chatInfoItems: null == chatInfoItems
          ? _value._chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      surveyInfoItems: null == surveyInfoItems
          ? _value._surveyInfoItems
          : surveyInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
      isDataFetched: null == isDataFetched
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFeatureType: null == currentFeatureType
          ? _value.currentFeatureType
          : currentFeatureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ));
  }
}

/// @nodoc

class _$_GroupOverviewState implements _GroupOverviewState {
  const _$_GroupOverviewState(
      {required final List<GroupOverviewRowInfo> chatInfoItems,
      required final List<GroupOverviewRowInfo> surveyInfoItems,
      required this.isDataFetched,
      required this.isFetching,
      required this.currentFeatureType})
      : _chatInfoItems = chatInfoItems,
        _surveyInfoItems = surveyInfoItems;

  final List<GroupOverviewRowInfo> _chatInfoItems;
  @override
  List<GroupOverviewRowInfo> get chatInfoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatInfoItems);
  }

  final List<GroupOverviewRowInfo> _surveyInfoItems;
  @override
  List<GroupOverviewRowInfo> get surveyInfoItems {
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
    return 'GroupOverviewState(chatInfoItems: $chatInfoItems, surveyInfoItems: $surveyInfoItems, isDataFetched: $isDataFetched, isFetching: $isFetching, currentFeatureType: $currentFeatureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupOverviewState &&
            const DeepCollectionEquality()
                .equals(other._chatInfoItems, _chatInfoItems) &&
            const DeepCollectionEquality()
                .equals(other._surveyInfoItems, _surveyInfoItems) &&
            (identical(other.isDataFetched, isDataFetched) ||
                other.isDataFetched == isDataFetched) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.currentFeatureType, currentFeatureType) ||
                other.currentFeatureType == currentFeatureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatInfoItems),
      const DeepCollectionEquality().hash(_surveyInfoItems),
      isDataFetched,
      isFetching,
      currentFeatureType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupOverviewStateCopyWith<_$_GroupOverviewState> get copyWith =>
      __$$_GroupOverviewStateCopyWithImpl<_$_GroupOverviewState>(
          this, _$identity);
}

abstract class _GroupOverviewState implements GroupOverviewState {
  const factory _GroupOverviewState(
      {required final List<GroupOverviewRowInfo> chatInfoItems,
      required final List<GroupOverviewRowInfo> surveyInfoItems,
      required final bool isDataFetched,
      required final bool isFetching,
      required final FeatureType currentFeatureType}) = _$_GroupOverviewState;

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
  _$$_GroupOverviewStateCopyWith<_$_GroupOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
