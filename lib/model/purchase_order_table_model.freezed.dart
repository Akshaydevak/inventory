// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_order_table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrderTableModel _$PurchaseOrderTableModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseOrderTableModel.fromJson(json);
}

/// @nodoc
class _$PurchaseOrderTableModelTearOff {
  const _$PurchaseOrderTableModelTearOff();

  _PurchaseOrderTableModel call(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vendor_details") VendorDetails? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode}) {
    return _PurchaseOrderTableModel(
      id: id,
      code: code,
      name: name,
      vat: vat,
      purchaseUom: purchaseUom,
      purchaseUomName: purchaseUomName,
      excessTax: excessTax,
      unitCost: unitCost,
      vendorDetails: vendorDetails,
      barCode: barCode,
    );
  }

  PurchaseOrderTableModel fromJson(Map<String, Object> json) {
    return PurchaseOrderTableModel.fromJson(json);
  }
}

/// @nodoc
const $PurchaseOrderTableModel = _$PurchaseOrderTableModelTearOff();

/// @nodoc
mixin _$PurchaseOrderTableModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError; //final String? vat,
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost =>
      throw _privateConstructorUsedError; // @JsonKey(name: "return_type") final String? returnType,
// @JsonKey(name: "return_time") final String? returnTime,
  @JsonKey(name: "vendor_details")
  VendorDetails? get vendorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  Barcode? get barCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderTableModelCopyWith<PurchaseOrderTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderTableModelCopyWith<$Res> {
  factory $PurchaseOrderTableModelCopyWith(PurchaseOrderTableModel value,
          $Res Function(PurchaseOrderTableModel) then) =
      _$PurchaseOrderTableModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vendor_details") VendorDetails? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode});

  $VendorDetailsCopyWith<$Res>? get vendorDetails;
  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class _$PurchaseOrderTableModelCopyWithImpl<$Res>
    implements $PurchaseOrderTableModelCopyWith<$Res> {
  _$PurchaseOrderTableModelCopyWithImpl(this._value, this._then);

  final PurchaseOrderTableModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseOrderTableModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? vat = freezed,
    Object? purchaseUom = freezed,
    Object? purchaseUomName = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? vendorDetails = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as VendorDetails?,
      barCode: barCode == freezed
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ));
  }

  @override
  $VendorDetailsCopyWith<$Res>? get vendorDetails {
    if (_value.vendorDetails == null) {
      return null;
    }

    return $VendorDetailsCopyWith<$Res>(_value.vendorDetails!, (value) {
      return _then(_value.copyWith(vendorDetails: value));
    });
  }

  @override
  $BarcodeCopyWith<$Res>? get barCode {
    if (_value.barCode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barCode!, (value) {
      return _then(_value.copyWith(barCode: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseOrderTableModelCopyWith<$Res>
    implements $PurchaseOrderTableModelCopyWith<$Res> {
  factory _$PurchaseOrderTableModelCopyWith(_PurchaseOrderTableModel value,
          $Res Function(_PurchaseOrderTableModel) then) =
      __$PurchaseOrderTableModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vendor_details") VendorDetails? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode});

  @override
  $VendorDetailsCopyWith<$Res>? get vendorDetails;
  @override
  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class __$PurchaseOrderTableModelCopyWithImpl<$Res>
    extends _$PurchaseOrderTableModelCopyWithImpl<$Res>
    implements _$PurchaseOrderTableModelCopyWith<$Res> {
  __$PurchaseOrderTableModelCopyWithImpl(_PurchaseOrderTableModel _value,
      $Res Function(_PurchaseOrderTableModel) _then)
      : super(_value, (v) => _then(v as _PurchaseOrderTableModel));

  @override
  _PurchaseOrderTableModel get _value =>
      super._value as _PurchaseOrderTableModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? vat = freezed,
    Object? purchaseUom = freezed,
    Object? purchaseUomName = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? vendorDetails = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_PurchaseOrderTableModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as VendorDetails?,
      barCode: barCode == freezed
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrderTableModel implements _PurchaseOrderTableModel {
  const _$_PurchaseOrderTableModel(
      {this.id,
      this.code,
      this.name,
      this.vat,
      @JsonKey(name: "purchase_uom") this.purchaseUom,
      @JsonKey(name: "purchase_uom_name") this.purchaseUomName,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "vendor_details") this.vendorDetails,
      @JsonKey(name: "barcode") this.barCode});

  factory _$_PurchaseOrderTableModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderTableModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final double? vat;
  @override //final String? vat,
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "purchase_uom_name")
  final String? purchaseUomName;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override // @JsonKey(name: "return_type") final String? returnType,
// @JsonKey(name: "return_time") final String? returnTime,
  @JsonKey(name: "vendor_details")
  final VendorDetails? vendorDetails;
  @override
  @JsonKey(name: "barcode")
  final Barcode? barCode;

  @override
  String toString() {
    return 'PurchaseOrderTableModel(id: $id, code: $code, name: $name, vat: $vat, purchaseUom: $purchaseUom, purchaseUomName: $purchaseUomName, excessTax: $excessTax, unitCost: $unitCost, vendorDetails: $vendorDetails, barCode: $barCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseOrderTableModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.purchaseUom, purchaseUom) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.purchaseUomName, purchaseUomName) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUomName, purchaseUomName)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.vendorDetails, vendorDetails) ||
                const DeepCollectionEquality()
                    .equals(other.vendorDetails, vendorDetails)) &&
            (identical(other.barCode, barCode) ||
                const DeepCollectionEquality().equals(other.barCode, barCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(purchaseUomName) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(vendorDetails) ^
      const DeepCollectionEquality().hash(barCode);

  @JsonKey(ignore: true)
  @override
  _$PurchaseOrderTableModelCopyWith<_PurchaseOrderTableModel> get copyWith =>
      __$PurchaseOrderTableModelCopyWithImpl<_PurchaseOrderTableModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderTableModelToJson(this);
  }
}

abstract class _PurchaseOrderTableModel implements PurchaseOrderTableModel {
  const factory _PurchaseOrderTableModel(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vendor_details") VendorDetails? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode}) = _$_PurchaseOrderTableModel;

  factory _PurchaseOrderTableModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrderTableModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override //final String? vat,
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "return_type") final String? returnType,
// @JsonKey(name: "return_time") final String? returnTime,
  @JsonKey(name: "vendor_details")
  VendorDetails? get vendorDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "barcode")
  Barcode? get barCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseOrderTableModelCopyWith<_PurchaseOrderTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorDetails _$VendorDetailsFromJson(Map<String, dynamic> json) {
  return _VendorDetails.fromJson(json);
}

/// @nodoc
class _$VendorDetailsTearOff {
  const _$VendorDetailsTearOff();

  _VendorDetails call(
      {@JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode}) {
    return _VendorDetails(
      vendorCode: vendorCode,
      vendorRefCode: vendorRefCode,
    );
  }

  VendorDetails fromJson(Map<String, Object> json) {
    return VendorDetails.fromJson(json);
  }
}

/// @nodoc
const $VendorDetails = _$VendorDetailsTearOff();

/// @nodoc
mixin _$VendorDetails {
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorDetailsCopyWith<VendorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDetailsCopyWith<$Res> {
  factory $VendorDetailsCopyWith(
          VendorDetails value, $Res Function(VendorDetails) then) =
      _$VendorDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class _$VendorDetailsCopyWithImpl<$Res>
    implements $VendorDetailsCopyWith<$Res> {
  _$VendorDetailsCopyWithImpl(this._value, this._then);

  final VendorDetails _value;
  // ignore: unused_field
  final $Res Function(VendorDetails) _then;

  @override
  $Res call({
    Object? vendorCode = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_value.copyWith(
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: vendorRefCode == freezed
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VendorDetailsCopyWith<$Res>
    implements $VendorDetailsCopyWith<$Res> {
  factory _$VendorDetailsCopyWith(
          _VendorDetails value, $Res Function(_VendorDetails) then) =
      __$VendorDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class __$VendorDetailsCopyWithImpl<$Res>
    extends _$VendorDetailsCopyWithImpl<$Res>
    implements _$VendorDetailsCopyWith<$Res> {
  __$VendorDetailsCopyWithImpl(
      _VendorDetails _value, $Res Function(_VendorDetails) _then)
      : super(_value, (v) => _then(v as _VendorDetails));

  @override
  _VendorDetails get _value => super._value as _VendorDetails;

  @override
  $Res call({
    Object? vendorCode = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_VendorDetails(
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: vendorRefCode == freezed
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorDetails implements _VendorDetails {
  const _$_VendorDetails(
      {@JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "vendor_reference_code") this.vendorRefCode});

  factory _$_VendorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VendorDetailsFromJson(json);

  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorRefCode;

  @override
  String toString() {
    return 'VendorDetails(vendorCode: $vendorCode, vendorRefCode: $vendorRefCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VendorDetails &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorRefCode, vendorRefCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vendorCode) ^
      const DeepCollectionEquality().hash(vendorRefCode);

  @JsonKey(ignore: true)
  @override
  _$VendorDetailsCopyWith<_VendorDetails> get copyWith =>
      __$VendorDetailsCopyWithImpl<_VendorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDetailsToJson(this);
  }
}

abstract class _VendorDetails implements VendorDetails {
  const factory _VendorDetails(
          {@JsonKey(name: "vendor_code") String? vendorCode,
          @JsonKey(name: "vendor_reference_code") String? vendorRefCode}) =
      _$_VendorDetails;

  factory _VendorDetails.fromJson(Map<String, dynamic> json) =
      _$_VendorDetails.fromJson;

  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VendorDetailsCopyWith<_VendorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Barcode _$BarcodeFromJson(Map<String, dynamic> json) {
  return _Barcode.fromJson(json);
}

/// @nodoc
class _$BarcodeTearOff {
  const _$BarcodeTearOff();

  _Barcode call(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber}) {
    return _Barcode(
      id: id,
      fileName: fileName,
      barcodeNumber: barcodeNumber,
    );
  }

  Barcode fromJson(Map<String, Object> json) {
    return Barcode.fromJson(json);
  }
}

/// @nodoc
const $Barcode = _$BarcodeTearOff();

/// @nodoc
mixin _$Barcode {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "file_name")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarcodeCopyWith<Barcode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCopyWith<$Res> {
  factory $BarcodeCopyWith(Barcode value, $Res Function(Barcode) then) =
      _$BarcodeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class _$BarcodeCopyWithImpl<$Res> implements $BarcodeCopyWith<$Res> {
  _$BarcodeCopyWithImpl(this._value, this._then);

  final Barcode _value;
  // ignore: unused_field
  final $Res Function(Barcode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: barcodeNumber == freezed
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BarcodeCopyWith<$Res> implements $BarcodeCopyWith<$Res> {
  factory _$BarcodeCopyWith(_Barcode value, $Res Function(_Barcode) then) =
      __$BarcodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class __$BarcodeCopyWithImpl<$Res> extends _$BarcodeCopyWithImpl<$Res>
    implements _$BarcodeCopyWith<$Res> {
  __$BarcodeCopyWithImpl(_Barcode _value, $Res Function(_Barcode) _then)
      : super(_value, (v) => _then(v as _Barcode));

  @override
  _Barcode get _value => super._value as _Barcode;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_Barcode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: barcodeNumber == freezed
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Barcode implements _Barcode {
  const _$_Barcode(
      {this.id,
      @JsonKey(name: "file_name") this.fileName,
      @JsonKey(name: "barcode_number") this.barcodeNumber});

  factory _$_Barcode.fromJson(Map<String, dynamic> json) =>
      _$$_BarcodeFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "file_name")
  final String? fileName;
  @override
  @JsonKey(name: "barcode_number")
  final String? barcodeNumber;

  @override
  String toString() {
    return 'Barcode(id: $id, fileName: $fileName, barcodeNumber: $barcodeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Barcode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.barcodeNumber, barcodeNumber) ||
                const DeepCollectionEquality()
                    .equals(other.barcodeNumber, barcodeNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(barcodeNumber);

  @JsonKey(ignore: true)
  @override
  _$BarcodeCopyWith<_Barcode> get copyWith =>
      __$BarcodeCopyWithImpl<_Barcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarcodeToJson(this);
  }
}

abstract class _Barcode implements Barcode {
  const factory _Barcode(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber}) = _$_Barcode;

  factory _Barcode.fromJson(Map<String, dynamic> json) = _$_Barcode.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "file_name")
  String? get fileName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BarcodeCopyWith<_Barcode> get copyWith =>
      throw _privateConstructorUsedError;
}
