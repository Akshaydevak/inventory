// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channelsreadmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelListModel _$ChannelListModelFromJson(Map<String, dynamic> json) {
  return _ChannelListModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelListModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_id")
  String? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_code")
  String? get channelStockCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_quantity")
  int? get channelStockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "safety_stock_qty")
  int? get safetyStockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_quantity")
  int? get reOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "available_qty")
  int? get availableQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "reserved_qty")
  int? get reservedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "damaged_qty")
  int? get damagedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "returned_qty")
  int? get returnedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "replacement_qty")
  int? get replaceMentQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_stock")
  int? get virtualStock => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_blocked_qty")
  int? get purchaseBlockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_blocked_qty")
  int? get salesblockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "add_virtual_stock")
  int? get addVirtualStock => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_stock_quantity")
  int? get dailyStockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_type")
  String? get virtualType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_stock_id")
  int? get channelTypeStockId => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  int? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get varaintId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_status_crucial_point")
  int? get channelStatusCrucialPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_status_medium_point")
  int? get channelStatusMediumPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  bool? get purchaseBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: "is_daily_stock_available", defaultValue: false)
  bool? get isDAilyStockAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelListModelCopyWith<ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelListModelCopyWith<$Res> {
  factory $ChannelListModelCopyWith(
          ChannelListModel value, $Res Function(ChannelListModel) then) =
      _$ChannelListModelCopyWithImpl<$Res, ChannelListModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "channel_name")
          String? channelName,
      @JsonKey(name: "channel_id")
          String? channelId,
      @JsonKey(name: "channel_code")
          String? channelCode,
      @JsonKey(name: "channel_stock_type")
          String? channelStockType,
      @JsonKey(name: "channel_stock_code")
          String? channelStockCode,
      @JsonKey(name: "channel_stock_quantity")
          int? channelStockQuantity,
      @JsonKey(name: "safety_stock_qty")
          int? safetyStockQuantity,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "available_qty")
          int? availableQuantity,
      @JsonKey(name: "reserved_qty")
          int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          int? damagedQuantity,
      @JsonKey(name: "returned_qty")
          int? returnedQuantity,
      @JsonKey(name: "replacement_qty")
          int? replaceMentQuantity,
      @JsonKey(name: "virtual_stock")
          int? virtualStock,
      @JsonKey(name: "purchase_blocked_qty")
          int? purchaseBlockQuantity,
      @JsonKey(name: "sales_blocked_qty")
          int? salesblockQuantity,
      @JsonKey(name: "add_virtual_stock")
          int? addVirtualStock,
      @JsonKey(name: "daily_stock_quantity")
          int? dailyStockQuantity,
      @JsonKey(name: "virtual_type")
          String? virtualType,
      @JsonKey(name: "channel_type_code")
          String? channelTypeCode,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "channel_type_stock_id")
          int? channelTypeStockId,
      @JsonKey(name: "stock_id")
          int? stockId,
      @JsonKey(name: "variant_id")
          int? varaintId,
      @JsonKey(name: "channel_status_crucial_point")
          int? channelStatusCrucialPoint,
      @JsonKey(name: "channel_status_medium_point")
          int? channelStatusMediumPoint,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          bool? purchaseBlocked,
      @JsonKey(name: "is_daily_stock_available", defaultValue: false)
          bool? isDAilyStockAvailable});
}

