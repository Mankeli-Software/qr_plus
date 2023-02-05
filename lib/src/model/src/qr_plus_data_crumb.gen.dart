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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$UnknownQrPlusDataCrumbCopyWith<$Res> {
  factory _$$UnknownQrPlusDataCrumbCopyWith(_$UnknownQrPlusDataCrumb value,
          $Res Function(_$UnknownQrPlusDataCrumb) then) =
      __$$UnknownQrPlusDataCrumbCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownQrPlusDataCrumbCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$UnknownQrPlusDataCrumb>
    implements _$$UnknownQrPlusDataCrumbCopyWith<$Res> {
  __$$UnknownQrPlusDataCrumbCopyWithImpl(_$UnknownQrPlusDataCrumb _value,
      $Res Function(_$UnknownQrPlusDataCrumb) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnknownQrPlusDataCrumb extends UnknownQrPlusDataCrumb {
  const _$UnknownQrPlusDataCrumb({final String? $type})
      : $type = $type ?? 'unknown',
        super._();

  factory _$UnknownQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =>
      _$$UnknownQrPlusDataCrumbFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusDataCrumb.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownQrPlusDataCrumb);
  }

  @JsonKey(ignore: true)
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
    return _$$UnknownQrPlusDataCrumbToJson(
      this,
    );
  }
}

abstract class UnknownQrPlusDataCrumb extends QrPlusDataCrumb {
  const factory UnknownQrPlusDataCrumb() = _$UnknownQrPlusDataCrumb;
  const UnknownQrPlusDataCrumb._() : super._();

  factory UnknownQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$UnknownQrPlusDataCrumb.fromJson;
}

