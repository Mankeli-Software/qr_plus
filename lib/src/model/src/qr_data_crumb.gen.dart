// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_data_crumb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QrDataCrumb _$QrDataCrumbFromJson(Map<String, dynamic> json) {
  return _QrDataCrumb.fromJson(json);
}

/// @nodoc
mixin _$QrDataCrumb {
  /// The actual data being transferred
  String? get data => throw _privateConstructorUsedError;

  /// NTP offsetted timestamp of when the [QrDataCrumb] was created
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Index of this [QrDataCrumb] within [QrData]
  int? get index => throw _privateConstructorUsedError;

  /// Time to live of this [QrDataCrumb] in milliseconds
  Duration? get ttl => throw _privateConstructorUsedError;

  /// The security mode of the [QrDataCrumb]
  QrPlusMode? get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrDataCrumbCopyWith<QrDataCrumb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrDataCrumbCopyWith<$Res> {
  factory $QrDataCrumbCopyWith(
          QrDataCrumb value, $Res Function(QrDataCrumb) then) =
      _$QrDataCrumbCopyWithImpl<$Res, QrDataCrumb>;
  @useResult
  $Res call(
      {String? data,
      DateTime? timestamp,
      int? index,
      Duration? ttl,
      QrPlusMode? mode});

  $QrPlusModeCopyWith<$Res>? get mode;
}

/// @nodoc
class _$QrDataCrumbCopyWithImpl<$Res, $Val extends QrDataCrumb>
    implements $QrDataCrumbCopyWith<$Res> {
  _$QrDataCrumbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
    Object? index = freezed,
    Object? ttl = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QrPlusModeCopyWith<$Res>? get mode {
    if (_value.mode == null) {
      return null;
    }

    return $QrPlusModeCopyWith<$Res>(_value.mode!, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QrDataCrumbCopyWith<$Res>
    implements $QrDataCrumbCopyWith<$Res> {
  factory _$$_QrDataCrumbCopyWith(
          _$_QrDataCrumb value, $Res Function(_$_QrDataCrumb) then) =
      __$$_QrDataCrumbCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? data,
      DateTime? timestamp,
      int? index,
      Duration? ttl,
      QrPlusMode? mode});

  @override
  $QrPlusModeCopyWith<$Res>? get mode;
}

/// @nodoc
class __$$_QrDataCrumbCopyWithImpl<$Res>
    extends _$QrDataCrumbCopyWithImpl<$Res, _$_QrDataCrumb>
    implements _$$_QrDataCrumbCopyWith<$Res> {
  __$$_QrDataCrumbCopyWithImpl(
      _$_QrDataCrumb _value, $Res Function(_$_QrDataCrumb) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
    Object? index = freezed,
    Object? ttl = freezed,
    Object? mode = freezed,
  }) {
    return _then(_$_QrDataCrumb(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QrDataCrumb extends _QrDataCrumb {
  _$_QrDataCrumb({this.data, this.timestamp, this.index, this.ttl, this.mode})
      : super._();

  factory _$_QrDataCrumb.fromJson(Map<String, dynamic> json) =>
      _$$_QrDataCrumbFromJson(json);

  /// The actual data being transferred
  @override
  final String? data;

  /// NTP offsetted timestamp of when the [QrDataCrumb] was created
  @override
  final DateTime? timestamp;

  /// Index of this [QrDataCrumb] within [QrData]
  @override
  final int? index;

  /// Time to live of this [QrDataCrumb] in milliseconds
  @override
  final Duration? ttl;

  /// The security mode of the [QrDataCrumb]
  @override
  final QrPlusMode? mode;

  @override
  String toString() {
    return 'QrDataCrumb(data: $data, timestamp: $timestamp, index: $index, ttl: $ttl, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrDataCrumb &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, timestamp, index, ttl, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrDataCrumbCopyWith<_$_QrDataCrumb> get copyWith =>
      __$$_QrDataCrumbCopyWithImpl<_$_QrDataCrumb>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QrDataCrumbToJson(
      this,
    );
  }
}

abstract class _QrDataCrumb extends QrDataCrumb {
  factory _QrDataCrumb(
      {final String? data,
      final DateTime? timestamp,
      final int? index,
      final Duration? ttl,
      final QrPlusMode? mode}) = _$_QrDataCrumb;
  _QrDataCrumb._() : super._();

  factory _QrDataCrumb.fromJson(Map<String, dynamic> json) =
      _$_QrDataCrumb.fromJson;

  @override

  /// The actual data being transferred
  String? get data;
  @override

  /// NTP offsetted timestamp of when the [QrDataCrumb] was created
  DateTime? get timestamp;
  @override

  /// Index of this [QrDataCrumb] within [QrData]
  int? get index;
  @override

  /// Time to live of this [QrDataCrumb] in milliseconds
  Duration? get ttl;
  @override

  /// The security mode of the [QrDataCrumb]
  QrPlusMode? get mode;
  @override
  @JsonKey(ignore: true)
  _$$_QrDataCrumbCopyWith<_$_QrDataCrumb> get copyWith =>
      throw _privateConstructorUsedError;
}
