// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrPlusRendererState {
  /// The security mode used to create the QR-code.
  QrPlusMode get mode => throw _privateConstructorUsedError;

  /// The plain string data provided by the package user.
  String get plainData => throw _privateConstructorUsedError;

  /// The [QrPlusData] generated from the [plainData] given by the user.
  QrPlusData get data => throw _privateConstructorUsedError;

  /// The index of the crumb that is currently being rendered to the user.
  int get crumbledDataIndex => throw _privateConstructorUsedError;

  /// A state of the devices mobile connections. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  ConnectivityResult get connectivity => throw _privateConstructorUsedError;

  /// The current status of the screen recorder. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  ScreenRecorderStatus get screenRecorderStatus =>
      throw _privateConstructorUsedError;

  /// A status for detecting cheating attempts by the renderer.
  QrPlusAuthenticity get authenticity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrPlusRendererStateCopyWith<QrPlusRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrPlusRendererStateCopyWith<$Res> {
  factory $QrPlusRendererStateCopyWith(
          QrPlusRendererState value, $Res Function(QrPlusRendererState) then) =
      _$QrPlusRendererStateCopyWithImpl<$Res, QrPlusRendererState>;
  @useResult
  $Res call(
      {QrPlusMode mode,
      String plainData,
      QrPlusData data,
      int crumbledDataIndex,
      ConnectivityResult connectivity,
      ScreenRecorderStatus screenRecorderStatus,
      QrPlusAuthenticity authenticity});

  $QrPlusModeCopyWith<$Res> get mode;
  $QrPlusDataCopyWith<$Res> get data;
}

