// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventory_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryRead _$InventoryReadFromJson(Map<String, dynamic> json) {
  return _InventoryRead.fromJson(json);
}

/// @nodoc
class _$InventoryReadTearOff {
  const _$InventoryReadTearOff();

  _InventoryRead call(
      {@JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? payementStatus,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "calculation_data") CalculationData? calculationData,
      @JsonKey(name: "invoice_data") InvoiceData? invoicedata,
      List<Lines>? lines}) {
    return _InventoryRead(
      orderCode: orderCode,
      orderDate: orderDate,
      inventoryId: inventoryId,
      paymentCode: paymentCode,
      payementStatus: payementStatus,
      orderStatus: orderStatus,
      calculationData: calculationData,
      invoicedata: invoicedata,
      lines: lines,
    );
  }

  InventoryRead fromJson(Map<String, Object> json) {
    return InventoryRead.fromJson(json);
  }
}

/// @nodoc
const $InventoryRead = _$InventoryReadTearOff();

/// @nodoc
mixin _$InventoryRead {
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get payementStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "calculation_data")
  CalculationData? get calculationData => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoicedata => throw _privateConstructorUsedError;
  List<Lines>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryReadCopyWith<InventoryRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReadCopyWith<$Res> {
  factory $InventoryReadCopyWith(
          InventoryRead value, $Res Function(InventoryRead) then) =
      _$InventoryReadCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? payementStatus,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "calculation_data") CalculationData? calculationData,
      @JsonKey(name: "invoice_data") InvoiceData? invoicedata,
      List<Lines>? lines});

  $CalculationDataCopyWith<$Res>? get calculationData;
  $InvoiceDataCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class _$InventoryReadCopyWithImpl<$Res>
    implements $InventoryReadCopyWith<$Res> {
  _$InventoryReadCopyWithImpl(this._value, this._then);

  final InventoryRead _value;
  // ignore: unused_field
  final $Res Function(InventoryRead) _then;

  @override
  $Res call({
    Object? orderCode = freezed,
    Object? orderDate = freezed,
    Object? inventoryId = freezed,
    Object? paymentCode = freezed,
    Object? payementStatus = freezed,
    Object? orderStatus = freezed,
    Object? calculationData = freezed,
    Object? invoicedata = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      payementStatus: payementStatus == freezed
          ? _value.payementStatus
          : payementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      calculationData: calculationData == freezed
          ? _value.calculationData
          : calculationData // ignore: cast_nullable_to_non_nullable
              as CalculationData?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }

  @override
  $CalculationDataCopyWith<$Res>? get calculationData {
    if (_value.calculationData == null) {
      return null;
    }

    return $CalculationDataCopyWith<$Res>(_value.calculationData!, (value) {
      return _then(_value.copyWith(calculationData: value));
    });
  }

  @override
  $InvoiceDataCopyWith<$Res>? get invoicedata {
    if (_value.invoicedata == null) {
      return null;
    }

    return $InvoiceDataCopyWith<$Res>(_value.invoicedata!, (value) {
      return _then(_value.copyWith(invoicedata: value));
    });
  }
}

/// @nodoc
abstract class _$InventoryReadCopyWith<$Res>
    implements $InventoryReadCopyWith<$Res> {
  factory _$InventoryReadCopyWith(
          _InventoryRead value, $Res Function(_InventoryRead) then) =
      __$InventoryReadCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? payementStatus,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "calculation_data") CalculationData? calculationData,
      @JsonKey(name: "invoice_data") InvoiceData? invoicedata,
      List<Lines>? lines});

  @override
  $CalculationDataCopyWith<$Res>? get calculationData;
  @override
  $InvoiceDataCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class __$InventoryReadCopyWithImpl<$Res>
    extends _$InventoryReadCopyWithImpl<$Res>
    implements _$InventoryReadCopyWith<$Res> {
  __$InventoryReadCopyWithImpl(
      _InventoryRead _value, $Res Function(_InventoryRead) _then)
      : super(_value, (v) => _then(v as _InventoryRead));

  @override
  _InventoryRead get _value => super._value as _InventoryRead;

  @override
  $Res call({
    Object? orderCode = freezed,
    Object? orderDate = freezed,
    Object? inventoryId = freezed,
    Object? paymentCode = freezed,
    Object? payementStatus = freezed,
    Object? orderStatus = freezed,
    Object? calculationData = freezed,
    Object? invoicedata = freezed,
    Object? lines = freezed,
  }) {
    return _then(_InventoryRead(
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      payementStatus: payementStatus == freezed
          ? _value.payementStatus
          : payementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      calculationData: calculationData == freezed
          ? _value.calculationData
          : calculationData // ignore: cast_nullable_to_non_nullable
              as CalculationData?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventoryRead implements _InventoryRead {
  const _$_InventoryRead(
      {@JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "ordered_date") this.orderDate,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "payment_code") this.paymentCode,
      @JsonKey(name: "payment_status") this.payementStatus,
      @JsonKey(name: "order_status") this.orderStatus,
      @JsonKey(name: "calculation_data") this.calculationData,
      @JsonKey(name: "invoice_data") this.invoicedata,
      this.lines});

  factory _$_InventoryRead.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryReadFromJson(json);

  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderDate;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "payment_code")
  final String? paymentCode;
  @override
  @JsonKey(name: "payment_status")
  final String? payementStatus;
  @override
  @JsonKey(name: "order_status")
  final String? orderStatus;
  @override
  @JsonKey(name: "calculation_data")
  final CalculationData? calculationData;
  @override
  @JsonKey(name: "invoice_data")
  final InvoiceData? invoicedata;
  @override
  final List<Lines>? lines;

  @override
  String toString() {
    return 'InventoryRead(orderCode: $orderCode, orderDate: $orderDate, inventoryId: $inventoryId, paymentCode: $paymentCode, payementStatus: $payementStatus, orderStatus: $orderStatus, calculationData: $calculationData, invoicedata: $invoicedata, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryRead &&
            (identical(other.orderCode, orderCode) ||
                const DeepCollectionEquality()
                    .equals(other.orderCode, orderCode)) &&
            (identical(other.orderDate, orderDate) ||
                const DeepCollectionEquality()
                    .equals(other.orderDate, orderDate)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.paymentCode, paymentCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentCode, paymentCode)) &&
            (identical(other.payementStatus, payementStatus) ||
                const DeepCollectionEquality()
                    .equals(other.payementStatus, payementStatus)) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatus, orderStatus)) &&
            (identical(other.calculationData, calculationData) ||
                const DeepCollectionEquality()
                    .equals(other.calculationData, calculationData)) &&
            (identical(other.invoicedata, invoicedata) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedata, invoicedata)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderCode) ^
      const DeepCollectionEquality().hash(orderDate) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(paymentCode) ^
      const DeepCollectionEquality().hash(payementStatus) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(calculationData) ^
      const DeepCollectionEquality().hash(invoicedata) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$InventoryReadCopyWith<_InventoryRead> get copyWith =>
      __$InventoryReadCopyWithImpl<_InventoryRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryReadToJson(this);
  }
}

