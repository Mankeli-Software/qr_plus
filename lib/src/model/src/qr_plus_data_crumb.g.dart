// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_plus_data_crumb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnknownQrPlusDataCrumbImpl _$$UnknownQrPlusDataCrumbImplFromJson(
        Map<String, dynamic> json) =>
    _$UnknownQrPlusDataCrumbImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownQrPlusDataCrumbImplToJson(
        _$UnknownQrPlusDataCrumbImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticQrPlusDataCrumbImpl _$$AuthenticQrPlusDataCrumbImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticQrPlusDataCrumbImpl(
      uid: json['uid'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: (json['index'] as num).toInt(),
      crumbs: (json['crumbs'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticQrPlusDataCrumbImplToJson(
        _$AuthenticQrPlusDataCrumbImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };

_$NoNetworkQrPlusDataCrumbImpl _$$NoNetworkQrPlusDataCrumbImplFromJson(
        Map<String, dynamic> json) =>
    _$NoNetworkQrPlusDataCrumbImpl(
      uid: json['uid'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: (json['index'] as num).toInt(),
      crumbs: (json['crumbs'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoNetworkQrPlusDataCrumbImplToJson(
        _$NoNetworkQrPlusDataCrumbImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };

_$ScreenRecordingQrPlusDataCrumbImpl
    _$$ScreenRecordingQrPlusDataCrumbImplFromJson(Map<String, dynamic> json) =>
        _$ScreenRecordingQrPlusDataCrumbImpl(
          uid: json['uid'] as String,
          data: json['data'] as String,
          mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
          timestamp: DateTime.parse(json['timestamp'] as String),
          index: (json['index'] as num).toInt(),
          crumbs: (json['crumbs'] as num).toInt(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ScreenRecordingQrPlusDataCrumbImplToJson(
        _$ScreenRecordingQrPlusDataCrumbImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };
