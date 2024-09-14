// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_plus_data_crumb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrPlusDataCrumb _$QrPlusDataCrumbFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unknown':
      return UnknownQrPlusDataCrumb.fromJson(json);
    case 'authentic':
      return AuthenticQrPlusDataCrumb.fromJson(json);
    case 'noNetwork':
      return NoNetworkQrPlusDataCrumb.fromJson(json);
    case 'screenRecording':
      return ScreenRecordingQrPlusDataCrumb.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'QrPlusDataCrumb',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$QrPlusDataCrumb {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        authentic,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        noNetwork,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusDataCrumb value) unknown,
    required TResult Function(AuthenticQrPlusDataCrumb value) authentic,
    required TResult Function(NoNetworkQrPlusDataCrumb value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusDataCrumb value)
        screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult? Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult? Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this QrPlusDataCrumb to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusDataCrumbCopyWith<$Res> {
  factory $QrPlusDataCrumbCopyWith(
          QrPlusDataCrumb value, $Res Function(QrPlusDataCrumb) then) =
      _$QrPlusDataCrumbCopyWithImpl<$Res, QrPlusDataCrumb>;
}

/// @nodoc
class _$QrPlusDataCrumbCopyWithImpl<$Res, $Val extends QrPlusDataCrumb>
    implements $QrPlusDataCrumbCopyWith<$Res> {
  _$QrPlusDataCrumbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnknownQrPlusDataCrumbImplCopyWith<$Res> {
  factory _$$UnknownQrPlusDataCrumbImplCopyWith(
          _$UnknownQrPlusDataCrumbImpl value,
          $Res Function(_$UnknownQrPlusDataCrumbImpl) then) =
      __$$UnknownQrPlusDataCrumbImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownQrPlusDataCrumbImplCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$UnknownQrPlusDataCrumbImpl>
    implements _$$UnknownQrPlusDataCrumbImplCopyWith<$Res> {
  __$$UnknownQrPlusDataCrumbImplCopyWithImpl(
      _$UnknownQrPlusDataCrumbImpl _value,
      $Res Function(_$UnknownQrPlusDataCrumbImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UnknownQrPlusDataCrumbImpl extends UnknownQrPlusDataCrumb {
  const _$UnknownQrPlusDataCrumbImpl({final String? $type})
      : $type = $type ?? 'unknown',
        super._();

  factory _$UnknownQrPlusDataCrumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownQrPlusDataCrumbImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusDataCrumb.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownQrPlusDataCrumbImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        authentic,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        noNetwork,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        screenRecording,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusDataCrumb value) unknown,
    required TResult Function(AuthenticQrPlusDataCrumb value) authentic,
    required TResult Function(NoNetworkQrPlusDataCrumb value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusDataCrumb value)
        screenRecording,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult? Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult? Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownQrPlusDataCrumbImplToJson(
      this,
    );
  }
}

abstract class UnknownQrPlusDataCrumb extends QrPlusDataCrumb {
  const factory UnknownQrPlusDataCrumb() = _$UnknownQrPlusDataCrumbImpl;
  const UnknownQrPlusDataCrumb._() : super._();

  factory UnknownQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$UnknownQrPlusDataCrumbImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthenticQrPlusDataCrumbImplCopyWith<$Res> {
  factory _$$AuthenticQrPlusDataCrumbImplCopyWith(
          _$AuthenticQrPlusDataCrumbImpl value,
          $Res Function(_$AuthenticQrPlusDataCrumbImpl) then) =
      __$$AuthenticQrPlusDataCrumbImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uid,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      int index,
      int crumbs});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$AuthenticQrPlusDataCrumbImplCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$AuthenticQrPlusDataCrumbImpl>
    implements _$$AuthenticQrPlusDataCrumbImplCopyWith<$Res> {
  __$$AuthenticQrPlusDataCrumbImplCopyWithImpl(
      _$AuthenticQrPlusDataCrumbImpl _value,
      $Res Function(_$AuthenticQrPlusDataCrumbImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = null,
    Object? crumbs = null,
  }) {
    return _then(_$AuthenticQrPlusDataCrumbImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrPlusModeCopyWith<$Res> get mode {
    return $QrPlusModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticQrPlusDataCrumbImpl extends AuthenticQrPlusDataCrumb {
  const _$AuthenticQrPlusDataCrumbImpl(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'authentic',
        super._();

  factory _$AuthenticQrPlusDataCrumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticQrPlusDataCrumbImplFromJson(json);

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  @override
  final String uid;

  /// The actuall piece of data that the package user wants to transfer.
  @override
  final String data;

  /// The mode used to create this crumb.
  @override
  final QrPlusMode mode;

  /// The timestamp when this crumb was created.
  @override
  final DateTime timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  @override
  final int index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  @override
  final int crumbs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusDataCrumb.authentic(uid: $uid, data: $data, mode: $mode, timestamp: $timestamp, index: $index, crumbs: $crumbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticQrPlusDataCrumbImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticQrPlusDataCrumbImplCopyWith<_$AuthenticQrPlusDataCrumbImpl>
      get copyWith => __$$AuthenticQrPlusDataCrumbImplCopyWithImpl<
          _$AuthenticQrPlusDataCrumbImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        authentic,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        noNetwork,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        screenRecording,
  }) {
    return authentic(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
  }) {
    return authentic?.call(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (authentic != null) {
      return authentic(uid, data, mode, timestamp, index, crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusDataCrumb value) unknown,
    required TResult Function(AuthenticQrPlusDataCrumb value) authentic,
    required TResult Function(NoNetworkQrPlusDataCrumb value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusDataCrumb value)
        screenRecording,
  }) {
    return authentic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult? Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult? Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
  }) {
    return authentic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
    required TResult orElse(),
  }) {
    if (authentic != null) {
      return authentic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticQrPlusDataCrumbImplToJson(
      this,
    );
  }
}

abstract class AuthenticQrPlusDataCrumb extends QrPlusDataCrumb {
  const factory AuthenticQrPlusDataCrumb(
      {required final String uid,
      required final String data,
      required final QrPlusMode mode,
      required final DateTime timestamp,
      required final int index,
      required final int crumbs}) = _$AuthenticQrPlusDataCrumbImpl;
  const AuthenticQrPlusDataCrumb._() : super._();

  factory AuthenticQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$AuthenticQrPlusDataCrumbImpl.fromJson;

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  String get uid;

  /// The actuall piece of data that the package user wants to transfer.
  String get data;

  /// The mode used to create this crumb.
  QrPlusMode get mode;

  /// The timestamp when this crumb was created.
  DateTime get timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  int get index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  int get crumbs;

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticQrPlusDataCrumbImplCopyWith<_$AuthenticQrPlusDataCrumbImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoNetworkQrPlusDataCrumbImplCopyWith<$Res> {
  factory _$$NoNetworkQrPlusDataCrumbImplCopyWith(
          _$NoNetworkQrPlusDataCrumbImpl value,
          $Res Function(_$NoNetworkQrPlusDataCrumbImpl) then) =
      __$$NoNetworkQrPlusDataCrumbImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uid,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      int index,
      int crumbs});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$NoNetworkQrPlusDataCrumbImplCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$NoNetworkQrPlusDataCrumbImpl>
    implements _$$NoNetworkQrPlusDataCrumbImplCopyWith<$Res> {
  __$$NoNetworkQrPlusDataCrumbImplCopyWithImpl(
      _$NoNetworkQrPlusDataCrumbImpl _value,
      $Res Function(_$NoNetworkQrPlusDataCrumbImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = null,
    Object? crumbs = null,
  }) {
    return _then(_$NoNetworkQrPlusDataCrumbImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrPlusModeCopyWith<$Res> get mode {
    return $QrPlusModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NoNetworkQrPlusDataCrumbImpl extends NoNetworkQrPlusDataCrumb {
  const _$NoNetworkQrPlusDataCrumbImpl(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'noNetwork',
        super._();

  factory _$NoNetworkQrPlusDataCrumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoNetworkQrPlusDataCrumbImplFromJson(json);

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  @override
  final String uid;

  /// The actuall piece of data that the package user wants to transfer.
  @override
  final String data;

  /// The mode used to create this crumb.
  @override
  final QrPlusMode mode;

  /// The timestamp when this crumb was created.
  @override
  final DateTime timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  @override
  final int index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  @override
  final int crumbs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusDataCrumb.noNetwork(uid: $uid, data: $data, mode: $mode, timestamp: $timestamp, index: $index, crumbs: $crumbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoNetworkQrPlusDataCrumbImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoNetworkQrPlusDataCrumbImplCopyWith<_$NoNetworkQrPlusDataCrumbImpl>
      get copyWith => __$$NoNetworkQrPlusDataCrumbImplCopyWithImpl<
          _$NoNetworkQrPlusDataCrumbImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        authentic,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        noNetwork,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        screenRecording,
  }) {
    return noNetwork(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
  }) {
    return noNetwork?.call(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(uid, data, mode, timestamp, index, crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusDataCrumb value) unknown,
    required TResult Function(AuthenticQrPlusDataCrumb value) authentic,
    required TResult Function(NoNetworkQrPlusDataCrumb value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusDataCrumb value)
        screenRecording,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult? Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult? Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoNetworkQrPlusDataCrumbImplToJson(
      this,
    );
  }
}

abstract class NoNetworkQrPlusDataCrumb extends QrPlusDataCrumb {
  const factory NoNetworkQrPlusDataCrumb(
      {required final String uid,
      required final String data,
      required final QrPlusMode mode,
      required final DateTime timestamp,
      required final int index,
      required final int crumbs}) = _$NoNetworkQrPlusDataCrumbImpl;
  const NoNetworkQrPlusDataCrumb._() : super._();

  factory NoNetworkQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$NoNetworkQrPlusDataCrumbImpl.fromJson;

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  String get uid;

  /// The actuall piece of data that the package user wants to transfer.
  String get data;

  /// The mode used to create this crumb.
  QrPlusMode get mode;

  /// The timestamp when this crumb was created.
  DateTime get timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  int get index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  int get crumbs;

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoNetworkQrPlusDataCrumbImplCopyWith<_$NoNetworkQrPlusDataCrumbImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenRecordingQrPlusDataCrumbImplCopyWith<$Res> {
  factory _$$ScreenRecordingQrPlusDataCrumbImplCopyWith(
          _$ScreenRecordingQrPlusDataCrumbImpl value,
          $Res Function(_$ScreenRecordingQrPlusDataCrumbImpl) then) =
      __$$ScreenRecordingQrPlusDataCrumbImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uid,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      int index,
      int crumbs});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$ScreenRecordingQrPlusDataCrumbImplCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res,
        _$ScreenRecordingQrPlusDataCrumbImpl>
    implements _$$ScreenRecordingQrPlusDataCrumbImplCopyWith<$Res> {
  __$$ScreenRecordingQrPlusDataCrumbImplCopyWithImpl(
      _$ScreenRecordingQrPlusDataCrumbImpl _value,
      $Res Function(_$ScreenRecordingQrPlusDataCrumbImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = null,
    Object? crumbs = null,
  }) {
    return _then(_$ScreenRecordingQrPlusDataCrumbImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrPlusModeCopyWith<$Res> get mode {
    return $QrPlusModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenRecordingQrPlusDataCrumbImpl
    extends ScreenRecordingQrPlusDataCrumb {
  const _$ScreenRecordingQrPlusDataCrumbImpl(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'screenRecording',
        super._();

  factory _$ScreenRecordingQrPlusDataCrumbImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScreenRecordingQrPlusDataCrumbImplFromJson(json);

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  @override
  final String uid;

  /// The actuall piece of data that the package user wants to transfer.
  @override
  final String data;

  /// The mode used to create this crumb.
  @override
  final QrPlusMode mode;

  /// The timestamp when this crumb was created.
  @override
  final DateTime timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  @override
  final int index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  @override
  final int crumbs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusDataCrumb.screenRecording(uid: $uid, data: $data, mode: $mode, timestamp: $timestamp, index: $index, crumbs: $crumbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenRecordingQrPlusDataCrumbImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenRecordingQrPlusDataCrumbImplCopyWith<
          _$ScreenRecordingQrPlusDataCrumbImpl>
      get copyWith => __$$ScreenRecordingQrPlusDataCrumbImplCopyWithImpl<
          _$ScreenRecordingQrPlusDataCrumbImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        authentic,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        noNetwork,
    required TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)
        screenRecording,
  }) {
    return screenRecording(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult? Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
  }) {
    return screenRecording?.call(uid, data, mode, timestamp, index, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        authentic,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        noNetwork,
    TResult Function(String uid, String data, QrPlusMode mode,
            DateTime timestamp, int index, int crumbs)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (screenRecording != null) {
      return screenRecording(uid, data, mode, timestamp, index, crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusDataCrumb value) unknown,
    required TResult Function(AuthenticQrPlusDataCrumb value) authentic,
    required TResult Function(NoNetworkQrPlusDataCrumb value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusDataCrumb value)
        screenRecording,
  }) {
    return screenRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult? Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult? Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
  }) {
    return screenRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusDataCrumb value)? unknown,
    TResult Function(AuthenticQrPlusDataCrumb value)? authentic,
    TResult Function(NoNetworkQrPlusDataCrumb value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusDataCrumb value)? screenRecording,
    required TResult orElse(),
  }) {
    if (screenRecording != null) {
      return screenRecording(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenRecordingQrPlusDataCrumbImplToJson(
      this,
    );
  }
}

abstract class ScreenRecordingQrPlusDataCrumb extends QrPlusDataCrumb {
  const factory ScreenRecordingQrPlusDataCrumb(
      {required final String uid,
      required final String data,
      required final QrPlusMode mode,
      required final DateTime timestamp,
      required final int index,
      required final int crumbs}) = _$ScreenRecordingQrPlusDataCrumbImpl;
  const ScreenRecordingQrPlusDataCrumb._() : super._();

  factory ScreenRecordingQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$ScreenRecordingQrPlusDataCrumbImpl.fromJson;

  /// A unique identifier for this data. Note: the identifier is the same
  /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
  String get uid;

  /// The actuall piece of data that the package user wants to transfer.
  String get data;

  /// The mode used to create this crumb.
  QrPlusMode get mode;

  /// The timestamp when this crumb was created.
  DateTime get timestamp;

  /// The index of this crumb within the [QrPlusData]s crumbs.
  int get index;

  /// The total number of crumbs within the [QrPlusData]. This data can be useful
  /// when determining if the [QrPlusData] is complete.
  int get crumbs;

  /// Create a copy of QrPlusDataCrumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenRecordingQrPlusDataCrumbImplCopyWith<
          _$ScreenRecordingQrPlusDataCrumbImpl>
      get copyWith => throw _privateConstructorUsedError;
}