abstract class _InventoryRead implements InventoryRead {
  const factory _InventoryRead(
      {@JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? payementStatus,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "calculation_data") CalculationData? calculationData,
      @JsonKey(name: "invoice_data") InvoiceData? invoicedata,
      List<Lines>? lines}) = _$_InventoryRead;

  factory _InventoryRead.fromJson(Map<String, dynamic> json) =
      _$_InventoryRead.fromJson;

  @override
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get payementStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_status")
  String? get orderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "calculation_data")
  CalculationData? get calculationData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoicedata => throw _privateConstructorUsedError;
  @override
  List<Lines>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryReadCopyWith<_InventoryRead> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculationData _$CalculationDataFromJson(Map<String, dynamic> json) {
  return _CalculationData.fromJson(json);
}

/// @nodoc
class _$CalculationDataTearOff {
  const _$CalculationDataTearOff();

  _CalculationData call(
      {double? discount,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost}) {
    return _CalculationData(
      discount: discount,
      foc: foc,
      vat: vat,
      vatableAmount: vatableAmount,
      grandtotal: grandtotal,
      actualCost: actualCost,
      excessTax: excessTax,
      unitCost: unitCost,
    );
  }

  CalculationData fromJson(Map<String, Object> json) {
    return CalculationData.fromJson(json);
  }
}

/// @nodoc
const $CalculationData = _$CalculationDataTearOff();

/// @nodoc
mixin _$CalculationData {
  double? get discount => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationDataCopyWith<CalculationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationDataCopyWith<$Res> {
  factory $CalculationDataCopyWith(
          CalculationData value, $Res Function(CalculationData) then) =
      _$CalculationDataCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost});
}

