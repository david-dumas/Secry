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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
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
    TResult? Function(_Redirect value)? redirect,
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
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
  @useResult
  $Res call({PageRouteInfo<dynamic> route, int delayInMilliseconds});
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? delayInMilliseconds = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      delayInMilliseconds: null == delayInMilliseconds
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedirectCopyWith<$Res>
    implements $SplashEventCopyWith<$Res> {
  factory _$$_RedirectCopyWith(
          _$_Redirect value, $Res Function(_$_Redirect) then) =
      __$$_RedirectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageRouteInfo<dynamic> route, int delayInMilliseconds});
}

/// @nodoc
class __$$_RedirectCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_Redirect>
    implements _$$_RedirectCopyWith<$Res> {
  __$$_RedirectCopyWithImpl(
      _$_Redirect _value, $Res Function(_$_Redirect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? delayInMilliseconds = null,
  }) {
    return _then(_$_Redirect(
      null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      null == delayInMilliseconds
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
            other is _$_Redirect &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.delayInMilliseconds, delayInMilliseconds) ||
                other.delayInMilliseconds == delayInMilliseconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, delayInMilliseconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedirectCopyWith<_$_Redirect> get copyWith =>
      __$$_RedirectCopyWithImpl<_$_Redirect>(this, _$identity);

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
    TResult? Function(PageRouteInfo<dynamic> route, int delayInMilliseconds)?
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
    TResult? Function(_Redirect value)? redirect,
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
          final PageRouteInfo<dynamic> route, final int delayInMilliseconds) =
      _$_Redirect;

  @override
  PageRouteInfo<dynamic> get route;
  @override
  int get delayInMilliseconds;
  @override
  @JsonKey(ignore: true)
  _$$_RedirectCopyWith<_$_Redirect> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({Option<PageRouteInfo> routeOption, int? delayInMilliseconds});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeOption = null,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_value.copyWith(
      routeOption: null == routeOption
          ? _value.routeOption
          : routeOption // ignore: cast_nullable_to_non_nullable
              as Option<PageRouteInfo>,
      delayInMilliseconds: freezed == delayInMilliseconds
          ? _value.delayInMilliseconds
          : delayInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$_SplashStateCopyWith(
          _$_SplashState value, $Res Function(_$_SplashState) then) =
      __$$_SplashStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<PageRouteInfo> routeOption, int? delayInMilliseconds});
}

/// @nodoc
class __$$_SplashStateCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_SplashState>
    implements _$$_SplashStateCopyWith<$Res> {
  __$$_SplashStateCopyWithImpl(
      _$_SplashState _value, $Res Function(_$_SplashState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeOption = null,
    Object? delayInMilliseconds = freezed,
  }) {
    return _then(_$_SplashState(
      routeOption: null == routeOption
          ? _value.routeOption
          : routeOption // ignore: cast_nullable_to_non_nullable
              as Option<PageRouteInfo>,
      delayInMilliseconds: freezed == delayInMilliseconds
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
            other is _$_SplashState &&
            (identical(other.routeOption, routeOption) ||
                other.routeOption == routeOption) &&
            (identical(other.delayInMilliseconds, delayInMilliseconds) ||
                other.delayInMilliseconds == delayInMilliseconds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, routeOption, delayInMilliseconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashStateCopyWith<_$_SplashState> get copyWith =>
      __$$_SplashStateCopyWithImpl<_$_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  const factory _SplashState(
      {required final Option<PageRouteInfo> routeOption,
      final int? delayInMilliseconds}) = _$_SplashState;

  @override
  Option<PageRouteInfo> get routeOption;
  @override
  int? get delayInMilliseconds;
  @override
  @JsonKey(ignore: true)
  _$$_SplashStateCopyWith<_$_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
