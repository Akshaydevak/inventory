// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockReadModel _$StockReadModelFromJson(Map<String, dynamic> json) {
  return _StockReadModel.fromJson(json);
}

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
      _$StockReadModelCopyWithImpl<$Res, StockReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData});

  $StockDataCopyWith<$Res>? get stockData;
}

/// @nodoc
class _$StockReadModelCopyWithImpl<$Res, $Val extends StockReadModel>
    implements $StockReadModelCopyWith<$Res> {
  _$StockReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? stockData = freezed,
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
      stockData: freezed == stockData
          ? _value.stockData
          : stockData // ignore: cast_nullable_to_non_nullable
              as StockData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockDataCopyWith<$Res>? get stockData {
    if (_value.stockData == null) {
      return null;
    }

    return $StockDataCopyWith<$Res>(_value.stockData!, (value) {
      return _then(_value.copyWith(stockData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StockReadModelCopyWith<$Res>
    implements $StockReadModelCopyWith<$Res> {
  factory _$$_StockReadModelCopyWith(
          _$_StockReadModel value, $Res Function(_$_StockReadModel) then) =
      __$$_StockReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "stock_data") StockData? stockData});

  @override
  $StockDataCopyWith<$Res>? get stockData;
}

/// @nodoc
class __$$_StockReadModelCopyWithImpl<$Res>
    extends _$StockReadModelCopyWithImpl<$Res, _$_StockReadModel>
    implements _$$_StockReadModelCopyWith<$Res> {
  __$$_StockReadModelCopyWithImpl(
      _$_StockReadModel _value, $Res Function(_$_StockReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? stockData = freezed,
  }) {
    return _then(_$_StockReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stockData: freezed == stockData
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
        (other.runtimeType == runtimeType &&
            other is _$_StockReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stockData, stockData) ||
                other.stockData == stockData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, stockData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockReadModelCopyWith<_$_StockReadModel> get copyWith =>
      __$$_StockReadModelCopyWithImpl<_$_StockReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockReadModelToJson(
      this,
    );
  }
}

abstract class _StockReadModel implements StockReadModel {
  const factory _StockReadModel(
          {final int? id,
          final String? code,
          @JsonKey(name: "stock_data") final StockData? stockData}) =
      _$_StockReadModel;

  factory _StockReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: "stock_data")
  StockData? get stockData;
  @override
  @JsonKey(ignore: true)
  _$$_StockReadModelCopyWith<_$_StockReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StockData _$StockDataFromJson(Map<String, dynamic> json) {
  return _StockData.fromJson(json);
}

/// @nodoc
mixin _$StockData {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "base_uom_name")
  String? get baseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  int? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_allocation_ratio")
  String? get channelTypeAllocationRatio => throw _privateConstructorUsedError;
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_type")
  String? get virtualType => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_code")
  String? get stockCode => throw _privateConstructorUsedError;
  @JsonKey(name: "safety_stock_qty")
  int? get safetyStockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_qty")
  int? get reOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
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
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "add_virtual_stock")
  int? get addVirtualStock => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_stock")
  int? get virtualStock => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_quantity")
  int? get minimumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_blocked", defaultValue: false)
  bool? get salesBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  bool? get purchaseBlocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res, StockData>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name")
          String? baseUomName,
      @JsonKey(name: "purchase_uom_name")
          String? purchaseUomName,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "sales_uom_name")
          String? salesUomName,
      @JsonKey(name: "variant_id")
          int? variantId,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "channel_type_allocation_ratio")
          String? channelTypeAllocationRatio,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "virtual_type")
          String? virtualType,
      @JsonKey(name: "stock_code")
          String? stockCode,
      @JsonKey(name: "safety_stock_qty")
          int? safetyStockQty,
      @JsonKey(name: "reorder_qty")
          int? reOrderQuantity,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
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
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "add_virtual_stock")
          int? addVirtualStock,
      @JsonKey(name: "virtual_stock")
          int? virtualStock,
      @JsonKey(name: "minimum_quantity")
          int? minimumQuantity,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          bool? salesBlocked,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          bool? purchaseBlocked});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res, $Val extends StockData>
    implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? baseUomName = freezed,
    Object? purchaseUomName = freezed,
    Object? purchaseUom = freezed,
    Object? salesUomName = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? channelTypeAllocationRatio = freezed,
    Object? minMaxRatio = freezed,
    Object? virtualType = freezed,
    Object? stockCode = freezed,
    Object? safetyStockQty = freezed,
    Object? reOrderQuantity = freezed,
    Object? reOrderPoint = freezed,
    Object? baseUom = freezed,
    Object? salesUOM = freezed,
    Object? availableQuantity = freezed,
    Object? availablcancelledQuantityeQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnQuantity = freezed,
    Object? salesBlockQuantity = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? maximumQuantity = freezed,
    Object? addVirtualStock = freezed,
    Object? virtualStock = freezed,
    Object? minimumQuantity = freezed,
    Object? createdAt = freezed,
    Object? stockWarning = freezed,
    Object? salesBlocked = freezed,
    Object? purchaseBlocked = freezed,
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
      baseUomName: freezed == baseUomName
          ? _value.baseUomName
          : baseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: freezed == purchaseUomName
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeAllocationRatio: freezed == channelTypeAllocationRatio
          ? _value.channelTypeAllocationRatio
          : channelTypeAllocationRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: freezed == minMaxRatio
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualType: freezed == virtualType
          ? _value.virtualType
          : virtualType // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: freezed == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyStockQty: freezed == safetyStockQty
          ? _value.safetyStockQty
          : safetyStockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: freezed == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: freezed == reOrderPoint
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUom: freezed == baseUom
          ? _value.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUOM: freezed == salesUOM
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availablcancelledQuantityeQuantity: freezed ==
              availablcancelledQuantityeQuantity
          ? _value.availablcancelledQuantityeQuantity
          : availablcancelledQuantityeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: freezed == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: freezed == damagedQuantity
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnQuantity: freezed == returnQuantity
          ? _value.returnQuantity
          : returnQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBlockQuantity: freezed == salesBlockQuantity
          ? _value.salesBlockQuantity
          : salesBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: freezed == purchaseBlockQuantity
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      addVirtualStock: freezed == addVirtualStock
          ? _value.addVirtualStock
          : addVirtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQuantity: freezed == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stockWarning: freezed == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlocked: freezed == salesBlocked
          ? _value.salesBlocked
          : salesBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlocked: freezed == purchaseBlocked
          ? _value.purchaseBlocked
          : purchaseBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockDataCopyWith<$Res> implements $StockDataCopyWith<$Res> {
  factory _$$_StockDataCopyWith(
          _$_StockData value, $Res Function(_$_StockData) then) =
      __$$_StockDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "base_uom_name")
          String? baseUomName,
      @JsonKey(name: "purchase_uom_name")
          String? purchaseUomName,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "sales_uom_name")
          String? salesUomName,
      @JsonKey(name: "variant_id")
          int? variantId,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "channel_type_allocation_ratio")
          String? channelTypeAllocationRatio,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "virtual_type")
          String? virtualType,
      @JsonKey(name: "stock_code")
          String? stockCode,
      @JsonKey(name: "safety_stock_qty")
          int? safetyStockQty,
      @JsonKey(name: "reorder_qty")
          int? reOrderQuantity,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
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
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "add_virtual_stock")
          int? addVirtualStock,
      @JsonKey(name: "virtual_stock")
          int? virtualStock,
      @JsonKey(name: "minimum_quantity")
          int? minimumQuantity,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          bool? salesBlocked,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          bool? purchaseBlocked});
}