/// @nodoc
class _$ChannelListModelCopyWithImpl<$Res, $Val extends ChannelListModel>
    implements $ChannelListModelCopyWith<$Res> {
  _$ChannelListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelStockCode = freezed,
    Object? channelStockQuantity = freezed,
    Object? safetyStockQuantity = freezed,
    Object? reOrderPoint = freezed,
    Object? reOrderQuantity = freezed,
    Object? availableQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? replaceMentQuantity = freezed,
    Object? virtualStock = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? salesblockQuantity = freezed,
    Object? addVirtualStock = freezed,
    Object? dailyStockQuantity = freezed,
    Object? virtualType = freezed,
    Object? channelTypeCode = freezed,
    Object? variantCode = freezed,
    Object? channelTypeStockId = freezed,
    Object? stockId = freezed,
    Object? varaintId = freezed,
    Object? channelStatusCrucialPoint = freezed,
    Object? channelStatusMediumPoint = freezed,
    Object? stockWarning = freezed,
    Object? salesBlock = freezed,
    Object? purchaseBlocked = freezed,
    Object? isDAilyStockAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockCode: freezed == channelStockCode
          ? _value.channelStockCode
          : channelStockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockQuantity: freezed == channelStockQuantity
          ? _value.channelStockQuantity
          : channelStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyStockQuantity: freezed == safetyStockQuantity
          ? _value.safetyStockQuantity
          : safetyStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: freezed == reOrderPoint
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: freezed == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: freezed == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: freezed == damagedQuantity
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      replaceMentQuantity: freezed == replaceMentQuantity
          ? _value.replaceMentQuantity
          : replaceMentQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: freezed == purchaseBlockQuantity
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesblockQuantity: freezed == salesblockQuantity
          ? _value.salesblockQuantity
          : salesblockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      addVirtualStock: freezed == addVirtualStock
          ? _value.addVirtualStock
          : addVirtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyStockQuantity: freezed == dailyStockQuantity
          ? _value.dailyStockQuantity
          : dailyStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualType: freezed == virtualType
          ? _value.virtualType
          : virtualType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeStockId: freezed == channelTypeStockId
          ? _value.channelTypeStockId
          : channelTypeStockId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int?,
      varaintId: freezed == varaintId
          ? _value.varaintId
          : varaintId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelStatusCrucialPoint: freezed == channelStatusCrucialPoint
          ? _value.channelStatusCrucialPoint
          : channelStatusCrucialPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      channelStatusMediumPoint: freezed == channelStatusMediumPoint
          ? _value.channelStatusMediumPoint
          : channelStatusMediumPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: freezed == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlock: freezed == salesBlock
          ? _value.salesBlock
          : salesBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlocked: freezed == purchaseBlocked
          ? _value.purchaseBlocked
          : purchaseBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDAilyStockAvailable: freezed == isDAilyStockAvailable
          ? _value.isDAilyStockAvailable
          : isDAilyStockAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelListModelCopyWith<$Res>
    implements $ChannelListModelCopyWith<$Res> {
  factory _$$_ChannelListModelCopyWith(
          _$_ChannelListModel value, $Res Function(_$_ChannelListModel) then) =
      __$$_ChannelListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "channel_name")
          String? channelName,
      @JsonKey(name: "channel_id")
          String? channelId,
      @JsonKey(name: "channel_code")
          String? channelCode,
      @JsonKey(name: "channel_stock_type")
          String? channelStockType,
      @JsonKey(name: "channel_stock_code")
          String? channelStockCode,
      @JsonKey(name: "channel_stock_quantity")
          int? channelStockQuantity,
      @JsonKey(name: "safety_stock_qty")
          int? safetyStockQuantity,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "available_qty")
          int? availableQuantity,
      @JsonKey(name: "reserved_qty")
          int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          int? damagedQuantity,
      @JsonKey(name: "returned_qty")
          int? returnedQuantity,
      @JsonKey(name: "replacement_qty")
          int? replaceMentQuantity,
      @JsonKey(name: "virtual_stock")
          int? virtualStock,
      @JsonKey(name: "purchase_blocked_qty")
          int? purchaseBlockQuantity,
      @JsonKey(name: "sales_blocked_qty")
          int? salesblockQuantity,
      @JsonKey(name: "add_virtual_stock")
          int? addVirtualStock,
      @JsonKey(name: "daily_stock_quantity")
          int? dailyStockQuantity,
      @JsonKey(name: "virtual_type")
          String? virtualType,
      @JsonKey(name: "channel_type_code")
          String? channelTypeCode,
      @JsonKey(name: "variant_code")
          String? variantCode,
      @JsonKey(name: "channel_type_stock_id")
          int? channelTypeStockId,
      @JsonKey(name: "stock_id")
          int? stockId,
      @JsonKey(name: "variant_id")
          int? varaintId,
      @JsonKey(name: "channel_status_crucial_point")
          int? channelStatusCrucialPoint,
      @JsonKey(name: "channel_status_medium_point")
          int? channelStatusMediumPoint,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          bool? purchaseBlocked,
      @JsonKey(name: "is_daily_stock_available", defaultValue: false)
          bool? isDAilyStockAvailable});
}

