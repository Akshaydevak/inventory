// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crreateCouponModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionCouponCreationModel _$PromotionCouponCreationModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionCouponCreationModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionCouponCreationModel {
  List<Segment>? get segments => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<VariantModel>? get line => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_code")
  String? get couponCode => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applying_on")
  String? get couponApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applying_on_id")
  String? get couponApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applying_on_code")
  String? get couponApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applying_on_name")
  String? get couponApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applied_to")
  String? get couponAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "couon_applied_to_id")
  String? get couponAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applied_to_code")
  String? get couponAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applied_to_name")
  String? get couponAppliedToName => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_type")
  String? get couponType => throw _privateConstructorUsedError;
  @JsonKey(name: "price_or_percentage")
  double? get priceOrPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_count")
  int? get maximumCount => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_to_all", defaultValue: false)
  bool? get isAvailableToAll => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
  bool? get canApplyMultipleTimes => throw _privateConstructorUsedError;
  @JsonKey(name: "can_apply_together", defaultValue: false)
  bool? get canApplyTogether => throw _privateConstructorUsedError;
  @JsonKey(name: "total_value")
  int? get totalValue => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCouponCreationModelCopyWith<PromotionCouponCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCouponCreationModelCopyWith<$Res> {
  factory $PromotionCouponCreationModelCopyWith(
          PromotionCouponCreationModel value,
          $Res Function(PromotionCouponCreationModel) then) =
      _$PromotionCouponCreationModelCopyWithImpl<$Res,
          PromotionCouponCreationModel>;
  @useResult
  $Res call(
      {List<Segment>? segments,
      String? name,
      String? image,
      int? id,
      String? description,
      List<VariantModel>? line,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "updated_at")
          String? updatedAt,
      @JsonKey(name: "coupon_code")
          String? couponCode,
      @JsonKey(name: "coupon_applying_on")
          String? couponApplyingOn,
      @JsonKey(name: "coupon_applying_on_id")
          String? couponApplyingOnId,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "coupon_applying_on_code")
          String? couponApplyingOnCode,
      @JsonKey(name: "coupon_applying_on_name")
          String? couponApplyingOnName,
      @JsonKey(name: "coupon_applied_to")
          String? couponAppliedTo,
      @JsonKey(name: "couon_applied_to_id")
          String? couponAppliedToId,
      @JsonKey(name: "coupon_applied_to_code")
          String? couponAppliedToCode,
      @JsonKey(name: "coupon_applied_to_name")
          String? couponAppliedToName,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "coupon_type")
          String? couponType,
      @JsonKey(name: "price_or_percentage")
          double? priceOrPercentage,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "is_available_to_all", defaultValue: false)
          bool? isAvailableToAll,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
          bool? canApplyMultipleTimes,
      @JsonKey(name: "can_apply_together", defaultValue: false)
          bool? canApplyTogether,
      @JsonKey(name: "total_value")
          int? totalValue,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class _$PromotionCouponCreationModelCopyWithImpl<$Res,
        $Val extends PromotionCouponCreationModel>
    implements $PromotionCouponCreationModelCopyWith<$Res> {
  _$PromotionCouponCreationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segments = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? line = freezed,
    Object? inventoryId = freezed,
    Object? displayName = freezed,
    Object? updatedAt = freezed,
    Object? couponCode = freezed,
    Object? couponApplyingOn = freezed,
    Object? couponApplyingOnId = freezed,
    Object? offerPeriodName = freezed,
    Object? couponApplyingOnCode = freezed,
    Object? couponApplyingOnName = freezed,
    Object? couponAppliedTo = freezed,
    Object? couponAppliedToId = freezed,
    Object? couponAppliedToCode = freezed,
    Object? couponAppliedToName = freezed,
    Object? basedOn = freezed,
    Object? couponType = freezed,
    Object? priceOrPercentage = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? isAvailableToAll = freezed,
    Object? isActive = freezed,
    Object? canApplyMultipleTimes = freezed,
    Object? canApplyTogether = freezed,
    Object? totalValue = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_value.copyWith(
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOn: freezed == couponApplyingOn
          ? _value.couponApplyingOn
          : couponApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnId: freezed == couponApplyingOnId
          ? _value.couponApplyingOnId
          : couponApplyingOnId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnCode: freezed == couponApplyingOnCode
          ? _value.couponApplyingOnCode
          : couponApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnName: freezed == couponApplyingOnName
          ? _value.couponApplyingOnName
          : couponApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedTo: freezed == couponAppliedTo
          ? _value.couponAppliedTo
          : couponAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToId: freezed == couponAppliedToId
          ? _value.couponAppliedToId
          : couponAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToCode: freezed == couponAppliedToCode
          ? _value.couponAppliedToCode
          : couponAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToName: freezed == couponAppliedToName
          ? _value.couponAppliedToName
          : couponAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      couponType: freezed == couponType
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as String?,
      priceOrPercentage: freezed == priceOrPercentage
          ? _value.priceOrPercentage
          : priceOrPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableToAll: freezed == isAvailableToAll
          ? _value.isAvailableToAll
          : isAvailableToAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApplyMultipleTimes: freezed == canApplyMultipleTimes
          ? _value.canApplyMultipleTimes
          : canApplyMultipleTimes // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApplyTogether: freezed == canApplyTogether
          ? _value.canApplyTogether
          : canApplyTogether // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalValue: freezed == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionCouponCreationModelCopyWith<$Res>
    implements $PromotionCouponCreationModelCopyWith<$Res> {
  factory _$$_PromotionCouponCreationModelCopyWith(
          _$_PromotionCouponCreationModel value,
          $Res Function(_$_PromotionCouponCreationModel) then) =
      __$$_PromotionCouponCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Segment>? segments,
      String? name,
      String? image,
      int? id,
      String? description,
      List<VariantModel>? line,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "updated_at")
          String? updatedAt,
      @JsonKey(name: "coupon_code")
          String? couponCode,
      @JsonKey(name: "coupon_applying_on")
          String? couponApplyingOn,
      @JsonKey(name: "coupon_applying_on_id")
          String? couponApplyingOnId,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "coupon_applying_on_code")
          String? couponApplyingOnCode,
      @JsonKey(name: "coupon_applying_on_name")
          String? couponApplyingOnName,
      @JsonKey(name: "coupon_applied_to")
          String? couponAppliedTo,
      @JsonKey(name: "couon_applied_to_id")
          String? couponAppliedToId,
      @JsonKey(name: "coupon_applied_to_code")
          String? couponAppliedToCode,
      @JsonKey(name: "coupon_applied_to_name")
          String? couponAppliedToName,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "coupon_type")
          String? couponType,
      @JsonKey(name: "price_or_percentage")
          double? priceOrPercentage,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "is_available_to_all", defaultValue: false)
          bool? isAvailableToAll,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
          bool? canApplyMultipleTimes,
      @JsonKey(name: "can_apply_together", defaultValue: false)
          bool? canApplyTogether,
      @JsonKey(name: "total_value")
          int? totalValue,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class __$$_PromotionCouponCreationModelCopyWithImpl<$Res>
    extends _$PromotionCouponCreationModelCopyWithImpl<$Res,
        _$_PromotionCouponCreationModel>
    implements _$$_PromotionCouponCreationModelCopyWith<$Res> {
  __$$_PromotionCouponCreationModelCopyWithImpl(
      _$_PromotionCouponCreationModel _value,
      $Res Function(_$_PromotionCouponCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segments = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? line = freezed,
    Object? inventoryId = freezed,
    Object? displayName = freezed,
    Object? updatedAt = freezed,
    Object? couponCode = freezed,
    Object? couponApplyingOn = freezed,
    Object? couponApplyingOnId = freezed,
    Object? offerPeriodName = freezed,
    Object? couponApplyingOnCode = freezed,
    Object? couponApplyingOnName = freezed,
    Object? couponAppliedTo = freezed,
    Object? couponAppliedToId = freezed,
    Object? couponAppliedToCode = freezed,
    Object? couponAppliedToName = freezed,
    Object? basedOn = freezed,
    Object? couponType = freezed,
    Object? priceOrPercentage = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? isAvailableToAll = freezed,
    Object? isActive = freezed,
    Object? canApplyMultipleTimes = freezed,
    Object? canApplyTogether = freezed,
    Object? totalValue = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_$_PromotionCouponCreationModel(
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      line: freezed == line
          ? _value._line
          : line // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOn: freezed == couponApplyingOn
          ? _value.couponApplyingOn
          : couponApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnId: freezed == couponApplyingOnId
          ? _value.couponApplyingOnId
          : couponApplyingOnId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnCode: freezed == couponApplyingOnCode
          ? _value.couponApplyingOnCode
          : couponApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplyingOnName: freezed == couponApplyingOnName
          ? _value.couponApplyingOnName
          : couponApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedTo: freezed == couponAppliedTo
          ? _value.couponAppliedTo
          : couponAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToId: freezed == couponAppliedToId
          ? _value.couponAppliedToId
          : couponAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToCode: freezed == couponAppliedToCode
          ? _value.couponAppliedToCode
          : couponAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponAppliedToName: freezed == couponAppliedToName
          ? _value.couponAppliedToName
          : couponAppliedToName // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      couponType: freezed == couponType
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as String?,
      priceOrPercentage: freezed == priceOrPercentage
          ? _value.priceOrPercentage
          : priceOrPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableToAll: freezed == isAvailableToAll
          ? _value.isAvailableToAll
          : isAvailableToAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApplyMultipleTimes: freezed == canApplyMultipleTimes
          ? _value.canApplyMultipleTimes
          : canApplyMultipleTimes // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApplyTogether: freezed == canApplyTogether
          ? _value.canApplyTogether
          : canApplyTogether // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalValue: freezed == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionCouponCreationModel implements _PromotionCouponCreationModel {
  const _$_PromotionCouponCreationModel(
      {final List<Segment>? segments,
      this.name,
      this.image,
      this.id,
      this.description,
      final List<VariantModel>? line,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "display_name")
          this.displayName,
      @JsonKey(name: "updated_at")
          this.updatedAt,
      @JsonKey(name: "coupon_code")
          this.couponCode,
      @JsonKey(name: "coupon_applying_on")
          this.couponApplyingOn,
      @JsonKey(name: "coupon_applying_on_id")
          this.couponApplyingOnId,
      @JsonKey(name: "offer_period_name")
          this.offerPeriodName,
      @JsonKey(name: "coupon_applying_on_code")
          this.couponApplyingOnCode,
      @JsonKey(name: "coupon_applying_on_name")
          this.couponApplyingOnName,
      @JsonKey(name: "coupon_applied_to")
          this.couponAppliedTo,
      @JsonKey(name: "couon_applied_to_id")
          this.couponAppliedToId,
      @JsonKey(name: "coupon_applied_to_code")
          this.couponAppliedToCode,
      @JsonKey(name: "coupon_applied_to_name")
          this.couponAppliedToName,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "coupon_type")
          this.couponType,
      @JsonKey(name: "price_or_percentage")
          this.priceOrPercentage,
      @JsonKey(name: "maximum_count")
          this.maximumCount,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "is_available_to_all", defaultValue: false)
          this.isAvailableToAll,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
          this.canApplyMultipleTimes,
      @JsonKey(name: "can_apply_together", defaultValue: false)
          this.canApplyTogether,
      @JsonKey(name: "total_value")
          this.totalValue,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups})
      : _segments = segments,
        _line = line,
        _availableCustomerGroups = availableCustomerGroups;

  factory _$_PromotionCouponCreationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionCouponCreationModelFromJson(json);

  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? id;
  @override
  final String? description;
  final List<VariantModel>? _line;
  @override
  List<VariantModel>? get line {
    final value = _line;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "coupon_code")
  final String? couponCode;
  @override
  @JsonKey(name: "coupon_applying_on")
  final String? couponApplyingOn;
  @override
  @JsonKey(name: "coupon_applying_on_id")
  final String? couponApplyingOnId;
  @override
  @JsonKey(name: "offer_period_name")
  final String? offerPeriodName;
  @override
  @JsonKey(name: "coupon_applying_on_code")
  final String? couponApplyingOnCode;
  @override
  @JsonKey(name: "coupon_applying_on_name")
  final String? couponApplyingOnName;
  @override
  @JsonKey(name: "coupon_applied_to")
  final String? couponAppliedTo;
  @override
  @JsonKey(name: "couon_applied_to_id")
  final String? couponAppliedToId;
  @override
  @JsonKey(name: "coupon_applied_to_code")
  final String? couponAppliedToCode;
  @override
  @JsonKey(name: "coupon_applied_to_name")
  final String? couponAppliedToName;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "coupon_type")
  final String? couponType;
  @override
  @JsonKey(name: "price_or_percentage")
  final double? priceOrPercentage;
  @override
  @JsonKey(name: "maximum_count")
  final int? maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "is_available_to_all", defaultValue: false)
  final bool? isAvailableToAll;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
  final bool? canApplyMultipleTimes;
  @override
  @JsonKey(name: "can_apply_together", defaultValue: false)
  final bool? canApplyTogether;
  @override
  @JsonKey(name: "total_value")
  final int? totalValue;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  final List<AvailableCustomerGroups>? _availableCustomerGroups;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups {
    final value = _availableCustomerGroups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionCouponCreationModel(segments: $segments, name: $name, image: $image, id: $id, description: $description, line: $line, inventoryId: $inventoryId, displayName: $displayName, updatedAt: $updatedAt, couponCode: $couponCode, couponApplyingOn: $couponApplyingOn, couponApplyingOnId: $couponApplyingOnId, offerPeriodName: $offerPeriodName, couponApplyingOnCode: $couponApplyingOnCode, couponApplyingOnName: $couponApplyingOnName, couponAppliedTo: $couponAppliedTo, couponAppliedToId: $couponAppliedToId, couponAppliedToCode: $couponAppliedToCode, couponAppliedToName: $couponAppliedToName, basedOn: $basedOn, couponType: $couponType, priceOrPercentage: $priceOrPercentage, maximumCount: $maximumCount, offerPeriodId: $offerPeriodId, isAvailableToAll: $isAvailableToAll, isActive: $isActive, canApplyMultipleTimes: $canApplyMultipleTimes, canApplyTogether: $canApplyTogether, totalValue: $totalValue, createdBy: $createdBy, availableCustomerGroups: $availableCustomerGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionCouponCreationModel &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._line, _line) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.couponApplyingOn, couponApplyingOn) ||
                other.couponApplyingOn == couponApplyingOn) &&
            (identical(other.couponApplyingOnId, couponApplyingOnId) ||
                other.couponApplyingOnId == couponApplyingOnId) &&
            (identical(other.offerPeriodName, offerPeriodName) ||
                other.offerPeriodName == offerPeriodName) &&
            (identical(other.couponApplyingOnCode, couponApplyingOnCode) ||
                other.couponApplyingOnCode == couponApplyingOnCode) &&
            (identical(other.couponApplyingOnName, couponApplyingOnName) ||
                other.couponApplyingOnName == couponApplyingOnName) &&
            (identical(other.couponAppliedTo, couponAppliedTo) ||
                other.couponAppliedTo == couponAppliedTo) &&
            (identical(other.couponAppliedToId, couponAppliedToId) ||
                other.couponAppliedToId == couponAppliedToId) &&
            (identical(other.couponAppliedToCode, couponAppliedToCode) ||
                other.couponAppliedToCode == couponAppliedToCode) &&
            (identical(other.couponAppliedToName, couponAppliedToName) ||
                other.couponAppliedToName == couponAppliedToName) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.couponType, couponType) ||
                other.couponType == couponType) &&
            (identical(other.priceOrPercentage, priceOrPercentage) ||
                other.priceOrPercentage == priceOrPercentage) &&
            (identical(other.maximumCount, maximumCount) ||
                other.maximumCount == maximumCount) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.isAvailableToAll, isAvailableToAll) ||
                other.isAvailableToAll == isAvailableToAll) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.canApplyMultipleTimes, canApplyMultipleTimes) ||
                other.canApplyMultipleTimes == canApplyMultipleTimes) &&
            (identical(other.canApplyTogether, canApplyTogether) ||
                other.canApplyTogether == canApplyTogether) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_segments),
        name,
        image,
        id,
        description,
        const DeepCollectionEquality().hash(_line),
        inventoryId,
        displayName,
        updatedAt,
        couponCode,
        couponApplyingOn,
        couponApplyingOnId,
        offerPeriodName,
        couponApplyingOnCode,
        couponApplyingOnName,
        couponAppliedTo,
        couponAppliedToId,
        couponAppliedToCode,
        couponAppliedToName,
        basedOn,
        couponType,
        priceOrPercentage,
        maximumCount,
        offerPeriodId,
        isAvailableToAll,
        isActive,
        canApplyMultipleTimes,
        canApplyTogether,
        totalValue,
        createdBy,
        const DeepCollectionEquality().hash(_availableCustomerGroups)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionCouponCreationModelCopyWith<_$_PromotionCouponCreationModel>
      get copyWith => __$$_PromotionCouponCreationModelCopyWithImpl<
          _$_PromotionCouponCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionCouponCreationModelToJson(
      this,
    );
  }
}