/// @nodoc
class _$CalculationDataCopyWithImpl<$Res>
    implements $CalculationDataCopyWith<$Res> {
  _$CalculationDataCopyWithImpl(this._value, this._then);

  final CalculationData _value;
  // ignore: unused_field
  final $Res Function(CalculationData) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
  }) {
    return _then(_value.copyWith(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CalculationDataCopyWith<$Res>
    implements $CalculationDataCopyWith<$Res> {
  factory _$CalculationDataCopyWith(
          _CalculationData value, $Res Function(_CalculationData) then) =
      __$CalculationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost});
}

/// @nodoc
class __$CalculationDataCopyWithImpl<$Res>
    extends _$CalculationDataCopyWithImpl<$Res>
    implements _$CalculationDataCopyWith<$Res> {
  __$CalculationDataCopyWithImpl(
      _CalculationData _value, $Res Function(_CalculationData) _then)
      : super(_value, (v) => _then(v as _CalculationData));

  @override
  _CalculationData get _value => super._value as _CalculationData;

  @override
  $Res call({
    Object? discount = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
  }) {
    return _then(_CalculationData(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationData implements _CalculationData {
  const _$_CalculationData(
      {this.discount,
      this.foc,
      this.vat,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "grand_total") this.grandtotal,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "unit_cost") this.unitCost});

  factory _$_CalculationData.fromJson(Map<String, dynamic> json) =>
      _$$_CalculationDataFromJson(json);

  @override
  final double? discount;
  @override
  final double? foc;
  @override
  final double? vat;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "grand_total")
  final double? grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;

  @override
  String toString() {
    return 'CalculationData(discount: $discount, foc: $foc, vat: $vat, vatableAmount: $vatableAmount, grandtotal: $grandtotal, actualCost: $actualCost, excessTax: $excessTax, unitCost: $unitCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculationData &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.grandtotal, grandtotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandtotal, grandtotal)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(grandtotal) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(unitCost);

  @JsonKey(ignore: true)
  @override
  _$CalculationDataCopyWith<_CalculationData> get copyWith =>
      __$CalculationDataCopyWithImpl<_CalculationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationDataToJson(this);
  }
}

abstract class _CalculationData implements CalculationData {
  const factory _CalculationData(
      {double? discount,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost}) = _$_CalculationData;

  factory _CalculationData.fromJson(Map<String, dynamic> json) =
      _$_CalculationData.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CalculationDataCopyWith<_CalculationData> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

/// @nodoc
class _$InvoiceDataTearOff {
  const _$InvoiceDataTearOff();

  _InvoiceData call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines}) {
    return _InvoiceData(
      discount: discount,
      notes: notes,
      remarks: remarks,
      foc: foc,
      vat: vat,
      vatableAmount: vatableAmount,
      orderCode: orderCode,
      inventoryId: inventoryId,
      invoicedBy: invoicedBy,
      invoicedCode: invoicedCode,
      invoiceStatus: invoiceStatus,
      grandtotal: grandtotal,
      actualCost: actualCost,
      excessTax: excessTax,
      unitCost: unitCost,
      invoiceLines: invoiceLines,
    );
  }

  InvoiceData fromJson(Map<String, Object> json) {
    return InvoiceData.fromJson(json);
  }
}

/// @nodoc
const $InvoiceData = _$InvoiceDataTearOff();

/// @nodoc
mixin _$InvoiceData {
  double? get discount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoicedCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDataCopyWith<InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines});
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res> implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  final InvoiceData _value;
  // ignore: unused_field
  final $Res Function(InvoiceData) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? orderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? invoicedCode = freezed,
    Object? invoiceStatus = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? invoiceLines = freezed,
  }) {
    return _then(_value.copyWith(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: invoicedCode == freezed
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: invoiceLines == freezed
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceDataCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$InvoiceDataCopyWith(
          _InvoiceData value, $Res Function(_InvoiceData) then) =
      __$InvoiceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines});
}

