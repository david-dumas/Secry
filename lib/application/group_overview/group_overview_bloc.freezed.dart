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

  _GroupOverviewEvent initialized(String groupId) {
    return _GroupOverviewEvent(
      groupId,
    );
  }

  _ChatInfoItemsUpdated chatInfoItemsUpdated(
      List<GroupOverviewRowInfo> chatInfoItems) {
    return _ChatInfoItemsUpdated(
      chatInfoItems,
    );
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupOverviewEvent value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
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
abstract class _$GroupOverviewEventCopyWith<$Res> {
  factory _$GroupOverviewEventCopyWith(
          _GroupOverviewEvent value, $Res Function(_GroupOverviewEvent) then) =
      __$GroupOverviewEventCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$GroupOverviewEventCopyWithImpl<$Res>
    extends _$GroupOverviewEventCopyWithImpl<$Res>
    implements _$GroupOverviewEventCopyWith<$Res> {
  __$GroupOverviewEventCopyWithImpl(
      _GroupOverviewEvent _value, $Res Function(_GroupOverviewEvent) _then)
      : super(_value, (v) => _then(v as _GroupOverviewEvent));

  @override
  _GroupOverviewEvent get _value => super._value as _GroupOverviewEvent;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_GroupOverviewEvent(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GroupOverviewEvent implements _GroupOverviewEvent {
  const _$_GroupOverviewEvent(this.groupId);

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
            other is _GroupOverviewEvent &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$GroupOverviewEventCopyWith<_GroupOverviewEvent> get copyWith =>
      __$GroupOverviewEventCopyWithImpl<_GroupOverviewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) initialized,
    required TResult Function(List<GroupOverviewRowInfo> chatInfoItems)
        chatInfoItemsUpdated,
  }) {
    return initialized(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
  }) {
    return initialized?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
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
    required TResult Function(_GroupOverviewEvent value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _GroupOverviewEvent implements GroupOverviewEvent {
  const factory _GroupOverviewEvent(String groupId) = _$_GroupOverviewEvent;

  String get groupId;
  @JsonKey(ignore: true)
  _$GroupOverviewEventCopyWith<_GroupOverviewEvent> get copyWith =>
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
  }) {
    return chatInfoItemsUpdated(chatInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
  }) {
    return chatInfoItemsUpdated?.call(chatInfoItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? initialized,
    TResult Function(List<GroupOverviewRowInfo> chatInfoItems)?
        chatInfoItemsUpdated,
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
    required TResult Function(_GroupOverviewEvent value) initialized,
    required TResult Function(_ChatInfoItemsUpdated value) chatInfoItemsUpdated,
  }) {
    return chatInfoItemsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
  }) {
    return chatInfoItemsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupOverviewEvent value)? initialized,
    TResult Function(_ChatInfoItemsUpdated value)? chatInfoItemsUpdated,
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
class _$GroupOverviewStateTearOff {
  const _$GroupOverviewStateTearOff();

  _GroupOverviewState call(
      {required List<GroupOverviewRowInfo> chatInfoItems}) {
    return _GroupOverviewState(
      chatInfoItems: chatInfoItems,
    );
  }
}

/// @nodoc
const $GroupOverviewState = _$GroupOverviewStateTearOff();

/// @nodoc
mixin _$GroupOverviewState {
  List<GroupOverviewRowInfo> get chatInfoItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupOverviewStateCopyWith<GroupOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOverviewStateCopyWith<$Res> {
  factory $GroupOverviewStateCopyWith(
          GroupOverviewState value, $Res Function(GroupOverviewState) then) =
      _$GroupOverviewStateCopyWithImpl<$Res>;
  $Res call({List<GroupOverviewRowInfo> chatInfoItems});
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
  }) {
    return _then(_value.copyWith(
      chatInfoItems: chatInfoItems == freezed
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
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
  $Res call({List<GroupOverviewRowInfo> chatInfoItems});
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
  }) {
    return _then(_GroupOverviewState(
      chatInfoItems: chatInfoItems == freezed
          ? _value.chatInfoItems
          : chatInfoItems // ignore: cast_nullable_to_non_nullable
              as List<GroupOverviewRowInfo>,
    ));
  }
}

/// @nodoc

class _$_GroupOverviewState implements _GroupOverviewState {
  const _$_GroupOverviewState({required this.chatInfoItems});

  @override
  final List<GroupOverviewRowInfo> chatInfoItems;

  @override
  String toString() {
    return 'GroupOverviewState(chatInfoItems: $chatInfoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupOverviewState &&
            const DeepCollectionEquality()
                .equals(other.chatInfoItems, chatInfoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chatInfoItems));

  @JsonKey(ignore: true)
  @override
  _$GroupOverviewStateCopyWith<_GroupOverviewState> get copyWith =>
      __$GroupOverviewStateCopyWithImpl<_GroupOverviewState>(this, _$identity);
}

abstract class _GroupOverviewState implements GroupOverviewState {
  const factory _GroupOverviewState(
          {required List<GroupOverviewRowInfo> chatInfoItems}) =
      _$_GroupOverviewState;

  @override
  List<GroupOverviewRowInfo> get chatInfoItems;
  @override
  @JsonKey(ignore: true)
  _$GroupOverviewStateCopyWith<_GroupOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
