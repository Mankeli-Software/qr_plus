// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_plus_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QrPlusMode _$QrPlusModeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'plain':
      return PlainQrPlusMode.fromJson(json);
    case 'safe':
      return SafeQrPlusMode.fromJson(json);
    case 'robust':
      return RobustQrPlusMode.fromJson(json);
    case 'sound':
      return SoundQrPlusMode.fromJson(json);
    case 'paranoid':
      return ParanoidQrPlusMode.fromJson(json);
    case 'snowden':
      return SnowdenQrPlusMode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'QrPlusMode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$QrPlusMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusModeCopyWith<$Res> {
  factory $QrPlusModeCopyWith(
          QrPlusMode value, $Res Function(QrPlusMode) then) =
      _$QrPlusModeCopyWithImpl<$Res, QrPlusMode>;
}

/// @nodoc
class _$QrPlusModeCopyWithImpl<$Res, $Val extends QrPlusMode>
    implements $QrPlusModeCopyWith<$Res> {
  _$QrPlusModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlainQrPlusModeCopyWith<$Res> {
  factory _$$PlainQrPlusModeCopyWith(
          _$PlainQrPlusMode value, $Res Function(_$PlainQrPlusMode) then) =
      __$$PlainQrPlusModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlainQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$PlainQrPlusMode>
    implements _$$PlainQrPlusModeCopyWith<$Res> {
  __$$PlainQrPlusModeCopyWithImpl(
      _$PlainQrPlusMode _value, $Res Function(_$PlainQrPlusMode) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PlainQrPlusMode extends PlainQrPlusMode with DiagnosticableTreeMixin {
  const _$PlainQrPlusMode({final String? $type})
      : $type = $type ?? 'plain',
        super._();

  factory _$PlainQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$PlainQrPlusModeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.plain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrPlusMode.plain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlainQrPlusMode);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return plain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return plain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (plain != null) {
      return plain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return plain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return plain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (plain != null) {
      return plain(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlainQrPlusModeToJson(
      this,
    );
  }
}

abstract class PlainQrPlusMode extends QrPlusMode {
  const factory PlainQrPlusMode() = _$PlainQrPlusMode;
  const PlainQrPlusMode._() : super._();

  factory PlainQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$PlainQrPlusMode.fromJson;
}

/// @nodoc
abstract class _$$SafeQrPlusModeCopyWith<$Res> {
  factory _$$SafeQrPlusModeCopyWith(
          _$SafeQrPlusMode value, $Res Function(_$SafeQrPlusMode) then) =
      __$$SafeQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call({int crumbs});
}

/// @nodoc
class __$$SafeQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SafeQrPlusMode>
    implements _$$SafeQrPlusModeCopyWith<$Res> {
  __$$SafeQrPlusModeCopyWithImpl(
      _$SafeQrPlusMode _value, $Res Function(_$SafeQrPlusMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_$SafeQrPlusMode(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafeQrPlusMode extends SafeQrPlusMode with DiagnosticableTreeMixin {
  const _$SafeQrPlusMode({this.crumbs = 3, final String? $type})
      : $type = $type ?? 'safe',
        super._();

  factory _$SafeQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$SafeQrPlusModeFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey()
  final int crumbs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.safe(crumbs: $crumbs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.safe'))
      ..add(DiagnosticsProperty('crumbs', crumbs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeQrPlusModeCopyWith<_$SafeQrPlusMode> get copyWith =>
      __$$SafeQrPlusModeCopyWithImpl<_$SafeQrPlusMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return safe(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return safe?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (safe != null) {
      return safe(crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return safe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return safe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (safe != null) {
      return safe(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeQrPlusModeToJson(
      this,
    );
  }
}

abstract class SafeQrPlusMode extends QrPlusMode {
  const factory SafeQrPlusMode({final int crumbs}) = _$SafeQrPlusMode;
  const SafeQrPlusMode._() : super._();

  factory SafeQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SafeQrPlusMode.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  int get crumbs;
  @JsonKey(ignore: true)
  _$$SafeQrPlusModeCopyWith<_$SafeQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RobustQrPlusModeCopyWith<$Res> {
  factory _$$RobustQrPlusModeCopyWith(
          _$RobustQrPlusMode value, $Res Function(_$RobustQrPlusMode) then) =
      __$$RobustQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
      Duration ttl});
}

/// @nodoc
class __$$RobustQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$RobustQrPlusMode>
    implements _$$RobustQrPlusModeCopyWith<$Res> {
  __$$RobustQrPlusModeCopyWithImpl(
      _$RobustQrPlusMode _value, $Res Function(_$RobustQrPlusMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
  }) {
    return _then(_$RobustQrPlusMode(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RobustQrPlusMode extends RobustQrPlusMode with DiagnosticableTreeMixin {
  const _$RobustQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 3,
      this.ttl = const Duration(seconds: 20),
      final String? $type})
      : $type = $type ?? 'robust',
        super._();

  factory _$RobustQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$RobustQrPlusModeFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final int crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  @override
  @JsonKey()
  final Duration ttl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.robust(crumbs: $crumbs, ttl: $ttl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.robust'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobustQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RobustQrPlusModeCopyWith<_$RobustQrPlusMode> get copyWith =>
      __$$RobustQrPlusModeCopyWithImpl<_$RobustQrPlusMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return robust(crumbs, ttl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return robust?.call(crumbs, ttl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (robust != null) {
      return robust(crumbs, ttl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return robust(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return robust?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (robust != null) {
      return robust(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RobustQrPlusModeToJson(
      this,
    );
  }
}

abstract class RobustQrPlusMode extends QrPlusMode {
  const factory RobustQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) final int crumbs,
      final Duration ttl}) = _$RobustQrPlusMode;
  const RobustQrPlusMode._() : super._();

  factory RobustQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$RobustQrPlusMode.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  Duration get ttl;
  @JsonKey(ignore: true)
  _$$RobustQrPlusModeCopyWith<_$RobustQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SoundQrPlusModeCopyWith<$Res> {
  factory _$$SoundQrPlusModeCopyWith(
          _$SoundQrPlusMode value, $Res Function(_$SoundQrPlusMode) then) =
      __$$SoundQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          Duration ntpFetchInterval});
}

/// @nodoc
class __$$SoundQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SoundQrPlusMode>
    implements _$$SoundQrPlusModeCopyWith<$Res> {
  __$$SoundQrPlusModeCopyWithImpl(
      _$SoundQrPlusMode _value, $Res Function(_$SoundQrPlusMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
  }) {
    return _then(_$SoundQrPlusMode(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      ntpFetchInterval: null == ntpFetchInterval
          ? _value.ntpFetchInterval
          : ntpFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoundQrPlusMode extends SoundQrPlusMode with DiagnosticableTreeMixin {
  const _$SoundQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          this.crumbs = 3,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
          this.ntpFetchInterval = const Duration(seconds: 5),
      final String? $type})
      : $type = $type ?? 'sound',
        super._();

  factory _$SoundQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$SoundQrPlusModeFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final int crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  @override
  @JsonKey()
  final Duration ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Duration ntpFetchInterval;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.sound(crumbs: $crumbs, ttl: $ttl, ntpFetchInterval: $ntpFetchInterval)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.sound'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('ntpFetchInterval', ntpFetchInterval));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundQrPlusModeCopyWith<_$SoundQrPlusMode> get copyWith =>
      __$$SoundQrPlusModeCopyWithImpl<_$SoundQrPlusMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return sound(crumbs, ttl, ntpFetchInterval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return sound?.call(crumbs, ttl, ntpFetchInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (sound != null) {
      return sound(crumbs, ttl, ntpFetchInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return sound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return sound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (sound != null) {
      return sound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SoundQrPlusModeToJson(
      this,
    );
  }
}

abstract class SoundQrPlusMode extends QrPlusMode {
  const factory SoundQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          final Duration ntpFetchInterval}) = _$SoundQrPlusMode;
  const SoundQrPlusMode._() : super._();

  factory SoundQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SoundQrPlusMode.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  Duration get ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @JsonKey(includeToJson: false, includeFromJson: false)
  Duration get ntpFetchInterval;
  @JsonKey(ignore: true)
  _$$SoundQrPlusModeCopyWith<_$SoundQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParanoidQrPlusModeCopyWith<$Res> {
  factory _$$ParanoidQrPlusModeCopyWith(_$ParanoidQrPlusMode value,
          $Res Function(_$ParanoidQrPlusMode) then) =
      __$$ParanoidQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          Duration ntpFetchInterval});
}

/// @nodoc
class __$$ParanoidQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$ParanoidQrPlusMode>
    implements _$$ParanoidQrPlusModeCopyWith<$Res> {
  __$$ParanoidQrPlusModeCopyWithImpl(
      _$ParanoidQrPlusMode _value, $Res Function(_$ParanoidQrPlusMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
  }) {
    return _then(_$ParanoidQrPlusMode(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      ntpFetchInterval: null == ntpFetchInterval
          ? _value.ntpFetchInterval
          : ntpFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParanoidQrPlusMode extends ParanoidQrPlusMode
    with DiagnosticableTreeMixin {
  const _$ParanoidQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          this.crumbs = 6,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
          this.ntpFetchInterval = const Duration(seconds: 5),
      final String? $type})
      : $type = $type ?? 'paranoid',
        super._();

  factory _$ParanoidQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$ParanoidQrPlusModeFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final int crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  @override
  @JsonKey()
  final Duration ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Duration ntpFetchInterval;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.paranoid(crumbs: $crumbs, ttl: $ttl, ntpFetchInterval: $ntpFetchInterval)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.paranoid'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('ntpFetchInterval', ntpFetchInterval));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParanoidQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParanoidQrPlusModeCopyWith<_$ParanoidQrPlusMode> get copyWith =>
      __$$ParanoidQrPlusModeCopyWithImpl<_$ParanoidQrPlusMode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return paranoid(crumbs, ttl, ntpFetchInterval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return paranoid?.call(crumbs, ttl, ntpFetchInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (paranoid != null) {
      return paranoid(crumbs, ttl, ntpFetchInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return paranoid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return paranoid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (paranoid != null) {
      return paranoid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParanoidQrPlusModeToJson(
      this,
    );
  }
}

abstract class ParanoidQrPlusMode extends QrPlusMode {
  const factory ParanoidQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          final Duration ntpFetchInterval}) = _$ParanoidQrPlusMode;
  const ParanoidQrPlusMode._() : super._();

  factory ParanoidQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$ParanoidQrPlusMode.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  Duration get ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @JsonKey(includeToJson: false, includeFromJson: false)
  Duration get ntpFetchInterval;
  @JsonKey(ignore: true)
  _$$ParanoidQrPlusModeCopyWith<_$ParanoidQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SnowdenQrPlusModeCopyWith<$Res> {
  factory _$$SnowdenQrPlusModeCopyWith(
          _$SnowdenQrPlusMode value, $Res Function(_$SnowdenQrPlusMode) then) =
      __$$SnowdenQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          Duration ntpFetchInterval,
      @JsonKey(includeToJson: false, includeFromJson: false)
          String encryptionKey});
}

/// @nodoc
class __$$SnowdenQrPlusModeCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SnowdenQrPlusMode>
    implements _$$SnowdenQrPlusModeCopyWith<$Res> {
  __$$SnowdenQrPlusModeCopyWithImpl(
      _$SnowdenQrPlusMode _value, $Res Function(_$SnowdenQrPlusMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
    Object? encryptionKey = null,
  }) {
    return _then(_$SnowdenQrPlusMode(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      ntpFetchInterval: null == ntpFetchInterval
          ? _value.ntpFetchInterval
          : ntpFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      encryptionKey: null == encryptionKey
          ? _value.encryptionKey
          : encryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnowdenQrPlusMode extends SnowdenQrPlusMode
    with DiagnosticableTreeMixin {
  const _$SnowdenQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          this.crumbs = 6,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
          this.ntpFetchInterval = const Duration(seconds: 5),
      @JsonKey(includeToJson: false, includeFromJson: false)
          this.encryptionKey = 'Pnozx5dIYojIUQCO5KPC3Y/a+6HyBy8=',
      final String? $type})
      : $type = $type ?? 'snowden',
        super._();

  factory _$SnowdenQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$SnowdenQrPlusModeFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final int crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  @override
  @JsonKey()
  final Duration ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Duration ntpFetchInterval;

  /// The encryption key to be used to encrypt the data. Please, change your own key here and do not use the default one.
  /// Also make sure to store your key in a secure place. See https://pub.dev/packages/flutter_dotenv for more info on how to store your key.
  ///
  /// NOTE: The key length should be 128/192/256 bits (16/24/32 bytes/characters).
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String encryptionKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.snowden(crumbs: $crumbs, ttl: $ttl, ntpFetchInterval: $ntpFetchInterval, encryptionKey: $encryptionKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.snowden'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('ntpFetchInterval', ntpFetchInterval))
      ..add(DiagnosticsProperty('encryptionKey', encryptionKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnowdenQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval) &&
            (identical(other.encryptionKey, encryptionKey) ||
                other.encryptionKey == encryptionKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval, encryptionKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnowdenQrPlusModeCopyWith<_$SnowdenQrPlusMode> get copyWith =>
      __$$SnowdenQrPlusModeCopyWithImpl<_$SnowdenQrPlusMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(int crumbs) safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)
        snowden,
  }) {
    return snowden(crumbs, ttl, ntpFetchInterval, encryptionKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
  }) {
    return snowden?.call(crumbs, ttl, ntpFetchInterval, encryptionKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
                int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
                Duration ntpFetchInterval,
            @JsonKey(includeToJson: false, includeFromJson: false)
                String encryptionKey)?
        snowden,
    required TResult orElse(),
  }) {
    if (snowden != null) {
      return snowden(crumbs, ttl, ntpFetchInterval, encryptionKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(SoundQrPlusMode value) sound,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
    required TResult Function(SnowdenQrPlusMode value) snowden,
  }) {
    return snowden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(SoundQrPlusMode value)? sound,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
    TResult? Function(SnowdenQrPlusMode value)? snowden,
  }) {
    return snowden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(SoundQrPlusMode value)? sound,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
    TResult Function(SnowdenQrPlusMode value)? snowden,
    required TResult orElse(),
  }) {
    if (snowden != null) {
      return snowden(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SnowdenQrPlusModeToJson(
      this,
    );
  }
}

abstract class SnowdenQrPlusMode extends QrPlusMode {
  const factory SnowdenQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
          final Duration ntpFetchInterval,
      @JsonKey(includeToJson: false, includeFromJson: false)
          final String encryptionKey}) = _$SnowdenQrPlusMode;
  const SnowdenQrPlusMode._() : super._();

  factory SnowdenQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SnowdenQrPlusMode.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  Duration get ttl;

  /// The interval at which the NTP check is performed.
  /// Defaults to 5 seconds.
  @JsonKey(includeToJson: false, includeFromJson: false)
  Duration get ntpFetchInterval;

  /// The encryption key to be used to encrypt the data. Please, change your own key here and do not use the default one.
  /// Also make sure to store your key in a secure place. See https://pub.dev/packages/flutter_dotenv for more info on how to store your key.
  ///
  /// NOTE: The key length should be 128/192/256 bits (16/24/32 bytes/characters).
  @JsonKey(includeToJson: false, includeFromJson: false)
  String get encryptionKey;
  @JsonKey(ignore: true)
  _$$SnowdenQrPlusModeCopyWith<_$SnowdenQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}