/// @nodoc
class __$InvoiceDataCopyWithImpl<$Res> extends _$InvoiceDataCopyWithImpl<$Res>
    implements _$InvoiceDataCopyWith<$Res> {
  __$InvoiceDataCopyWithImpl(
      _InvoiceData _value, $Res Function(_InvoiceData) _then)
      : super(_value, (v) => _then(v as _InvoiceData));

  @override
  _InvoiceData get _value => super._value as _InvoiceData;

  @override
  $Res call({
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? orderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? invoicedCode = freezed,
    Object? invoiceStatus = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? invoiceLines = freezed,
  }) {
    return _then(_InvoiceData(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: invoicedCode == freezed
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: invoiceLines == freezed
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceData implements _InvoiceData {
  const _$_InvoiceData(
      {this.discount,
      this.notes,
      this.remarks,
      this.foc,
      this.vat,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "invoice_code") this.invoicedCode,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "grand_total") this.grandtotal,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "invoice_lines") this.invoiceLines});

  factory _$_InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDataFromJson(json);

  @override
  final double? discount;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  final double? foc;
  @override
  final double? vat;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoicedCode;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "grand_total")
  final double? grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "invoice_lines")
  final List<Lines>? invoiceLines;

  @override
  String toString() {
    return 'InvoiceData(discount: $discount, notes: $notes, remarks: $remarks, foc: $foc, vat: $vat, vatableAmount: $vatableAmount, orderCode: $orderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, invoicedCode: $invoicedCode, invoiceStatus: $invoiceStatus, grandtotal: $grandtotal, actualCost: $actualCost, excessTax: $excessTax, unitCost: $unitCost, invoiceLines: $invoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceData &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.orderCode, orderCode) ||
                const DeepCollectionEquality()
                    .equals(other.orderCode, orderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.invoicedBy, invoicedBy) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedBy, invoicedBy)) &&
            (identical(other.invoicedCode, invoicedCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedCode, invoicedCode)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceStatus, invoiceStatus)) &&
            (identical(other.grandtotal, grandtotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandtotal, grandtotal)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.invoiceLines, invoiceLines) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceLines, invoiceLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(orderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(invoicedBy) ^
      const DeepCollectionEquality().hash(invoicedCode) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(grandtotal) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(invoiceLines);

  @JsonKey(ignore: true)
  @override
  _$InvoiceDataCopyWith<_InvoiceData> get copyWith =>
      __$InvoiceDataCopyWithImpl<_InvoiceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDataToJson(this);
  }
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData(
          {double? discount,
          String? notes,
          String? remarks,
          double? foc,
          double? vat,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "order_code") String? orderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "invoiced_by") String? invoicedBy,
          @JsonKey(name: "invoice_code") String? invoicedCode,
          @JsonKey(name: "invoice_status") String? invoiceStatus,
          @JsonKey(name: "grand_total") double? grandtotal,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines}) =
      _$_InvoiceData;

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$_InvoiceData.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoicedCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvoiceDataCopyWith<_InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceLines _$InvoiceLinesFromJson(Map<String, dynamic> json) {
  return _InvoiceLines.fromJson(json);
}

/// @nodoc
class _$InvoiceLinesTearOff {
  const _$InvoiceLinesTearOff();

  _InvoiceLines call(
      {double? vat,
      bool? isRecieved,
      int? currentQty,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "purchase_uom") String? purchaseuom,
      @JsonKey(name: "cvd") String? cvd,
      @JsonKey(name: "foc") double? foc,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "requested_qty") int? requestedQty,
      @JsonKey(name: "minimum_qty") int? minimumQty,
      @JsonKey(name: "maximum_qty") int? maximumQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost}) {
    return _InvoiceLines(
      vat: vat,
      isRecieved: isRecieved,
      currentQty: currentQty,
      id: id,
      isActive: isActive,
      supplierCode: supplierCode,
      receiveLineCode: receiveLineCode,
      isFree: isFree,
      isInvoiced: isInvoiced,
      variantId: variantId,
      vendorRefCode: vendorRefCode,
      variantName: variantName,
      barcode: barcode,
      purchaseuom: purchaseuom,
      cvd: cvd,
      foc: foc,
      discount: discount,
      requestedQty: requestedQty,
      minimumQty: minimumQty,
      maximumQty: maximumQty,
      unitCost: unitCost,
      grandTotal: grandTotal,
      variableAmount: variableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
    );
  }

  InvoiceLines fromJson(Map<String, Object> json) {
    return InvoiceLines.fromJson(json);
  }
}

/// @nodoc
const $InvoiceLines = _$InvoiceLinesTearOff();

/// @nodoc
mixin _$InvoiceLines {
  double? get vat => throw _privateConstructorUsedError;
  bool? get isRecieved => throw _privateConstructorUsedError;
  int? get currentQty => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_code")
  String? get supplierCode => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseuom => throw _privateConstructorUsedError;
  @JsonKey(name: "cvd")
  String? get cvd => throw _privateConstructorUsedError;
  @JsonKey(name: "foc")
  double? get foc => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "requested_qty")
  int? get requestedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_qty")
  int? get minimumQty => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_qty")
  int? get maximumQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get variableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceLinesCopyWith<InvoiceLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceLinesCopyWith<$Res> {
  factory $InvoiceLinesCopyWith(
          InvoiceLines value, $Res Function(InvoiceLines) then) =
      _$InvoiceLinesCopyWithImpl<$Res>;
  $Res call(
      {double? vat,
      bool? isRecieved,
      int? currentQty,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "purchase_uom") String? purchaseuom,
      @JsonKey(name: "cvd") String? cvd,
      @JsonKey(name: "foc") double? foc,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "requested_qty") int? requestedQty,
      @JsonKey(name: "minimum_qty") int? minimumQty,
      @JsonKey(name: "maximum_qty") int? maximumQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost});
}

