// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

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
  int? get ttl => throw _privateConstructorUsedError;

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
  $Res call({String? data, DateTime? timestamp, int? index, int? ttl});
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
              as int?,
    ) as $Val);
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
  $Res call({String? data, DateTime? timestamp, int? index, int? ttl});
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QrDataCrumb extends _QrDataCrumb {
  _$_QrDataCrumb({this.data, this.timestamp, this.index, this.ttl}) : super._();

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
  final int? ttl;

  @override
  String toString() {
    return 'QrDataCrumb(data: $data, timestamp: $timestamp, index: $index, ttl: $ttl)';
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
            (identical(other.ttl, ttl) || other.ttl == ttl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, timestamp, index, ttl);

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
      final int? ttl}) = _$_QrDataCrumb;
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
  int? get ttl;
  @override
  @JsonKey(ignore: true)
  _$$_QrDataCrumbCopyWith<_$_QrDataCrumb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QrData {
  List<QrDataCrumb>? get crumbs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrDataCopyWith<QrData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrDataCopyWith<$Res> {
  factory $QrDataCopyWith(QrData value, $Res Function(QrData) then) =
      _$QrDataCopyWithImpl<$Res, QrData>;
  @useResult
  $Res call({List<QrDataCrumb> crumbs});
}

/// @nodoc
class _$QrDataCopyWithImpl<$Res, $Val extends QrData>
    implements $QrDataCopyWith<$Res> {
  _$QrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_value.copyWith(
      crumbs: null == crumbs
          ? _value.crumbs!
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteQrDataCopyWith<$Res>
    implements $QrDataCopyWith<$Res> {
  factory _$$CompleteQrDataCopyWith(
          _$CompleteQrData value, $Res Function(_$CompleteQrData) then) =
      __$$CompleteQrDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QrDataCrumb> crumbs});
}

/// @nodoc
class __$$CompleteQrDataCopyWithImpl<$Res>
    extends _$QrDataCopyWithImpl<$Res, _$CompleteQrData>
    implements _$$CompleteQrDataCopyWith<$Res> {
  __$$CompleteQrDataCopyWithImpl(
      _$CompleteQrData _value, $Res Function(_$CompleteQrData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_$CompleteQrData(
      crumbs: null == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>,
    ));
  }
}

/// @nodoc

class _$CompleteQrData extends CompleteQrData {
  _$CompleteQrData({required final List<QrDataCrumb> crumbs})
      : _crumbs = crumbs,
        super._();

  final List<QrDataCrumb> _crumbs;
  @override
  List<QrDataCrumb> get crumbs {
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crumbs);
  }

  @override
  String toString() {
    return 'QrData.complete(crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteQrData &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteQrDataCopyWith<_$CompleteQrData> get copyWith =>
      __$$CompleteQrDataCopyWithImpl<_$CompleteQrData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) {
    return complete(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) {
    return complete?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteQrData extends QrData {
  factory CompleteQrData({required final List<QrDataCrumb> crumbs}) =
      _$CompleteQrData;
  CompleteQrData._() : super._();

  @override
  List<QrDataCrumb> get crumbs;
  @override
  @JsonKey(ignore: true)
  _$$CompleteQrDataCopyWith<_$CompleteQrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncompleteQrDataCopyWith<$Res>
    implements $QrDataCopyWith<$Res> {
  factory _$$IncompleteQrDataCopyWith(
          _$IncompleteQrData value, $Res Function(_$IncompleteQrData) then) =
      __$$IncompleteQrDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QrDataCrumb>? crumbs});
}

/// @nodoc
class __$$IncompleteQrDataCopyWithImpl<$Res>
    extends _$QrDataCopyWithImpl<$Res, _$IncompleteQrData>
    implements _$$IncompleteQrDataCopyWith<$Res> {
  __$$IncompleteQrDataCopyWithImpl(
      _$IncompleteQrData _value, $Res Function(_$IncompleteQrData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = freezed,
  }) {
    return _then(_$IncompleteQrData(
      crumbs: freezed == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>?,
    ));
  }
}

/// @nodoc

class _$IncompleteQrData extends IncompleteQrData {
  _$IncompleteQrData({final List<QrDataCrumb>? crumbs})
      : _crumbs = crumbs,
        super._();

  final List<QrDataCrumb>? _crumbs;
  @override
  List<QrDataCrumb>? get crumbs {
    final value = _crumbs;
    if (value == null) return null;
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QrData.incomplete(crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncompleteQrData &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncompleteQrDataCopyWith<_$IncompleteQrData> get copyWith =>
      __$$IncompleteQrDataCopyWithImpl<_$IncompleteQrData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) {
    return incomplete(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) {
    return incomplete?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) {
    return incomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) {
    return incomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(this);
    }
    return orElse();
  }
}

abstract class IncompleteQrData extends QrData {
  factory IncompleteQrData({final List<QrDataCrumb>? crumbs}) =
      _$IncompleteQrData;
  IncompleteQrData._() : super._();

  @override
  List<QrDataCrumb>? get crumbs;
  @override
  @JsonKey(ignore: true)
  _$$IncompleteQrDataCopyWith<_$IncompleteQrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QrPlusError {
  /// Message describing the error.
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrPlusErrorCopyWith<QrPlusError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusErrorCopyWith<$Res> {
  factory $QrPlusErrorCopyWith(
          QrPlusError value, $Res Function(QrPlusError) then) =
      _$QrPlusErrorCopyWithImpl<$Res, QrPlusError>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$QrPlusErrorCopyWithImpl<$Res, $Val extends QrPlusError>
    implements $QrPlusErrorCopyWith<$Res> {
  _$QrPlusErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QrPlusErrorCopyWith<$Res>
    implements $QrPlusErrorCopyWith<$Res> {
  factory _$$_QrPlusErrorCopyWith(
          _$_QrPlusError value, $Res Function(_$_QrPlusError) then) =
      __$$_QrPlusErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_QrPlusErrorCopyWithImpl<$Res>
    extends _$QrPlusErrorCopyWithImpl<$Res, _$_QrPlusError>
    implements _$$_QrPlusErrorCopyWith<$Res> {
  __$$_QrPlusErrorCopyWithImpl(
      _$_QrPlusError _value, $Res Function(_$_QrPlusError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_QrPlusError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QrPlusError implements _QrPlusError {
  _$_QrPlusError({this.message});

  /// Message describing the error.
  @override
  final String? message;

  @override
  String toString() {
    return 'QrPlusError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrPlusError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrPlusErrorCopyWith<_$_QrPlusError> get copyWith =>
      __$$_QrPlusErrorCopyWithImpl<_$_QrPlusError>(this, _$identity);
}

abstract class _QrPlusError implements QrPlusError {
  factory _QrPlusError({final String? message}) = _$_QrPlusError;

  @override

  /// Message describing the error.
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_QrPlusErrorCopyWith<_$_QrPlusError> get copyWith =>
      throw _privateConstructorUsedError;
}
