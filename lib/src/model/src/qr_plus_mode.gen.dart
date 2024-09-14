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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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

  /// Serializes this QrPlusMode to a JSON map.
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

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlainQrPlusModeImplCopyWith<$Res> {
  factory _$$PlainQrPlusModeImplCopyWith(_$PlainQrPlusModeImpl value,
          $Res Function(_$PlainQrPlusModeImpl) then) =
      __$$PlainQrPlusModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlainQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$PlainQrPlusModeImpl>
    implements _$$PlainQrPlusModeImplCopyWith<$Res> {
  __$$PlainQrPlusModeImplCopyWithImpl(
      _$PlainQrPlusModeImpl _value, $Res Function(_$PlainQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PlainQrPlusModeImpl extends PlainQrPlusMode
    with DiagnosticableTreeMixin {
  const _$PlainQrPlusModeImpl({final String? $type})
      : $type = $type ?? 'plain',
        super._();

  factory _$PlainQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlainQrPlusModeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlainQrPlusModeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$PlainQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class PlainQrPlusMode extends QrPlusMode {
  const factory PlainQrPlusMode() = _$PlainQrPlusModeImpl;
  const PlainQrPlusMode._() : super._();

  factory PlainQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$PlainQrPlusModeImpl.fromJson;
}

/// @nodoc
abstract class _$$SafeQrPlusModeImplCopyWith<$Res> {
  factory _$$SafeQrPlusModeImplCopyWith(_$SafeQrPlusModeImpl value,
          $Res Function(_$SafeQrPlusModeImpl) then) =
      __$$SafeQrPlusModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs});
}

/// @nodoc
class __$$SafeQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SafeQrPlusModeImpl>
    implements _$$SafeQrPlusModeImplCopyWith<$Res> {
  __$$SafeQrPlusModeImplCopyWithImpl(
      _$SafeQrPlusModeImpl _value, $Res Function(_$SafeQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_$SafeQrPlusModeImpl(
      crumbs: null == crumbs
          ? _value.crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafeQrPlusModeImpl extends SafeQrPlusMode with DiagnosticableTreeMixin {
  const _$SafeQrPlusModeImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 3,
      final String? $type})
      : $type = $type ?? 'safe',
        super._();

  factory _$SafeQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeQrPlusModeImplFromJson(json);

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeQrPlusModeImpl &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeQrPlusModeImplCopyWith<_$SafeQrPlusModeImpl> get copyWith =>
      __$$SafeQrPlusModeImplCopyWithImpl<_$SafeQrPlusModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$SafeQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class SafeQrPlusMode extends QrPlusMode {
  const factory SafeQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      final int crumbs}) = _$SafeQrPlusModeImpl;
  const SafeQrPlusMode._() : super._();

  factory SafeQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SafeQrPlusModeImpl.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeQrPlusModeImplCopyWith<_$SafeQrPlusModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RobustQrPlusModeImplCopyWith<$Res> {
  factory _$$RobustQrPlusModeImplCopyWith(_$RobustQrPlusModeImpl value,
          $Res Function(_$RobustQrPlusModeImpl) then) =
      __$$RobustQrPlusModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
      Duration ttl});
}

/// @nodoc
class __$$RobustQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$RobustQrPlusModeImpl>
    implements _$$RobustQrPlusModeImplCopyWith<$Res> {
  __$$RobustQrPlusModeImplCopyWithImpl(_$RobustQrPlusModeImpl _value,
      $Res Function(_$RobustQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
  }) {
    return _then(_$RobustQrPlusModeImpl(
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
class _$RobustQrPlusModeImpl extends RobustQrPlusMode
    with DiagnosticableTreeMixin {
  const _$RobustQrPlusModeImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 3,
      this.ttl = const Duration(seconds: 20),
      final String? $type})
      : $type = $type ?? 'robust',
        super._();

  factory _$RobustQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RobustQrPlusModeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobustQrPlusModeImpl &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RobustQrPlusModeImplCopyWith<_$RobustQrPlusModeImpl> get copyWith =>
      __$$RobustQrPlusModeImplCopyWithImpl<_$RobustQrPlusModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$RobustQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class RobustQrPlusMode extends QrPlusMode {
  const factory RobustQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) final int crumbs,
      final Duration ttl}) = _$RobustQrPlusModeImpl;
  const RobustQrPlusMode._() : super._();

  factory RobustQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$RobustQrPlusModeImpl.fromJson;

  /// The number of pieces the data is split into.
  /// Defaults to 3.
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get crumbs;

  /// The time-to-live of the data, which defines how long the data is valid.
  /// Defaults to 20 seconds.
  Duration get ttl;

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RobustQrPlusModeImplCopyWith<_$RobustQrPlusModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SoundQrPlusModeImplCopyWith<$Res> {
  factory _$$SoundQrPlusModeImplCopyWith(_$SoundQrPlusModeImpl value,
          $Res Function(_$SoundQrPlusModeImpl) then) =
      __$$SoundQrPlusModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Duration ntpFetchInterval});
}

/// @nodoc
class __$$SoundQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SoundQrPlusModeImpl>
    implements _$$SoundQrPlusModeImplCopyWith<$Res> {
  __$$SoundQrPlusModeImplCopyWithImpl(
      _$SoundQrPlusModeImpl _value, $Res Function(_$SoundQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
  }) {
    return _then(_$SoundQrPlusModeImpl(
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
class _$SoundQrPlusModeImpl extends SoundQrPlusMode
    with DiagnosticableTreeMixin {
  const _$SoundQrPlusModeImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 3,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.ntpFetchInterval = const Duration(seconds: 5),
      final String? $type})
      : $type = $type ?? 'sound',
        super._();

  factory _$SoundQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoundQrPlusModeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundQrPlusModeImpl &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundQrPlusModeImplCopyWith<_$SoundQrPlusModeImpl> get copyWith =>
      __$$SoundQrPlusModeImplCopyWithImpl<_$SoundQrPlusModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$SoundQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class SoundQrPlusMode extends QrPlusMode {
  const factory SoundQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Duration ntpFetchInterval}) = _$SoundQrPlusModeImpl;
  const SoundQrPlusMode._() : super._();

  factory SoundQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SoundQrPlusModeImpl.fromJson;

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

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoundQrPlusModeImplCopyWith<_$SoundQrPlusModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParanoidQrPlusModeImplCopyWith<$Res> {
  factory _$$ParanoidQrPlusModeImplCopyWith(_$ParanoidQrPlusModeImpl value,
          $Res Function(_$ParanoidQrPlusModeImpl) then) =
      __$$ParanoidQrPlusModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Duration ntpFetchInterval});
}

/// @nodoc
class __$$ParanoidQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$ParanoidQrPlusModeImpl>
    implements _$$ParanoidQrPlusModeImplCopyWith<$Res> {
  __$$ParanoidQrPlusModeImplCopyWithImpl(_$ParanoidQrPlusModeImpl _value,
      $Res Function(_$ParanoidQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
  }) {
    return _then(_$ParanoidQrPlusModeImpl(
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
class _$ParanoidQrPlusModeImpl extends ParanoidQrPlusMode
    with DiagnosticableTreeMixin {
  const _$ParanoidQrPlusModeImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 6,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.ntpFetchInterval = const Duration(seconds: 5),
      final String? $type})
      : $type = $type ?? 'paranoid',
        super._();

  factory _$ParanoidQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParanoidQrPlusModeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParanoidQrPlusModeImpl &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParanoidQrPlusModeImplCopyWith<_$ParanoidQrPlusModeImpl> get copyWith =>
      __$$ParanoidQrPlusModeImplCopyWithImpl<_$ParanoidQrPlusModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$ParanoidQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class ParanoidQrPlusMode extends QrPlusMode {
  const factory ParanoidQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Duration ntpFetchInterval}) = _$ParanoidQrPlusModeImpl;
  const ParanoidQrPlusMode._() : super._();

  factory ParanoidQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$ParanoidQrPlusModeImpl.fromJson;

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

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParanoidQrPlusModeImplCopyWith<_$ParanoidQrPlusModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SnowdenQrPlusModeImplCopyWith<$Res> {
  factory _$$SnowdenQrPlusModeImplCopyWith(_$SnowdenQrPlusModeImpl value,
          $Res Function(_$SnowdenQrPlusModeImpl) then) =
      __$$SnowdenQrPlusModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
      Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Duration ntpFetchInterval,
      @JsonKey(includeToJson: false, includeFromJson: false)
      String encryptionKey});
}

/// @nodoc
class __$$SnowdenQrPlusModeImplCopyWithImpl<$Res>
    extends _$QrPlusModeCopyWithImpl<$Res, _$SnowdenQrPlusModeImpl>
    implements _$$SnowdenQrPlusModeImplCopyWith<$Res> {
  __$$SnowdenQrPlusModeImplCopyWithImpl(_$SnowdenQrPlusModeImpl _value,
      $Res Function(_$SnowdenQrPlusModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
    Object? ttl = null,
    Object? ntpFetchInterval = null,
    Object? encryptionKey = null,
  }) {
    return _then(_$SnowdenQrPlusModeImpl(
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
class _$SnowdenQrPlusModeImpl extends SnowdenQrPlusMode
    with DiagnosticableTreeMixin {
  const _$SnowdenQrPlusModeImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.crumbs = 6,
      this.ttl = const Duration(seconds: 20),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.ntpFetchInterval = const Duration(seconds: 5),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.encryptionKey = 'Pnozx5dIYojIUQCO5KPC3Y/a+6HyBy8=',
      final String? $type})
      : $type = $type ?? 'snowden',
        super._();

  factory _$SnowdenQrPlusModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnowdenQrPlusModeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnowdenQrPlusModeImpl &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval) &&
            (identical(other.encryptionKey, encryptionKey) ||
                other.encryptionKey == encryptionKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval, encryptionKey);

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnowdenQrPlusModeImplCopyWith<_$SnowdenQrPlusModeImpl> get copyWith =>
      __$$SnowdenQrPlusModeImplCopyWithImpl<_$SnowdenQrPlusModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)
        safe,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)
        robust,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        sound,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)
        paranoid,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs)?
        safe,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl)?
        robust,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        sound,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
            Duration ttl,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Duration ntpFetchInterval)?
        paranoid,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false) int crumbs,
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
    return _$$SnowdenQrPlusModeImplToJson(
      this,
    );
  }
}

abstract class SnowdenQrPlusMode extends QrPlusMode {
  const factory SnowdenQrPlusMode(
      {@JsonKey(includeToJson: false, includeFromJson: false) final int crumbs,
      final Duration ttl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Duration ntpFetchInterval,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final String encryptionKey}) = _$SnowdenQrPlusModeImpl;
  const SnowdenQrPlusMode._() : super._();

  factory SnowdenQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SnowdenQrPlusModeImpl.fromJson;

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

  /// Create a copy of QrPlusMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnowdenQrPlusModeImplCopyWith<_$SnowdenQrPlusModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