/// @nodoc
class _$InvoiceLinesCopyWithImpl<$Res> implements $InvoiceLinesCopyWith<$Res> {
  _$InvoiceLinesCopyWithImpl(this._value, this._then);

  final InvoiceLines _value;
  // ignore: unused_field
  final $Res Function(InvoiceLines) _then;

  @override
  $Res call({
    Object? vat = freezed,
    Object? isRecieved = freezed,
    Object? currentQty = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? supplierCode = freezed,
    Object? receiveLineCode = freezed,
    Object? isFree = freezed,
    Object? isInvoiced = freezed,
    Object? variantId = freezed,
    Object? vendorRefCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? purchaseuom = freezed,
    Object? cvd = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? requestedQty = freezed,
    Object? minimumQty = freezed,
    Object? maximumQty = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
  }) {
    return _then(_value.copyWith(
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isRecieved: isRecieved == freezed
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentQty: currentQty == freezed
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: receiveLineCode == freezed
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: vendorRefCode == freezed
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: purchaseuom == freezed
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      cvd: cvd == freezed
          ? _value.cvd
          : cvd // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedQty: requestedQty == freezed
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQty: minimumQty == freezed
          ? _value.minimumQty
          : minimumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQty: maximumQty == freezed
          ? _value.maximumQty
          : maximumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceLinesCopyWith<$Res>
    implements $InvoiceLinesCopyWith<$Res> {
  factory _$InvoiceLinesCopyWith(
          _InvoiceLines value, $Res Function(_InvoiceLines) then) =
      __$InvoiceLinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? vat,
      bool? isRecieved,
      int? currentQty,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "purchase_uom") String? purchaseuom,
      @JsonKey(name: "cvd") String? cvd,
      @JsonKey(name: "foc") double? foc,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "requested_qty") int? requestedQty,
      @JsonKey(name: "minimum_qty") int? minimumQty,
      @JsonKey(name: "maximum_qty") int? maximumQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost});
}

