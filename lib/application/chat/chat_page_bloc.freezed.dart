// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(MessageChat messageChat) newMessageReceived,
    required TResult Function(String message) sendGroupChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_sendGroupChatMessage value) sendGroupChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageEventCopyWith<$Res> {
  factory $ChatPageEventCopyWith(
          ChatPageEvent value, $Res Function(ChatPageEvent) then) =
      _$ChatPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatPageEventCopyWithImpl<$Res>
    implements $ChatPageEventCopyWith<$Res> {
  _$ChatPageEventCopyWithImpl(this._value, this._then);

  final ChatPageEvent _value;
  // ignore: unused_field
  final $Res Function(ChatPageEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res>
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
    return 'ChatPageEvent.initialized()';
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
    required TResult Function() initialized,
    required TResult Function(MessageChat messageChat) newMessageReceived,
    required TResult Function(String message) sendGroupChatMessage,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
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
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_sendGroupChatMessage value) sendGroupChatMessage,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatPageEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$_NewMessageReceivedCopyWith<$Res> {
  factory _$$_NewMessageReceivedCopyWith(_$_NewMessageReceived value,
          $Res Function(_$_NewMessageReceived) then) =
      __$$_NewMessageReceivedCopyWithImpl<$Res>;
  $Res call({MessageChat messageChat});
}

/// @nodoc
class __$$_NewMessageReceivedCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res>
    implements _$$_NewMessageReceivedCopyWith<$Res> {
  __$$_NewMessageReceivedCopyWithImpl(
      _$_NewMessageReceived _value, $Res Function(_$_NewMessageReceived) _then)
      : super(_value, (v) => _then(v as _$_NewMessageReceived));

  @override
  _$_NewMessageReceived get _value => super._value as _$_NewMessageReceived;

  @override
  $Res call({
    Object? messageChat = freezed,
  }) {
    return _then(_$_NewMessageReceived(
      messageChat == freezed
          ? _value.messageChat
          : messageChat // ignore: cast_nullable_to_non_nullable
              as MessageChat,
    ));
  }
}

/// @nodoc

class _$_NewMessageReceived implements _NewMessageReceived {
  const _$_NewMessageReceived(this.messageChat);

  @override
  final MessageChat messageChat;

  @override
  String toString() {
    return 'ChatPageEvent.newMessageReceived(messageChat: $messageChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewMessageReceived &&
            const DeepCollectionEquality()
                .equals(other.messageChat, messageChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(messageChat));

  @JsonKey(ignore: true)
  @override
  _$$_NewMessageReceivedCopyWith<_$_NewMessageReceived> get copyWith =>
      __$$_NewMessageReceivedCopyWithImpl<_$_NewMessageReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(MessageChat messageChat) newMessageReceived,
    required TResult Function(String message) sendGroupChatMessage,
  }) {
    return newMessageReceived(messageChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
  }) {
    return newMessageReceived?.call(messageChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(messageChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_sendGroupChatMessage value) sendGroupChatMessage,
  }) {
    return newMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
  }) {
    return newMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _NewMessageReceived implements ChatPageEvent {
  const factory _NewMessageReceived(final MessageChat messageChat) =
      _$_NewMessageReceived;

  MessageChat get messageChat;
  @JsonKey(ignore: true)
  _$$_NewMessageReceivedCopyWith<_$_NewMessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_sendGroupChatMessageCopyWith<$Res> {
  factory _$$_sendGroupChatMessageCopyWith(_$_sendGroupChatMessage value,
          $Res Function(_$_sendGroupChatMessage) then) =
      __$$_sendGroupChatMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_sendGroupChatMessageCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res>
    implements _$$_sendGroupChatMessageCopyWith<$Res> {
  __$$_sendGroupChatMessageCopyWithImpl(_$_sendGroupChatMessage _value,
      $Res Function(_$_sendGroupChatMessage) _then)
      : super(_value, (v) => _then(v as _$_sendGroupChatMessage));

  @override
  _$_sendGroupChatMessage get _value => super._value as _$_sendGroupChatMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_sendGroupChatMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_sendGroupChatMessage implements _sendGroupChatMessage {
  const _$_sendGroupChatMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatPageEvent.sendGroupChatMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sendGroupChatMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_sendGroupChatMessageCopyWith<_$_sendGroupChatMessage> get copyWith =>
      __$$_sendGroupChatMessageCopyWithImpl<_$_sendGroupChatMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(MessageChat messageChat) newMessageReceived,
    required TResult Function(String message) sendGroupChatMessage,
  }) {
    return sendGroupChatMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
  }) {
    return sendGroupChatMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(MessageChat messageChat)? newMessageReceived,
    TResult Function(String message)? sendGroupChatMessage,
    required TResult orElse(),
  }) {
    if (sendGroupChatMessage != null) {
      return sendGroupChatMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_sendGroupChatMessage value) sendGroupChatMessage,
  }) {
    return sendGroupChatMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
  }) {
    return sendGroupChatMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_sendGroupChatMessage value)? sendGroupChatMessage,
    required TResult orElse(),
  }) {
    if (sendGroupChatMessage != null) {
      return sendGroupChatMessage(this);
    }
    return orElse();
  }
}

abstract class _sendGroupChatMessage implements ChatPageEvent {
  const factory _sendGroupChatMessage(final String message) =
      _$_sendGroupChatMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_sendGroupChatMessageCopyWith<_$_sendGroupChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatPageState {
  String get title => throw _privateConstructorUsedError;
  List<MessageChat> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPageStateCopyWith<ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageStateCopyWith<$Res> {
  factory $ChatPageStateCopyWith(
          ChatPageState value, $Res Function(ChatPageState) then) =
      _$ChatPageStateCopyWithImpl<$Res>;
  $Res call({String title, List<MessageChat> messages});
}

/// @nodoc
class _$ChatPageStateCopyWithImpl<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  _$ChatPageStateCopyWithImpl(this._value, this._then);

  final ChatPageState _value;
  // ignore: unused_field
  final $Res Function(ChatPageState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChat>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatPageStateCopyWith<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  factory _$$_ChatPageStateCopyWith(
          _$_ChatPageState value, $Res Function(_$_ChatPageState) then) =
      __$$_ChatPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<MessageChat> messages});
}

/// @nodoc
class __$$_ChatPageStateCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res>
    implements _$$_ChatPageStateCopyWith<$Res> {
  __$$_ChatPageStateCopyWithImpl(
      _$_ChatPageState _value, $Res Function(_$_ChatPageState) _then)
      : super(_value, (v) => _then(v as _$_ChatPageState));

  @override
  _$_ChatPageState get _value => super._value as _$_ChatPageState;

  @override
  $Res call({
    Object? title = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ChatPageState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChat>,
    ));
  }
}

/// @nodoc

class _$_ChatPageState implements _ChatPageState {
  const _$_ChatPageState({required this.title, required this.messages});

  @override
  final String title;
  @override
  final List<MessageChat> messages;

  @override
  String toString() {
    return 'ChatPageState(title: $title, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPageState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      __$$_ChatPageStateCopyWithImpl<_$_ChatPageState>(this, _$identity);
}

abstract class _ChatPageState implements ChatPageState {
  const factory _ChatPageState(
      {required final String title,
      required final List<MessageChat> messages}) = _$_ChatPageState;

  @override
  String get title;
  @override
  List<MessageChat> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
