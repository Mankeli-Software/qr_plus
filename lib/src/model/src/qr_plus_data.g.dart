// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_plus_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnknownQrPlusData _$$UnknownQrPlusDataFromJson(Map<String, dynamic> json) =>
    _$UnknownQrPlusData(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownQrPlusDataToJson(_$UnknownQrPlusData instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CrumbledQrPlusData _$$CrumbledQrPlusDataFromJson(Map<String, dynamic> json) =>
    _$CrumbledQrPlusData(
      id: json['id'] as String,
      crumbs: (json['crumbs'] as List<dynamic>)
          .map((e) => QrPlusData.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CrumbledQrPlusDataToJson(
        _$CrumbledQrPlusData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'crumbs': instance.crumbs.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$AuthenticQrPlusData _$$AuthenticQrPlusDataFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticQrPlusData(
      id: json['id'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int?,
      crumbs: json['crumbs'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticQrPlusDataToJson(
    _$AuthenticQrPlusData instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'data': instance.data,
    'mode': instance.mode.toJson(),
    'timestamp': instance.timestamp.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('index', instance.index);
  writeNotNull('crumbs', instance.crumbs);
  val['runtimeType'] = instance.$type;
  return val;
}

_$NoNetworkQrPlusData _$$NoNetworkQrPlusDataFromJson(
        Map<String, dynamic> json) =>
    _$NoNetworkQrPlusData(
      id: json['id'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int?,
      crumbs: json['crumbs'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoNetworkQrPlusDataToJson(
    _$NoNetworkQrPlusData instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'data': instance.data,
    'mode': instance.mode.toJson(),
    'timestamp': instance.timestamp.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('index', instance.index);
  writeNotNull('crumbs', instance.crumbs);
  val['runtimeType'] = instance.$type;
  return val;
}

_$ScreenRecordingQrPlusData _$$ScreenRecordingQrPlusDataFromJson(
        Map<String, dynamic> json) =>
    _$ScreenRecordingQrPlusData(
      id: json['id'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int?,
      crumbs: json['crumbs'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ScreenRecordingQrPlusDataToJson(
    _$ScreenRecordingQrPlusData instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'data': instance.data,
    'mode': instance.mode.toJson(),
    'timestamp': instance.timestamp.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('index', instance.index);
  writeNotNull('crumbs', instance.crumbs);
  val['runtimeType'] = instance.$type;
  return val;
}