/// @nodoc
class __$InvoiceLinesCopyWithImpl<$Res> extends _$InvoiceLinesCopyWithImpl<$Res>
    implements _$InvoiceLinesCopyWith<$Res> {
  __$InvoiceLinesCopyWithImpl(
      _InvoiceLines _value, $Res Function(_InvoiceLines) _then)
      : super(_value, (v) => _then(v as _InvoiceLines));

  @override
  _InvoiceLines get _value => super._value as _InvoiceLines;

  @override
  $Res call({
    Object? vat = freezed,
    Object? isRecieved = freezed,
    Object? currentQty = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? supplierCode = freezed,
    Object? receiveLineCode = freezed,
    Object? isFree = freezed,
    Object? isInvoiced = freezed,
    Object? variantId = freezed,
    Object? vendorRefCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? purchaseuom = freezed,
    Object? cvd = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? requestedQty = freezed,
    Object? minimumQty = freezed,
    Object? maximumQty = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
  }) {
    return _then(_InvoiceLines(
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isRecieved: isRecieved == freezed
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentQty: currentQty == freezed
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: receiveLineCode == freezed
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: vendorRefCode == freezed
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: purchaseuom == freezed
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      cvd: cvd == freezed
          ? _value.cvd
          : cvd // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedQty: requestedQty == freezed
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQty: minimumQty == freezed
          ? _value.minimumQty
          : minimumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQty: maximumQty == freezed
          ? _value.maximumQty
          : maximumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceLines implements _InvoiceLines {
  const _$_InvoiceLines(
      {this.vat,
      this.isRecieved,
      this.currentQty,
      this.id,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "supplier_code") this.supplierCode,
      @JsonKey(name: "receiving_line_code") this.receiveLineCode,
      @JsonKey(name: "is_free") this.isFree,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "vendor_reference_code") this.vendorRefCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "purchase_uom") this.purchaseuom,
      @JsonKey(name: "cvd") this.cvd,
      @JsonKey(name: "foc") this.foc,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "requested_qty") this.requestedQty,
      @JsonKey(name: "minimum_qty") this.minimumQty,
      @JsonKey(name: "maximum_qty") this.maximumQty,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.variableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost});

  factory _$_InvoiceLines.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceLinesFromJson(json);

  @override
  final double? vat;
  @override
  final bool? isRecieved;
  @override
  final int? currentQty;
  @override
  final int? id;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "supplier_code")
  final String? supplierCode;
  @override
  @JsonKey(name: "receiving_line_code")
  final String? receiveLineCode;
  @override
  @JsonKey(name: "is_free")
  final bool? isFree;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorRefCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseuom;
  @override
  @JsonKey(name: "cvd")
  final String? cvd;
  @override
  @JsonKey(name: "foc")
  final double? foc;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "requested_qty")
  final int? requestedQty;
  @override
  @JsonKey(name: "minimum_qty")
  final int? minimumQty;
  @override
  @JsonKey(name: "maximum_qty")
  final int? maximumQty;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? variableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;

  @override
  String toString() {
    return 'InvoiceLines(vat: $vat, isRecieved: $isRecieved, currentQty: $currentQty, id: $id, isActive: $isActive, supplierCode: $supplierCode, receiveLineCode: $receiveLineCode, isFree: $isFree, isInvoiced: $isInvoiced, variantId: $variantId, vendorRefCode: $vendorRefCode, variantName: $variantName, barcode: $barcode, purchaseuom: $purchaseuom, cvd: $cvd, foc: $foc, discount: $discount, requestedQty: $requestedQty, minimumQty: $minimumQty, maximumQty: $maximumQty, unitCost: $unitCost, grandTotal: $grandTotal, variableAmount: $variableAmount, excessTax: $excessTax, actualCost: $actualCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceLines &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.isRecieved, isRecieved) ||
                const DeepCollectionEquality()
                    .equals(other.isRecieved, isRecieved)) &&
            (identical(other.currentQty, currentQty) ||
                const DeepCollectionEquality()
                    .equals(other.currentQty, currentQty)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.supplierCode, supplierCode) ||
                const DeepCollectionEquality()
                    .equals(other.supplierCode, supplierCode)) &&
            (identical(other.receiveLineCode, receiveLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiveLineCode, receiveLineCode)) &&
            (identical(other.isFree, isFree) ||
                const DeepCollectionEquality().equals(other.isFree, isFree)) &&
            (identical(other.isInvoiced, isInvoiced) ||
                const DeepCollectionEquality()
                    .equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorRefCode, vendorRefCode)) &&
            (identical(other.variantName, variantName) ||
                const DeepCollectionEquality()
                    .equals(other.variantName, variantName)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.purchaseuom, purchaseuom) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseuom, purchaseuom)) &&
            (identical(other.cvd, cvd) ||
                const DeepCollectionEquality().equals(other.cvd, cvd)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.requestedQty, requestedQty) ||
                const DeepCollectionEquality()
                    .equals(other.requestedQty, requestedQty)) &&
            (identical(other.minimumQty, minimumQty) ||
                const DeepCollectionEquality()
                    .equals(other.minimumQty, minimumQty)) &&
            (identical(other.maximumQty, maximumQty) ||
                const DeepCollectionEquality()
                    .equals(other.maximumQty, maximumQty)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.variableAmount, variableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.variableAmount, variableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) || const DeepCollectionEquality().equals(other.actualCost, actualCost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(isRecieved) ^
      const DeepCollectionEquality().hash(currentQty) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(supplierCode) ^
      const DeepCollectionEquality().hash(receiveLineCode) ^
      const DeepCollectionEquality().hash(isFree) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(vendorRefCode) ^
      const DeepCollectionEquality().hash(variantName) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(purchaseuom) ^
      const DeepCollectionEquality().hash(cvd) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(requestedQty) ^
      const DeepCollectionEquality().hash(minimumQty) ^
      const DeepCollectionEquality().hash(maximumQty) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(variableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost);

  @JsonKey(ignore: true)
  @override
  _$InvoiceLinesCopyWith<_InvoiceLines> get copyWith =>
      __$InvoiceLinesCopyWithImpl<_InvoiceLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceLinesToJson(this);
  }
}

abstract class _InvoiceLines implements InvoiceLines {
  const factory _InvoiceLines(
      {double? vat,
      bool? isRecieved,
      int? currentQty,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "purchase_uom") String? purchaseuom,
      @JsonKey(name: "cvd") String? cvd,
      @JsonKey(name: "foc") double? foc,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "requested_qty") int? requestedQty,
      @JsonKey(name: "minimum_qty") int? minimumQty,
      @JsonKey(name: "maximum_qty") int? maximumQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost}) = _$_InvoiceLines;

  factory _InvoiceLines.fromJson(Map<String, dynamic> json) =
      _$_InvoiceLines.fromJson;

  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  bool? get isRecieved => throw _privateConstructorUsedError;
  @override
  int? get currentQty => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "supplier_code")
  String? get supplierCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseuom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "cvd")
  String? get cvd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "foc")
  double? get foc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "requested_qty")
  int? get requestedQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_qty")
  int? get minimumQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "maximum_qty")
  int? get maximumQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get variableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvoiceLinesCopyWith<_InvoiceLines> get copyWith =>
      throw _privateConstructorUsedError;
}