/// @nodoc
class __$$_StockDataCopyWithImpl<$Res>
    extends _$StockDataCopyWithImpl<$Res, _$_StockData>
    implements _$$_StockDataCopyWith<$Res> {
  __$$_StockDataCopyWithImpl(
      _$_StockData _value, $Res Function(_$_StockData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? baseUomName = freezed,
    Object? purchaseUomName = freezed,
    Object? purchaseUom = freezed,
    Object? salesUomName = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? channelTypeAllocationRatio = freezed,
    Object? minMaxRatio = freezed,
    Object? virtualType = freezed,
    Object? stockCode = freezed,
    Object? safetyStockQty = freezed,
    Object? reOrderQuantity = freezed,
    Object? reOrderPoint = freezed,
    Object? baseUom = freezed,
    Object? salesUOM = freezed,
    Object? availableQuantity = freezed,
    Object? availablcancelledQuantityeQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnQuantity = freezed,
    Object? salesBlockQuantity = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? maximumQuantity = freezed,
    Object? addVirtualStock = freezed,
    Object? virtualStock = freezed,
    Object? minimumQuantity = freezed,
    Object? createdAt = freezed,
    Object? stockWarning = freezed,
    Object? salesBlocked = freezed,
    Object? purchaseBlocked = freezed,
  }) {
    return _then(_$_StockData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUomName: freezed == baseUomName
          ? _value.baseUomName
          : baseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomName: freezed == purchaseUomName
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeAllocationRatio: freezed == channelTypeAllocationRatio
          ? _value.channelTypeAllocationRatio
          : channelTypeAllocationRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: freezed == minMaxRatio
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualType: freezed == virtualType
          ? _value.virtualType
          : virtualType // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: freezed == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyStockQty: freezed == safetyStockQty
          ? _value.safetyStockQty
          : safetyStockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: freezed == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: freezed == reOrderPoint
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUom: freezed == baseUom
          ? _value.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUOM: freezed == salesUOM
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availablcancelledQuantityeQuantity: freezed ==
              availablcancelledQuantityeQuantity
          ? _value.availablcancelledQuantityeQuantity
          : availablcancelledQuantityeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: freezed == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: freezed == damagedQuantity
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnQuantity: freezed == returnQuantity
          ? _value.returnQuantity
          : returnQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBlockQuantity: freezed == salesBlockQuantity
          ? _value.salesBlockQuantity
          : salesBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: freezed == purchaseBlockQuantity
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      addVirtualStock: freezed == addVirtualStock
          ? _value.addVirtualStock
          : addVirtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumQuantity: freezed == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stockWarning: freezed == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlocked: freezed == salesBlocked
          ? _value.salesBlocked
          : salesBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlocked: freezed == purchaseBlocked
          ? _value.purchaseBlocked
          : purchaseBlocked // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "base_uom_name")
          this.baseUomName,
      @JsonKey(name: "purchase_uom_name")
          this.purchaseUomName,
      @JsonKey(name: "purchase_uom")
          this.purchaseUom,
      @JsonKey(name: "sales_uom_name")
          this.salesUomName,
      @JsonKey(name: "variant_id")
          this.variantId,
      @JsonKey(name: "variant_code")
          this.variantCode,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "channel_type_allocation_ratio")
          this.channelTypeAllocationRatio,
      @JsonKey(name: "min_max_ratio")
          this.minMaxRatio,
      @JsonKey(name: "virtual_type")
          this.virtualType,
      @JsonKey(name: "stock_code")
          this.stockCode,
      @JsonKey(name: "safety_stock_qty")
          this.safetyStockQty,
      @JsonKey(name: "reorder_qty")
          this.reOrderQuantity,
      @JsonKey(name: "reorder_point")
          this.reOrderPoint,
      @JsonKey(name: "base_uom")
          this.baseUom,
      @JsonKey(name: "sales_uom")
          this.salesUOM,
      @JsonKey(name: "available_qty")
          this.availableQuantity,
      @JsonKey(name: "cancelled_qty")
          this.availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty")
          this.reservedQuantity,
      @JsonKey(name: "damaged_qty")
          this.damagedQuantity,
      @JsonKey(name: "return_qty")
          this.returnQuantity,
      @JsonKey(name: "sales_blocked_qty")
          this.salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty")
          this.purchaseBlockQuantity,
      @JsonKey(name: "maximum_quantity")
          this.maximumQuantity,
      @JsonKey(name: "add_virtual_stock")
          this.addVirtualStock,
      @JsonKey(name: "virtual_stock")
          this.virtualStock,
      @JsonKey(name: "minimum_quantity")
          this.minimumQuantity,
      @JsonKey(name: "created_at")
          this.createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          this.stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          this.salesBlocked,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          this.purchaseBlocked});

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
  @JsonKey(name: "purchase_uom")
  final int? purchaseUom;
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
  @JsonKey(name: "channel_type_allocation_ratio")
  final String? channelTypeAllocationRatio;
  @override
  @JsonKey(name: "min_max_ratio")
  final String? minMaxRatio;
  @override
  @JsonKey(name: "virtual_type")
  final String? virtualType;
  @override
  @JsonKey(name: "stock_code")
  final String? stockCode;
  @override
  @JsonKey(name: "safety_stock_qty")
  final int? safetyStockQty;
  @override
  @JsonKey(name: "reorder_qty")
  final int? reOrderQuantity;
  @override
  @JsonKey(name: "reorder_point")
  final int? reOrderPoint;
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
  @JsonKey(name: "maximum_quantity")
  final int? maximumQuantity;
  @override
  @JsonKey(name: "add_virtual_stock")
  final int? addVirtualStock;
  @override
  @JsonKey(name: "virtual_stock")
  final int? virtualStock;
  @override
  @JsonKey(name: "minimum_quantity")
  final int? minimumQuantity;
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
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  final bool? purchaseBlocked;

  @override
  String toString() {
    return 'StockData(id: $id, code: $code, baseUomName: $baseUomName, purchaseUomName: $purchaseUomName, purchaseUom: $purchaseUom, salesUomName: $salesUomName, variantId: $variantId, variantCode: $variantCode, inventoryId: $inventoryId, channelTypeAllocationRatio: $channelTypeAllocationRatio, minMaxRatio: $minMaxRatio, virtualType: $virtualType, stockCode: $stockCode, safetyStockQty: $safetyStockQty, reOrderQuantity: $reOrderQuantity, reOrderPoint: $reOrderPoint, baseUom: $baseUom, salesUOM: $salesUOM, availableQuantity: $availableQuantity, availablcancelledQuantityeQuantity: $availablcancelledQuantityeQuantity, reservedQuantity: $reservedQuantity, damagedQuantity: $damagedQuantity, returnQuantity: $returnQuantity, salesBlockQuantity: $salesBlockQuantity, purchaseBlockQuantity: $purchaseBlockQuantity, maximumQuantity: $maximumQuantity, addVirtualStock: $addVirtualStock, virtualStock: $virtualStock, minimumQuantity: $minimumQuantity, createdAt: $createdAt, stockWarning: $stockWarning, salesBlocked: $salesBlocked, purchaseBlocked: $purchaseBlocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.baseUomName, baseUomName) ||
                other.baseUomName == baseUomName) &&
            (identical(other.purchaseUomName, purchaseUomName) ||
                other.purchaseUomName == purchaseUomName) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.salesUomName, salesUomName) ||
                other.salesUomName == salesUomName) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.channelTypeAllocationRatio, channelTypeAllocationRatio) ||
                other.channelTypeAllocationRatio ==
                    channelTypeAllocationRatio) &&
            (identical(other.minMaxRatio, minMaxRatio) ||
                other.minMaxRatio == minMaxRatio) &&
            (identical(other.virtualType, virtualType) ||
                other.virtualType == virtualType) &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode) &&
            (identical(other.safetyStockQty, safetyStockQty) ||
                other.safetyStockQty == safetyStockQty) &&
            (identical(other.reOrderQuantity, reOrderQuantity) ||
                other.reOrderQuantity == reOrderQuantity) &&
            (identical(other.reOrderPoint, reOrderPoint) ||
                other.reOrderPoint == reOrderPoint) &&
            (identical(other.baseUom, baseUom) || other.baseUom == baseUom) &&
            (identical(other.salesUOM, salesUOM) ||
                other.salesUOM == salesUOM) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.availablcancelledQuantityeQuantity, availablcancelledQuantityeQuantity) ||
                other.availablcancelledQuantityeQuantity ==
                    availablcancelledQuantityeQuantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.damagedQuantity, damagedQuantity) ||
                other.damagedQuantity == damagedQuantity) &&
            (identical(other.returnQuantity, returnQuantity) ||
                other.returnQuantity == returnQuantity) &&
            (identical(other.salesBlockQuantity, salesBlockQuantity) ||
                other.salesBlockQuantity == salesBlockQuantity) &&
            (identical(other.purchaseBlockQuantity, purchaseBlockQuantity) ||
                other.purchaseBlockQuantity == purchaseBlockQuantity) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.addVirtualStock, addVirtualStock) ||
                other.addVirtualStock == addVirtualStock) &&
            (identical(other.virtualStock, virtualStock) ||
                other.virtualStock == virtualStock) &&
            (identical(other.minimumQuantity, minimumQuantity) ||
                other.minimumQuantity == minimumQuantity) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.stockWarning, stockWarning) ||
                other.stockWarning == stockWarning) &&
            (identical(other.salesBlocked, salesBlocked) ||
                other.salesBlocked == salesBlocked) &&
            (identical(other.purchaseBlocked, purchaseBlocked) ||
                other.purchaseBlocked == purchaseBlocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        baseUomName,
        purchaseUomName,
        purchaseUom,
        salesUomName,
        variantId,
        variantCode,
        inventoryId,
        channelTypeAllocationRatio,
        minMaxRatio,
        virtualType,
        stockCode,
        safetyStockQty,
        reOrderQuantity,
        reOrderPoint,
        baseUom,
        salesUOM,
        availableQuantity,
        availablcancelledQuantityeQuantity,
        reservedQuantity,
        damagedQuantity,
        returnQuantity,
        salesBlockQuantity,
        purchaseBlockQuantity,
        maximumQuantity,
        addVirtualStock,
        virtualStock,
        minimumQuantity,
        createdAt,
        stockWarning,
        salesBlocked,
        purchaseBlocked
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockDataCopyWith<_$_StockData> get copyWith =>
      __$$_StockDataCopyWithImpl<_$_StockData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockDataToJson(
      this,
    );
  }
}