/// @nodoc
class __$$_ChannelListModelCopyWithImpl<$Res>
    extends _$ChannelListModelCopyWithImpl<$Res, _$_ChannelListModel>
    implements _$$_ChannelListModelCopyWith<$Res> {
  __$$_ChannelListModelCopyWithImpl(
      _$_ChannelListModel _value, $Res Function(_$_ChannelListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelStockCode = freezed,
    Object? channelStockQuantity = freezed,
    Object? safetyStockQuantity = freezed,
    Object? reOrderPoint = freezed,
    Object? reOrderQuantity = freezed,
    Object? availableQuantity = freezed,
    Object? reservedQuantity = freezed,
    Object? damagedQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? replaceMentQuantity = freezed,
    Object? virtualStock = freezed,
    Object? purchaseBlockQuantity = freezed,
    Object? salesblockQuantity = freezed,
    Object? addVirtualStock = freezed,
    Object? dailyStockQuantity = freezed,
    Object? virtualType = freezed,
    Object? channelTypeCode = freezed,
    Object? variantCode = freezed,
    Object? channelTypeStockId = freezed,
    Object? stockId = freezed,
    Object? varaintId = freezed,
    Object? channelStatusCrucialPoint = freezed,
    Object? channelStatusMediumPoint = freezed,
    Object? stockWarning = freezed,
    Object? salesBlock = freezed,
    Object? purchaseBlocked = freezed,
    Object? isDAilyStockAvailable = freezed,
  }) {
    return _then(_$_ChannelListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockCode: freezed == channelStockCode
          ? _value.channelStockCode
          : channelStockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockQuantity: freezed == channelStockQuantity
          ? _value.channelStockQuantity
          : channelStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyStockQuantity: freezed == safetyStockQuantity
          ? _value.safetyStockQuantity
          : safetyStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: freezed == reOrderPoint
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: freezed == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      reservedQuantity: freezed == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      damagedQuantity: freezed == damagedQuantity
          ? _value.damagedQuantity
          : damagedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      replaceMentQuantity: freezed == replaceMentQuantity
          ? _value.replaceMentQuantity
          : replaceMentQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlockQuantity: freezed == purchaseBlockQuantity
          ? _value.purchaseBlockQuantity
          : purchaseBlockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesblockQuantity: freezed == salesblockQuantity
          ? _value.salesblockQuantity
          : salesblockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      addVirtualStock: freezed == addVirtualStock
          ? _value.addVirtualStock
          : addVirtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyStockQuantity: freezed == dailyStockQuantity
          ? _value.dailyStockQuantity
          : dailyStockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualType: freezed == virtualType
          ? _value.virtualType
          : virtualType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeStockId: freezed == channelTypeStockId
          ? _value.channelTypeStockId
          : channelTypeStockId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int?,
      varaintId: freezed == varaintId
          ? _value.varaintId
          : varaintId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelStatusCrucialPoint: freezed == channelStatusCrucialPoint
          ? _value.channelStatusCrucialPoint
          : channelStatusCrucialPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      channelStatusMediumPoint: freezed == channelStatusMediumPoint
          ? _value.channelStatusMediumPoint
          : channelStatusMediumPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: freezed == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlock: freezed == salesBlock
          ? _value.salesBlock
          : salesBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlocked: freezed == purchaseBlocked
          ? _value.purchaseBlocked
          : purchaseBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDAilyStockAvailable: freezed == isDAilyStockAvailable
          ? _value.isDAilyStockAvailable
          : isDAilyStockAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelListModel implements _ChannelListModel {
  const _$_ChannelListModel(
      {this.id,
      @JsonKey(name: "channel_name")
          this.channelName,
      @JsonKey(name: "channel_id")
          this.channelId,
      @JsonKey(name: "channel_code")
          this.channelCode,
      @JsonKey(name: "channel_stock_type")
          this.channelStockType,
      @JsonKey(name: "channel_stock_code")
          this.channelStockCode,
      @JsonKey(name: "channel_stock_quantity")
          this.channelStockQuantity,
      @JsonKey(name: "safety_stock_qty")
          this.safetyStockQuantity,
      @JsonKey(name: "reorder_point")
          this.reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          this.reOrderQuantity,
      @JsonKey(name: "available_qty")
          this.availableQuantity,
      @JsonKey(name: "reserved_qty")
          this.reservedQuantity,
      @JsonKey(name: "damaged_qty")
          this.damagedQuantity,
      @JsonKey(name: "returned_qty")
          this.returnedQuantity,
      @JsonKey(name: "replacement_qty")
          this.replaceMentQuantity,
      @JsonKey(name: "virtual_stock")
          this.virtualStock,
      @JsonKey(name: "purchase_blocked_qty")
          this.purchaseBlockQuantity,
      @JsonKey(name: "sales_blocked_qty")
          this.salesblockQuantity,
      @JsonKey(name: "add_virtual_stock")
          this.addVirtualStock,
      @JsonKey(name: "daily_stock_quantity")
          this.dailyStockQuantity,
      @JsonKey(name: "virtual_type")
          this.virtualType,
      @JsonKey(name: "channel_type_code")
          this.channelTypeCode,
      @JsonKey(name: "variant_code")
          this.variantCode,
      @JsonKey(name: "channel_type_stock_id")
          this.channelTypeStockId,
      @JsonKey(name: "stock_id")
          this.stockId,
      @JsonKey(name: "variant_id")
          this.varaintId,
      @JsonKey(name: "channel_status_crucial_point")
          this.channelStatusCrucialPoint,
      @JsonKey(name: "channel_status_medium_point")
          this.channelStatusMediumPoint,
      @JsonKey(name: "stock_warning", defaultValue: false)
          this.stockWarning,
      @JsonKey(name: "sales_block", defaultValue: false)
          this.salesBlock,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          this.purchaseBlocked,
      @JsonKey(name: "is_daily_stock_available", defaultValue: false)
          this.isDAilyStockAvailable});

  factory _$_ChannelListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelListModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @JsonKey(name: "channel_id")
  final String? channelId;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  final String? channelStockType;
  @override
  @JsonKey(name: "channel_stock_code")
  final String? channelStockCode;
  @override
  @JsonKey(name: "channel_stock_quantity")
  final int? channelStockQuantity;
  @override
  @JsonKey(name: "safety_stock_qty")
  final int? safetyStockQuantity;
  @override
  @JsonKey(name: "reorder_point")
  final int? reOrderPoint;
  @override
  @JsonKey(name: "reorder_quantity")
  final int? reOrderQuantity;
  @override
  @JsonKey(name: "available_qty")
  final int? availableQuantity;
  @override
  @JsonKey(name: "reserved_qty")
  final int? reservedQuantity;
  @override
  @JsonKey(name: "damaged_qty")
  final int? damagedQuantity;
  @override
  @JsonKey(name: "returned_qty")
  final int? returnedQuantity;
  @override
  @JsonKey(name: "replacement_qty")
  final int? replaceMentQuantity;
  @override
  @JsonKey(name: "virtual_stock")
  final int? virtualStock;
  @override
  @JsonKey(name: "purchase_blocked_qty")
  final int? purchaseBlockQuantity;
  @override
  @JsonKey(name: "sales_blocked_qty")
  final int? salesblockQuantity;
  @override
  @JsonKey(name: "add_virtual_stock")
  final int? addVirtualStock;
  @override
  @JsonKey(name: "daily_stock_quantity")
  final int? dailyStockQuantity;
  @override
  @JsonKey(name: "virtual_type")
  final String? virtualType;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "channel_type_stock_id")
  final int? channelTypeStockId;
  @override
  @JsonKey(name: "stock_id")
  final int? stockId;
  @override
  @JsonKey(name: "variant_id")
  final int? varaintId;
  @override
  @JsonKey(name: "channel_status_crucial_point")
  final int? channelStatusCrucialPoint;
  @override
  @JsonKey(name: "channel_status_medium_point")
  final int? channelStatusMediumPoint;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  final bool? stockWarning;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  final bool? salesBlock;
  @override
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  final bool? purchaseBlocked;
  @override
  @JsonKey(name: "is_daily_stock_available", defaultValue: false)
  final bool? isDAilyStockAvailable;

  @override
  String toString() {
    return 'ChannelListModel(id: $id, channelName: $channelName, channelId: $channelId, channelCode: $channelCode, channelStockType: $channelStockType, channelStockCode: $channelStockCode, channelStockQuantity: $channelStockQuantity, safetyStockQuantity: $safetyStockQuantity, reOrderPoint: $reOrderPoint, reOrderQuantity: $reOrderQuantity, availableQuantity: $availableQuantity, reservedQuantity: $reservedQuantity, damagedQuantity: $damagedQuantity, returnedQuantity: $returnedQuantity, replaceMentQuantity: $replaceMentQuantity, virtualStock: $virtualStock, purchaseBlockQuantity: $purchaseBlockQuantity, salesblockQuantity: $salesblockQuantity, addVirtualStock: $addVirtualStock, dailyStockQuantity: $dailyStockQuantity, virtualType: $virtualType, channelTypeCode: $channelTypeCode, variantCode: $variantCode, channelTypeStockId: $channelTypeStockId, stockId: $stockId, varaintId: $varaintId, channelStatusCrucialPoint: $channelStatusCrucialPoint, channelStatusMediumPoint: $channelStatusMediumPoint, stockWarning: $stockWarning, salesBlock: $salesBlock, purchaseBlocked: $purchaseBlocked, isDAilyStockAvailable: $isDAilyStockAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelStockType, channelStockType) ||
                other.channelStockType == channelStockType) &&
            (identical(other.channelStockCode, channelStockCode) ||
                other.channelStockCode == channelStockCode) &&
            (identical(other.channelStockQuantity, channelStockQuantity) ||
                other.channelStockQuantity == channelStockQuantity) &&
            (identical(other.safetyStockQuantity, safetyStockQuantity) ||
                other.safetyStockQuantity == safetyStockQuantity) &&
            (identical(other.reOrderPoint, reOrderPoint) ||
                other.reOrderPoint == reOrderPoint) &&
            (identical(other.reOrderQuantity, reOrderQuantity) ||
                other.reOrderQuantity == reOrderQuantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.damagedQuantity, damagedQuantity) ||
                other.damagedQuantity == damagedQuantity) &&
            (identical(other.returnedQuantity, returnedQuantity) ||
                other.returnedQuantity == returnedQuantity) &&
            (identical(other.replaceMentQuantity, replaceMentQuantity) ||
                other.replaceMentQuantity == replaceMentQuantity) &&
            (identical(other.virtualStock, virtualStock) ||
                other.virtualStock == virtualStock) &&
            (identical(other.purchaseBlockQuantity, purchaseBlockQuantity) ||
                other.purchaseBlockQuantity == purchaseBlockQuantity) &&
            (identical(other.salesblockQuantity, salesblockQuantity) ||
                other.salesblockQuantity == salesblockQuantity) &&
            (identical(other.addVirtualStock, addVirtualStock) ||
                other.addVirtualStock == addVirtualStock) &&
            (identical(other.dailyStockQuantity, dailyStockQuantity) ||
                other.dailyStockQuantity == dailyStockQuantity) &&
            (identical(other.virtualType, virtualType) ||
                other.virtualType == virtualType) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.channelTypeStockId, channelTypeStockId) ||
                other.channelTypeStockId == channelTypeStockId) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.varaintId, varaintId) ||
                other.varaintId == varaintId) &&
            (identical(other.channelStatusCrucialPoint,
                    channelStatusCrucialPoint) ||
                other.channelStatusCrucialPoint == channelStatusCrucialPoint) &&
            (identical(
                    other.channelStatusMediumPoint, channelStatusMediumPoint) ||
                other.channelStatusMediumPoint == channelStatusMediumPoint) &&
            (identical(other.stockWarning, stockWarning) ||
                other.stockWarning == stockWarning) &&
            (identical(other.salesBlock, salesBlock) ||
                other.salesBlock == salesBlock) &&
            (identical(other.purchaseBlocked, purchaseBlocked) ||
                other.purchaseBlocked == purchaseBlocked) &&
            (identical(other.isDAilyStockAvailable, isDAilyStockAvailable) ||
                other.isDAilyStockAvailable == isDAilyStockAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        channelName,
        channelId,
        channelCode,
        channelStockType,
        channelStockCode,
        channelStockQuantity,
        safetyStockQuantity,
        reOrderPoint,
        reOrderQuantity,
        availableQuantity,
        reservedQuantity,
        damagedQuantity,
        returnedQuantity,
        replaceMentQuantity,
        virtualStock,
        purchaseBlockQuantity,
        salesblockQuantity,
        addVirtualStock,
        dailyStockQuantity,
        virtualType,
        channelTypeCode,
        variantCode,
        channelTypeStockId,
        stockId,
        varaintId,
        channelStatusCrucialPoint,
        channelStatusMediumPoint,
        stockWarning,
        salesBlock,
        purchaseBlocked,
        isDAilyStockAvailable
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      __$$_ChannelListModelCopyWithImpl<_$_ChannelListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelListModelToJson(
      this,
    );
  }
}

