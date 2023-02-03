// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_plus_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QrPlusData _$QrPlusDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unknown':
      return UnknownQrPlusData.fromJson(json);
    case 'crumbled':
      return CrumbledQrPlusData.fromJson(json);
    case 'authentic':
      return AuthenticQrPlusData.fromJson(json);
    case 'noNetwork':
      return NoNetworkQrPlusData.fromJson(json);
    case 'screenRecording':
      return ScreenRecordingQrPlusData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'QrPlusData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$QrPlusData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusDataCopyWith<$Res> {
  factory $QrPlusDataCopyWith(
          QrPlusData value, $Res Function(QrPlusData) then) =
      _$QrPlusDataCopyWithImpl<$Res, QrPlusData>;
}

/// @nodoc
class _$QrPlusDataCopyWithImpl<$Res, $Val extends QrPlusData>
    implements $QrPlusDataCopyWith<$Res> {
  _$QrPlusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownQrPlusDataCopyWith<$Res> {
  factory _$$UnknownQrPlusDataCopyWith(
          _$UnknownQrPlusData value, $Res Function(_$UnknownQrPlusData) then) =
      __$$UnknownQrPlusDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownQrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$UnknownQrPlusData>
    implements _$$UnknownQrPlusDataCopyWith<$Res> {
  __$$UnknownQrPlusDataCopyWithImpl(
      _$UnknownQrPlusData _value, $Res Function(_$UnknownQrPlusData) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnknownQrPlusData extends UnknownQrPlusData {
  const _$UnknownQrPlusData({final String? $type})
      : $type = $type ?? 'unknown',
        super._();

  factory _$UnknownQrPlusData.fromJson(Map<String, dynamic> json) =>
      _$$UnknownQrPlusDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusData.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownQrPlusData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
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
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownQrPlusDataToJson(
      this,
    );
  }
}

abstract class UnknownQrPlusData extends QrPlusData {
  const factory UnknownQrPlusData() = _$UnknownQrPlusData;
  const UnknownQrPlusData._() : super._();

  factory UnknownQrPlusData.fromJson(Map<String, dynamic> json) =
      _$UnknownQrPlusData.fromJson;
}

/// @nodoc
abstract class _$$CrumbledQrPlusDataCopyWith<$Res> {
  factory _$$CrumbledQrPlusDataCopyWith(_$CrumbledQrPlusData value,
          $Res Function(_$CrumbledQrPlusData) then) =
      __$$CrumbledQrPlusDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, List<QrPlusData> crumbs});
}

/// @nodoc
class __$$CrumbledQrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$CrumbledQrPlusData>
    implements _$$CrumbledQrPlusDataCopyWith<$Res> {
  __$$CrumbledQrPlusDataCopyWithImpl(
      _$CrumbledQrPlusData _value, $Res Function(_$CrumbledQrPlusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? crumbs = null,
  }) {
    return _then(_$CrumbledQrPlusData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      crumbs: null == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrPlusData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrumbledQrPlusData extends CrumbledQrPlusData {
  const _$CrumbledQrPlusData(
      {required this.id,
      required final List<QrPlusData> crumbs,
      final String? $type})
      : _crumbs = crumbs,
        $type = $type ?? 'crumbled',
        super._();

  factory _$CrumbledQrPlusData.fromJson(Map<String, dynamic> json) =>
      _$$CrumbledQrPlusDataFromJson(json);

  @override
  final String id;
  final List<QrPlusData> _crumbs;
  @override
  List<QrPlusData> get crumbs {
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crumbs);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusData.crumbled(id: $id, crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrumbledQrPlusData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrumbledQrPlusDataCopyWith<_$CrumbledQrPlusData> get copyWith =>
      __$$CrumbledQrPlusDataCopyWithImpl<_$CrumbledQrPlusData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) {
    return crumbled(id, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) {
    return crumbled?.call(id, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (crumbled != null) {
      return crumbled(id, crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) {
    return crumbled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) {
    return crumbled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) {
    if (crumbled != null) {
      return crumbled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CrumbledQrPlusDataToJson(
      this,
    );
  }
}

abstract class CrumbledQrPlusData extends QrPlusData {
  const factory CrumbledQrPlusData(
      {required final String id,
      required final List<QrPlusData> crumbs}) = _$CrumbledQrPlusData;
  const CrumbledQrPlusData._() : super._();

  factory CrumbledQrPlusData.fromJson(Map<String, dynamic> json) =
      _$CrumbledQrPlusData.fromJson;

  String get id;
  List<QrPlusData> get crumbs;
  @JsonKey(ignore: true)
  _$$CrumbledQrPlusDataCopyWith<_$CrumbledQrPlusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticQrPlusDataCopyWith<$Res> {
  factory _$$AuthenticQrPlusDataCopyWith(_$AuthenticQrPlusData value,
          $Res Function(_$AuthenticQrPlusData) then) =
      __$$AuthenticQrPlusDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      @JsonKey(includeIfNull: false) int? index});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$AuthenticQrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$AuthenticQrPlusData>
    implements _$$AuthenticQrPlusDataCopyWith<$Res> {
  __$$AuthenticQrPlusDataCopyWithImpl(
      _$AuthenticQrPlusData _value, $Res Function(_$AuthenticQrPlusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = freezed,
  }) {
    return _then(_$AuthenticQrPlusData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$AuthenticQrPlusData extends AuthenticQrPlusData {
  const _$AuthenticQrPlusData(
      {required this.id,
      required this.data,
      required this.mode,
      required this.timestamp,
      @JsonKey(includeIfNull: false) this.index,
      final String? $type})
      : $type = $type ?? 'authentic',
        super._();

  factory _$AuthenticQrPlusData.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticQrPlusDataFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  final QrPlusMode mode;
  @override
  final DateTime timestamp;
  @override
  @JsonKey(includeIfNull: false)
  final int? index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusData.authentic(id: $id, data: $data, mode: $mode, timestamp: $timestamp, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticQrPlusData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, data, mode, timestamp, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticQrPlusDataCopyWith<_$AuthenticQrPlusData> get copyWith =>
      __$$AuthenticQrPlusDataCopyWithImpl<_$AuthenticQrPlusData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) {
    return authentic(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) {
    return authentic?.call(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (authentic != null) {
      return authentic(id, data, mode, timestamp, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) {
    return authentic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) {
    return authentic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) {
    if (authentic != null) {
      return authentic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticQrPlusDataToJson(
      this,
    );
  }
}

abstract class AuthenticQrPlusData extends QrPlusData {
  const factory AuthenticQrPlusData(
      {required final String id,
      required final String data,
      required final QrPlusMode mode,
      required final DateTime timestamp,
      @JsonKey(includeIfNull: false) final int? index}) = _$AuthenticQrPlusData;
  const AuthenticQrPlusData._() : super._();

  factory AuthenticQrPlusData.fromJson(Map<String, dynamic> json) =
      _$AuthenticQrPlusData.fromJson;

  String get id;
  String get data;
  QrPlusMode get mode;
  DateTime get timestamp;
  @JsonKey(includeIfNull: false)
  int? get index;
  @JsonKey(ignore: true)
  _$$AuthenticQrPlusDataCopyWith<_$AuthenticQrPlusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoNetworkQrPlusDataCopyWith<$Res> {
  factory _$$NoNetworkQrPlusDataCopyWith(_$NoNetworkQrPlusData value,
          $Res Function(_$NoNetworkQrPlusData) then) =
      __$$NoNetworkQrPlusDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      @JsonKey(includeIfNull: false) int? index});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$NoNetworkQrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$NoNetworkQrPlusData>
    implements _$$NoNetworkQrPlusDataCopyWith<$Res> {
  __$$NoNetworkQrPlusDataCopyWithImpl(
      _$NoNetworkQrPlusData _value, $Res Function(_$NoNetworkQrPlusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = freezed,
  }) {
    return _then(_$NoNetworkQrPlusData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$NoNetworkQrPlusData extends NoNetworkQrPlusData {
  const _$NoNetworkQrPlusData(
      {required this.id,
      required this.data,
      required this.mode,
      required this.timestamp,
      @JsonKey(includeIfNull: false) this.index,
      final String? $type})
      : $type = $type ?? 'noNetwork',
        super._();

  factory _$NoNetworkQrPlusData.fromJson(Map<String, dynamic> json) =>
      _$$NoNetworkQrPlusDataFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  final QrPlusMode mode;
  @override
  final DateTime timestamp;
  @override
  @JsonKey(includeIfNull: false)
  final int? index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusData.noNetwork(id: $id, data: $data, mode: $mode, timestamp: $timestamp, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoNetworkQrPlusData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, data, mode, timestamp, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoNetworkQrPlusDataCopyWith<_$NoNetworkQrPlusData> get copyWith =>
      __$$NoNetworkQrPlusDataCopyWithImpl<_$NoNetworkQrPlusData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) {
    return noNetwork(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) {
    return noNetwork?.call(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(id, data, mode, timestamp, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoNetworkQrPlusDataToJson(
      this,
    );
  }
}

abstract class NoNetworkQrPlusData extends QrPlusData {
  const factory NoNetworkQrPlusData(
      {required final String id,
      required final String data,
      required final QrPlusMode mode,
      required final DateTime timestamp,
      @JsonKey(includeIfNull: false) final int? index}) = _$NoNetworkQrPlusData;
  const NoNetworkQrPlusData._() : super._();

  factory NoNetworkQrPlusData.fromJson(Map<String, dynamic> json) =
      _$NoNetworkQrPlusData.fromJson;

  String get id;
  String get data;
  QrPlusMode get mode;
  DateTime get timestamp;
  @JsonKey(includeIfNull: false)
  int? get index;
  @JsonKey(ignore: true)
  _$$NoNetworkQrPlusDataCopyWith<_$NoNetworkQrPlusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenRecordingQrPlusDataCopyWith<$Res> {
  factory _$$ScreenRecordingQrPlusDataCopyWith(
          _$ScreenRecordingQrPlusData value,
          $Res Function(_$ScreenRecordingQrPlusData) then) =
      __$$ScreenRecordingQrPlusDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String data,
      QrPlusMode mode,
      DateTime timestamp,
      @JsonKey(includeIfNull: false) int? index});

  $QrPlusModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$ScreenRecordingQrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$ScreenRecordingQrPlusData>
    implements _$$ScreenRecordingQrPlusDataCopyWith<$Res> {
  __$$ScreenRecordingQrPlusDataCopyWithImpl(_$ScreenRecordingQrPlusData _value,
      $Res Function(_$ScreenRecordingQrPlusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? mode = null,
    Object? timestamp = null,
    Object? index = freezed,
  }) {
    return _then(_$ScreenRecordingQrPlusData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ScreenRecordingQrPlusData extends ScreenRecordingQrPlusData {
  const _$ScreenRecordingQrPlusData(
      {required this.id,
      required this.data,
      required this.mode,
      required this.timestamp,
      @JsonKey(includeIfNull: false) this.index,
      final String? $type})
      : $type = $type ?? 'screenRecording',
        super._();

  factory _$ScreenRecordingQrPlusData.fromJson(Map<String, dynamic> json) =>
      _$$ScreenRecordingQrPlusDataFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  final QrPlusMode mode;
  @override
  final DateTime timestamp;
  @override
  @JsonKey(includeIfNull: false)
  final int? index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QrPlusData.screenRecording(id: $id, data: $data, mode: $mode, timestamp: $timestamp, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenRecordingQrPlusData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, data, mode, timestamp, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenRecordingQrPlusDataCopyWith<_$ScreenRecordingQrPlusData>
      get copyWith => __$$ScreenRecordingQrPlusDataCopyWithImpl<
          _$ScreenRecordingQrPlusData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String id, List<QrPlusData> crumbs) crumbled,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        authentic,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        noNetwork,
    required TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)
        screenRecording,
  }) {
    return screenRecording(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult? Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
  }) {
    return screenRecording?.call(id, data, mode, timestamp, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String id, List<QrPlusData> crumbs)? crumbled,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        authentic,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        noNetwork,
    TResult Function(String id, String data, QrPlusMode mode,
            DateTime timestamp, @JsonKey(includeIfNull: false) int? index)?
        screenRecording,
    required TResult orElse(),
  }) {
    if (screenRecording != null) {
      return screenRecording(id, data, mode, timestamp, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownQrPlusData value) unknown,
    required TResult Function(CrumbledQrPlusData value) crumbled,
    required TResult Function(AuthenticQrPlusData value) authentic,
    required TResult Function(NoNetworkQrPlusData value) noNetwork,
    required TResult Function(ScreenRecordingQrPlusData value) screenRecording,
  }) {
    return screenRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownQrPlusData value)? unknown,
    TResult? Function(CrumbledQrPlusData value)? crumbled,
    TResult? Function(AuthenticQrPlusData value)? authentic,
    TResult? Function(NoNetworkQrPlusData value)? noNetwork,
    TResult? Function(ScreenRecordingQrPlusData value)? screenRecording,
  }) {
    return screenRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownQrPlusData value)? unknown,
    TResult Function(CrumbledQrPlusData value)? crumbled,
    TResult Function(AuthenticQrPlusData value)? authentic,
    TResult Function(NoNetworkQrPlusData value)? noNetwork,
    TResult Function(ScreenRecordingQrPlusData value)? screenRecording,
    required TResult orElse(),
  }) {
    if (screenRecording != null) {
      return screenRecording(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenRecordingQrPlusDataToJson(
      this,
    );
  }
}

abstract class ScreenRecordingQrPlusData extends QrPlusData {
  const factory ScreenRecordingQrPlusData(
          {required final String id,
          required final String data,
          required final QrPlusMode mode,
          required final DateTime timestamp,
          @JsonKey(includeIfNull: false) final int? index}) =
      _$ScreenRecordingQrPlusData;
  const ScreenRecordingQrPlusData._() : super._();

  factory ScreenRecordingQrPlusData.fromJson(Map<String, dynamic> json) =
      _$ScreenRecordingQrPlusData.fromJson;

  String get id;
  String get data;
  QrPlusMode get mode;
  DateTime get timestamp;
  @JsonKey(includeIfNull: false)
  int? get index;
  @JsonKey(ignore: true)
  _$$ScreenRecordingQrPlusDataCopyWith<_$ScreenRecordingQrPlusData>
      get copyWith => throw _privateConstructorUsedError;
}
