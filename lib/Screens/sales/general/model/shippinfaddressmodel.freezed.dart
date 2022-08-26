// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shippinfaddressmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingAddressModel _$ShippingAddressModelFromJson(Map<String, dynamic> json) {
  return _ShippingAddressModel.fromJson(json);
}

/// @nodoc
class _$ShippingAddressModelTearOff {
  const _$ShippingAddressModelTearOff();

  _ShippingAddressModel call(
      {int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "building_name") String? buildingName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "customer_id") String? customerId}) {
    return _ShippingAddressModel(
      id: id,
      discount: discount,
      vat: vat,
      note: note,
      remarks: remarks,
      fullName: fullName,
      buildingName: buildingName,
      streetName: streetName,
      customerId: customerId,
    );
  }

  ShippingAddressModel fromJson(Map<String, Object> json) {
    return ShippingAddressModel.fromJson(json);
  }
}

/// @nodoc
const $ShippingAddressModel = _$ShippingAddressModelTearOff();

/// @nodoc
mixin _$ShippingAddressModel {
  int? get id => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "building_name")
  String? get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: "street_name")
  String? get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressModelCopyWith<ShippingAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressModelCopyWith<$Res> {
  factory $ShippingAddressModelCopyWith(ShippingAddressModel value,
          $Res Function(ShippingAddressModel) then) =
      _$ShippingAddressModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "building_name") String? buildingName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "customer_id") String? customerId});
}

/// @nodoc
class _$ShippingAddressModelCopyWithImpl<$Res>
    implements $ShippingAddressModelCopyWith<$Res> {
  _$ShippingAddressModelCopyWithImpl(this._value, this._then);

  final ShippingAddressModel _value;
  // ignore: unused_field
  final $Res Function(ShippingAddressModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? fullName = freezed,
    Object? buildingName = freezed,
    Object? streetName = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingAddressModelCopyWith<$Res>
    implements $ShippingAddressModelCopyWith<$Res> {
  factory _$ShippingAddressModelCopyWith(_ShippingAddressModel value,
          $Res Function(_ShippingAddressModel) then) =
      __$ShippingAddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "building_name") String? buildingName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "customer_id") String? customerId});
}

/// @nodoc
class __$ShippingAddressModelCopyWithImpl<$Res>
    extends _$ShippingAddressModelCopyWithImpl<$Res>
    implements _$ShippingAddressModelCopyWith<$Res> {
  __$ShippingAddressModelCopyWithImpl(
      _ShippingAddressModel _value, $Res Function(_ShippingAddressModel) _then)
      : super(_value, (v) => _then(v as _ShippingAddressModel));

  @override
  _ShippingAddressModel get _value => super._value as _ShippingAddressModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? fullName = freezed,
    Object? buildingName = freezed,
    Object? streetName = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_ShippingAddressModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingAddressModel implements _ShippingAddressModel {
  const _$_ShippingAddressModel(
      {this.id,
      this.discount,
      this.vat,
      this.note,
      this.remarks,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "building_name") this.buildingName,
      @JsonKey(name: "street_name") this.streetName,
      @JsonKey(name: "customer_id") this.customerId});

  factory _$_ShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingAddressModelFromJson(json);

  @override
  final int? id;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? note;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "building_name")
  final String? buildingName;
  @override
  @JsonKey(name: "street_name")
  final String? streetName;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;

  @override
  String toString() {
    return 'ShippingAddressModel(id: $id, discount: $discount, vat: $vat, note: $note, remarks: $remarks, fullName: $fullName, buildingName: $buildingName, streetName: $streetName, customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShippingAddressModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.buildingName, buildingName) ||
                const DeepCollectionEquality()
                    .equals(other.buildingName, buildingName)) &&
            (identical(other.streetName, streetName) ||
                const DeepCollectionEquality()
                    .equals(other.streetName, streetName)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(buildingName) ^
      const DeepCollectionEquality().hash(streetName) ^
      const DeepCollectionEquality().hash(customerId);

  @JsonKey(ignore: true)
  @override
  _$ShippingAddressModelCopyWith<_ShippingAddressModel> get copyWith =>
      __$ShippingAddressModelCopyWithImpl<_ShippingAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingAddressModelToJson(this);
  }
}

