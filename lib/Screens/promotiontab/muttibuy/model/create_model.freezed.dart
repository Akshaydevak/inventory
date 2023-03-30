// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionMultiBuyCreationModel _$PromotionMultiBuyCreationModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionMultiBuyCreationModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionMultiBuyCreationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_id")
  int? get multiBuyAppliedToID => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cost")
  double? get totalCost => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_name")
  String? get multiBuyAppliedToName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBuy => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to")
  String? get multibuyAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_code")
  String? get multibuyAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionMultiBuyCreationModelCopyWith<PromotionMultiBuyCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionMultiBuyCreationModelCopyWith<$Res> {
  factory $PromotionMultiBuyCreationModelCopyWith(
          PromotionMultiBuyCreationModel value,
          $Res Function(PromotionMultiBuyCreationModel) then) =
      _$PromotionMultiBuyCreationModelCopyWithImpl<$Res,
          PromotionMultiBuyCreationModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          int? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_cost")
          double? totalCost,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor});
}

/// @nodoc
class _$PromotionMultiBuyCreationModelCopyWithImpl<$Res,
        $Val extends PromotionMultiBuyCreationModel>
    implements $PromotionMultiBuyCreationModelCopyWith<$Res> {
  _$PromotionMultiBuyCreationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? availableCustomerGroups = freezed,
    Object? getLines = freezed,
    Object? buyLines = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? maximumQuantity = freezed,
    Object? multiBuyAppliedToID = freezed,
    Object? sellingPrice = freezed,
    Object? totalCost = freezed,
    Object? displayName = freezed,
    Object? inventoryId = freezed,
    Object? multiBuyAppliedToName = freezed,
    Object? createdBuy = freezed,
    Object? multibuyAppliedTo = freezed,
    Object? multibuyAppliedToCode = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      getLines: freezed == getLines
          ? _value.getLines
          : getLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      buyLines: freezed == buyLines
          ? _value.buyLines
          : buyLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      multiBuyAppliedToID: freezed == multiBuyAppliedToID
          ? _value.multiBuyAppliedToID
          : multiBuyAppliedToID // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiBuyAppliedToName: freezed == multiBuyAppliedToName
          ? _value.multiBuyAppliedToName
          : multiBuyAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBuy: freezed == createdBuy
          ? _value.createdBuy
          : createdBuy // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedTo: freezed == multibuyAppliedTo
          ? _value.multibuyAppliedTo
          : multibuyAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedToCode: freezed == multibuyAppliedToCode
          ? _value.multibuyAppliedToCode
          : multibuyAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionMultiBuyCreationModelCopyWith<$Res>
    implements $PromotionMultiBuyCreationModelCopyWith<$Res> {
  factory _$$_PromotionMultiBuyCreationModelCopyWith(
          _$_PromotionMultiBuyCreationModel value,
          $Res Function(_$_PromotionMultiBuyCreationModel) then) =
      __$$_PromotionMultiBuyCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          int? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_cost")
          double? totalCost,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor});
}

