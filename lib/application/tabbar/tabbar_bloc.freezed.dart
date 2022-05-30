// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tabbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabbarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) selectedIndexChanged,
    required TResult Function(bool isSignedIn) isUserSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SelectedIndexChanged value) selectedIndexChanged,
    required TResult Function(_IsUserSignedInUpdated value)
        isUserSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabbarEventCopyWith<$Res> {
  factory $TabbarEventCopyWith(
          TabbarEvent value, $Res Function(TabbarEvent) then) =
      _$TabbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TabbarEventCopyWithImpl<$Res> implements $TabbarEventCopyWith<$Res> {
  _$TabbarEventCopyWithImpl(this._value, this._then);

  final TabbarEvent _value;
  // ignore: unused_field
  final $Res Function(TabbarEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res> extends _$TabbarEventCopyWithImpl<$Res>
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
    return 'TabbarEvent.initialized()';
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
    required TResult Function(int index) selectedIndexChanged,
    required TResult Function(bool isSignedIn) isUserSignedInUpdated,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
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
    required TResult Function(_SelectedIndexChanged value) selectedIndexChanged,
    required TResult Function(_IsUserSignedInUpdated value)
        isUserSignedInUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TabbarEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$_SelectedIndexChangedCopyWith<$Res> {
  factory _$$_SelectedIndexChangedCopyWith(_$_SelectedIndexChanged value,
          $Res Function(_$_SelectedIndexChanged) then) =
      __$$_SelectedIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_SelectedIndexChangedCopyWithImpl<$Res>
    extends _$TabbarEventCopyWithImpl<$Res>
    implements _$$_SelectedIndexChangedCopyWith<$Res> {
  __$$_SelectedIndexChangedCopyWithImpl(_$_SelectedIndexChanged _value,
      $Res Function(_$_SelectedIndexChanged) _then)
      : super(_value, (v) => _then(v as _$_SelectedIndexChanged));

  @override
  _$_SelectedIndexChanged get _value => super._value as _$_SelectedIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_SelectedIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedIndexChanged implements _SelectedIndexChanged {
  const _$_SelectedIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TabbarEvent.selectedIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedIndexChangedCopyWith<_$_SelectedIndexChanged> get copyWith =>
      __$$_SelectedIndexChangedCopyWithImpl<_$_SelectedIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) selectedIndexChanged,
    required TResult Function(bool isSignedIn) isUserSignedInUpdated,
  }) {
    return selectedIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
  }) {
    return selectedIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
    required TResult orElse(),
  }) {
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SelectedIndexChanged value) selectedIndexChanged,
    required TResult Function(_IsUserSignedInUpdated value)
        isUserSignedInUpdated,
  }) {
    return selectedIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
  }) {
    return selectedIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
    required TResult orElse(),
  }) {
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _SelectedIndexChanged implements TabbarEvent {
  const factory _SelectedIndexChanged(final int index) =
      _$_SelectedIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SelectedIndexChangedCopyWith<_$_SelectedIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsUserSignedInUpdatedCopyWith<$Res> {
  factory _$$_IsUserSignedInUpdatedCopyWith(_$_IsUserSignedInUpdated value,
          $Res Function(_$_IsUserSignedInUpdated) then) =
      __$$_IsUserSignedInUpdatedCopyWithImpl<$Res>;
  $Res call({bool isSignedIn});
}

/// @nodoc
class __$$_IsUserSignedInUpdatedCopyWithImpl<$Res>
    extends _$TabbarEventCopyWithImpl<$Res>
    implements _$$_IsUserSignedInUpdatedCopyWith<$Res> {
  __$$_IsUserSignedInUpdatedCopyWithImpl(_$_IsUserSignedInUpdated _value,
      $Res Function(_$_IsUserSignedInUpdated) _then)
      : super(_value, (v) => _then(v as _$_IsUserSignedInUpdated));

  @override
  _$_IsUserSignedInUpdated get _value =>
      super._value as _$_IsUserSignedInUpdated;

  @override
  $Res call({
    Object? isSignedIn = freezed,
  }) {
    return _then(_$_IsUserSignedInUpdated(
      isSignedIn == freezed
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsUserSignedInUpdated implements _IsUserSignedInUpdated {
  const _$_IsUserSignedInUpdated(this.isSignedIn);

  @override
  final bool isSignedIn;

  @override
  String toString() {
    return 'TabbarEvent.isUserSignedInUpdated(isSignedIn: $isSignedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsUserSignedInUpdated &&
            const DeepCollectionEquality()
                .equals(other.isSignedIn, isSignedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isSignedIn));

  @JsonKey(ignore: true)
  @override
  _$$_IsUserSignedInUpdatedCopyWith<_$_IsUserSignedInUpdated> get copyWith =>
      __$$_IsUserSignedInUpdatedCopyWithImpl<_$_IsUserSignedInUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) selectedIndexChanged,
    required TResult Function(bool isSignedIn) isUserSignedInUpdated,
  }) {
    return isUserSignedInUpdated(isSignedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
  }) {
    return isUserSignedInUpdated?.call(isSignedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? selectedIndexChanged,
    TResult Function(bool isSignedIn)? isUserSignedInUpdated,
    required TResult orElse(),
  }) {
    if (isUserSignedInUpdated != null) {
      return isUserSignedInUpdated(isSignedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SelectedIndexChanged value) selectedIndexChanged,
    required TResult Function(_IsUserSignedInUpdated value)
        isUserSignedInUpdated,
  }) {
    return isUserSignedInUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
  }) {
    return isUserSignedInUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SelectedIndexChanged value)? selectedIndexChanged,
    TResult Function(_IsUserSignedInUpdated value)? isUserSignedInUpdated,
    required TResult orElse(),
  }) {
    if (isUserSignedInUpdated != null) {
      return isUserSignedInUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsUserSignedInUpdated implements TabbarEvent {
  const factory _IsUserSignedInUpdated(final bool isSignedIn) =
      _$_IsUserSignedInUpdated;

  bool get isSignedIn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_IsUserSignedInUpdatedCopyWith<_$_IsUserSignedInUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TabbarState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<String> get titleTagsForSelectedIndex =>
      throw _privateConstructorUsedError;
  String get currentTitleTagForSelectedIndex =>
      throw _privateConstructorUsedError;
  bool get isUserSignedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabbarStateCopyWith<TabbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabbarStateCopyWith<$Res> {
  factory $TabbarStateCopyWith(
          TabbarState value, $Res Function(TabbarState) then) =
      _$TabbarStateCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex,
      List<String> titleTagsForSelectedIndex,
      String currentTitleTagForSelectedIndex,
      bool isUserSignedIn});
}

/// @nodoc
class _$TabbarStateCopyWithImpl<$Res> implements $TabbarStateCopyWith<$Res> {
  _$TabbarStateCopyWithImpl(this._value, this._then);

  final TabbarState _value;
  // ignore: unused_field
  final $Res Function(TabbarState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? titleTagsForSelectedIndex = freezed,
    Object? currentTitleTagForSelectedIndex = freezed,
    Object? isUserSignedIn = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      titleTagsForSelectedIndex: titleTagsForSelectedIndex == freezed
          ? _value.titleTagsForSelectedIndex
          : titleTagsForSelectedIndex // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentTitleTagForSelectedIndex: currentTitleTagForSelectedIndex ==
              freezed
          ? _value.currentTitleTagForSelectedIndex
          : currentTitleTagForSelectedIndex // ignore: cast_nullable_to_non_nullable
              as String,
      isUserSignedIn: isUserSignedIn == freezed
          ? _value.isUserSignedIn
          : isUserSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TabbarStateCopyWith<$Res>
    implements $TabbarStateCopyWith<$Res> {
  factory _$$_TabbarStateCopyWith(
          _$_TabbarState value, $Res Function(_$_TabbarState) then) =
      __$$_TabbarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex,
      List<String> titleTagsForSelectedIndex,
      String currentTitleTagForSelectedIndex,
      bool isUserSignedIn});
}

/// @nodoc
class __$$_TabbarStateCopyWithImpl<$Res> extends _$TabbarStateCopyWithImpl<$Res>
    implements _$$_TabbarStateCopyWith<$Res> {
  __$$_TabbarStateCopyWithImpl(
      _$_TabbarState _value, $Res Function(_$_TabbarState) _then)
      : super(_value, (v) => _then(v as _$_TabbarState));

  @override
  _$_TabbarState get _value => super._value as _$_TabbarState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? titleTagsForSelectedIndex = freezed,
    Object? currentTitleTagForSelectedIndex = freezed,
    Object? isUserSignedIn = freezed,
  }) {
    return _then(_$_TabbarState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      titleTagsForSelectedIndex: titleTagsForSelectedIndex == freezed
          ? _value._titleTagsForSelectedIndex
          : titleTagsForSelectedIndex // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentTitleTagForSelectedIndex: currentTitleTagForSelectedIndex ==
              freezed
          ? _value.currentTitleTagForSelectedIndex
          : currentTitleTagForSelectedIndex // ignore: cast_nullable_to_non_nullable
              as String,
      isUserSignedIn: isUserSignedIn == freezed
          ? _value.isUserSignedIn
          : isUserSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TabbarState implements _TabbarState {
  const _$_TabbarState(
      {required this.selectedIndex,
      required final List<String> titleTagsForSelectedIndex,
      required this.currentTitleTagForSelectedIndex,
      required this.isUserSignedIn})
      : _titleTagsForSelectedIndex = titleTagsForSelectedIndex;

  @override
  final int selectedIndex;
  final List<String> _titleTagsForSelectedIndex;
  @override
  List<String> get titleTagsForSelectedIndex {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleTagsForSelectedIndex);
  }

  @override
  final String currentTitleTagForSelectedIndex;
  @override
  final bool isUserSignedIn;

  @override
  String toString() {
    return 'TabbarState(selectedIndex: $selectedIndex, titleTagsForSelectedIndex: $titleTagsForSelectedIndex, currentTitleTagForSelectedIndex: $currentTitleTagForSelectedIndex, isUserSignedIn: $isUserSignedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabbarState &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex) &&
            const DeepCollectionEquality().equals(
                other._titleTagsForSelectedIndex, _titleTagsForSelectedIndex) &&
            const DeepCollectionEquality().equals(
                other.currentTitleTagForSelectedIndex,
                currentTitleTagForSelectedIndex) &&
            const DeepCollectionEquality()
                .equals(other.isUserSignedIn, isUserSignedIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedIndex),
      const DeepCollectionEquality().hash(_titleTagsForSelectedIndex),
      const DeepCollectionEquality().hash(currentTitleTagForSelectedIndex),
      const DeepCollectionEquality().hash(isUserSignedIn));

  @JsonKey(ignore: true)
  @override
  _$$_TabbarStateCopyWith<_$_TabbarState> get copyWith =>
      __$$_TabbarStateCopyWithImpl<_$_TabbarState>(this, _$identity);
}

abstract class _TabbarState implements TabbarState {
  const factory _TabbarState(
      {required final int selectedIndex,
      required final List<String> titleTagsForSelectedIndex,
      required final String currentTitleTagForSelectedIndex,
      required final bool isUserSignedIn}) = _$_TabbarState;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  List<String> get titleTagsForSelectedIndex =>
      throw _privateConstructorUsedError;
  @override
  String get currentTitleTagForSelectedIndex =>
      throw _privateConstructorUsedError;
  @override
  bool get isUserSignedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TabbarStateCopyWith<_$_TabbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
