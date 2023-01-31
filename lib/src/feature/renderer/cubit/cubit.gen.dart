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
mixin _$RendererState {
  String get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RendererStateCopyWith<RendererState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RendererStateCopyWith<$Res> {
  factory $RendererStateCopyWith(
          RendererState value, $Res Function(RendererState) then) =
      _$RendererStateCopyWithImpl<$Res, RendererState>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$RendererStateCopyWithImpl<$Res, $Val extends RendererState>
    implements $RendererStateCopyWith<$Res> {
  _$RendererStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RendererStateCopyWith<$Res>
    implements $RendererStateCopyWith<$Res> {
  factory _$$_RendererStateCopyWith(
          _$_RendererState value, $Res Function(_$_RendererState) then) =
      __$$_RendererStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_RendererStateCopyWithImpl<$Res>
    extends _$RendererStateCopyWithImpl<$Res, _$_RendererState>
    implements _$$_RendererStateCopyWith<$Res> {
  __$$_RendererStateCopyWithImpl(
      _$_RendererState _value, $Res Function(_$_RendererState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_RendererState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RendererState implements _RendererState {
  const _$_RendererState({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'RendererState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RendererState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RendererStateCopyWith<_$_RendererState> get copyWith =>
      __$$_RendererStateCopyWithImpl<_$_RendererState>(this, _$identity);
}

abstract class _RendererState implements RendererState {
  const factory _RendererState({required final String data}) = _$_RendererState;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_RendererStateCopyWith<_$_RendererState> get copyWith =>
      throw _privateConstructorUsedError;
}