/// @nodoc
class __$$_PromotionMultiBuyCreationModelCopyWithImpl<$Res>
    extends _$PromotionMultiBuyCreationModelCopyWithImpl<$Res,
        _$_PromotionMultiBuyCreationModel>
    implements _$$_PromotionMultiBuyCreationModelCopyWith<$Res> {
  __$$_PromotionMultiBuyCreationModelCopyWithImpl(
      _$_PromotionMultiBuyCreationModel _value,
      $Res Function(_$_PromotionMultiBuyCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? availableCustomerGroups = freezed,
    Object? getLines = freezed,
    Object? buyLines = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? maximumQuantity = freezed,
    Object? multiBuyAppliedToID = freezed,
    Object? sellingPrice = freezed,
    Object? totalCost = freezed,
    Object? displayName = freezed,
    Object? inventoryId = freezed,
    Object? multiBuyAppliedToName = freezed,
    Object? createdBuy = freezed,
    Object? multibuyAppliedTo = freezed,
    Object? multibuyAppliedToCode = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
  }) {
    return _then(_$_PromotionMultiBuyCreationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      getLines: freezed == getLines
          ? _value._getLines
          : getLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      buyLines: freezed == buyLines
          ? _value._buyLines
          : buyLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      multiBuyAppliedToID: freezed == multiBuyAppliedToID
          ? _value.multiBuyAppliedToID
          : multiBuyAppliedToID // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiBuyAppliedToName: freezed == multiBuyAppliedToName
          ? _value.multiBuyAppliedToName
          : multiBuyAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBuy: freezed == createdBuy
          ? _value.createdBuy
          : createdBuy // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedTo: freezed == multibuyAppliedTo
          ? _value.multibuyAppliedTo
          : multibuyAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedToCode: freezed == multibuyAppliedToCode
          ? _value.multibuyAppliedToCode
          : multibuyAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionMultiBuyCreationModel
    implements _PromotionMultiBuyCreationModel {
  const _$_PromotionMultiBuyCreationModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      final List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          final List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          final List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "maximum_quantity")
          this.maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          this.multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          this.sellingPrice,
      @JsonKey(name: "total_cost")
          this.totalCost,
      @JsonKey(name: "display_name")
          this.displayName,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          this.multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          this.createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          this.multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          this.multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableFor})
      : _segments = segments,
        _availableCustomerGroups = availableCustomerGroups,
        _getLines = getLines,
        _buyLines = buyLines;

  factory _$_PromotionMultiBuyCreationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PromotionMultiBuyCreationModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvailableCustomerGroups>? _availableCustomerGroups;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups {
    final value = _availableCustomerGroups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultibuyVariantListModel>? _getLines;
  @override
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines {
    final value = _getLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultibuyVariantListModel>? _buyLines;
  @override
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines {
    final value = _buyLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "maximum_quantity")
  final int? maximumQuantity;
  @override
  @JsonKey(name: "multibuy_applied_to_id")
  final int? multiBuyAppliedToID;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_cost")
  final double? totalCost;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "multibuy_applied_to_name")
  final String? multiBuyAppliedToName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBuy;
  @override
  @JsonKey(name: "multibuy_applied_to")
  final String? multibuyAppliedTo;
  @override
  @JsonKey(name: "multibuy_applied_to_code")
  final String? multibuyAppliedToCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableFor;

  @override
  String toString() {
    return 'PromotionMultiBuyCreationModel(id: $id, name: $name, description: $description, image: $image, segments: $segments, availableCustomerGroups: $availableCustomerGroups, getLines: $getLines, buyLines: $buyLines, offerPeriodId: $offerPeriodId, offerGroupId: $offerGroupId, maximumQuantity: $maximumQuantity, multiBuyAppliedToID: $multiBuyAppliedToID, sellingPrice: $sellingPrice, totalCost: $totalCost, displayName: $displayName, inventoryId: $inventoryId, multiBuyAppliedToName: $multiBuyAppliedToName, createdBuy: $createdBuy, multibuyAppliedTo: $multibuyAppliedTo, multibuyAppliedToCode: $multibuyAppliedToCode, isActive: $isActive, isAvailableFor: $isAvailableFor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionMultiBuyCreationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups) &&
            const DeepCollectionEquality().equals(other._getLines, _getLines) &&
            const DeepCollectionEquality().equals(other._buyLines, _buyLines) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.multiBuyAppliedToID, multiBuyAppliedToID) ||
                other.multiBuyAppliedToID == multiBuyAppliedToID) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.multiBuyAppliedToName, multiBuyAppliedToName) ||
                other.multiBuyAppliedToName == multiBuyAppliedToName) &&
            (identical(other.createdBuy, createdBuy) ||
                other.createdBuy == createdBuy) &&
            (identical(other.multibuyAppliedTo, multibuyAppliedTo) ||
                other.multibuyAppliedTo == multibuyAppliedTo) &&
            (identical(other.multibuyAppliedToCode, multibuyAppliedToCode) ||
                other.multibuyAppliedToCode == multibuyAppliedToCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableFor, isAvailableFor) ||
                other.isAvailableFor == isAvailableFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        image,
        const DeepCollectionEquality().hash(_segments),
        const DeepCollectionEquality().hash(_availableCustomerGroups),
        const DeepCollectionEquality().hash(_getLines),
        const DeepCollectionEquality().hash(_buyLines),
        offerPeriodId,
        offerGroupId,
        maximumQuantity,
        multiBuyAppliedToID,
        sellingPrice,
        totalCost,
        displayName,
        inventoryId,
        multiBuyAppliedToName,
        createdBuy,
        multibuyAppliedTo,
        multibuyAppliedToCode,
        isActive,
        isAvailableFor
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionMultiBuyCreationModelCopyWith<_$_PromotionMultiBuyCreationModel>
      get copyWith => __$$_PromotionMultiBuyCreationModelCopyWithImpl<
          _$_PromotionMultiBuyCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionMultiBuyCreationModelToJson(
      this,
    );
  }
}

