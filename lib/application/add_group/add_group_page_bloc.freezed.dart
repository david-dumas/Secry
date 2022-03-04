// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_group_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddGroupPageEventTearOff {
  const _$AddGroupPageEventTearOff();

  _GroupTitleUpdated groupTitleUpdated(String newTitle) {
    return _GroupTitleUpdated(
      newTitle,
    );
  }

  _GroupImageUpdated groupImageUpdated(Image newImage) {
    return _GroupImageUpdated(
      newImage,
    );
  }

  _SearchAllPeopleSearchValueUpdated searchAllPeopleSearchValueUpdated(
      String newValue) {
    return _SearchAllPeopleSearchValueUpdated(
      newValue,
    );
  }

  _GroupMembersUpdated groupMembersUpdated(List<User> newMembers) {
    return _GroupMembersUpdated(
      newMembers,
    );
  }
}

/// @nodoc
const $AddGroupPageEvent = _$AddGroupPageEventTearOff();

/// @nodoc
mixin _$AddGroupPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newTitle) groupTitleUpdated,
    required TResult Function(Image newImage) groupImageUpdated,
    required TResult Function(String newValue)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(List<User> newMembers) groupMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupTitleUpdated value) groupTitleUpdated,
    required TResult Function(_GroupImageUpdated value) groupImageUpdated,
    required TResult Function(_SearchAllPeopleSearchValueUpdated value)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(_GroupMembersUpdated value) groupMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGroupPageEventCopyWith<$Res> {
  factory $AddGroupPageEventCopyWith(
          AddGroupPageEvent value, $Res Function(AddGroupPageEvent) then) =
      _$AddGroupPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddGroupPageEventCopyWithImpl<$Res>
    implements $AddGroupPageEventCopyWith<$Res> {
  _$AddGroupPageEventCopyWithImpl(this._value, this._then);

  final AddGroupPageEvent _value;
  // ignore: unused_field
  final $Res Function(AddGroupPageEvent) _then;
}

/// @nodoc
abstract class _$GroupTitleUpdatedCopyWith<$Res> {
  factory _$GroupTitleUpdatedCopyWith(
          _GroupTitleUpdated value, $Res Function(_GroupTitleUpdated) then) =
      __$GroupTitleUpdatedCopyWithImpl<$Res>;
  $Res call({String newTitle});
}

/// @nodoc
class __$GroupTitleUpdatedCopyWithImpl<$Res>
    extends _$AddGroupPageEventCopyWithImpl<$Res>
    implements _$GroupTitleUpdatedCopyWith<$Res> {
  __$GroupTitleUpdatedCopyWithImpl(
      _GroupTitleUpdated _value, $Res Function(_GroupTitleUpdated) _then)
      : super(_value, (v) => _then(v as _GroupTitleUpdated));

  @override
  _GroupTitleUpdated get _value => super._value as _GroupTitleUpdated;

  @override
  $Res call({
    Object? newTitle = freezed,
  }) {
    return _then(_GroupTitleUpdated(
      newTitle == freezed
          ? _value.newTitle
          : newTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GroupTitleUpdated implements _GroupTitleUpdated {
  const _$_GroupTitleUpdated(this.newTitle);

  @override
  final String newTitle;

  @override
  String toString() {
    return 'AddGroupPageEvent.groupTitleUpdated(newTitle: $newTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupTitleUpdated &&
            const DeepCollectionEquality().equals(other.newTitle, newTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newTitle));

  @JsonKey(ignore: true)
  @override
  _$GroupTitleUpdatedCopyWith<_GroupTitleUpdated> get copyWith =>
      __$GroupTitleUpdatedCopyWithImpl<_GroupTitleUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newTitle) groupTitleUpdated,
    required TResult Function(Image newImage) groupImageUpdated,
    required TResult Function(String newValue)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(List<User> newMembers) groupMembersUpdated,
  }) {
    return groupTitleUpdated(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
  }) {
    return groupTitleUpdated?.call(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupTitleUpdated != null) {
      return groupTitleUpdated(newTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupTitleUpdated value) groupTitleUpdated,
    required TResult Function(_GroupImageUpdated value) groupImageUpdated,
    required TResult Function(_SearchAllPeopleSearchValueUpdated value)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(_GroupMembersUpdated value) groupMembersUpdated,
  }) {
    return groupTitleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
  }) {
    return groupTitleUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupTitleUpdated != null) {
      return groupTitleUpdated(this);
    }
    return orElse();
  }
}