abstract class _StockData implements StockData {
  const factory _StockData(
      {final int? id,
      final String? code,
      @JsonKey(name: "base_uom_name")
          final String? baseUomName,
      @JsonKey(name: "purchase_uom_name")
          final String? purchaseUomName,
      @JsonKey(name: "purchase_uom")
          final int? purchaseUom,
      @JsonKey(name: "sales_uom_name")
          final String? salesUomName,
      @JsonKey(name: "variant_id")
          final int? variantId,
      @JsonKey(name: "variant_code")
          final String? variantCode,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "channel_type_allocation_ratio")
          final String? channelTypeAllocationRatio,
      @JsonKey(name: "min_max_ratio")
          final String? minMaxRatio,
      @JsonKey(name: "virtual_type")
          final String? virtualType,
      @JsonKey(name: "stock_code")
          final String? stockCode,
      @JsonKey(name: "safety_stock_qty")
          final int? safetyStockQty,
      @JsonKey(name: "reorder_qty")
          final int? reOrderQuantity,
      @JsonKey(name: "reorder_point")
          final int? reOrderPoint,
      @JsonKey(name: "base_uom")
          final int? baseUom,
      @JsonKey(name: "sales_uom")
          final int? salesUOM,
      @JsonKey(name: "available_qty")
          final int? availableQuantity,
      @JsonKey(name: "cancelled_qty")
          final int? availablcancelledQuantityeQuantity,
      @JsonKey(name: "reserved_qty")
          final int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          final int? damagedQuantity,
      @JsonKey(name: "return_qty")
          final int? returnQuantity,
      @JsonKey(name: "sales_blocked_qty")
          final int? salesBlockQuantity,
      @JsonKey(name: "purchase_blocked_qty")
          final int? purchaseBlockQuantity,
      @JsonKey(name: "maximum_quantity")
          final int? maximumQuantity,
      @JsonKey(name: "add_virtual_stock")
          final int? addVirtualStock,
      @JsonKey(name: "virtual_stock")
          final int? virtualStock,
      @JsonKey(name: "minimum_quantity")
          final int? minimumQuantity,
      @JsonKey(name: "created_at")
          final String? createdAt,
      @JsonKey(name: "stock_warning", defaultValue: false)
          final bool? stockWarning,
      @JsonKey(name: "sales_blocked", defaultValue: false)
          final bool? salesBlocked,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          final bool? purchaseBlocked}) = _$_StockData;

  factory _StockData.fromJson(Map<String, dynamic> json) =
      _$_StockData.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: "base_uom_name")
  String? get baseUomName;
  @override
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName;
  @override
  @JsonKey(name: "purchase_uom")
  int? get purchaseUom;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "channel_type_allocation_ratio")
  String? get channelTypeAllocationRatio;
  @override
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio;
  @override
  @JsonKey(name: "virtual_type")
  String? get virtualType;
  @override
  @JsonKey(name: "stock_code")
  String? get stockCode;
  @override
  @JsonKey(name: "safety_stock_qty")
  int? get safetyStockQty;
  @override
  @JsonKey(name: "reorder_qty")
  int? get reOrderQuantity;
  @override
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint;
  @override
  @JsonKey(name: "base_uom")
  int? get baseUom;
  @override
  @JsonKey(name: "sales_uom")
  int? get salesUOM;
  @override
  @JsonKey(name: "available_qty")
  int? get availableQuantity;
  @override
  @JsonKey(name: "cancelled_qty")
  int? get availablcancelledQuantityeQuantity;
  @override
  @JsonKey(name: "reserved_qty")
  int? get reservedQuantity;
  @override
  @JsonKey(name: "damaged_qty")
  int? get damagedQuantity;
  @override
  @JsonKey(name: "return_qty")
  int? get returnQuantity;
  @override
  @JsonKey(name: "sales_blocked_qty")
  int? get salesBlockQuantity;
  @override
  @JsonKey(name: "purchase_blocked_qty")
  int? get purchaseBlockQuantity;
  @override
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity;
  @override
  @JsonKey(name: "add_virtual_stock")
  int? get addVirtualStock;
  @override
  @JsonKey(name: "virtual_stock")
  int? get virtualStock;
  @override
  @JsonKey(name: "minimum_quantity")
  int? get minimumQuantity;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning;
  @override
  @JsonKey(name: "sales_blocked", defaultValue: false)
  bool? get salesBlocked;
  @override
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  bool? get purchaseBlocked;
  @override
  @JsonKey(ignore: true)
  _$$_StockDataCopyWith<_$_StockData> get copyWith =>
      throw _privateConstructorUsedError;
}