abstract class _PromotionMultiBuyCreationModel
    implements PromotionMultiBuyCreationModel {
  const factory _PromotionMultiBuyCreationModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          final List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          final List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          final int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          final int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          final int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          final int? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          final double? sellingPrice,
      @JsonKey(name: "total_cost")
          final double? totalCost,
      @JsonKey(name: "display_name")
          final String? displayName,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          final String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          final String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          final String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          final String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          final bool? isAvailableFor}) = _$_PromotionMultiBuyCreationModel;

  factory _PromotionMultiBuyCreationModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionMultiBuyCreationModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  List<Segment>? get segments;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines;
  @override
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity;
  @override
  @JsonKey(name: "multibuy_applied_to_id")
  int? get multiBuyAppliedToID;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "total_cost")
  double? get totalCost;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "multibuy_applied_to_name")
  String? get multiBuyAppliedToName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBuy;
  @override
  @JsonKey(name: "multibuy_applied_to")
  String? get multibuyAppliedTo;
  @override
  @JsonKey(name: "multibuy_applied_to_code")
  String? get multibuyAppliedToCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionMultiBuyCreationModelCopyWith<_$_PromotionMultiBuyCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

PromotionMultiBuyReadModel _$PromotionMultiBuyReadModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionMultiBuyReadModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionMultiBuyReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName => throw _privateConstructorUsedError;
  @JsonKey(name: "multi_code")
  String? get multiCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_id")
  String? get multiBuyAppliedToID => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cost")
  double? get totalCost => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_name")
  String? get multiBuyAppliedToName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBuy => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to")
  String? get multibuyAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "multibuy_applied_to_code")
  String? get multibuyAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionMultiBuyReadModelCopyWith<PromotionMultiBuyReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionMultiBuyReadModelCopyWith<$Res> {
  factory $PromotionMultiBuyReadModelCopyWith(PromotionMultiBuyReadModel value,
          $Res Function(PromotionMultiBuyReadModel) then) =
      _$PromotionMultiBuyReadModelCopyWithImpl<$Res,
          PromotionMultiBuyReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "multi_code")
          String? multiCode,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          String? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_cost")
          double? totalCost,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor});
}

/// @nodoc
class _$PromotionMultiBuyReadModelCopyWithImpl<$Res,
        $Val extends PromotionMultiBuyReadModel>
    implements $PromotionMultiBuyReadModelCopyWith<$Res> {
  _$PromotionMultiBuyReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? availableCustomerGroups = freezed,
    Object? getLines = freezed,
    Object? buyLines = freezed,
    Object? offerPeriodId = freezed,
    Object? offerPeriodName = freezed,
    Object? multiCode = freezed,
    Object? offerGroupId = freezed,
    Object? maximumQuantity = freezed,
    Object? multiBuyAppliedToID = freezed,
    Object? sellingPrice = freezed,
    Object? totalCost = freezed,
    Object? displayName = freezed,
    Object? inventoryId = freezed,
    Object? multiBuyAppliedToName = freezed,
    Object? createdBuy = freezed,
    Object? multibuyAppliedTo = freezed,
    Object? multibuyAppliedToCode = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      getLines: freezed == getLines
          ? _value.getLines
          : getLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      buyLines: freezed == buyLines
          ? _value.buyLines
          : buyLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiCode: freezed == multiCode
          ? _value.multiCode
          : multiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      multiBuyAppliedToID: freezed == multiBuyAppliedToID
          ? _value.multiBuyAppliedToID
          : multiBuyAppliedToID // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiBuyAppliedToName: freezed == multiBuyAppliedToName
          ? _value.multiBuyAppliedToName
          : multiBuyAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBuy: freezed == createdBuy
          ? _value.createdBuy
          : createdBuy // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedTo: freezed == multibuyAppliedTo
          ? _value.multibuyAppliedTo
          : multibuyAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedToCode: freezed == multibuyAppliedToCode
          ? _value.multibuyAppliedToCode
          : multibuyAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionMultiBuyReadModelCopyWith<$Res>
    implements $PromotionMultiBuyReadModelCopyWith<$Res> {
  factory _$$_PromotionMultiBuyReadModelCopyWith(
          _$_PromotionMultiBuyReadModel value,
          $Res Function(_$_PromotionMultiBuyReadModel) then) =
      __$$_PromotionMultiBuyReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "multi_code")
          String? multiCode,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          String? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_cost")
          double? totalCost,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor});
}

