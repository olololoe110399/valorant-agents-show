// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgentListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(List<Agent> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppException exception)? failure,
    TResult? Function(List<Agent> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(List<Agent> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgentListInitial value) initial,
    required TResult Function(AgentListLoading value) loading,
    required TResult Function(AgentListFailure value) failure,
    required TResult Function(AgentListSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgentListInitial value)? initial,
    TResult? Function(AgentListLoading value)? loading,
    TResult? Function(AgentListFailure value)? failure,
    TResult? Function(AgentListSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgentListInitial value)? initial,
    TResult Function(AgentListLoading value)? loading,
    TResult Function(AgentListFailure value)? failure,
    TResult Function(AgentListSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentListStateCopyWith<$Res> {
  factory $AgentListStateCopyWith(
          AgentListState value, $Res Function(AgentListState) then) =
      _$AgentListStateCopyWithImpl<$Res, AgentListState>;
}

/// @nodoc
class _$AgentListStateCopyWithImpl<$Res, $Val extends AgentListState>
    implements $AgentListStateCopyWith<$Res> {
  _$AgentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AgentListInitialCopyWith<$Res> {
  factory _$$AgentListInitialCopyWith(
          _$AgentListInitial value, $Res Function(_$AgentListInitial) then) =
      __$$AgentListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AgentListInitialCopyWithImpl<$Res>
    extends _$AgentListStateCopyWithImpl<$Res, _$AgentListInitial>
    implements _$$AgentListInitialCopyWith<$Res> {
  __$$AgentListInitialCopyWithImpl(
      _$AgentListInitial _value, $Res Function(_$AgentListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AgentListInitial implements AgentListInitial {
  const _$AgentListInitial();

  @override
  String toString() {
    return 'AgentListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AgentListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(List<Agent> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppException exception)? failure,
    TResult? Function(List<Agent> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(List<Agent> data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgentListInitial value) initial,
    required TResult Function(AgentListLoading value) loading,
    required TResult Function(AgentListFailure value) failure,
    required TResult Function(AgentListSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgentListInitial value)? initial,
    TResult? Function(AgentListLoading value)? loading,
    TResult? Function(AgentListFailure value)? failure,
    TResult? Function(AgentListSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgentListInitial value)? initial,
    TResult Function(AgentListLoading value)? loading,
    TResult Function(AgentListFailure value)? failure,
    TResult Function(AgentListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AgentListInitial implements AgentListState {
  const factory AgentListInitial() = _$AgentListInitial;
}

/// @nodoc
abstract class _$$AgentListLoadingCopyWith<$Res> {
  factory _$$AgentListLoadingCopyWith(
          _$AgentListLoading value, $Res Function(_$AgentListLoading) then) =
      __$$AgentListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AgentListLoadingCopyWithImpl<$Res>
    extends _$AgentListStateCopyWithImpl<$Res, _$AgentListLoading>
    implements _$$AgentListLoadingCopyWith<$Res> {
  __$$AgentListLoadingCopyWithImpl(
      _$AgentListLoading _value, $Res Function(_$AgentListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AgentListLoading implements AgentListLoading {
  const _$AgentListLoading();

  @override
  String toString() {
    return 'AgentListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AgentListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(List<Agent> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppException exception)? failure,
    TResult? Function(List<Agent> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(List<Agent> data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgentListInitial value) initial,
    required TResult Function(AgentListLoading value) loading,
    required TResult Function(AgentListFailure value) failure,
    required TResult Function(AgentListSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgentListInitial value)? initial,
    TResult? Function(AgentListLoading value)? loading,
    TResult? Function(AgentListFailure value)? failure,
    TResult? Function(AgentListSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgentListInitial value)? initial,
    TResult Function(AgentListLoading value)? loading,
    TResult Function(AgentListFailure value)? failure,
    TResult Function(AgentListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AgentListLoading implements AgentListState {
  const factory AgentListLoading() = _$AgentListLoading;
}

/// @nodoc
abstract class _$$AgentListFailureCopyWith<$Res> {
  factory _$$AgentListFailureCopyWith(
          _$AgentListFailure value, $Res Function(_$AgentListFailure) then) =
      __$$AgentListFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException exception});
}

/// @nodoc
class __$$AgentListFailureCopyWithImpl<$Res>
    extends _$AgentListStateCopyWithImpl<$Res, _$AgentListFailure>
    implements _$$AgentListFailureCopyWith<$Res> {
  __$$AgentListFailureCopyWithImpl(
      _$AgentListFailure _value, $Res Function(_$AgentListFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AgentListFailure(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$AgentListFailure implements AgentListFailure {
  const _$AgentListFailure(this.exception);

  @override
  final AppException exception;

  @override
  String toString() {
    return 'AgentListState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentListFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentListFailureCopyWith<_$AgentListFailure> get copyWith =>
      __$$AgentListFailureCopyWithImpl<_$AgentListFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(List<Agent> data) success,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppException exception)? failure,
    TResult? Function(List<Agent> data)? success,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(List<Agent> data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgentListInitial value) initial,
    required TResult Function(AgentListLoading value) loading,
    required TResult Function(AgentListFailure value) failure,
    required TResult Function(AgentListSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgentListInitial value)? initial,
    TResult? Function(AgentListLoading value)? loading,
    TResult? Function(AgentListFailure value)? failure,
    TResult? Function(AgentListSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgentListInitial value)? initial,
    TResult Function(AgentListLoading value)? loading,
    TResult Function(AgentListFailure value)? failure,
    TResult Function(AgentListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AgentListFailure implements AgentListState {
  const factory AgentListFailure(final AppException exception) =
      _$AgentListFailure;

  AppException get exception;
  @JsonKey(ignore: true)
  _$$AgentListFailureCopyWith<_$AgentListFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AgentListSuccessCopyWith<$Res> {
  factory _$$AgentListSuccessCopyWith(
          _$AgentListSuccess value, $Res Function(_$AgentListSuccess) then) =
      __$$AgentListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Agent> data});
}

/// @nodoc
class __$$AgentListSuccessCopyWithImpl<$Res>
    extends _$AgentListStateCopyWithImpl<$Res, _$AgentListSuccess>
    implements _$$AgentListSuccessCopyWith<$Res> {
  __$$AgentListSuccessCopyWithImpl(
      _$AgentListSuccess _value, $Res Function(_$AgentListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AgentListSuccess(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Agent>,
    ));
  }
}

/// @nodoc

class _$AgentListSuccess implements AgentListSuccess {
  const _$AgentListSuccess(final List<Agent> data) : _data = data;

  final List<Agent> _data;
  @override
  List<Agent> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AgentListState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentListSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentListSuccessCopyWith<_$AgentListSuccess> get copyWith =>
      __$$AgentListSuccessCopyWithImpl<_$AgentListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(List<Agent> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppException exception)? failure,
    TResult? Function(List<Agent> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(List<Agent> data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgentListInitial value) initial,
    required TResult Function(AgentListLoading value) loading,
    required TResult Function(AgentListFailure value) failure,
    required TResult Function(AgentListSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgentListInitial value)? initial,
    TResult? Function(AgentListLoading value)? loading,
    TResult? Function(AgentListFailure value)? failure,
    TResult? Function(AgentListSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgentListInitial value)? initial,
    TResult Function(AgentListLoading value)? loading,
    TResult Function(AgentListFailure value)? failure,
    TResult Function(AgentListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AgentListSuccess implements AgentListState {
  const factory AgentListSuccess(final List<Agent> data) = _$AgentListSuccess;

  List<Agent> get data;
  @JsonKey(ignore: true)
  _$$AgentListSuccessCopyWith<_$AgentListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