/// @nodoc
class _$QrPlusRendererStateCopyWithImpl<$Res, $Val extends QrPlusRendererState>
    implements $QrPlusRendererStateCopyWith<$Res> {
  _$QrPlusRendererStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? plainData = null,
    Object? data = null,
    Object? crumbledDataIndex = null,
    Object? connectivity = null,
    Object? screenRecorderStatus = null,
    Object? authenticity = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode,
      plainData: null == plainData
          ? _value.plainData
          : plainData // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QrPlusData,
      crumbledDataIndex: null == crumbledDataIndex
          ? _value.crumbledDataIndex
          : crumbledDataIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectivity: null == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
      screenRecorderStatus: null == screenRecorderStatus
          ? _value.screenRecorderStatus
          : screenRecorderStatus // ignore: cast_nullable_to_non_nullable
              as ScreenRecorderStatus,
      authenticity: null == authenticity
          ? _value.authenticity
          : authenticity // ignore: cast_nullable_to_non_nullable
              as QrPlusAuthenticity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QrPlusModeCopyWith<$Res> get mode {
    return $QrPlusModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QrPlusDataCopyWith<$Res> get data {
    return $QrPlusDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QrPlusRendererStateCopyWith<$Res>
    implements $QrPlusRendererStateCopyWith<$Res> {
  factory _$$_QrPlusRendererStateCopyWith(_$_QrPlusRendererState value,
          $Res Function(_$_QrPlusRendererState) then) =
      __$$_QrPlusRendererStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QrPlusMode mode,
      String plainData,
      QrPlusData data,
      int crumbledDataIndex,
      ConnectivityResult connectivity,
      ScreenRecorderStatus screenRecorderStatus,
      QrPlusAuthenticity authenticity});

  @override
  $QrPlusModeCopyWith<$Res> get mode;
  @override
  $QrPlusDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_QrPlusRendererStateCopyWithImpl<$Res>
    extends _$QrPlusRendererStateCopyWithImpl<$Res, _$_QrPlusRendererState>
    implements _$$_QrPlusRendererStateCopyWith<$Res> {
  __$$_QrPlusRendererStateCopyWithImpl(_$_QrPlusRendererState _value,
      $Res Function(_$_QrPlusRendererState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? plainData = null,
    Object? data = null,
    Object? crumbledDataIndex = null,
    Object? connectivity = null,
    Object? screenRecorderStatus = null,
    Object? authenticity = null,
  }) {
    return _then(_$_QrPlusRendererState(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as QrPlusMode,
      plainData: null == plainData
          ? _value.plainData
          : plainData // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QrPlusData,
      crumbledDataIndex: null == crumbledDataIndex
          ? _value.crumbledDataIndex
          : crumbledDataIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectivity: null == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
      screenRecorderStatus: null == screenRecorderStatus
          ? _value.screenRecorderStatus
          : screenRecorderStatus // ignore: cast_nullable_to_non_nullable
              as ScreenRecorderStatus,
      authenticity: null == authenticity
          ? _value.authenticity
          : authenticity // ignore: cast_nullable_to_non_nullable
              as QrPlusAuthenticity,
    ));
  }
}

/// @nodoc

class _$_QrPlusRendererState implements _QrPlusRendererState {
  const _$_QrPlusRendererState(
      {required this.mode,
      required this.plainData,
      this.data = const QrPlusData.unknown(),
      this.crumbledDataIndex = 0,
      this.connectivity = ConnectivityResult.mobile,
      this.screenRecorderStatus = ScreenRecorderStatus.recorderOff,
      this.authenticity = QrPlusAuthenticity.authentic});

  /// The security mode used to create the QR-code.
  @override
  final QrPlusMode mode;

  /// The plain string data provided by the package user.
  @override
  final String plainData;

  /// The [QrPlusData] generated from the [plainData] given by the user.
  @override
  @JsonKey()
  final QrPlusData data;

  /// The index of the crumb that is currently being rendered to the user.
  @override
  @JsonKey()
  final int crumbledDataIndex;

  /// A state of the devices mobile connections. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  @override
  @JsonKey()
  final ConnectivityResult connectivity;

  /// The current status of the screen recorder. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  @override
  @JsonKey()
  final ScreenRecorderStatus screenRecorderStatus;

  /// A status for detecting cheating attempts by the renderer.
  @override
  @JsonKey()
  final QrPlusAuthenticity authenticity;

  @override
  String toString() {
    return 'QrPlusRendererState(mode: $mode, plainData: $plainData, data: $data, crumbledDataIndex: $crumbledDataIndex, connectivity: $connectivity, screenRecorderStatus: $screenRecorderStatus, authenticity: $authenticity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrPlusRendererState &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.plainData, plainData) ||
                other.plainData == plainData) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.crumbledDataIndex, crumbledDataIndex) ||
                other.crumbledDataIndex == crumbledDataIndex) &&
            (identical(other.connectivity, connectivity) ||
                other.connectivity == connectivity) &&
            (identical(other.screenRecorderStatus, screenRecorderStatus) ||
                other.screenRecorderStatus == screenRecorderStatus) &&
            (identical(other.authenticity, authenticity) ||
                other.authenticity == authenticity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, plainData, data,
      crumbledDataIndex, connectivity, screenRecorderStatus, authenticity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrPlusRendererStateCopyWith<_$_QrPlusRendererState> get copyWith =>
      __$$_QrPlusRendererStateCopyWithImpl<_$_QrPlusRendererState>(
          this, _$identity);
}

abstract class _QrPlusRendererState implements QrPlusRendererState {
  const factory _QrPlusRendererState(
      {required final QrPlusMode mode,
      required final String plainData,
      final QrPlusData data,
      final int crumbledDataIndex,
      final ConnectivityResult connectivity,
      final ScreenRecorderStatus screenRecorderStatus,
      final QrPlusAuthenticity authenticity}) = _$_QrPlusRendererState;

  @override

  /// The security mode used to create the QR-code.
  QrPlusMode get mode;
  @override

  /// The plain string data provided by the package user.
  String get plainData;
  @override

  /// The [QrPlusData] generated from the [plainData] given by the user.
  QrPlusData get data;
  @override

  /// The index of the crumb that is currently being rendered to the user.
  int get crumbledDataIndex;
  @override

  /// A state of the devices mobile connections. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  ConnectivityResult get connectivity;
  @override

  /// The current status of the screen recorder. This is relevant for detecting cheating attempts
  /// and constructing the proper [QrPlusAuthenticity].
  ScreenRecorderStatus get screenRecorderStatus;
  @override

  /// A status for detecting cheating attempts by the renderer.
  QrPlusAuthenticity get authenticity;
  @override
  @JsonKey(ignore: true)
  _$$_QrPlusRendererStateCopyWith<_$_QrPlusRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}