/// @nodoc
class __$$_PromotionMultiBuyReadModelCopyWithImpl<$Res>
    extends _$PromotionMultiBuyReadModelCopyWithImpl<$Res,
        _$_PromotionMultiBuyReadModel>
    implements _$$_PromotionMultiBuyReadModelCopyWith<$Res> {
  __$$_PromotionMultiBuyReadModelCopyWithImpl(
      _$_PromotionMultiBuyReadModel _value,
      $Res Function(_$_PromotionMultiBuyReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? availableCustomerGroups = freezed,
    Object? getLines = freezed,
    Object? buyLines = freezed,
    Object? offerPeriodId = freezed,
    Object? offerPeriodName = freezed,
    Object? multiCode = freezed,
    Object? offerGroupId = freezed,
    Object? maximumQuantity = freezed,
    Object? multiBuyAppliedToID = freezed,
    Object? sellingPrice = freezed,
    Object? totalCost = freezed,
    Object? displayName = freezed,
    Object? inventoryId = freezed,
    Object? multiBuyAppliedToName = freezed,
    Object? createdBuy = freezed,
    Object? multibuyAppliedTo = freezed,
    Object? multibuyAppliedToCode = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
  }) {
    return _then(_$_PromotionMultiBuyReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      getLines: freezed == getLines
          ? _value._getLines
          : getLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      buyLines: freezed == buyLines
          ? _value._buyLines
          : buyLines // ignore: cast_nullable_to_non_nullable
              as List<MultibuyVariantListModel>?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiCode: freezed == multiCode
          ? _value.multiCode
          : multiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      multiBuyAppliedToID: freezed == multiBuyAppliedToID
          ? _value.multiBuyAppliedToID
          : multiBuyAppliedToID // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiBuyAppliedToName: freezed == multiBuyAppliedToName
          ? _value.multiBuyAppliedToName
          : multiBuyAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBuy: freezed == createdBuy
          ? _value.createdBuy
          : createdBuy // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedTo: freezed == multibuyAppliedTo
          ? _value.multibuyAppliedTo
          : multibuyAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      multibuyAppliedToCode: freezed == multibuyAppliedToCode
          ? _value.multibuyAppliedToCode
          : multibuyAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionMultiBuyReadModel implements _PromotionMultiBuyReadModel {
  const _$_PromotionMultiBuyReadModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      final List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          final List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          final List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "offer_period_name")
          this.offerPeriodName,
      @JsonKey(name: "multi_code")
          this.multiCode,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "maximum_quantity")
          this.maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          this.multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          this.sellingPrice,
      @JsonKey(name: "total_cost")
          this.totalCost,
      @JsonKey(name: "display_name")
          this.displayName,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          this.multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          this.createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          this.multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          this.multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableFor})
      : _segments = segments,
        _availableCustomerGroups = availableCustomerGroups,
        _getLines = getLines,
        _buyLines = buyLines;

  factory _$_PromotionMultiBuyReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionMultiBuyReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvailableCustomerGroups>? _availableCustomerGroups;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups {
    final value = _availableCustomerGroups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultibuyVariantListModel>? _getLines;
  @override
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines {
    final value = _getLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultibuyVariantListModel>? _buyLines;
  @override
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines {
    final value = _buyLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "offer_period_name")
  final String? offerPeriodName;
  @override
  @JsonKey(name: "multi_code")
  final String? multiCode;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "maximum_quantity")
  final int? maximumQuantity;
  @override
  @JsonKey(name: "multibuy_applied_to_id")
  final String? multiBuyAppliedToID;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_cost")
  final double? totalCost;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "multibuy_applied_to_name")
  final String? multiBuyAppliedToName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBuy;
  @override
  @JsonKey(name: "multibuy_applied_to")
  final String? multibuyAppliedTo;
  @override
  @JsonKey(name: "multibuy_applied_to_code")
  final String? multibuyAppliedToCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableFor;

  @override
  String toString() {
    return 'PromotionMultiBuyReadModel(id: $id, name: $name, description: $description, image: $image, segments: $segments, availableCustomerGroups: $availableCustomerGroups, getLines: $getLines, buyLines: $buyLines, offerPeriodId: $offerPeriodId, offerPeriodName: $offerPeriodName, multiCode: $multiCode, offerGroupId: $offerGroupId, maximumQuantity: $maximumQuantity, multiBuyAppliedToID: $multiBuyAppliedToID, sellingPrice: $sellingPrice, totalCost: $totalCost, displayName: $displayName, inventoryId: $inventoryId, multiBuyAppliedToName: $multiBuyAppliedToName, createdBuy: $createdBuy, multibuyAppliedTo: $multibuyAppliedTo, multibuyAppliedToCode: $multibuyAppliedToCode, isActive: $isActive, isAvailableFor: $isAvailableFor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionMultiBuyReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups) &&
            const DeepCollectionEquality().equals(other._getLines, _getLines) &&
            const DeepCollectionEquality().equals(other._buyLines, _buyLines) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.offerPeriodName, offerPeriodName) ||
                other.offerPeriodName == offerPeriodName) &&
            (identical(other.multiCode, multiCode) ||
                other.multiCode == multiCode) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.multiBuyAppliedToID, multiBuyAppliedToID) ||
                other.multiBuyAppliedToID == multiBuyAppliedToID) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.multiBuyAppliedToName, multiBuyAppliedToName) ||
                other.multiBuyAppliedToName == multiBuyAppliedToName) &&
            (identical(other.createdBuy, createdBuy) ||
                other.createdBuy == createdBuy) &&
            (identical(other.multibuyAppliedTo, multibuyAppliedTo) ||
                other.multibuyAppliedTo == multibuyAppliedTo) &&
            (identical(other.multibuyAppliedToCode, multibuyAppliedToCode) ||
                other.multibuyAppliedToCode == multibuyAppliedToCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableFor, isAvailableFor) ||
                other.isAvailableFor == isAvailableFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        image,
        const DeepCollectionEquality().hash(_segments),
        const DeepCollectionEquality().hash(_availableCustomerGroups),
        const DeepCollectionEquality().hash(_getLines),
        const DeepCollectionEquality().hash(_buyLines),
        offerPeriodId,
        offerPeriodName,
        multiCode,
        offerGroupId,
        maximumQuantity,
        multiBuyAppliedToID,
        sellingPrice,
        totalCost,
        displayName,
        inventoryId,
        multiBuyAppliedToName,
        createdBuy,
        multibuyAppliedTo,
        multibuyAppliedToCode,
        isActive,
        isAvailableFor
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionMultiBuyReadModelCopyWith<_$_PromotionMultiBuyReadModel>
      get copyWith => __$$_PromotionMultiBuyReadModelCopyWithImpl<
          _$_PromotionMultiBuyReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionMultiBuyReadModelToJson(
      this,
    );
  }
}

