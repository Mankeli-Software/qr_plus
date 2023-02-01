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
    case 'paranoid':
      return ParanoidQrPlusMode.fromJson(json);

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
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)
        robust,
    required TResult Function(
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior,
            String encryptionKey)
        paranoid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
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
class _$PlainQrPlusMode
    with DiagnosticableTreeMixin
    implements PlainQrPlusMode {
  const _$PlainQrPlusMode({final String? $type}) : $type = $type ?? 'plain';

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
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)
        robust,
    required TResult Function(
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior,
            String encryptionKey)
        paranoid,
  }) {
    return plain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
  }) {
    return plain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
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
    required TResult Function(ParanoidQrPlusMode value) paranoid,
  }) {
    return plain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
  }) {
    return plain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
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

abstract class PlainQrPlusMode implements QrPlusMode {
  const factory PlainQrPlusMode() = _$PlainQrPlusMode;

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
class _$SafeQrPlusMode with DiagnosticableTreeMixin implements SafeQrPlusMode {
  const _$SafeQrPlusMode({this.crumbs = 3, final String? $type})
      : $type = $type ?? 'safe';

  factory _$SafeQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$SafeQrPlusModeFromJson(json);

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
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)
        robust,
    required TResult Function(
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior,
            String encryptionKey)
        paranoid,
  }) {
    return safe(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
  }) {
    return safe?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
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
    required TResult Function(ParanoidQrPlusMode value) paranoid,
  }) {
    return safe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
  }) {
    return safe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
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

abstract class SafeQrPlusMode implements QrPlusMode {
  const factory SafeQrPlusMode({final int crumbs}) = _$SafeQrPlusMode;

  factory SafeQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$SafeQrPlusMode.fromJson;

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
      {int crumbs,
      Duration ttl,
      Duration ntpFetchInterval,
      NoConnectionBehavior noConnectionBehavior});
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
    Object? ntpFetchInterval = null,
    Object? noConnectionBehavior = null,
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
      ntpFetchInterval: null == ntpFetchInterval
          ? _value.ntpFetchInterval
          : ntpFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      noConnectionBehavior: null == noConnectionBehavior
          ? _value.noConnectionBehavior
          : noConnectionBehavior // ignore: cast_nullable_to_non_nullable
              as NoConnectionBehavior,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RobustQrPlusMode
    with DiagnosticableTreeMixin
    implements RobustQrPlusMode {
  const _$RobustQrPlusMode(
      {this.crumbs = 3,
      this.ttl = const Duration(seconds: 20),
      this.ntpFetchInterval = const Duration(seconds: 30),
      this.noConnectionBehavior = NoConnectionBehavior.hide,
      final String? $type})
      : $type = $type ?? 'robust';

  factory _$RobustQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$RobustQrPlusModeFromJson(json);

  @override
  @JsonKey()
  final int crumbs;
  @override
  @JsonKey()
  final Duration ttl;
  @override
  @JsonKey()
  final Duration ntpFetchInterval;
  @override
  @JsonKey()
  final NoConnectionBehavior noConnectionBehavior;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.robust(crumbs: $crumbs, ttl: $ttl, ntpFetchInterval: $ntpFetchInterval, noConnectionBehavior: $noConnectionBehavior)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.robust'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('ntpFetchInterval', ntpFetchInterval))
      ..add(DiagnosticsProperty('noConnectionBehavior', noConnectionBehavior));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobustQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval) &&
            (identical(other.noConnectionBehavior, noConnectionBehavior) ||
                other.noConnectionBehavior == noConnectionBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, crumbs, ttl, ntpFetchInterval, noConnectionBehavior);

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
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)
        robust,
    required TResult Function(
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior,
            String encryptionKey)
        paranoid,
  }) {
    return robust(crumbs, ttl, ntpFetchInterval, noConnectionBehavior);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
  }) {
    return robust?.call(crumbs, ttl, ntpFetchInterval, noConnectionBehavior);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
    required TResult orElse(),
  }) {
    if (robust != null) {
      return robust(crumbs, ttl, ntpFetchInterval, noConnectionBehavior);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
  }) {
    return robust(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
  }) {
    return robust?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
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

abstract class RobustQrPlusMode implements QrPlusMode {
  const factory RobustQrPlusMode(
      {final int crumbs,
      final Duration ttl,
      final Duration ntpFetchInterval,
      final NoConnectionBehavior noConnectionBehavior}) = _$RobustQrPlusMode;

  factory RobustQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$RobustQrPlusMode.fromJson;

  int get crumbs;
  Duration get ttl;
  Duration get ntpFetchInterval;
  NoConnectionBehavior get noConnectionBehavior;
  @JsonKey(ignore: true)
  _$$RobustQrPlusModeCopyWith<_$RobustQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParanoidQrPlusModeCopyWith<$Res> {
  factory _$$ParanoidQrPlusModeCopyWith(_$ParanoidQrPlusMode value,
          $Res Function(_$ParanoidQrPlusMode) then) =
      __$$ParanoidQrPlusModeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int crumbs,
      Duration ttl,
      Duration ntpFetchInterval,
      NoConnectionBehavior noConnectionBehavior,
      String encryptionKey});
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
    Object? noConnectionBehavior = null,
    Object? encryptionKey = null,
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
      noConnectionBehavior: null == noConnectionBehavior
          ? _value.noConnectionBehavior
          : noConnectionBehavior // ignore: cast_nullable_to_non_nullable
              as NoConnectionBehavior,
      encryptionKey: null == encryptionKey
          ? _value.encryptionKey
          : encryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParanoidQrPlusMode
    with DiagnosticableTreeMixin
    implements ParanoidQrPlusMode {
  const _$ParanoidQrPlusMode(
      {this.crumbs = 6,
      this.ttl = const Duration(seconds: 10),
      this.ntpFetchInterval = const Duration(seconds: 5),
      this.noConnectionBehavior = NoConnectionBehavior.hide,
      this.encryptionKey = 'Xo/VPGxNVzJYU6mszCqpNDzV/CgzxwqKmqunipQusdc=',
      final String? $type})
      : $type = $type ?? 'paranoid';

  factory _$ParanoidQrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$$ParanoidQrPlusModeFromJson(json);

  @override
  @JsonKey()
  final int crumbs;
  @override
  @JsonKey()
  final Duration ttl;
  @override
  @JsonKey()
  final Duration ntpFetchInterval;
  @override
  @JsonKey()
  final NoConnectionBehavior noConnectionBehavior;
  @override
  @JsonKey()
  final String encryptionKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrPlusMode.paranoid(crumbs: $crumbs, ttl: $ttl, ntpFetchInterval: $ntpFetchInterval, noConnectionBehavior: $noConnectionBehavior, encryptionKey: $encryptionKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrPlusMode.paranoid'))
      ..add(DiagnosticsProperty('crumbs', crumbs))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('ntpFetchInterval', ntpFetchInterval))
      ..add(DiagnosticsProperty('noConnectionBehavior', noConnectionBehavior))
      ..add(DiagnosticsProperty('encryptionKey', encryptionKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParanoidQrPlusMode &&
            (identical(other.crumbs, crumbs) || other.crumbs == crumbs) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ntpFetchInterval, ntpFetchInterval) ||
                other.ntpFetchInterval == ntpFetchInterval) &&
            (identical(other.noConnectionBehavior, noConnectionBehavior) ||
                other.noConnectionBehavior == noConnectionBehavior) &&
            (identical(other.encryptionKey, encryptionKey) ||
                other.encryptionKey == encryptionKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crumbs, ttl, ntpFetchInterval,
      noConnectionBehavior, encryptionKey);

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
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)
        robust,
    required TResult Function(
            int crumbs,
            Duration ttl,
            Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior,
            String encryptionKey)
        paranoid,
  }) {
    return paranoid(
        crumbs, ttl, ntpFetchInterval, noConnectionBehavior, encryptionKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(int crumbs)? safe,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult? Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
  }) {
    return paranoid?.call(
        crumbs, ttl, ntpFetchInterval, noConnectionBehavior, encryptionKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(int crumbs)? safe,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior)?
        robust,
    TResult Function(int crumbs, Duration ttl, Duration ntpFetchInterval,
            NoConnectionBehavior noConnectionBehavior, String encryptionKey)?
        paranoid,
    required TResult orElse(),
  }) {
    if (paranoid != null) {
      return paranoid(
          crumbs, ttl, ntpFetchInterval, noConnectionBehavior, encryptionKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlainQrPlusMode value) plain,
    required TResult Function(SafeQrPlusMode value) safe,
    required TResult Function(RobustQrPlusMode value) robust,
    required TResult Function(ParanoidQrPlusMode value) paranoid,
  }) {
    return paranoid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlainQrPlusMode value)? plain,
    TResult? Function(SafeQrPlusMode value)? safe,
    TResult? Function(RobustQrPlusMode value)? robust,
    TResult? Function(ParanoidQrPlusMode value)? paranoid,
  }) {
    return paranoid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlainQrPlusMode value)? plain,
    TResult Function(SafeQrPlusMode value)? safe,
    TResult Function(RobustQrPlusMode value)? robust,
    TResult Function(ParanoidQrPlusMode value)? paranoid,
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

abstract class ParanoidQrPlusMode implements QrPlusMode {
  const factory ParanoidQrPlusMode(
      {final int crumbs,
      final Duration ttl,
      final Duration ntpFetchInterval,
      final NoConnectionBehavior noConnectionBehavior,
      final String encryptionKey}) = _$ParanoidQrPlusMode;

  factory ParanoidQrPlusMode.fromJson(Map<String, dynamic> json) =
      _$ParanoidQrPlusMode.fromJson;

  int get crumbs;
  Duration get ttl;
  Duration get ntpFetchInterval;
  NoConnectionBehavior get noConnectionBehavior;
  String get encryptionKey;
  @JsonKey(ignore: true)
  _$$ParanoidQrPlusModeCopyWith<_$ParanoidQrPlusMode> get copyWith =>
      throw _privateConstructorUsedError;
}