Lines _$LinesFromJson(Map<String, dynamic> json) {
  return _Lines.fromJson(json);
}

/// @nodoc
class _$LinesTearOff {
  const _$LinesTearOff();

  _Lines call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? barcode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "receiving_line_id") int? receiveLineId,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "supplier_code") int? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_received") bool? isReceived}) {
    return _Lines(
      id: id,
      foc: foc,
      discount: discount,
      vat: vat,
      barcode: barcode,
      receiveLineCode: receiveLineCode,
      variantId: variantId,
      receivedQty: receivedQty,
      receiveLineId: receiveLineId,
      purchaseOrderLineid: purchaseOrderLineid,
      invoiceLineCode: invoiceLineCode,
      variantName: variantName,
      totalQty: totalQty,
      unitCost: unitCost,
      grandTotal: grandTotal,
      variableAmount: variableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      isInvoiced: isInvoiced,
      supplierCode: supplierCode,
      purchaseUom: purchaseUom,
      isFree: isFree,
      isReceived: isReceived,
    );
  }

  Lines fromJson(Map<String, Object> json) {
    return Lines.fromJson(json);
  }
}

/// @nodoc
const $Lines = _$LinesTearOff();

/// @nodoc
mixin _$Lines {
  int? get id => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "received_qty")
  int? get receivedQty =>
      throw _privateConstructorUsedError; // @JsonKey(name: "invoice_id") final int? invoiceId,
  @JsonKey(name: "receiving_line_id")
  int? get receiveLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_order_line_id")
  int? get purchaseOrderLineid => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get variableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_code")
  int? get supplierCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_received")
  bool? get isReceived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesCopyWith<Lines> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesCopyWith<$Res> {
  factory $LinesCopyWith(Lines value, $Res Function(Lines) then) =
      _$LinesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? barcode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "receiving_line_id") int? receiveLineId,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "supplier_code") int? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_received") bool? isReceived});
}

/// @nodoc
class _$LinesCopyWithImpl<$Res> implements $LinesCopyWith<$Res> {
  _$LinesCopyWithImpl(this._value, this._then);

  final Lines _value;
  // ignore: unused_field
  final $Res Function(Lines) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? receiveLineCode = freezed,
    Object? variantId = freezed,
    Object? receivedQty = freezed,
    Object? receiveLineId = freezed,
    Object? purchaseOrderLineid = freezed,
    Object? invoiceLineCode = freezed,
    Object? variantName = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isFree = freezed,
    Object? isReceived = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: receiveLineCode == freezed
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedQty: receivedQty == freezed
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveLineId: receiveLineId == freezed
          ? _value.receiveLineId
          : receiveLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderLineid: purchaseOrderLineid == freezed
          ? _value.purchaseOrderLineid
          : purchaseOrderLineid // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: invoiceLineCode == freezed
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceived: isReceived == freezed
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LinesCopyWith<$Res> implements $LinesCopyWith<$Res> {
  factory _$LinesCopyWith(_Lines value, $Res Function(_Lines) then) =
      __$LinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? barcode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "receiving_line_id") int? receiveLineId,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "supplier_code") int? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_received") bool? isReceived});
}

