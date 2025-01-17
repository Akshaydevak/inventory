// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_order_table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrderTableModel _$PurchaseOrderTableModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseOrderTableModel.fromJson(json);
}

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
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
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
      _$PurchaseOrderTableModelCopyWithImpl<$Res, PurchaseOrderTableModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "vendor_details") List<VendorDetails>? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode});

  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class _$PurchaseOrderTableModelCopyWithImpl<$Res,
        $Val extends PurchaseOrderTableModel>
    implements $PurchaseOrderTableModelCopyWith<$Res> {
  _$PurchaseOrderTableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? vendorDetails = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: freezed == purchaseUomName
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorDetails: freezed == vendorDetails
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      barCode: freezed == barCode
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarcodeCopyWith<$Res>? get barCode {
    if (_value.barCode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barCode!, (value) {
      return _then(_value.copyWith(barCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseOrderTableModelCopyWith<$Res>
    implements $PurchaseOrderTableModelCopyWith<$Res> {
  factory _$$_PurchaseOrderTableModelCopyWith(_$_PurchaseOrderTableModel value,
          $Res Function(_$_PurchaseOrderTableModel) then) =
      __$$_PurchaseOrderTableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      double? vat,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "vendor_details") List<VendorDetails>? vendorDetails,
      @JsonKey(name: "barcode") Barcode? barCode});

  @override
  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class __$$_PurchaseOrderTableModelCopyWithImpl<$Res>
    extends _$PurchaseOrderTableModelCopyWithImpl<$Res,
        _$_PurchaseOrderTableModel>
    implements _$$_PurchaseOrderTableModelCopyWith<$Res> {
  __$$_PurchaseOrderTableModelCopyWithImpl(_$_PurchaseOrderTableModel _value,
      $Res Function(_$_PurchaseOrderTableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? vendorDetails = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_$_PurchaseOrderTableModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: freezed == purchaseUomName
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorDetails: freezed == vendorDetails
          ? _value._vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      barCode: freezed == barCode
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
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "vendor_details") final List<VendorDetails>? vendorDetails,
      @JsonKey(name: "barcode") this.barCode})
      : _vendorDetails = vendorDetails;

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
//final String? vat,
  @override
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
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
  final List<VendorDetails>? _vendorDetails;
  @override
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails {
    final value = _vendorDetails;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "barcode")
  final Barcode? barCode;

  @override
  String toString() {
    return 'PurchaseOrderTableModel(id: $id, code: $code, name: $name, vat: $vat, purchaseUom: $purchaseUom, purchaseUomName: $purchaseUomName, excessTax: $excessTax, unitCost: $unitCost, returnType: $returnType, returnTime: $returnTime, vendorDetails: $vendorDetails, barCode: $barCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrderTableModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.purchaseUomName, purchaseUomName) ||
                other.purchaseUomName == purchaseUomName) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            const DeepCollectionEquality()
                .equals(other._vendorDetails, _vendorDetails) &&
            (identical(other.barCode, barCode) || other.barCode == barCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      name,
      vat,
      purchaseUom,
      purchaseUomName,
      excessTax,
      unitCost,
      returnType,
      returnTime,
      const DeepCollectionEquality().hash(_vendorDetails),
      barCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrderTableModelCopyWith<_$_PurchaseOrderTableModel>
      get copyWith =>
          __$$_PurchaseOrderTableModelCopyWithImpl<_$_PurchaseOrderTableModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderTableModelToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderTableModel implements PurchaseOrderTableModel {
  const factory _PurchaseOrderTableModel(
      {final int? id,
      final String? code,
      final String? name,
      final double? vat,
      @JsonKey(name: "purchase_uom")
          final String? purchaseUom,
      @JsonKey(name: "purchase_uom_name")
          final String? purchaseUomName,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "return_type")
          final String? returnType,
      @JsonKey(name: "return_time")
          final int? returnTime,
      @JsonKey(name: "vendor_details")
          final List<VendorDetails>? vendorDetails,
      @JsonKey(name: "barcode")
          final Barcode? barCode}) = _$_PurchaseOrderTableModel;

  factory _PurchaseOrderTableModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrderTableModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  double? get vat;
  @override //final String? vat,
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom;
  @override
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime;
  @override
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails;
  @override
  @JsonKey(name: "barcode")
  Barcode? get barCode;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrderTableModelCopyWith<_$_PurchaseOrderTableModel>
      get copyWith => throw _privateConstructorUsedError;
}

VendorDetails _$VendorDetailsFromJson(Map<String, dynamic> json) {
  return _VendorDetails.fromJson(json);
}

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
      _$VendorDetailsCopyWithImpl<$Res, VendorDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class _$VendorDetailsCopyWithImpl<$Res, $Val extends VendorDetails>
    implements $VendorDetailsCopyWith<$Res> {
  _$VendorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorCode = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_value.copyWith(
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendorDetailsCopyWith<$Res>
    implements $VendorDetailsCopyWith<$Res> {
  factory _$$_VendorDetailsCopyWith(
          _$_VendorDetails value, $Res Function(_$_VendorDetails) then) =
      __$$_VendorDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class __$$_VendorDetailsCopyWithImpl<$Res>
    extends _$VendorDetailsCopyWithImpl<$Res, _$_VendorDetails>
    implements _$$_VendorDetailsCopyWith<$Res> {
  __$$_VendorDetailsCopyWithImpl(
      _$_VendorDetails _value, $Res Function(_$_VendorDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorCode = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_$_VendorDetails(
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
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
        (other.runtimeType == runtimeType &&
            other is _$_VendorDetails &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                other.vendorRefCode == vendorRefCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorCode, vendorRefCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorDetailsCopyWith<_$_VendorDetails> get copyWith =>
      __$$_VendorDetailsCopyWithImpl<_$_VendorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDetailsToJson(
      this,
    );
  }
}

abstract class _VendorDetails implements VendorDetails {
  const factory _VendorDetails(
      {@JsonKey(name: "vendor_code")
          final String? vendorCode,
      @JsonKey(name: "vendor_reference_code")
          final String? vendorRefCode}) = _$_VendorDetails;

  factory _VendorDetails.fromJson(Map<String, dynamic> json) =
      _$_VendorDetails.fromJson;

  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode;
  @override
  @JsonKey(ignore: true)
  _$$_VendorDetailsCopyWith<_$_VendorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Barcode _$BarcodeFromJson(Map<String, dynamic> json) {
  return _Barcode.fromJson(json);
}

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
      _$BarcodeCopyWithImpl<$Res, Barcode>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class _$BarcodeCopyWithImpl<$Res, $Val extends Barcode>
    implements $BarcodeCopyWith<$Res> {
  _$BarcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BarcodeCopyWith<$Res> implements $BarcodeCopyWith<$Res> {
  factory _$$_BarcodeCopyWith(
          _$_Barcode value, $Res Function(_$_Barcode) then) =
      __$$_BarcodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class __$$_BarcodeCopyWithImpl<$Res>
    extends _$BarcodeCopyWithImpl<$Res, _$_Barcode>
    implements _$$_BarcodeCopyWith<$Res> {
  __$$_BarcodeCopyWithImpl(_$_Barcode _value, $Res Function(_$_Barcode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_$_Barcode(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: freezed == barcodeNumber
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
        (other.runtimeType == runtimeType &&
            other is _$_Barcode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.barcodeNumber, barcodeNumber) ||
                other.barcodeNumber == barcodeNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, barcodeNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      __$$_BarcodeCopyWithImpl<_$_Barcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarcodeToJson(
      this,
    );
  }
}

abstract class _Barcode implements Barcode {
  const factory _Barcode(
          {final int? id,
          @JsonKey(name: "file_name") final String? fileName,
          @JsonKey(name: "barcode_number") final String? barcodeNumber}) =
      _$_Barcode;

  factory _Barcode.fromJson(Map<String, dynamic> json) = _$_Barcode.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "file_name")
  String? get fileName;
  @override
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber;
  @override
  @JsonKey(ignore: true)
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      throw _privateConstructorUsedError;
}
