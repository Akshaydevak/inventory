// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockReadModel _$StockReadModelFromJson(Map<String, dynamic> json) {
  return _StockReadModel.fromJson(json);
}

/// @nodoc
class _$StockReadModelTearOff {
  const _$StockReadModelTearOff();

  _StockReadModel call(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData}) {
    return _StockReadModel(
      id: id,
      code: code,
      stockData: stockData,
    );
  }

  StockReadModel fromJson(Map<String, Object> json) {
    return StockReadModel.fromJson(json);
  }
}

/// @nodoc
const $StockReadModel = _$StockReadModelTearOff();

/// @nodoc
mixin _$StockReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_data")
  StockData? get stockData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockReadModelCopyWith<StockReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockReadModelCopyWith<$Res> {
  factory $StockReadModelCopyWith(
          StockReadModel value, $Res Function(StockReadModel) then) =
      _$StockReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData});

  $StockDataCopyWith<$Res>? get stockData;
}

/// @nodoc
class _$StockReadModelCopyWithImpl<$Res>
    implements $StockReadModelCopyWith<$Res> {
  _$StockReadModelCopyWithImpl(this._value, this._then);

  final StockReadModel _value;
  // ignore: unused_field
  final $Res Function(StockReadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? stockData = freezed,
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
      stockData: stockData == freezed
          ? _value.stockData
          : stockData // ignore: cast_nullable_to_non_nullable
              as StockData?,
    ));
  }

  @override
  $StockDataCopyWith<$Res>? get stockData {
    if (_value.stockData == null) {
      return null;
    }

    return $StockDataCopyWith<$Res>(_value.stockData!, (value) {
      return _then(_value.copyWith(stockData: value));
    });
  }
}

/// @nodoc
abstract class _$StockReadModelCopyWith<$Res>
    implements $StockReadModelCopyWith<$Res> {
  factory _$StockReadModelCopyWith(
          _StockReadModel value, $Res Function(_StockReadModel) then) =
      __$StockReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData});

  @override
  $StockDataCopyWith<$Res>? get stockData;
}

/// @nodoc
class __$StockReadModelCopyWithImpl<$Res>
    extends _$StockReadModelCopyWithImpl<$Res>
    implements _$StockReadModelCopyWith<$Res> {
  __$StockReadModelCopyWithImpl(
      _StockReadModel _value, $Res Function(_StockReadModel) _then)
      : super(_value, (v) => _then(v as _StockReadModel));

  @override
  _StockReadModel get _value => super._value as _StockReadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? stockData = freezed,
  }) {
    return _then(_StockReadModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stockData: stockData == freezed
          ? _value.stockData
          : stockData // ignore: cast_nullable_to_non_nullable
              as StockData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockReadModel implements _StockReadModel {
  const _$_StockReadModel(
      {this.id, this.code, @JsonKey(name: "stock_data") this.stockData});

  factory _$_StockReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: "stock_data")
  final StockData? stockData;

  @override
  String toString() {
    return 'StockReadModel(id: $id, code: $code, stockData: $stockData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.stockData, stockData) ||
                const DeepCollectionEquality()
                    .equals(other.stockData, stockData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(stockData);

  @JsonKey(ignore: true)
  @override
  _$StockReadModelCopyWith<_StockReadModel> get copyWith =>
      __$StockReadModelCopyWithImpl<_StockReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockReadModelToJson(this);
  }
}

abstract class _StockReadModel implements StockReadModel {
  const factory _StockReadModel(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData}) = _$_StockReadModel;

  factory _StockReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_data")
  StockData? get stockData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockReadModelCopyWith<_StockReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StockData _$StockDataFromJson(Map<String, dynamic> json) {
  return _StockData.fromJson(json);
}

/// @nodoc
class _$StockDataTearOff {
  const _$StockDataTearOff();

  _StockData call(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name")
          String? baseUomName,
      @JsonKey(name: "purchase_uom_name")
          String? purchaseUomName,
      @JsonKey(name: "sales_uom_name")
          String? salesUomName,
      @JsonKey(name: "variant_id")
          int? variantId,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "stock_code")
          String? stockCode,
      @JsonKey(name: "base_uom")
          int? baseUom,
      @JsonKey(name: "sales_uom")
          int? salesUOM,
      @JsonKey(name: "available_qty")
          int? availableQuantity,
      @JsonKey(name: "cancelled_qty")
          int? availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty")
          int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          int? damagedQuantity,
      @JsonKey(name: "return_qty")
          int? returnQuantity,
      @JsonKey(name: "sales_blocked_qty")
          int? salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty")
          int? purchaseBlockQuantity,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          bool? salesBlocked}) {
    return _StockData(
      id: id,
      code: code,
      baseUomName: baseUomName,
      purchaseUomName: purchaseUomName,
      salesUomName: salesUomName,
      variantId: variantId,
      variantCode: variantCode,
      inventoryId: inventoryId,
      stockCode: stockCode,
      baseUom: baseUom,
      salesUOM: salesUOM,
      availableQuantity: availableQuantity,
      availablcancelledQuantityeQuantity: availablcancelledQuantityeQuantity,
      reservedQuantity: reservedQuantity,
      damagedQuantity: damagedQuantity,
      returnQuantity: returnQuantity,
      salesBlockQuantity: salesBlockQuantity,
      purchaseBlockQuantity: purchaseBlockQuantity,
      createdAt: createdAt,
      stockWarning: stockWarning,
      salesBlocked: salesBlocked,
    );
  }

  StockData fromJson(Map<String, Object> json) {
    return StockData.fromJson(json);
  }
}