/// @nodoc
abstract class _$$AuthenticQrPlusDataCrumbCopyWith<$Res> {
  factory _$$AuthenticQrPlusDataCrumbCopyWith(_$AuthenticQrPlusDataCrumb value,
          $Res Function(_$AuthenticQrPlusDataCrumb) then) =
      __$$AuthenticQrPlusDataCrumbCopyWithImpl<$Res>;
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
class __$$AuthenticQrPlusDataCrumbCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$AuthenticQrPlusDataCrumb>
    implements _$$AuthenticQrPlusDataCrumbCopyWith<$Res> {
  __$$AuthenticQrPlusDataCrumbCopyWithImpl(_$AuthenticQrPlusDataCrumb _value,
      $Res Function(_$AuthenticQrPlusDataCrumb) _then)
      : super(_value, _then);

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
    return _then(_$AuthenticQrPlusDataCrumb(
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
class _$AuthenticQrPlusDataCrumb extends AuthenticQrPlusDataCrumb {
  const _$AuthenticQrPlusDataCrumb(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'authentic',
        super._();

  factory _$AuthenticQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticQrPlusDataCrumbFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticQrPlusDataCrumb &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticQrPlusDataCrumbCopyWith<_$AuthenticQrPlusDataCrumb>
      get copyWith =>
          __$$AuthenticQrPlusDataCrumbCopyWithImpl<_$AuthenticQrPlusDataCrumb>(
              this, _$identity);

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
    return _$$AuthenticQrPlusDataCrumbToJson(
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
      required final int crumbs}) = _$AuthenticQrPlusDataCrumb;
  const AuthenticQrPlusDataCrumb._() : super._();

  factory AuthenticQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$AuthenticQrPlusDataCrumb.fromJson;

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
  @JsonKey(ignore: true)
  _$$AuthenticQrPlusDataCrumbCopyWith<_$AuthenticQrPlusDataCrumb>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoNetworkQrPlusDataCrumbCopyWith<$Res> {
  factory _$$NoNetworkQrPlusDataCrumbCopyWith(_$NoNetworkQrPlusDataCrumb value,
          $Res Function(_$NoNetworkQrPlusDataCrumb) then) =
      __$$NoNetworkQrPlusDataCrumbCopyWithImpl<$Res>;
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
class __$$NoNetworkQrPlusDataCrumbCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res, _$NoNetworkQrPlusDataCrumb>
    implements _$$NoNetworkQrPlusDataCrumbCopyWith<$Res> {
  __$$NoNetworkQrPlusDataCrumbCopyWithImpl(_$NoNetworkQrPlusDataCrumb _value,
      $Res Function(_$NoNetworkQrPlusDataCrumb) _then)
      : super(_value, _then);

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
    return _then(_$NoNetworkQrPlusDataCrumb(
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
class _$NoNetworkQrPlusDataCrumb extends NoNetworkQrPlusDataCrumb {
  const _$NoNetworkQrPlusDataCrumb(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'noNetwork',
        super._();

  factory _$NoNetworkQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =>
      _$$NoNetworkQrPlusDataCrumbFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoNetworkQrPlusDataCrumb &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoNetworkQrPlusDataCrumbCopyWith<_$NoNetworkQrPlusDataCrumb>
      get copyWith =>
          __$$NoNetworkQrPlusDataCrumbCopyWithImpl<_$NoNetworkQrPlusDataCrumb>(
              this, _$identity);

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
    return _$$NoNetworkQrPlusDataCrumbToJson(
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
      required final int crumbs}) = _$NoNetworkQrPlusDataCrumb;
  const NoNetworkQrPlusDataCrumb._() : super._();

  factory NoNetworkQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$NoNetworkQrPlusDataCrumb.fromJson;

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
  @JsonKey(ignore: true)
  _$$NoNetworkQrPlusDataCrumbCopyWith<_$NoNetworkQrPlusDataCrumb>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenRecordingQrPlusDataCrumbCopyWith<$Res> {
  factory _$$ScreenRecordingQrPlusDataCrumbCopyWith(
          _$ScreenRecordingQrPlusDataCrumb value,
          $Res Function(_$ScreenRecordingQrPlusDataCrumb) then) =
      __$$ScreenRecordingQrPlusDataCrumbCopyWithImpl<$Res>;
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
class __$$ScreenRecordingQrPlusDataCrumbCopyWithImpl<$Res>
    extends _$QrPlusDataCrumbCopyWithImpl<$Res,
        _$ScreenRecordingQrPlusDataCrumb>
    implements _$$ScreenRecordingQrPlusDataCrumbCopyWith<$Res> {
  __$$ScreenRecordingQrPlusDataCrumbCopyWithImpl(
      _$ScreenRecordingQrPlusDataCrumb _value,
      $Res Function(_$ScreenRecordingQrPlusDataCrumb) _then)
      : super(_value, _then);

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
    return _then(_$ScreenRecordingQrPlusDataCrumb(
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
class _$ScreenRecordingQrPlusDataCrumb extends ScreenRecordingQrPlusDataCrumb {
  const _$ScreenRecordingQrPlusDataCrumb(
      {required this.uid,
      required this.data,
      required this.mode,
      required this.timestamp,
      required this.index,
      required this.crumbs,
      final String? $type})
      : $type = $type ?? 'screenRecording',
        super._();

  factory _$ScreenRecordingQrPlusDataCrumb.fromJson(
          Map<String, dynamic> json) =>
      _$$ScreenRecordingQrPlusDataCrumbFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenRecordingQrPlusDataCrumb &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, data, mode, timestamp, index, crumbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenRecordingQrPlusDataCrumbCopyWith<_$ScreenRecordingQrPlusDataCrumb>
      get copyWith => __$$ScreenRecordingQrPlusDataCrumbCopyWithImpl<
          _$ScreenRecordingQrPlusDataCrumb>(this, _$identity);

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
    return _$$ScreenRecordingQrPlusDataCrumbToJson(
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
      required final int crumbs}) = _$ScreenRecordingQrPlusDataCrumb;
  const ScreenRecordingQrPlusDataCrumb._() : super._();

  factory ScreenRecordingQrPlusDataCrumb.fromJson(Map<String, dynamic> json) =
      _$ScreenRecordingQrPlusDataCrumb.fromJson;

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
  @JsonKey(ignore: true)
  _$$ScreenRecordingQrPlusDataCrumbCopyWith<_$ScreenRecordingQrPlusDataCrumb>
      get copyWith => throw _privateConstructorUsedError;
}