abstract class _ChannelListModel implements ChannelListModel {
  const factory _ChannelListModel(
      {final int? id,
      @JsonKey(name: "channel_name")
          final String? channelName,
      @JsonKey(name: "channel_id")
          final String? channelId,
      @JsonKey(name: "channel_code")
          final String? channelCode,
      @JsonKey(name: "channel_stock_type")
          final String? channelStockType,
      @JsonKey(name: "channel_stock_code")
          final String? channelStockCode,
      @JsonKey(name: "channel_stock_quantity")
          final int? channelStockQuantity,
      @JsonKey(name: "safety_stock_qty")
          final int? safetyStockQuantity,
      @JsonKey(name: "reorder_point")
          final int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          final int? reOrderQuantity,
      @JsonKey(name: "available_qty")
          final int? availableQuantity,
      @JsonKey(name: "reserved_qty")
          final int? reservedQuantity,
      @JsonKey(name: "damaged_qty")
          final int? damagedQuantity,
      @JsonKey(name: "returned_qty")
          final int? returnedQuantity,
      @JsonKey(name: "replacement_qty")
          final int? replaceMentQuantity,
      @JsonKey(name: "virtual_stock")
          final int? virtualStock,
      @JsonKey(name: "purchase_blocked_qty")
          final int? purchaseBlockQuantity,
      @JsonKey(name: "sales_blocked_qty")
          final int? salesblockQuantity,
      @JsonKey(name: "add_virtual_stock")
          final int? addVirtualStock,
      @JsonKey(name: "daily_stock_quantity")
          final int? dailyStockQuantity,
      @JsonKey(name: "virtual_type")
          final String? virtualType,
      @JsonKey(name: "channel_type_code")
          final String? channelTypeCode,
      @JsonKey(name: "variant_code")
          final String? variantCode,
      @JsonKey(name: "channel_type_stock_id")
          final int? channelTypeStockId,
      @JsonKey(name: "stock_id")
          final int? stockId,
      @JsonKey(name: "variant_id")
          final int? varaintId,
      @JsonKey(name: "channel_status_crucial_point")
          final int? channelStatusCrucialPoint,
      @JsonKey(name: "channel_status_medium_point")
          final int? channelStatusMediumPoint,
      @JsonKey(name: "stock_warning", defaultValue: false)
          final bool? stockWarning,
      @JsonKey(name: "sales_block", defaultValue: false)
          final bool? salesBlock,
      @JsonKey(name: "purchase_blocked", defaultValue: false)
          final bool? purchaseBlocked,
      @JsonKey(name: "is_daily_stock_available", defaultValue: false)
          final bool? isDAilyStockAvailable}) = _$_ChannelListModel;

