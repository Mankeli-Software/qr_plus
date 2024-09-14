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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrPlusReaderState {
  /// A cache of read QR codes.
  Map<String, QrPlusData?> get cache => throw _privateConstructorUsedError;

  /// Create a copy of QrPlusReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrPlusReaderStateCopyWith<QrPlusReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusReaderStateCopyWith<$Res> {
  factory $QrPlusReaderStateCopyWith(
          QrPlusReaderState value, $Res Function(QrPlusReaderState) then) =
      _$QrPlusReaderStateCopyWithImpl<$Res, QrPlusReaderState>;
  @useResult
  $Res call({Map<String, QrPlusData?> cache});
}

/// @nodoc
class _$QrPlusReaderStateCopyWithImpl<$Res, $Val extends QrPlusReaderState>
    implements $QrPlusReaderStateCopyWith<$Res> {
  _$QrPlusReaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrPlusReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, QrPlusData?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrPlusReaderStateImplCopyWith<$Res>
    implements $QrPlusReaderStateCopyWith<$Res> {
  factory _$$QrPlusReaderStateImplCopyWith(_$QrPlusReaderStateImpl value,
          $Res Function(_$QrPlusReaderStateImpl) then) =
      __$$QrPlusReaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, QrPlusData?> cache});
}

/// @nodoc
class __$$QrPlusReaderStateImplCopyWithImpl<$Res>
    extends _$QrPlusReaderStateCopyWithImpl<$Res, _$QrPlusReaderStateImpl>
    implements _$$QrPlusReaderStateImplCopyWith<$Res> {
  __$$QrPlusReaderStateImplCopyWithImpl(_$QrPlusReaderStateImpl _value,
      $Res Function(_$QrPlusReaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$QrPlusReaderStateImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, QrPlusData?>,
    ));
  }
}

/// @nodoc

class _$QrPlusReaderStateImpl implements _QrPlusReaderState {
  const _$QrPlusReaderStateImpl(
      {final Map<String, QrPlusData?> cache = const <String, QrPlusData?>{}})
      : _cache = cache;

  /// A cache of read QR codes.
  final Map<String, QrPlusData?> _cache;

  /// A cache of read QR codes.
  @override
  @JsonKey()
  Map<String, QrPlusData?> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'QrPlusReaderState(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrPlusReaderStateImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  /// Create a copy of QrPlusReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrPlusReaderStateImplCopyWith<_$QrPlusReaderStateImpl> get copyWith =>
      __$$QrPlusReaderStateImplCopyWithImpl<_$QrPlusReaderStateImpl>(
          this, _$identity);
}

abstract class _QrPlusReaderState implements QrPlusReaderState {
  const factory _QrPlusReaderState({final Map<String, QrPlusData?> cache}) =
      _$QrPlusReaderStateImpl;

  /// A cache of read QR codes.
  @override
  Map<String, QrPlusData?> get cache;

  /// Create a copy of QrPlusReaderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrPlusReaderStateImplCopyWith<_$QrPlusReaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