abstract class _ShippingAddressModel implements ShippingAddressModel {
  const factory _ShippingAddressModel(
          {int? id,
          double? discount,
          double? vat,
          String? note,
          String? remarks,
          @JsonKey(name: "full_name") String? fullName,
          @JsonKey(name: "building_name") String? buildingName,
          @JsonKey(name: "street_name") String? streetName,
          @JsonKey(name: "customer_id") String? customerId}) =
      _$_ShippingAddressModel;

  factory _ShippingAddressModel.fromJson(Map<String, dynamic> json) =
      _$_ShippingAddressModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "building_name")
  String? get buildingName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "street_name")
  String? get streetName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShippingAddressModelCopyWith<_ShippingAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesInvoiceCodeModel _$SalesInvoiceCodeModelFromJson(
    Map<String, dynamic> json) {
  return _SalesInvoiceCodeModel.fromJson(json);
}

/// @nodoc
class _$SalesInvoiceCodeModelTearOff {
  const _$SalesInvoiceCodeModelTearOff();

  _SalesInvoiceCodeModel call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_code") String? invoiceCode}) {
    return _SalesInvoiceCodeModel(
      id: id,
      inventoryId: inventoryId,
      invoiceCode: invoiceCode,
    );
  }

  SalesInvoiceCodeModel fromJson(Map<String, Object> json) {
    return SalesInvoiceCodeModel.fromJson(json);
  }
}

/// @nodoc
const $SalesInvoiceCodeModel = _$SalesInvoiceCodeModelTearOff();

/// @nodoc
mixin _$SalesInvoiceCodeModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesInvoiceCodeModelCopyWith<SalesInvoiceCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesInvoiceCodeModelCopyWith<$Res> {
  factory $SalesInvoiceCodeModelCopyWith(SalesInvoiceCodeModel value,
          $Res Function(SalesInvoiceCodeModel) then) =
      _$SalesInvoiceCodeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_code") String? invoiceCode});
}

/// @nodoc
class _$SalesInvoiceCodeModelCopyWithImpl<$Res>
    implements $SalesInvoiceCodeModelCopyWith<$Res> {
  _$SalesInvoiceCodeModelCopyWithImpl(this._value, this._then);

  final SalesInvoiceCodeModel _value;
  // ignore: unused_field
  final $Res Function(SalesInvoiceCodeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? inventoryId = freezed,
    Object? invoiceCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SalesInvoiceCodeModelCopyWith<$Res>
    implements $SalesInvoiceCodeModelCopyWith<$Res> {
  factory _$SalesInvoiceCodeModelCopyWith(_SalesInvoiceCodeModel value,
          $Res Function(_SalesInvoiceCodeModel) then) =
      __$SalesInvoiceCodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_code") String? invoiceCode});
}

/// @nodoc
class __$SalesInvoiceCodeModelCopyWithImpl<$Res>
    extends _$SalesInvoiceCodeModelCopyWithImpl<$Res>
    implements _$SalesInvoiceCodeModelCopyWith<$Res> {
  __$SalesInvoiceCodeModelCopyWithImpl(_SalesInvoiceCodeModel _value,
      $Res Function(_SalesInvoiceCodeModel) _then)
      : super(_value, (v) => _then(v as _SalesInvoiceCodeModel));

  @override
  _SalesInvoiceCodeModel get _value => super._value as _SalesInvoiceCodeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? inventoryId = freezed,
    Object? invoiceCode = freezed,
  }) {
    return _then(_SalesInvoiceCodeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesInvoiceCodeModel implements _SalesInvoiceCodeModel {
  const _$_SalesInvoiceCodeModel(
      {this.id,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoice_code") this.invoiceCode});

  factory _$_SalesInvoiceCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesInvoiceCodeModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;

  @override
  String toString() {
    return 'SalesInvoiceCodeModel(id: $id, inventoryId: $inventoryId, invoiceCode: $invoiceCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesInvoiceCodeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(invoiceCode);

  @JsonKey(ignore: true)
  @override
  _$SalesInvoiceCodeModelCopyWith<_SalesInvoiceCodeModel> get copyWith =>
      __$SalesInvoiceCodeModelCopyWithImpl<_SalesInvoiceCodeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesInvoiceCodeModelToJson(this);
  }
}

abstract class _SalesInvoiceCodeModel implements SalesInvoiceCodeModel {
  const factory _SalesInvoiceCodeModel(
          {int? id,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "invoice_code") String? invoiceCode}) =
      _$_SalesInvoiceCodeModel;

  factory _SalesInvoiceCodeModel.fromJson(Map<String, dynamic> json) =
      _$_SalesInvoiceCodeModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesInvoiceCodeModelCopyWith<_SalesInvoiceCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