abstract class _PromotionCouponCreationModel
    implements PromotionCouponCreationModel {
  const factory _PromotionCouponCreationModel(
          {final List<Segment>? segments,
          final String? name,
          final String? image,
          final int? id,
          final String? description,
          final List<VariantModel>? line,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "display_name")
              final String? displayName,
          @JsonKey(name: "updated_at")
              final String? updatedAt,
          @JsonKey(name: "coupon_code")
              final String? couponCode,
          @JsonKey(name: "coupon_applying_on")
              final String? couponApplyingOn,
          @JsonKey(name: "coupon_applying_on_id")
              final String? couponApplyingOnId,
          @JsonKey(name: "offer_period_name")
              final String? offerPeriodName,
          @JsonKey(name: "coupon_applying_on_code")
              final String? couponApplyingOnCode,
          @JsonKey(name: "coupon_applying_on_name")
              final String? couponApplyingOnName,
          @JsonKey(name: "coupon_applied_to")
              final String? couponAppliedTo,
          @JsonKey(name: "couon_applied_to_id")
              final String? couponAppliedToId,
          @JsonKey(name: "coupon_applied_to_code")
              final String? couponAppliedToCode,
          @JsonKey(name: "coupon_applied_to_name")
              final String? couponAppliedToName,
          @JsonKey(name: "based_on")
              final String? basedOn,
          @JsonKey(name: "coupon_type")
              final String? couponType,
          @JsonKey(name: "price_or_percentage")
              final double? priceOrPercentage,
          @JsonKey(name: "maximum_count")
              final int? maximumCount,
          @JsonKey(name: "offer_period_id")
              final int? offerPeriodId,
          @JsonKey(name: "is_available_to_all", defaultValue: false)
              final bool? isAvailableToAll,
          @JsonKey(name: "is_active", defaultValue: false)
              final bool? isActive,
          @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
              final bool? canApplyMultipleTimes,
          @JsonKey(name: "can_apply_together", defaultValue: false)
              final bool? canApplyTogether,
          @JsonKey(name: "total_value")
              final int? totalValue,
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "available_customer_groups")
              final List<AvailableCustomerGroups>? availableCustomerGroups}) =
      _$_PromotionCouponCreationModel;

  factory _PromotionCouponCreationModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionCouponCreationModel.fromJson;

  @override
  List<Segment>? get segments;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get id;
  @override
  String? get description;
  @override
  List<VariantModel>? get line;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "coupon_code")
  String? get couponCode;
  @override
  @JsonKey(name: "coupon_applying_on")
  String? get couponApplyingOn;
  @override
  @JsonKey(name: "coupon_applying_on_id")
  String? get couponApplyingOnId;
  @override
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName;
  @override
  @JsonKey(name: "coupon_applying_on_code")
  String? get couponApplyingOnCode;
  @override
  @JsonKey(name: "coupon_applying_on_name")
  String? get couponApplyingOnName;
  @override
  @JsonKey(name: "coupon_applied_to")
  String? get couponAppliedTo;
  @override
  @JsonKey(name: "couon_applied_to_id")
  String? get couponAppliedToId;
  @override
  @JsonKey(name: "coupon_applied_to_code")
  String? get couponAppliedToCode;
  @override
  @JsonKey(name: "coupon_applied_to_name")
  String? get couponAppliedToName;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "coupon_type")
  String? get couponType;
  @override
  @JsonKey(name: "price_or_percentage")
  double? get priceOrPercentage;
  @override
  @JsonKey(name: "maximum_count")
  int? get maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "is_available_to_all", defaultValue: false)
  bool? get isAvailableToAll;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "can_apply_multiple_times", defaultValue: false)
  bool? get canApplyMultipleTimes;
  @override
  @JsonKey(name: "can_apply_together", defaultValue: false)
  bool? get canApplyTogether;
  @override
  @JsonKey(name: "total_value")
  int? get totalValue;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionCouponCreationModelCopyWith<_$_PromotionCouponCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}
