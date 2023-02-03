// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_plus_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlainQrPlusMode _$$PlainQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$PlainQrPlusMode(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PlainQrPlusModeToJson(_$PlainQrPlusMode instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SafeQrPlusMode _$$SafeQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$SafeQrPlusMode(
      crumbs: json['crumbs'] as int? ?? 3,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SafeQrPlusModeToJson(_$SafeQrPlusMode instance) =>
    <String, dynamic>{
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };

_$RobustQrPlusMode _$$RobustQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$RobustQrPlusMode(
      crumbs: json['crumbs'] as int? ?? 3,
      ttl: json['ttl'] == null
          ? const Duration(seconds: 20)
          : Duration(microseconds: json['ttl'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RobustQrPlusModeToJson(_$RobustQrPlusMode instance) =>
    <String, dynamic>{
      'crumbs': instance.crumbs,
      'ttl': instance.ttl.inMicroseconds,
      'runtimeType': instance.$type,
    };

_$SoundQrPlusMode _$$SoundQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$SoundQrPlusMode(
      crumbs: json['crumbs'] as int? ?? 3,
      ttl: json['ttl'] == null
          ? const Duration(seconds: 20)
          : Duration(microseconds: json['ttl'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SoundQrPlusModeToJson(_$SoundQrPlusMode instance) =>
    <String, dynamic>{
      'crumbs': instance.crumbs,
      'ttl': instance.ttl.inMicroseconds,
      'runtimeType': instance.$type,
    };

_$ParanoidQrPlusMode _$$ParanoidQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$ParanoidQrPlusMode(
      crumbs: json['crumbs'] as int? ?? 6,
      ttl: json['ttl'] == null
          ? const Duration(seconds: 10)
          : Duration(microseconds: json['ttl'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParanoidQrPlusModeToJson(
        _$ParanoidQrPlusMode instance) =>
    <String, dynamic>{
      'crumbs': instance.crumbs,
      'ttl': instance.ttl.inMicroseconds,
      'runtimeType': instance.$type,
    };

_$SnowdenQrPlusMode _$$SnowdenQrPlusModeFromJson(Map<String, dynamic> json) =>
    _$SnowdenQrPlusMode(
      crumbs: json['crumbs'] as int? ?? 6,
      ttl: json['ttl'] == null
          ? const Duration(seconds: 10)
          : Duration(microseconds: json['ttl'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SnowdenQrPlusModeToJson(_$SnowdenQrPlusMode instance) =>
    <String, dynamic>{
      'crumbs': instance.crumbs,
      'ttl': instance.ttl.inMicroseconds,
      'runtimeType': instance.$type,
    };