abstract class _GroupTitleUpdated implements AddGroupPageEvent {
  const factory _GroupTitleUpdated(String newTitle) = _$_GroupTitleUpdated;

  String get newTitle;
  @JsonKey(ignore: true)
  _$GroupTitleUpdatedCopyWith<_GroupTitleUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupImageUpdatedCopyWith<$Res> {
  factory _$GroupImageUpdatedCopyWith(
          _GroupImageUpdated value, $Res Function(_GroupImageUpdated) then) =
      __$GroupImageUpdatedCopyWithImpl<$Res>;
  $Res call({Image newImage});
}

/// @nodoc
class __$GroupImageUpdatedCopyWithImpl<$Res>
    extends _$AddGroupPageEventCopyWithImpl<$Res>
    implements _$GroupImageUpdatedCopyWith<$Res> {
  __$GroupImageUpdatedCopyWithImpl(
      _GroupImageUpdated _value, $Res Function(_GroupImageUpdated) _then)
      : super(_value, (v) => _then(v as _GroupImageUpdated));

  @override
  _GroupImageUpdated get _value => super._value as _GroupImageUpdated;

  @override
  $Res call({
    Object? newImage = freezed,
  }) {
    return _then(_GroupImageUpdated(
      newImage == freezed
          ? _value.newImage
          : newImage // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$_GroupImageUpdated implements _GroupImageUpdated {
  const _$_GroupImageUpdated(this.newImage);

  @override
  final Image newImage;

  @override
  String toString() {
    return 'AddGroupPageEvent.groupImageUpdated(newImage: $newImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupImageUpdated &&
            const DeepCollectionEquality().equals(other.newImage, newImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newImage));

  @JsonKey(ignore: true)
  @override
  _$GroupImageUpdatedCopyWith<_GroupImageUpdated> get copyWith =>
      __$GroupImageUpdatedCopyWithImpl<_GroupImageUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newTitle) groupTitleUpdated,
    required TResult Function(Image newImage) groupImageUpdated,
    required TResult Function(String newValue)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(List<User> newMembers) groupMembersUpdated,
  }) {
    return groupImageUpdated(newImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
  }) {
    return groupImageUpdated?.call(newImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupImageUpdated != null) {
      return groupImageUpdated(newImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupTitleUpdated value) groupTitleUpdated,
    required TResult Function(_GroupImageUpdated value) groupImageUpdated,
    required TResult Function(_SearchAllPeopleSearchValueUpdated value)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(_GroupMembersUpdated value) groupMembersUpdated,
  }) {
    return groupImageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
  }) {
    return groupImageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupImageUpdated != null) {
      return groupImageUpdated(this);
    }
    return orElse();
  }
}

abstract class _GroupImageUpdated implements AddGroupPageEvent {
  const factory _GroupImageUpdated(Image newImage) = _$_GroupImageUpdated;

