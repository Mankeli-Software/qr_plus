// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrData {
  List<QrDataCrumb>? get crumbs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrDataCopyWith<QrData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrDataCopyWith<$Res> {
  factory $QrDataCopyWith(QrData value, $Res Function(QrData) then) =
      _$QrDataCopyWithImpl<$Res, QrData>;
  @useResult
  $Res call({List<QrDataCrumb> crumbs});
}

/// @nodoc
class _$QrDataCopyWithImpl<$Res, $Val extends QrData>
    implements $QrDataCopyWith<$Res> {
  _$QrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_value.copyWith(
      crumbs: null == crumbs
          ? _value.crumbs!
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteQrDataCopyWith<$Res>
    implements $QrDataCopyWith<$Res> {
  factory _$$CompleteQrDataCopyWith(
          _$CompleteQrData value, $Res Function(_$CompleteQrData) then) =
      __$$CompleteQrDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QrDataCrumb> crumbs});
}

/// @nodoc
class __$$CompleteQrDataCopyWithImpl<$Res>
    extends _$QrDataCopyWithImpl<$Res, _$CompleteQrData>
    implements _$$CompleteQrDataCopyWith<$Res> {
  __$$CompleteQrDataCopyWithImpl(
      _$CompleteQrData _value, $Res Function(_$CompleteQrData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = null,
  }) {
    return _then(_$CompleteQrData(
      crumbs: null == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>,
    ));
  }
}

/// @nodoc

class _$CompleteQrData extends CompleteQrData {
  _$CompleteQrData({required final List<QrDataCrumb> crumbs})
      : _crumbs = crumbs,
        super._();

  final List<QrDataCrumb> _crumbs;
  @override
  List<QrDataCrumb> get crumbs {
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crumbs);
  }

  @override
  String toString() {
    return 'QrData.complete(crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteQrData &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteQrDataCopyWith<_$CompleteQrData> get copyWith =>
      __$$CompleteQrDataCopyWithImpl<_$CompleteQrData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) {
    return complete(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) {
    return complete?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteQrData extends QrData {
  factory CompleteQrData({required final List<QrDataCrumb> crumbs}) =
      _$CompleteQrData;
  CompleteQrData._() : super._();

  @override
  List<QrDataCrumb> get crumbs;
  @override
  @JsonKey(ignore: true)
  _$$CompleteQrDataCopyWith<_$CompleteQrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncompleteQrDataCopyWith<$Res>
    implements $QrDataCopyWith<$Res> {
  factory _$$IncompleteQrDataCopyWith(
          _$IncompleteQrData value, $Res Function(_$IncompleteQrData) then) =
      __$$IncompleteQrDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QrDataCrumb>? crumbs});
}

/// @nodoc
class __$$IncompleteQrDataCopyWithImpl<$Res>
    extends _$QrDataCopyWithImpl<$Res, _$IncompleteQrData>
    implements _$$IncompleteQrDataCopyWith<$Res> {
  __$$IncompleteQrDataCopyWithImpl(
      _$IncompleteQrData _value, $Res Function(_$IncompleteQrData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crumbs = freezed,
  }) {
    return _then(_$IncompleteQrData(
      crumbs: freezed == crumbs
          ? _value._crumbs
          : crumbs // ignore: cast_nullable_to_non_nullable
              as List<QrDataCrumb>?,
    ));
  }
}

/// @nodoc

class _$IncompleteQrData extends IncompleteQrData {
  _$IncompleteQrData({final List<QrDataCrumb>? crumbs})
      : _crumbs = crumbs,
        super._();

  final List<QrDataCrumb>? _crumbs;
  @override
  List<QrDataCrumb>? get crumbs {
    final value = _crumbs;
    if (value == null) return null;
    if (_crumbs is EqualUnmodifiableListView) return _crumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QrData.incomplete(crumbs: $crumbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncompleteQrData &&
            const DeepCollectionEquality().equals(other._crumbs, _crumbs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_crumbs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncompleteQrDataCopyWith<_$IncompleteQrData> get copyWith =>
      __$$IncompleteQrDataCopyWithImpl<_$IncompleteQrData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QrDataCrumb> crumbs) complete,
    required TResult Function(List<QrDataCrumb>? crumbs) incomplete,
  }) {
    return incomplete(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QrDataCrumb> crumbs)? complete,
    TResult? Function(List<QrDataCrumb>? crumbs)? incomplete,
  }) {
    return incomplete?.call(crumbs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QrDataCrumb> crumbs)? complete,
    TResult Function(List<QrDataCrumb>? crumbs)? incomplete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(crumbs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteQrData value) complete,
    required TResult Function(IncompleteQrData value) incomplete,
  }) {
    return incomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteQrData value)? complete,
    TResult? Function(IncompleteQrData value)? incomplete,
  }) {
    return incomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteQrData value)? complete,
    TResult Function(IncompleteQrData value)? incomplete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(this);
    }
    return orElse();
  }
}

abstract class IncompleteQrData extends QrData {
  factory IncompleteQrData({final List<QrDataCrumb>? crumbs}) =
      _$IncompleteQrData;
  IncompleteQrData._() : super._();

  @override
  List<QrDataCrumb>? get crumbs;
  @override
  @JsonKey(ignore: true)
  _$$IncompleteQrDataCopyWith<_$IncompleteQrData> get copyWith =>
      throw _privateConstructorUsedError;
}