/// @nodoc
const $StockData = _$StockDataTearOff();

/// @nodoc
mixin _$StockData {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "base_uom_name")
  String? get baseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_code")
  String? get stockCode => throw _privateConstructorUsedError;
  @JsonKey(name: "base_uom")
  int? get baseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  int? get salesUOM => throw _privateConstructorUsedError;
  @JsonKey(name: "available_qty")
  int? get availableQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_qty")
  int? get availablcancelledQuantityeQuantity =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "reserved_qty")
  int? get reservedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "damaged_qty")
  int? get damagedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "return_qty")
  int? get returnQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_blocked_qty")
  int? get salesBlockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_blocked_qty")
  int? get purchaseBlockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_blocked", defaultValue: false)
  bool? get salesBlocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name") String? baseUomName,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "stock_code") String? stockCode,
      @JsonKey(name: "base_uom") int? baseUom,
      @JsonKey(name: "sales_uom") int? salesUOM,
      @JsonKey(name: "available_qty") int? availableQuantity,
      @JsonKey(name: "cancelled_qty") int? availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty") int? reservedQuantity,
      @JsonKey(name: "damaged_qty") int? damagedQuantity,
      @JsonKey(name: "return_qty") int? returnQuantity,
      @JsonKey(name: "sales_blocked_qty") int? salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty") int? purchaseBlockQuantity,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false) bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false) bool? salesBlocked});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res> implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(this._value, this._then);

  final StockData _value;
  // ignore: unused_field
  final $Res Function(StockData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? baseUomName = freezed,
    Object? purchaseUomName = freezed,
    Object? salesUomName = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? stockCode = freezed,
    Object? baseUom = freezed,
    Object? salesUOM = freezed,
    Object? availableQuantity = freezed,
    Object? availablcancelledQuantityeQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnQuantity = freezed,
    Object? salesBlockQuantity = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? createdAt = freezed,
    Object? stockWarning = freezed,
    Object? salesBlocked = freezed,
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
      baseUomName: baseUomName == freezed
          ? _value.baseUomName
          : baseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: salesUomName == freezed
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: variantCode == freezed
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: stockCode == freezed
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUom: baseUom == freezed
          ? _value.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUOM: salesUOM == freezed
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: availableQuantity == freezed
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availablcancelledQuantityeQuantity: availablcancelledQuantityeQuantity ==
              freezed
          ? _value.availablcancelledQuantityeQuantity
          : availablcancelledQuantityeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: reservedQuantity == freezed
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: damagedQuantity == freezed
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnQuantity: returnQuantity == freezed
          ? _value.returnQuantity
          : returnQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBlockQuantity: salesBlockQuantity == freezed
          ? _value.salesBlockQuantity
          : salesBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: purchaseBlockQuantity == freezed
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlocked: salesBlocked == freezed
          ? _value.salesBlocked
          : salesBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$StockDataCopyWith<$Res> implements $StockDataCopyWith<$Res> {
  factory _$StockDataCopyWith(
          _StockData value, $Res Function(_StockData) then) =
      __$StockDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name") String? baseUomName,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "stock_code") String? stockCode,
      @JsonKey(name: "base_uom") int? baseUom,
      @JsonKey(name: "sales_uom") int? salesUOM,
      @JsonKey(name: "available_qty") int? availableQuantity,
      @JsonKey(name: "cancelled_qty") int? availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty") int? reservedQuantity,
      @JsonKey(name: "damaged_qty") int? damagedQuantity,
      @JsonKey(name: "return_qty") int? returnQuantity,
      @JsonKey(name: "sales_blocked_qty") int? salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty") int? purchaseBlockQuantity,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false) bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false) bool? salesBlocked});
}

/// @nodoc
class __$StockDataCopyWithImpl<$Res> extends _$StockDataCopyWithImpl<$Res>
    implements _$StockDataCopyWith<$Res> {
  __$StockDataCopyWithImpl(_StockData _value, $Res Function(_StockData) _then)
      : super(_value, (v) => _then(v as _StockData));

  @override
  _StockData get _value => super._value as _StockData;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? baseUomName = freezed,
    Object? purchaseUomName = freezed,
    Object? salesUomName = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? stockCode = freezed,
    Object? baseUom = freezed,
    Object? salesUOM = freezed,
    Object? availableQuantity = freezed,
    Object? availablcancelledQuantityeQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnQuantity = freezed,
    Object? salesBlockQuantity = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? createdAt = freezed,
    Object? stockWarning = freezed,
    Object? salesBlocked = freezed,
  }) {
    return _then(_StockData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUomName: baseUomName == freezed
          ? _value.baseUomName
          : baseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: salesUomName == freezed
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: variantCode == freezed
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: stockCode == freezed
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUom: baseUom == freezed
          ? _value.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUOM: salesUOM == freezed
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: availableQuantity == freezed
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availablcancelledQuantityeQuantity: availablcancelledQuantityeQuantity ==
              freezed
          ? _value.availablcancelledQuantityeQuantity
          : availablcancelledQuantityeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: reservedQuantity == freezed
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: damagedQuantity == freezed
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnQuantity: returnQuantity == freezed
          ? _value.returnQuantity
          : returnQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBlockQuantity: salesBlockQuantity == freezed
          ? _value.salesBlockQuantity
          : salesBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: purchaseBlockQuantity == freezed
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlocked: salesBlocked == freezed
          ? _value.salesBlocked
          : salesBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockData implements _StockData {
  const _$_StockData(
      {this.id,
      this.code,
      @JsonKey(name: "base_uom_name") this.baseUomName,
      @JsonKey(name: "purchase_uom_name") this.purchaseUomName,
      @JsonKey(name: "sales_uom_name") this.salesUomName,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "stock_code") this.stockCode,
      @JsonKey(name: "base_uom") this.baseUom,
      @JsonKey(name: "sales_uom") this.salesUOM,
      @JsonKey(name: "available_qty") this.availableQuantity,
      @JsonKey(name: "cancelled_qty") this.availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty") this.reservedQuantity,
      @JsonKey(name: "damaged_qty") this.damagedQuantity,
      @JsonKey(name: "return_qty") this.returnQuantity,
      @JsonKey(name: "sales_blocked_qty") this.salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty") this.purchaseBlockQuantity,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false) this.stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false) this.salesBlocked});

  factory _$_StockData.fromJson(Map<String, dynamic> json) =>
      _$$_StockDataFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: "base_uom_name")
  final String? baseUomName;
  @override
  @JsonKey(name: "purchase_uom_name")
  final String? purchaseUomName;
  @override
  @JsonKey(name: "sales_uom_name")
  final String? salesUomName;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "stock_code")
  final String? stockCode;
  @override
  @JsonKey(name: "base_uom")
  final int? baseUom;
  @override
  @JsonKey(name: "sales_uom")
  final int? salesUOM;
  @override
  @JsonKey(name: "available_qty")
  final int? availableQuantity;
  @override
  @JsonKey(name: "cancelled_qty")
  final int? availablcancelledQuantityeQuantity;
  @override
  @JsonKey(name: "reserved_qty")
  final int? reservedQuantity;
  @override
  @JsonKey(name: "damaged_qty")
  final int? damagedQuantity;
  @override
  @JsonKey(name: "return_qty")
  final int? returnQuantity;
  @override
  @JsonKey(name: "sales_blocked_qty")
  final int? salesBlockQuantity;
  @override
  @JsonKey(name: "purchase_blocked_qty")
  final int? purchaseBlockQuantity;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  final bool? stockWarning;
  @override
  @JsonKey(name: "sales_blocked", defaultValue: false)
  final bool? salesBlocked;

  @override
  String toString() {
    return 'StockData(id: $id, code: $code, baseUomName: $baseUomName, purchaseUomName: $purchaseUomName, salesUomName: $salesUomName, variantId: $variantId, variantCode: $variantCode, inventoryId: $inventoryId, stockCode: $stockCode, baseUom: $baseUom, salesUOM: $salesUOM, availableQuantity: $availableQuantity, availablcancelledQuantityeQuantity: $availablcancelledQuantityeQuantity, reservedQuantity: $reservedQuantity, damagedQuantity: $damagedQuantity, returnQuantity: $returnQuantity, salesBlockQuantity: $salesBlockQuantity, purchaseBlockQuantity: $purchaseBlockQuantity, createdAt: $createdAt, stockWarning: $stockWarning, salesBlocked: $salesBlocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.baseUomName, baseUomName) ||
                const DeepCollectionEquality()
                    .equals(other.baseUomName, baseUomName)) &&
            (identical(other.purchaseUomName, purchaseUomName) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUomName, purchaseUomName)) &&
            (identical(other.salesUomName, salesUomName) ||
                const DeepCollectionEquality()
                    .equals(other.salesUomName, salesUomName)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.variantCode, variantCode) ||
                const DeepCollectionEquality()
                    .equals(other.variantCode, variantCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.stockCode, stockCode) ||
                const DeepCollectionEquality()
                    .equals(other.stockCode, stockCode)) &&
            (identical(other.baseUom, baseUom) ||
                const DeepCollectionEquality()
                    .equals(other.baseUom, baseUom)) &&
            (identical(other.salesUOM, salesUOM) ||
                const DeepCollectionEquality()
                    .equals(other.salesUOM, salesUOM)) &&
            (identical(other.availableQuantity, availableQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.availableQuantity, availableQuantity)) &&
            (identical(other.availablcancelledQuantityeQuantity, availablcancelledQuantityeQuantity) ||
                const DeepCollectionEquality().equals(
                    other.availablcancelledQuantityeQuantity,
                    availablcancelledQuantityeQuantity)) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.reservedQuantity, reservedQuantity)) &&
            (identical(other.damagedQuantity, damagedQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.damagedQuantity, damagedQuantity)) &&
            (identical(other.returnQuantity, returnQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.returnQuantity, returnQuantity)) &&
            (identical(other.salesBlockQuantity, salesBlockQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.salesBlockQuantity, salesBlockQuantity)) &&
            (identical(other.purchaseBlockQuantity, purchaseBlockQuantity) ||
                const DeepCollectionEquality().equals(
                    other.purchaseBlockQuantity, purchaseBlockQuantity)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.stockWarning, stockWarning) ||
                const DeepCollectionEquality()
                    .equals(other.stockWarning, stockWarning)) &&
            (identical(other.salesBlocked, salesBlocked) ||
                const DeepCollectionEquality().equals(other.salesBlocked, salesBlocked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(baseUomName) ^
      const DeepCollectionEquality().hash(purchaseUomName) ^
      const DeepCollectionEquality().hash(salesUomName) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(variantCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(stockCode) ^
      const DeepCollectionEquality().hash(baseUom) ^
      const DeepCollectionEquality().hash(salesUOM) ^
      const DeepCollectionEquality().hash(availableQuantity) ^
      const DeepCollectionEquality().hash(availablcancelledQuantityeQuantity) ^
      const DeepCollectionEquality().hash(reservedQuantity) ^
      const DeepCollectionEquality().hash(damagedQuantity) ^
      const DeepCollectionEquality().hash(returnQuantity) ^
      const DeepCollectionEquality().hash(salesBlockQuantity) ^
      const DeepCollectionEquality().hash(purchaseBlockQuantity) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(stockWarning) ^
      const DeepCollectionEquality().hash(salesBlocked);

  @JsonKey(ignore: true)
  @override
  _$StockDataCopyWith<_StockData> get copyWith =>
      __$StockDataCopyWithImpl<_StockData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockDataToJson(this);
  }
}

abstract class _StockData implements StockData {
  const factory _StockData(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name")
          String? baseUomName,
      @JsonKey(name: "purchase_uom_name")
          String? purchaseUomName,
      @JsonKey(name: "sales_uom_name")
          String? salesUomName,
      @JsonKey(name: "variant_id")
          int? variantId,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "stock_code")
          String? stockCode,
      @JsonKey(name: "base_uom")
          int? baseUom,
      @JsonKey(name: "sales_uom")
          int? salesUOM,
      @JsonKey(name: "available_qty")
          int? availableQuantity,
      @JsonKey(name: "cancelled_qty")
          int? availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty")
          int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          int? damagedQuantity,
      @JsonKey(name: "return_qty")
          int? returnQuantity,
      @JsonKey(name: "sales_blocked_qty")
          int? salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty")
          int? purchaseBlockQuantity,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          bool? salesBlocked}) = _$_StockData;

  factory _StockData.fromJson(Map<String, dynamic> json) =
      _$_StockData.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "base_uom_name")
  String? get baseUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_code")
  String? get stockCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "base_uom")
  int? get baseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  int? get salesUOM => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "available_qty")
  int? get availableQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "cancelled_qty")
  int? get availablcancelledQuantityeQuantity =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reserved_qty")
  int? get reservedQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "damaged_qty")
  int? get damagedQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_qty")
  int? get returnQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_blocked_qty")
  int? get salesBlockQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_blocked_qty")
  int? get purchaseBlockQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_blocked", defaultValue: false)
  bool? get salesBlocked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockDataCopyWith<_StockData> get copyWith =>
      throw _privateConstructorUsedError;
}