  Image get newImage;
  @JsonKey(ignore: true)
  _$GroupImageUpdatedCopyWith<_GroupImageUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchAllPeopleSearchValueUpdatedCopyWith<$Res> {
  factory _$SearchAllPeopleSearchValueUpdatedCopyWith(
          _SearchAllPeopleSearchValueUpdated value,
          $Res Function(_SearchAllPeopleSearchValueUpdated) then) =
      __$SearchAllPeopleSearchValueUpdatedCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class __$SearchAllPeopleSearchValueUpdatedCopyWithImpl<$Res>
    extends _$AddGroupPageEventCopyWithImpl<$Res>
    implements _$SearchAllPeopleSearchValueUpdatedCopyWith<$Res> {
  __$SearchAllPeopleSearchValueUpdatedCopyWithImpl(
      _SearchAllPeopleSearchValueUpdated _value,
      $Res Function(_SearchAllPeopleSearchValueUpdated) _then)
      : super(_value, (v) => _then(v as _SearchAllPeopleSearchValueUpdated));

  @override
  _SearchAllPeopleSearchValueUpdated get _value =>
      super._value as _SearchAllPeopleSearchValueUpdated;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_SearchAllPeopleSearchValueUpdated(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchAllPeopleSearchValueUpdated
    implements _SearchAllPeopleSearchValueUpdated {
  const _$_SearchAllPeopleSearchValueUpdated(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'AddGroupPageEvent.searchAllPeopleSearchValueUpdated(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchAllPeopleSearchValueUpdated &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$SearchAllPeopleSearchValueUpdatedCopyWith<
          _SearchAllPeopleSearchValueUpdated>
      get copyWith => __$SearchAllPeopleSearchValueUpdatedCopyWithImpl<
          _SearchAllPeopleSearchValueUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newTitle) groupTitleUpdated,
    required TResult Function(Image newImage) groupImageUpdated,
    required TResult Function(String newValue)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(List<User> newMembers) groupMembersUpdated,
  }) {
    return searchAllPeopleSearchValueUpdated(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
  }) {
    return searchAllPeopleSearchValueUpdated?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (searchAllPeopleSearchValueUpdated != null) {
      return searchAllPeopleSearchValueUpdated(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupTitleUpdated value) groupTitleUpdated,
    required TResult Function(_GroupImageUpdated value) groupImageUpdated,
    required TResult Function(_SearchAllPeopleSearchValueUpdated value)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(_GroupMembersUpdated value) groupMembersUpdated,
  }) {
    return searchAllPeopleSearchValueUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
  }) {
    return searchAllPeopleSearchValueUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (searchAllPeopleSearchValueUpdated != null) {
      return searchAllPeopleSearchValueUpdated(this);
    }
    return orElse();
  }
}

abstract class _SearchAllPeopleSearchValueUpdated implements AddGroupPageEvent {
  const factory _SearchAllPeopleSearchValueUpdated(String newValue) =
      _$_SearchAllPeopleSearchValueUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$SearchAllPeopleSearchValueUpdatedCopyWith<
          _SearchAllPeopleSearchValueUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupMembersUpdatedCopyWith<$Res> {
  factory _$GroupMembersUpdatedCopyWith(_GroupMembersUpdated value,
          $Res Function(_GroupMembersUpdated) then) =
      __$GroupMembersUpdatedCopyWithImpl<$Res>;
  $Res call({List<User> newMembers});
}

/// @nodoc
class __$GroupMembersUpdatedCopyWithImpl<$Res>
    extends _$AddGroupPageEventCopyWithImpl<$Res>
    implements _$GroupMembersUpdatedCopyWith<$Res> {
  __$GroupMembersUpdatedCopyWithImpl(
      _GroupMembersUpdated _value, $Res Function(_GroupMembersUpdated) _then)
      : super(_value, (v) => _then(v as _GroupMembersUpdated));

  @override
  _GroupMembersUpdated get _value => super._value as _GroupMembersUpdated;

  @override
  $Res call({
    Object? newMembers = freezed,
  }) {
    return _then(_GroupMembersUpdated(
      newMembers == freezed
          ? _value.newMembers
          : newMembers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_GroupMembersUpdated implements _GroupMembersUpdated {
  const _$_GroupMembersUpdated(this.newMembers);

  @override
  final List<User> newMembers;

  @override
  String toString() {
    return 'AddGroupPageEvent.groupMembersUpdated(newMembers: $newMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupMembersUpdated &&
            const DeepCollectionEquality()
                .equals(other.newMembers, newMembers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMembers));

  @JsonKey(ignore: true)
  @override
  _$GroupMembersUpdatedCopyWith<_GroupMembersUpdated> get copyWith =>
      __$GroupMembersUpdatedCopyWithImpl<_GroupMembersUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newTitle) groupTitleUpdated,
    required TResult Function(Image newImage) groupImageUpdated,
    required TResult Function(String newValue)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(List<User> newMembers) groupMembersUpdated,
  }) {
    return groupMembersUpdated(newMembers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
  }) {
    return groupMembersUpdated?.call(newMembers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newTitle)? groupTitleUpdated,
    TResult Function(Image newImage)? groupImageUpdated,
    TResult Function(String newValue)? searchAllPeopleSearchValueUpdated,
    TResult Function(List<User> newMembers)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupMembersUpdated != null) {
      return groupMembersUpdated(newMembers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupTitleUpdated value) groupTitleUpdated,
    required TResult Function(_GroupImageUpdated value) groupImageUpdated,
    required TResult Function(_SearchAllPeopleSearchValueUpdated value)
        searchAllPeopleSearchValueUpdated,
    required TResult Function(_GroupMembersUpdated value) groupMembersUpdated,
  }) {
    return groupMembersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
  }) {
    return groupMembersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupTitleUpdated value)? groupTitleUpdated,
    TResult Function(_GroupImageUpdated value)? groupImageUpdated,
    TResult Function(_SearchAllPeopleSearchValueUpdated value)?
        searchAllPeopleSearchValueUpdated,
    TResult Function(_GroupMembersUpdated value)? groupMembersUpdated,
    required TResult orElse(),
  }) {
    if (groupMembersUpdated != null) {
      return groupMembersUpdated(this);
    }
    return orElse();
  }
}

