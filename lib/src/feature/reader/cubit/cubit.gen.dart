// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReaderState {
  String? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReaderStateCopyWith<ReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderStateCopyWith<$Res> {
  factory $ReaderStateCopyWith(
          ReaderState value, $Res Function(ReaderState) then) =
      _$ReaderStateCopyWithImpl<$Res, ReaderState>;
  @useResult
  $Res call({String? data});
}

/// @nodoc
class _$ReaderStateCopyWithImpl<$Res, $Val extends ReaderState>
    implements $ReaderStateCopyWith<$Res> {
  _$ReaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReaderStateCopyWith<$Res>
    implements $ReaderStateCopyWith<$Res> {
  factory _$$_ReaderStateCopyWith(
          _$_ReaderState value, $Res Function(_$_ReaderState) then) =
      __$$_ReaderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data});
}

/// @nodoc
class __$$_ReaderStateCopyWithImpl<$Res>
    extends _$ReaderStateCopyWithImpl<$Res, _$_ReaderState>
    implements _$$_ReaderStateCopyWith<$Res> {
  __$$_ReaderStateCopyWithImpl(
      _$_ReaderState _value, $Res Function(_$_ReaderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ReaderState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ReaderState implements _ReaderState {
  const _$_ReaderState({this.data});

  @override
  final String? data;

  @override
  String toString() {
    return 'ReaderState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReaderState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReaderStateCopyWith<_$_ReaderState> get copyWith =>
      __$$_ReaderStateCopyWithImpl<_$_ReaderState>(this, _$identity);
}

abstract class _ReaderState implements ReaderState {
  const factory _ReaderState({final String? data}) = _$_ReaderState;

  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ReaderStateCopyWith<_$_ReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
