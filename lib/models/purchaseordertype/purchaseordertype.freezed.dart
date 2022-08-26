// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseordertype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrdertype _$PurchaseOrdertypeFromJson(Map<String, dynamic> json) {
  return _PurchaseOrdertype.fromJson(json);
}

/// @nodoc
class _$PurchaseOrdertypeTearOff {
  const _$PurchaseOrdertypeTearOff();

  _PurchaseOrdertype call(
      {@JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType,
      @JsonKey(name: "order_modes") List<String>? orderMode}) {
    return _PurchaseOrdertype(
      orderTypes: orderTypes,
      discountType: discountType,
      orderMode: orderMode,
    );
  }

  PurchaseOrdertype fromJson(Map<String, Object> json) {
    return PurchaseOrdertype.fromJson(json);
  }
}

/// @nodoc
const $PurchaseOrdertype = _$PurchaseOrdertypeTearOff();

/// @nodoc
mixin _$PurchaseOrdertype {
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_modes")
  List<String>? get orderMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrdertypeCopyWith<PurchaseOrdertype> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrdertypeCopyWith<$Res> {
  factory $PurchaseOrdertypeCopyWith(
          PurchaseOrdertype value, $Res Function(PurchaseOrdertype) then) =
      _$PurchaseOrdertypeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType,
      @JsonKey(name: "order_modes") List<String>? orderMode});
}

/// @nodoc
class _$PurchaseOrdertypeCopyWithImpl<$Res>
    implements $PurchaseOrdertypeCopyWith<$Res> {
  _$PurchaseOrdertypeCopyWithImpl(this._value, this._then);

  final PurchaseOrdertype _value;
  // ignore: unused_field
  final $Res Function(PurchaseOrdertype) _then;

  @override
  $Res call({
    Object? orderTypes = freezed,
    Object? discountType = freezed,
    Object? orderMode = freezed,
  }) {
    return _then(_value.copyWith(
      orderTypes: orderTypes == freezed
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseOrdertypeCopyWith<$Res>
    implements $PurchaseOrdertypeCopyWith<$Res> {
  factory _$PurchaseOrdertypeCopyWith(
          _PurchaseOrdertype value, $Res Function(_PurchaseOrdertype) then) =
      __$PurchaseOrdertypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType,
      @JsonKey(name: "order_modes") List<String>? orderMode});
}

/// @nodoc
class __$PurchaseOrdertypeCopyWithImpl<$Res>
    extends _$PurchaseOrdertypeCopyWithImpl<$Res>
    implements _$PurchaseOrdertypeCopyWith<$Res> {
  __$PurchaseOrdertypeCopyWithImpl(
      _PurchaseOrdertype _value, $Res Function(_PurchaseOrdertype) _then)
      : super(_value, (v) => _then(v as _PurchaseOrdertype));

  @override
  _PurchaseOrdertype get _value => super._value as _PurchaseOrdertype;

  @override
  $Res call({
    Object? orderTypes = freezed,
    Object? discountType = freezed,
    Object? orderMode = freezed,
  }) {
    return _then(_PurchaseOrdertype(
      orderTypes: orderTypes == freezed
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrdertype implements _PurchaseOrdertype {
  const _$_PurchaseOrdertype(
      {@JsonKey(name: "order_types") this.orderTypes,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "order_modes") this.orderMode});

  factory _$_PurchaseOrdertype.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrdertypeFromJson(json);

  @override
  @JsonKey(name: "order_types")
  final List<String>? orderTypes;
  @override
  @JsonKey(name: "discount_type")
  final List<String>? discountType;
  @override
  @JsonKey(name: "order_modes")
  final List<String>? orderMode;

  @override
  String toString() {
    return 'PurchaseOrdertype(orderTypes: $orderTypes, discountType: $discountType, orderMode: $orderMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseOrdertype &&
            (identical(other.orderTypes, orderTypes) ||
                const DeepCollectionEquality()
                    .equals(other.orderTypes, orderTypes)) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality()
                    .equals(other.discountType, discountType)) &&
            (identical(other.orderMode, orderMode) ||
                const DeepCollectionEquality()
                    .equals(other.orderMode, orderMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderTypes) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(orderMode);

  @JsonKey(ignore: true)
  @override
  _$PurchaseOrdertypeCopyWith<_PurchaseOrdertype> get copyWith =>
      __$PurchaseOrdertypeCopyWithImpl<_PurchaseOrdertype>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrdertypeToJson(this);
  }
}

abstract class _PurchaseOrdertype implements PurchaseOrdertype {
  const factory _PurchaseOrdertype(
          {@JsonKey(name: "order_types") List<String>? orderTypes,
          @JsonKey(name: "discount_type") List<String>? discountType,
          @JsonKey(name: "order_modes") List<String>? orderMode}) =
      _$_PurchaseOrdertype;

  factory _PurchaseOrdertype.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrdertype.fromJson;

  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_modes")
  List<String>? get orderMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseOrdertypeCopyWith<_PurchaseOrdertype> get copyWith =>
      throw _privateConstructorUsedError;
}