/// @nodoc
class __$LinesCopyWithImpl<$Res> extends _$LinesCopyWithImpl<$Res>
    implements _$LinesCopyWith<$Res> {
  __$LinesCopyWithImpl(_Lines _value, $Res Function(_Lines) _then)
      : super(_value, (v) => _then(v as _Lines));

  @override
  _Lines get _value => super._value as _Lines;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? receiveLineCode = freezed,
    Object? variantId = freezed,
    Object? receivedQty = freezed,
    Object? receiveLineId = freezed,
    Object? purchaseOrderLineid = freezed,
    Object? invoiceLineCode = freezed,
    Object? variantName = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isFree = freezed,
    Object? isReceived = freezed,
  }) {
    return _then(_Lines(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: receiveLineCode == freezed
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedQty: receivedQty == freezed
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveLineId: receiveLineId == freezed
          ? _value.receiveLineId
          : receiveLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderLineid: purchaseOrderLineid == freezed
          ? _value.purchaseOrderLineid
          : purchaseOrderLineid // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: invoiceLineCode == freezed
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceived: isReceived == freezed
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lines implements _Lines {
  const _$_Lines(
      {this.id,
      this.foc,
      this.discount,
      this.vat,
      this.barcode,
      @JsonKey(name: "receiving_line_code") this.receiveLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "received_qty") this.receivedQty,
      @JsonKey(name: "receiving_line_id") this.receiveLineId,
      @JsonKey(name: "purchase_order_line_id") this.purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") this.invoiceLineCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "total_qty") this.totalQty,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.variableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "supplier_code") this.supplierCode,
      @JsonKey(name: "purchase_uom") this.purchaseUom,
      @JsonKey(name: "is_free") this.isFree,
      @JsonKey(name: "is_received") this.isReceived});

  factory _$_Lines.fromJson(Map<String, dynamic> json) =>
      _$$_LinesFromJson(json);

  @override
  final int? id;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? barcode;
  @override
  @JsonKey(name: "receiving_line_code")
  final String? receiveLineCode;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "received_qty")
  final int? receivedQty;
  @override // @JsonKey(name: "invoice_id") final int? invoiceId,
  @JsonKey(name: "receiving_line_id")
  final int? receiveLineId;
  @override
  @JsonKey(name: "purchase_order_line_id")
  final int? purchaseOrderLineid;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoiceLineCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "total_qty")
  final int? totalQty;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? variableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "supplier_code")
  final int? supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "is_free")
  final bool? isFree;
  @override
  @JsonKey(name: "is_received")
  final bool? isReceived;

  @override
  String toString() {
    return 'Lines(id: $id, foc: $foc, discount: $discount, vat: $vat, barcode: $barcode, receiveLineCode: $receiveLineCode, variantId: $variantId, receivedQty: $receivedQty, receiveLineId: $receiveLineId, purchaseOrderLineid: $purchaseOrderLineid, invoiceLineCode: $invoiceLineCode, variantName: $variantName, totalQty: $totalQty, unitCost: $unitCost, grandTotal: $grandTotal, variableAmount: $variableAmount, excessTax: $excessTax, actualCost: $actualCost, isInvoiced: $isInvoiced, supplierCode: $supplierCode, purchaseUom: $purchaseUom, isFree: $isFree, isReceived: $isReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lines &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.receiveLineCode, receiveLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiveLineCode, receiveLineCode)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.receivedQty, receivedQty) ||
                const DeepCollectionEquality()
                    .equals(other.receivedQty, receivedQty)) &&
            (identical(other.receiveLineId, receiveLineId) ||
                const DeepCollectionEquality()
                    .equals(other.receiveLineId, receiveLineId)) &&
            (identical(other.purchaseOrderLineid, purchaseOrderLineid) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseOrderLineid, purchaseOrderLineid)) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceLineCode, invoiceLineCode)) &&
            (identical(other.variantName, variantName) ||
                const DeepCollectionEquality()
                    .equals(other.variantName, variantName)) &&
            (identical(other.totalQty, totalQty) ||
                const DeepCollectionEquality()
                    .equals(other.totalQty, totalQty)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.variableAmount, variableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.variableAmount, variableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.isInvoiced, isInvoiced) ||
                const DeepCollectionEquality()
                    .equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.supplierCode, supplierCode) ||
                const DeepCollectionEquality()
                    .equals(other.supplierCode, supplierCode)) &&
            (identical(other.purchaseUom, purchaseUom) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.isFree, isFree) ||
                const DeepCollectionEquality().equals(other.isFree, isFree)) &&
            (identical(other.isReceived, isReceived) ||
                const DeepCollectionEquality()
                    .equals(other.isReceived, isReceived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(receiveLineCode) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(receivedQty) ^
      const DeepCollectionEquality().hash(receiveLineId) ^
      const DeepCollectionEquality().hash(purchaseOrderLineid) ^
      const DeepCollectionEquality().hash(invoiceLineCode) ^
      const DeepCollectionEquality().hash(variantName) ^
      const DeepCollectionEquality().hash(totalQty) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(variableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(supplierCode) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(isFree) ^
      const DeepCollectionEquality().hash(isReceived);

  @JsonKey(ignore: true)
  @override
  _$LinesCopyWith<_Lines> get copyWith =>
      __$LinesCopyWithImpl<_Lines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesToJson(this);
  }
}

abstract class _Lines implements Lines {
  const factory _Lines(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? barcode,
      @JsonKey(name: "receiving_line_code") String? receiveLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "receiving_line_id") int? receiveLineId,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? variableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "supplier_code") int? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "is_received") bool? isReceived}) = _$_Lines;

  factory _Lines.fromJson(Map<String, dynamic> json) = _$_Lines.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "received_qty")
  int? get receivedQty => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "invoice_id") final int? invoiceId,
  @JsonKey(name: "receiving_line_id")
  int? get receiveLineId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_order_line_id")
  int? get purchaseOrderLineid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get variableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "supplier_code")
  int? get supplierCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_received")
  bool? get isReceived => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinesCopyWith<_Lines> get copyWith => throw _privateConstructorUsedError;
}
