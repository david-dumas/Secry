// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  _Redirect redirect(PageRouteInfo<dynamic> route, int delayInMilliseconds) {
    return _Redirect(
      route,
      delayInMilliseconds,
    );
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  int get delayInMilliseconds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PageRouteInfo<dynamic> route, int delayInMilliseconds)
        redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
        redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
        redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Redirect value) redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Redirect value)? redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashEventCopyWith<SplashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
  $Res call({PageRouteInfo<dynamic> route, int delayInMilliseconds});
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;

  @override
  $Res call({
    Object? route = freezed,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_value.copyWith(
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      delayInMilliseconds: delayInMilliseconds == freezed
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RedirectCopyWith<$Res> implements $SplashEventCopyWith<$Res> {
  factory _$RedirectCopyWith(_Redirect value, $Res Function(_Redirect) then) =
      __$RedirectCopyWithImpl<$Res>;
  @override
  $Res call({PageRouteInfo<dynamic> route, int delayInMilliseconds});
}

/// @nodoc
class __$RedirectCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements _$RedirectCopyWith<$Res> {
  __$RedirectCopyWithImpl(_Redirect _value, $Res Function(_Redirect) _then)
      : super(_value, (v) => _then(v as _Redirect));

  @override
  _Redirect get _value => super._value as _Redirect;

  @override
  $Res call({
    Object? route = freezed,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_Redirect(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      delayInMilliseconds == freezed
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Redirect implements _Redirect {
  const _$_Redirect(this.route, this.delayInMilliseconds);

  @override
  final PageRouteInfo<dynamic> route;
  @override
  final int delayInMilliseconds;

  @override
  String toString() {
    return 'SplashEvent.redirect(route: $route, delayInMilliseconds: $delayInMilliseconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Redirect &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.delayInMilliseconds, delayInMilliseconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(delayInMilliseconds));

  @JsonKey(ignore: true)
  @override
  _$RedirectCopyWith<_Redirect> get copyWith =>
      __$RedirectCopyWithImpl<_Redirect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PageRouteInfo<dynamic> route, int delayInMilliseconds)
        redirect,
  }) {
    return redirect(route, delayInMilliseconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
        redirect,
  }) {
    return redirect?.call(route, delayInMilliseconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
        redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(route, delayInMilliseconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Redirect value) redirect,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Redirect value)? redirect,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }
}

abstract class _Redirect implements SplashEvent {
  const factory _Redirect(
      PageRouteInfo<dynamic> route, int delayInMilliseconds) = _$_Redirect;

  @override
  PageRouteInfo<dynamic> get route;
  @override
  int get delayInMilliseconds;
  @override
  @JsonKey(ignore: true)
  _$RedirectCopyWith<_Redirect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call(
      {required Option<PageRouteInfo> routeOption, int? delayInMilliseconds}) {
    return _SplashState(
      routeOption: routeOption,
      delayInMilliseconds: delayInMilliseconds,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  Option<PageRouteInfo> get routeOption => throw _privateConstructorUsedError;
  int? get delayInMilliseconds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call({Option<PageRouteInfo> routeOption, int? delayInMilliseconds});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? routeOption = freezed,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_value.copyWith(
      routeOption: routeOption == freezed
          ? _value.routeOption
          : routeOption // ignore: cast_nullable_to_non_nullable
              as Option<PageRouteInfo>,
      delayInMilliseconds: delayInMilliseconds == freezed
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<PageRouteInfo> routeOption, int? delayInMilliseconds});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? routeOption = freezed,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_SplashState(
      routeOption: routeOption == freezed
          ? _value.routeOption
          : routeOption // ignore: cast_nullable_to_non_nullable
              as Option<PageRouteInfo>,
      delayInMilliseconds: delayInMilliseconds == freezed
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SplashState implements _SplashState {
  const _$_SplashState({required this.routeOption, this.delayInMilliseconds});

  @override
  final Option<PageRouteInfo> routeOption;
  @override
  final int? delayInMilliseconds;

  @override
  String toString() {
    return 'SplashState(routeOption: $routeOption, delayInMilliseconds: $delayInMilliseconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashState &&
            const DeepCollectionEquality()
                .equals(other.routeOption, routeOption) &&
            const DeepCollectionEquality()
                .equals(other.delayInMilliseconds, delayInMilliseconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeOption),
      const DeepCollectionEquality().hash(delayInMilliseconds));

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  const factory _SplashState(
      {required Option<PageRouteInfo> routeOption,
      int? delayInMilliseconds}) = _$_SplashState;

  @override
  Option<PageRouteInfo> get routeOption;
  @override
  int? get delayInMilliseconds;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
