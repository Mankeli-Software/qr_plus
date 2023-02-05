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

/// @nodoc
mixin _$QrPlusData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs) $default, {
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QrPlusData value) $default, {
    required TResult Function(UnknownQrPlusData value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QrPlusData value)? $default, {
    TResult? Function(UnknownQrPlusData value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QrPlusData value)? $default, {
    TResult Function(UnknownQrPlusData value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class _$$_QrPlusDataCopyWith<$Res> {
  factory _$$_QrPlusDataCopyWith(
          _$_QrPlusData value, $Res Function(_$_QrPlusData) then) =
      __$$_QrPlusDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, List<QrPlusDataCrumb> crumbs});
}

/// @nodoc
class __$$_QrPlusDataCopyWithImpl<$Res>
    extends _$QrPlusDataCopyWithImpl<$Res, _$_QrPlusData>
    implements _$$_QrPlusDataCopyWith<$Res> {
  __$$_QrPlusDataCopyWithImpl(
      _$_QrPlusData _value, $Res Function(_$_QrPlusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? crumbs = null,
  }) {
    return _then(_$_QrPlusData(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      crumbs: null == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrPlusDataCrumb>,
    ));
  }
}

/// @nodoc

class _$_QrPlusData extends _QrPlusData {
  const _$_QrPlusData(
      {required this.uid,
      final List<QrPlusDataCrumb> crumbs = const <QrPlusDataCrumb>[]})
      : _crumbs = crumbs,
        super._();

  @override
  final String uid;
  final List<QrPlusDataCrumb> _crumbs;
  @override
  @JsonKey()
  List<QrPlusDataCrumb> get crumbs {
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crumbs);
  }

  @override
  String toString() {
    return 'QrPlusData(uid: $uid, crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrPlusData &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uid, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrPlusDataCopyWith<_$_QrPlusData> get copyWith =>
      __$$_QrPlusDataCopyWithImpl<_$_QrPlusData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs) $default, {
    required TResult Function() unknown,
  }) {
    return $default(uid, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult? Function()? unknown,
  }) {
    return $default?.call(uid, crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QrPlusData value) $default, {
    required TResult Function(UnknownQrPlusData value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QrPlusData value)? $default, {
    TResult? Function(UnknownQrPlusData value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QrPlusData value)? $default, {
    TResult Function(UnknownQrPlusData value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QrPlusData extends QrPlusData {
  const factory _QrPlusData(
      {required final String uid,
      final List<QrPlusDataCrumb> crumbs}) = _$_QrPlusData;
  const _QrPlusData._() : super._();

  String get uid;
  List<QrPlusDataCrumb> get crumbs;
  @JsonKey(ignore: true)
  _$$_QrPlusDataCopyWith<_$_QrPlusData> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$UnknownQrPlusData extends UnknownQrPlusData {
  const _$UnknownQrPlusData() : super._();

  @override
  String toString() {
    return 'QrPlusData.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownQrPlusData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs) $default, {
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, List<QrPlusDataCrumb> crumbs)? $default, {
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QrPlusData value) $default, {
    required TResult Function(UnknownQrPlusData value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QrPlusData value)? $default, {
    TResult? Function(UnknownQrPlusData value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QrPlusData value)? $default, {
    TResult Function(UnknownQrPlusData value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownQrPlusData extends QrPlusData {
  const factory UnknownQrPlusData() = _$UnknownQrPlusData;
  const UnknownQrPlusData._() : super._();
}