abstract class _GroupMembersUpdated implements AddGroupPageEvent {
  const factory _GroupMembersUpdated(List<User> newMembers) =
      _$_GroupMembersUpdated;

  List<User> get newMembers;
  @JsonKey(ignore: true)
  _$GroupMembersUpdatedCopyWith<_GroupMembersUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddGroupPageStateTearOff {
  const _$AddGroupPageStateTearOff();

  _AddGroupPageState call(
      {required String groupTitle,
      required Image? groupImage,
      required String searchAllPeopleSearchValue,
      required List<User> groupMembers}) {
    return _AddGroupPageState(
      groupTitle: groupTitle,
      groupImage: groupImage,
      searchAllPeopleSearchValue: searchAllPeopleSearchValue,
      groupMembers: groupMembers,
    );
  }
}

/// @nodoc
const $AddGroupPageState = _$AddGroupPageStateTearOff();

/// @nodoc
mixin _$AddGroupPageState {
  String get groupTitle => throw _privateConstructorUsedError;
  Image? get groupImage => throw _privateConstructorUsedError;
  String get searchAllPeopleSearchValue => throw _privateConstructorUsedError;
  List<User> get groupMembers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddGroupPageStateCopyWith<AddGroupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGroupPageStateCopyWith<$Res> {
  factory $AddGroupPageStateCopyWith(
          AddGroupPageState value, $Res Function(AddGroupPageState) then) =
      _$AddGroupPageStateCopyWithImpl<$Res>;
  $Res call(
      {String groupTitle,
      Image? groupImage,
      String searchAllPeopleSearchValue,
      List<User> groupMembers});
}

/// @nodoc
class _$AddGroupPageStateCopyWithImpl<$Res>
    implements $AddGroupPageStateCopyWith<$Res> {
  _$AddGroupPageStateCopyWithImpl(this._value, this._then);

  final AddGroupPageState _value;
  // ignore: unused_field
  final $Res Function(AddGroupPageState) _then;

  @override
  $Res call({
    Object? groupTitle = freezed,
    Object? groupImage = freezed,
    Object? searchAllPeopleSearchValue = freezed,
    Object? groupMembers = freezed,
  }) {
    return _then(_value.copyWith(
      groupTitle: groupTitle == freezed
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String,
      groupImage: groupImage == freezed
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as Image?,
      searchAllPeopleSearchValue: searchAllPeopleSearchValue == freezed
          ? _value.searchAllPeopleSearchValue
          : searchAllPeopleSearchValue // ignore: cast_nullable_to_non_nullable
              as String,
      groupMembers: groupMembers == freezed
          ? _value.groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$AddGroupPageStateCopyWith<$Res>
    implements $AddGroupPageStateCopyWith<$Res> {
  factory _$AddGroupPageStateCopyWith(
          _AddGroupPageState value, $Res Function(_AddGroupPageState) then) =
      __$AddGroupPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String groupTitle,
      Image? groupImage,
      String searchAllPeopleSearchValue,
      List<User> groupMembers});
}

/// @nodoc
class __$AddGroupPageStateCopyWithImpl<$Res>
    extends _$AddGroupPageStateCopyWithImpl<$Res>
    implements _$AddGroupPageStateCopyWith<$Res> {
  __$AddGroupPageStateCopyWithImpl(
      _AddGroupPageState _value, $Res Function(_AddGroupPageState) _then)
      : super(_value, (v) => _then(v as _AddGroupPageState));

  @override
  _AddGroupPageState get _value => super._value as _AddGroupPageState;

  @override
  $Res call({
    Object? groupTitle = freezed,
    Object? groupImage = freezed,
    Object? searchAllPeopleSearchValue = freezed,
    Object? groupMembers = freezed,
  }) {
    return _then(_AddGroupPageState(
      groupTitle: groupTitle == freezed
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String,
      groupImage: groupImage == freezed
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as Image?,
      searchAllPeopleSearchValue: searchAllPeopleSearchValue == freezed
          ? _value.searchAllPeopleSearchValue
          : searchAllPeopleSearchValue // ignore: cast_nullable_to_non_nullable
              as String,
      groupMembers: groupMembers == freezed
          ? _value.groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_AddGroupPageState implements _AddGroupPageState {
  const _$_AddGroupPageState(
      {required this.groupTitle,
      required this.groupImage,
      required this.searchAllPeopleSearchValue,
      required this.groupMembers});

  @override
  final String groupTitle;
  @override
  final Image? groupImage;
  @override
  final String searchAllPeopleSearchValue;
  @override
  final List<User> groupMembers;

  @override
  String toString() {
    return 'AddGroupPageState(groupTitle: $groupTitle, groupImage: $groupImage, searchAllPeopleSearchValue: $searchAllPeopleSearchValue, groupMembers: $groupMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddGroupPageState &&
            const DeepCollectionEquality()
                .equals(other.groupTitle, groupTitle) &&
            const DeepCollectionEquality()
                .equals(other.groupImage, groupImage) &&
            const DeepCollectionEquality().equals(
                other.searchAllPeopleSearchValue, searchAllPeopleSearchValue) &&
            const DeepCollectionEquality()
                .equals(other.groupMembers, groupMembers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupTitle),
      const DeepCollectionEquality().hash(groupImage),
      const DeepCollectionEquality().hash(searchAllPeopleSearchValue),
      const DeepCollectionEquality().hash(groupMembers));

  @JsonKey(ignore: true)
  @override
  _$AddGroupPageStateCopyWith<_AddGroupPageState> get copyWith =>
      __$AddGroupPageStateCopyWithImpl<_AddGroupPageState>(this, _$identity);
}

abstract class _AddGroupPageState implements AddGroupPageState {
  const factory _AddGroupPageState(
      {required String groupTitle,
      required Image? groupImage,
      required String searchAllPeopleSearchValue,
      required List<User> groupMembers}) = _$_AddGroupPageState;

  @override
  String get groupTitle;
  @override
  Image? get groupImage;
  @override
  String get searchAllPeopleSearchValue;
  @override
  List<User> get groupMembers;
  @override
  @JsonKey(ignore: true)
  _$AddGroupPageStateCopyWith<_AddGroupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
