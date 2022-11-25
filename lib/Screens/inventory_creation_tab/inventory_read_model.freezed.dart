// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventory_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryRead _$InventoryReadFromJson(Map<String, dynamic> json) {
  return _InventoryRead.fromJson(json);
}

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
      _$InventoryReadCopyWithImpl<$Res, InventoryRead>;
  @useResult
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
class _$InventoryReadCopyWithImpl<$Res, $Val extends InventoryRead>
    implements $InventoryReadCopyWith<$Res> {
  _$InventoryReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      payementStatus: freezed == payementStatus
          ? _value.payementStatus
          : payementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      calculationData: freezed == calculationData
          ? _value.calculationData
          : calculationData // ignore: cast_nullable_to_non_nullable
              as CalculationData?,
      invoicedata: freezed == invoicedata
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalculationDataCopyWith<$Res>? get calculationData {
    if (_value.calculationData == null) {
      return null;
    }

    return $CalculationDataCopyWith<$Res>(_value.calculationData!, (value) {
      return _then(_value.copyWith(calculationData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataCopyWith<$Res>? get invoicedata {
    if (_value.invoicedata == null) {
      return null;
    }

    return $InvoiceDataCopyWith<$Res>(_value.invoicedata!, (value) {
      return _then(_value.copyWith(invoicedata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InventoryReadCopyWith<$Res>
    implements $InventoryReadCopyWith<$Res> {
  factory _$$_InventoryReadCopyWith(
          _$_InventoryRead value, $Res Function(_$_InventoryRead) then) =
      __$$_InventoryReadCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_InventoryReadCopyWithImpl<$Res>
    extends _$InventoryReadCopyWithImpl<$Res, _$_InventoryRead>
    implements _$$_InventoryReadCopyWith<$Res> {
  __$$_InventoryReadCopyWithImpl(
      _$_InventoryRead _value, $Res Function(_$_InventoryRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_InventoryRead(
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      payementStatus: freezed == payementStatus
          ? _value.payementStatus
          : payementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      calculationData: freezed == calculationData
          ? _value.calculationData
          : calculationData // ignore: cast_nullable_to_non_nullable
              as CalculationData?,
      invoicedata: freezed == invoicedata
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      lines: freezed == lines
          ? _value._lines
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
      final List<Lines>? lines})
      : _lines = lines;

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
  final List<Lines>? _lines;
  @override
  List<Lines>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryRead(orderCode: $orderCode, orderDate: $orderDate, inventoryId: $inventoryId, paymentCode: $paymentCode, payementStatus: $payementStatus, orderStatus: $orderStatus, calculationData: $calculationData, invoicedata: $invoicedata, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryRead &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.payementStatus, payementStatus) ||
                other.payementStatus == payementStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.calculationData, calculationData) ||
                other.calculationData == calculationData) &&
            (identical(other.invoicedata, invoicedata) ||
                other.invoicedata == invoicedata) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderCode,
      orderDate,
      inventoryId,
      paymentCode,
      payementStatus,
      orderStatus,
      calculationData,
      invoicedata,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryReadCopyWith<_$_InventoryRead> get copyWith =>
      __$$_InventoryReadCopyWithImpl<_$_InventoryRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryReadToJson(
      this,
    );
  }
}

abstract class _InventoryRead implements InventoryRead {
  const factory _InventoryRead(
      {@JsonKey(name: "order_code") final String? orderCode,
      @JsonKey(name: "ordered_date") final String? orderDate,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "payment_code") final String? paymentCode,
      @JsonKey(name: "payment_status") final String? payementStatus,
      @JsonKey(name: "order_status") final String? orderStatus,
      @JsonKey(name: "calculation_data") final CalculationData? calculationData,
      @JsonKey(name: "invoice_data") final InvoiceData? invoicedata,
      final List<Lines>? lines}) = _$_InventoryRead;

  factory _InventoryRead.fromJson(Map<String, dynamic> json) =
      _$_InventoryRead.fromJson;

  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderDate;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode;
  @override
  @JsonKey(name: "payment_status")
  String? get payementStatus;
  @override
  @JsonKey(name: "order_status")
  String? get orderStatus;
  @override
  @JsonKey(name: "calculation_data")
  CalculationData? get calculationData;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoicedata;
  @override
  List<Lines>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryReadCopyWith<_$_InventoryRead> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculationData _$CalculationDataFromJson(Map<String, dynamic> json) {
  return _CalculationData.fromJson(json);
}

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
      _$CalculationDataCopyWithImpl<$Res, CalculationData>;
  @useResult
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
class _$CalculationDataCopyWithImpl<$Res, $Val extends CalculationData>
    implements $CalculationDataCopyWith<$Res> {
  _$CalculationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculationDataCopyWith<$Res>
    implements $CalculationDataCopyWith<$Res> {
  factory _$$_CalculationDataCopyWith(
          _$_CalculationData value, $Res Function(_$_CalculationData) then) =
      __$$_CalculationDataCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_CalculationDataCopyWithImpl<$Res>
    extends _$CalculationDataCopyWithImpl<$Res, _$_CalculationData>
    implements _$$_CalculationDataCopyWith<$Res> {
  __$$_CalculationDataCopyWithImpl(
      _$_CalculationData _value, $Res Function(_$_CalculationData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_CalculationData(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
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
        (other.runtimeType == runtimeType &&
            other is _$_CalculationData &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, discount, foc, vat,
      vatableAmount, grandtotal, actualCost, excessTax, unitCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculationDataCopyWith<_$_CalculationData> get copyWith =>
      __$$_CalculationDataCopyWithImpl<_$_CalculationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationDataToJson(
      this,
    );
  }
}

abstract class _CalculationData implements CalculationData {
  const factory _CalculationData(
      {final double? discount,
      final double? foc,
      final double? vat,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "grand_total") final double? grandtotal,
      @JsonKey(name: "actual_cost") final double? actualCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "unit_cost") final double? unitCost}) = _$_CalculationData;

  factory _CalculationData.fromJson(Map<String, dynamic> json) =
      _$_CalculationData.fromJson;

  @override
  double? get discount;
  @override
  double? get foc;
  @override
  double? get vat;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(ignore: true)
  _$$_CalculationDataCopyWith<_$_CalculationData> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

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
      _$InvoiceDataCopyWithImpl<$Res, InvoiceData>;
  @useResult
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
class _$InvoiceDataCopyWithImpl<$Res, $Val extends InvoiceData>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: freezed == invoicedCode
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: freezed == invoiceLines
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceDataCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$$_InvoiceDataCopyWith(
          _$_InvoiceData value, $Res Function(_$_InvoiceData) then) =
      __$$_InvoiceDataCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_InvoiceDataCopyWithImpl<$Res>
    extends _$InvoiceDataCopyWithImpl<$Res, _$_InvoiceData>
    implements _$$_InvoiceDataCopyWith<$Res> {
  __$$_InvoiceDataCopyWithImpl(
      _$_InvoiceData _value, $Res Function(_$_InvoiceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_InvoiceData(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: freezed == invoicedCode
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: freezed == invoiceLines
          ? _value._invoiceLines
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
      @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines})
      : _invoiceLines = invoiceLines;

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
  final List<Lines>? _invoiceLines;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines {
    final value = _invoiceLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceData(discount: $discount, notes: $notes, remarks: $remarks, foc: $foc, vat: $vat, vatableAmount: $vatableAmount, orderCode: $orderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, invoicedCode: $invoicedCode, invoiceStatus: $invoiceStatus, grandtotal: $grandtotal, actualCost: $actualCost, excessTax: $excessTax, unitCost: $unitCost, invoiceLines: $invoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceData &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.invoicedCode, invoicedCode) ||
                other.invoicedCode == invoicedCode) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLines, _invoiceLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discount,
      notes,
      remarks,
      foc,
      vat,
      vatableAmount,
      orderCode,
      inventoryId,
      invoicedBy,
      invoicedCode,
      invoiceStatus,
      grandtotal,
      actualCost,
      excessTax,
      unitCost,
      const DeepCollectionEquality().hash(_invoiceLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      __$$_InvoiceDataCopyWithImpl<_$_InvoiceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDataToJson(
      this,
    );
  }
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData(
          {final double? discount,
          final String? notes,
          final String? remarks,
          final double? foc,
          final double? vat,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "invoice_code") final String? invoicedCode,
          @JsonKey(name: "invoice_status") final String? invoiceStatus,
          @JsonKey(name: "grand_total") final double? grandtotal,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines}) =
      _$_InvoiceData;

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$_InvoiceData.fromJson;

  @override
  double? get discount;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  double? get foc;
  @override
  double? get vat;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoicedCode;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceLines _$InvoiceLinesFromJson(Map<String, dynamic> json) {
  return _InvoiceLines.fromJson(json);
}

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
      _$InvoiceLinesCopyWithImpl<$Res, InvoiceLines>;
  @useResult
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
class _$InvoiceLinesCopyWithImpl<$Res, $Val extends InvoiceLines>
    implements $InvoiceLinesCopyWith<$Res> {
  _$InvoiceLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isRecieved: freezed == isRecieved
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentQty: freezed == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: freezed == receiveLineCode
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: freezed == purchaseuom
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      cvd: freezed == cvd
          ? _value.cvd
          : cvd // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedQty: freezed == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQty: freezed == minimumQty
          ? _value.minimumQty
          : minimumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQty: freezed == maximumQty
          ? _value.maximumQty
          : maximumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceLinesCopyWith<$Res>
    implements $InvoiceLinesCopyWith<$Res> {
  factory _$$_InvoiceLinesCopyWith(
          _$_InvoiceLines value, $Res Function(_$_InvoiceLines) then) =
      __$$_InvoiceLinesCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_InvoiceLinesCopyWithImpl<$Res>
    extends _$InvoiceLinesCopyWithImpl<$Res, _$_InvoiceLines>
    implements _$$_InvoiceLinesCopyWith<$Res> {
  __$$_InvoiceLinesCopyWithImpl(
      _$_InvoiceLines _value, $Res Function(_$_InvoiceLines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_InvoiceLines(
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isRecieved: freezed == isRecieved
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentQty: freezed == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: freezed == receiveLineCode
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: freezed == purchaseuom
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      cvd: freezed == cvd
          ? _value.cvd
          : cvd // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedQty: freezed == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQty: freezed == minimumQty
          ? _value.minimumQty
          : minimumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQty: freezed == maximumQty
          ? _value.maximumQty
          : maximumQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
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
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceLines &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.isRecieved, isRecieved) ||
                other.isRecieved == isRecieved) &&
            (identical(other.currentQty, currentQty) ||
                other.currentQty == currentQty) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.supplierCode, supplierCode) ||
                other.supplierCode == supplierCode) &&
            (identical(other.receiveLineCode, receiveLineCode) ||
                other.receiveLineCode == receiveLineCode) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                other.vendorRefCode == vendorRefCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.purchaseuom, purchaseuom) ||
                other.purchaseuom == purchaseuom) &&
            (identical(other.cvd, cvd) || other.cvd == cvd) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.requestedQty, requestedQty) ||
                other.requestedQty == requestedQty) &&
            (identical(other.minimumQty, minimumQty) ||
                other.minimumQty == minimumQty) &&
            (identical(other.maximumQty, maximumQty) ||
                other.maximumQty == maximumQty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.variableAmount, variableAmount) ||
                other.variableAmount == variableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        vat,
        isRecieved,
        currentQty,
        id,
        isActive,
        supplierCode,
        receiveLineCode,
        isFree,
        isInvoiced,
        variantId,
        vendorRefCode,
        variantName,
        barcode,
        purchaseuom,
        cvd,
        foc,
        discount,
        requestedQty,
        minimumQty,
        maximumQty,
        unitCost,
        grandTotal,
        variableAmount,
        excessTax,
        actualCost
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceLinesCopyWith<_$_InvoiceLines> get copyWith =>
      __$$_InvoiceLinesCopyWithImpl<_$_InvoiceLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceLinesToJson(
      this,
    );
  }
}

abstract class _InvoiceLines implements InvoiceLines {
  const factory _InvoiceLines(
          {final double? vat,
          final bool? isRecieved,
          final int? currentQty,
          final int? id,
          @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
          @JsonKey(name: "supplier_code") final String? supplierCode,
          @JsonKey(name: "receiving_line_code") final String? receiveLineCode,
          @JsonKey(name: "is_free") final bool? isFree,
          @JsonKey(name: "is_invoiced") final bool? isInvoiced,
          @JsonKey(name: "variant_id") final String? variantId,
          @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,
          @JsonKey(name: "variant_name") final String? variantName,
          @JsonKey(name: "barcode") final String? barcode,
          @JsonKey(name: "purchase_uom") final String? purchaseuom,
          @JsonKey(name: "cvd") final String? cvd,
          @JsonKey(name: "foc") final double? foc,
          @JsonKey(name: "discount") final int? discount,
          @JsonKey(name: "requested_qty") final int? requestedQty,
          @JsonKey(name: "minimum_qty") final int? minimumQty,
          @JsonKey(name: "maximum_qty") final int? maximumQty,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "grand_total") final double? grandTotal,
          @JsonKey(name: "vatable_amount") final double? variableAmount,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "actual_cost") final double? actualCost}) =
      _$_InvoiceLines;

  factory _InvoiceLines.fromJson(Map<String, dynamic> json) =
      _$_InvoiceLines.fromJson;

  @override
  double? get vat;
  @override
  bool? get isRecieved;
  @override
  int? get currentQty;
  @override
  int? get id;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "supplier_code")
  String? get supplierCode;
  @override
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseuom;
  @override
  @JsonKey(name: "cvd")
  String? get cvd;
  @override
  @JsonKey(name: "foc")
  double? get foc;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "requested_qty")
  int? get requestedQty;
  @override
  @JsonKey(name: "minimum_qty")
  int? get minimumQty;
  @override
  @JsonKey(name: "maximum_qty")
  int? get maximumQty;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get variableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceLinesCopyWith<_$_InvoiceLines> get copyWith =>
      throw _privateConstructorUsedError;
}

Lines _$LinesFromJson(Map<String, dynamic> json) {
  return _Lines.fromJson(json);
}

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
      _$LinesCopyWithImpl<$Res, Lines>;
  @useResult
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
class _$LinesCopyWithImpl<$Res, $Val extends Lines>
    implements $LinesCopyWith<$Res> {
  _$LinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: freezed == receiveLineCode
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveLineId: freezed == receiveLineId
          ? _value.receiveLineId
          : receiveLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderLineid: freezed == purchaseOrderLineid
          ? _value.purchaseOrderLineid
          : purchaseOrderLineid // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceived: freezed == isReceived
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinesCopyWith<$Res> implements $LinesCopyWith<$Res> {
  factory _$$_LinesCopyWith(_$_Lines value, $Res Function(_$_Lines) then) =
      __$$_LinesCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_LinesCopyWithImpl<$Res> extends _$LinesCopyWithImpl<$Res, _$_Lines>
    implements _$$_LinesCopyWith<$Res> {
  __$$_LinesCopyWithImpl(_$_Lines _value, $Res Function(_$_Lines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_Lines(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveLineCode: freezed == receiveLineCode
          ? _value.receiveLineCode
          : receiveLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveLineId: freezed == receiveLineId
          ? _value.receiveLineId
          : receiveLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderLineid: freezed == purchaseOrderLineid
          ? _value.purchaseOrderLineid
          : purchaseOrderLineid // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceived: freezed == isReceived
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
// @JsonKey(name: "invoice_id") final int? invoiceId,
  @override
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
        (other.runtimeType == runtimeType &&
            other is _$_Lines &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.receiveLineCode, receiveLineCode) ||
                other.receiveLineCode == receiveLineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.receivedQty, receivedQty) ||
                other.receivedQty == receivedQty) &&
            (identical(other.receiveLineId, receiveLineId) ||
                other.receiveLineId == receiveLineId) &&
            (identical(other.purchaseOrderLineid, purchaseOrderLineid) ||
                other.purchaseOrderLineid == purchaseOrderLineid) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                other.invoiceLineCode == invoiceLineCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.variableAmount, variableAmount) ||
                other.variableAmount == variableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.supplierCode, supplierCode) ||
                other.supplierCode == supplierCode) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isReceived, isReceived) ||
                other.isReceived == isReceived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        foc,
        discount,
        vat,
        barcode,
        receiveLineCode,
        variantId,
        receivedQty,
        receiveLineId,
        purchaseOrderLineid,
        invoiceLineCode,
        variantName,
        totalQty,
        unitCost,
        grandTotal,
        variableAmount,
        excessTax,
        actualCost,
        isInvoiced,
        supplierCode,
        purchaseUom,
        isFree,
        isReceived
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinesCopyWith<_$_Lines> get copyWith =>
      __$$_LinesCopyWithImpl<_$_Lines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesToJson(
      this,
    );
  }
}

abstract class _Lines implements Lines {
  const factory _Lines(
      {final int? id,
      final double? foc,
      final double? discount,
      final double? vat,
      final String? barcode,
      @JsonKey(name: "receiving_line_code") final String? receiveLineCode,
      @JsonKey(name: "variant_id") final String? variantId,
      @JsonKey(name: "received_qty") final int? receivedQty,
      @JsonKey(name: "receiving_line_id") final int? receiveLineId,
      @JsonKey(name: "purchase_order_line_id") final int? purchaseOrderLineid,
      @JsonKey(name: "invoice_line_code") final String? invoiceLineCode,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "total_qty") final int? totalQty,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "grand_total") final double? grandTotal,
      @JsonKey(name: "vatable_amount") final double? variableAmount,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "actual_cost") final double? actualCost,
      @JsonKey(name: "is_invoiced") final bool? isInvoiced,
      @JsonKey(name: "supplier_code") final int? supplierCode,
      @JsonKey(name: "purchase_uom") final String? purchaseUom,
      @JsonKey(name: "is_free") final bool? isFree,
      @JsonKey(name: "is_received") final bool? isReceived}) = _$_Lines;

  factory _Lines.fromJson(Map<String, dynamic> json) = _$_Lines.fromJson;

  @override
  int? get id;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  String? get barcode;
  @override
  @JsonKey(name: "receiving_line_code")
  String? get receiveLineCode;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "received_qty")
  int? get receivedQty;
  @override // @JsonKey(name: "invoice_id") final int? invoiceId,
  @JsonKey(name: "receiving_line_id")
  int? get receiveLineId;
  @override
  @JsonKey(name: "purchase_order_line_id")
  int? get purchaseOrderLineid;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQty;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get variableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "supplier_code")
  int? get supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree;
  @override
  @JsonKey(name: "is_received")
  bool? get isReceived;
  @override
  @JsonKey(ignore: true)
  _$$_LinesCopyWith<_$_Lines> get copyWith =>
      throw _privateConstructorUsedError;
}