abstract class _PromotionMultiBuyReadModel
    implements PromotionMultiBuyReadModel {
  const factory _PromotionMultiBuyReadModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final List<Segment>? segments,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "get_lines")
          final List<MultibuyVariantListModel>? getLines,
      @JsonKey(name: "buy_lines")
          final List<MultibuyVariantListModel>? buyLines,
      @JsonKey(name: "offer_period_id")
          final int? offerPeriodId,
      @JsonKey(name: "offer_period_name")
          final String? offerPeriodName,
      @JsonKey(name: "multi_code")
          final String? multiCode,
      @JsonKey(name: "offer_group_id")
          final int? offerGroupId,
      @JsonKey(name: "maximum_quantity")
          final int? maximumQuantity,
      @JsonKey(name: "multibuy_applied_to_id")
          final String? multiBuyAppliedToID,
      @JsonKey(name: "selling_price")
          final double? sellingPrice,
      @JsonKey(name: "total_cost")
          final double? totalCost,
      @JsonKey(name: "display_name")
          final String? displayName,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "multibuy_applied_to_name")
          final String? multiBuyAppliedToName,
      @JsonKey(name: "created_by")
          final String? createdBuy,
      @JsonKey(name: "multibuy_applied_to")
          final String? multibuyAppliedTo,
      @JsonKey(name: "multibuy_applied_to_code")
          final String? multibuyAppliedToCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          final bool? isAvailableFor}) = _$_PromotionMultiBuyReadModel;

  factory _PromotionMultiBuyReadModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionMultiBuyReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  List<Segment>? get segments;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(name: "get_lines")
  List<MultibuyVariantListModel>? get getLines;
  @override
  @JsonKey(name: "buy_lines")
  List<MultibuyVariantListModel>? get buyLines;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName;
  @override
  @JsonKey(name: "multi_code")
  String? get multiCode;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "maximum_quantity")
  int? get maximumQuantity;
  @override
  @JsonKey(name: "multibuy_applied_to_id")
  String? get multiBuyAppliedToID;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "total_cost")
  double? get totalCost;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "multibuy_applied_to_name")
  String? get multiBuyAppliedToName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBuy;
  @override
  @JsonKey(name: "multibuy_applied_to")
  String? get multibuyAppliedTo;
  @override
  @JsonKey(name: "multibuy_applied_to_code")
  String? get multibuyAppliedToCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionMultiBuyReadModelCopyWith<_$_PromotionMultiBuyReadModel>
      get copyWith => throw _privateConstructorUsedError;
}