  factory _ChannelListModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelListModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName;
  @override
  @JsonKey(name: "channel_id")
  String? get channelId;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType;
  @override
  @JsonKey(name: "channel_stock_code")
  String? get channelStockCode;
  @override
  @JsonKey(name: "channel_stock_quantity")
  int? get channelStockQuantity;
  @override
  @JsonKey(name: "safety_stock_qty")
  int? get safetyStockQuantity;
  @override
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint;
  @override
  @JsonKey(name: "reorder_quantity")
  int? get reOrderQuantity;
  @override
  @JsonKey(name: "available_qty")
  int? get availableQuantity;
  @override
  @JsonKey(name: "reserved_qty")
  int? get reservedQuantity;
  @override
  @JsonKey(name: "damaged_qty")
  int? get damagedQuantity;
  @override
  @JsonKey(name: "returned_qty")
  int? get returnedQuantity;
  @override
  @JsonKey(name: "replacement_qty")
  int? get replaceMentQuantity;
  @override
  @JsonKey(name: "virtual_stock")
  int? get virtualStock;
  @override
  @JsonKey(name: "purchase_blocked_qty")
  int? get purchaseBlockQuantity;
  @override
  @JsonKey(name: "sales_blocked_qty")
  int? get salesblockQuantity;
  @override
  @JsonKey(name: "add_virtual_stock")
  int? get addVirtualStock;
  @override
  @JsonKey(name: "daily_stock_quantity")
  int? get dailyStockQuantity;
  @override
  @JsonKey(name: "virtual_type")
  String? get virtualType;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "channel_type_stock_id")
  int? get channelTypeStockId;
  @override
  @JsonKey(name: "stock_id")
  int? get stockId;
  @override
  @JsonKey(name: "variant_id")
  int? get varaintId;
  @override
  @JsonKey(name: "channel_status_crucial_point")
  int? get channelStatusCrucialPoint;
  @override
  @JsonKey(name: "channel_status_medium_point")
  int? get channelStatusMediumPoint;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBlock;
  @override
  @JsonKey(name: "purchase_blocked", defaultValue: false)
  bool? get purchaseBlocked;
  @override
  @JsonKey(name: "is_daily_stock_available", defaultValue: false)
  bool? get isDAilyStockAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
