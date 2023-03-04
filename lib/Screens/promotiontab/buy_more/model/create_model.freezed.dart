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

PromotionBuyMoreCreationModel _$PromotionBuyMoreCreationModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionBuyMoreCreationModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionBuyMoreCreationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  List<VariantModel>? get lines => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_code")
  String? get buyMoreCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  int? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_name")
  String? get offerGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_applying_on")
  String? get buyMoreApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_applying_on_name")
  String? get buyMoreApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_applying_on_id")
  int? get buyMoreApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_applying_on_code")
  String? get buyMoreApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "count_price_percentage")
  List<CountPricePercentageModel>? get countPricePercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionBuyMoreCreationModelCopyWith<PromotionBuyMoreCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionBuyMoreCreationModelCopyWith<$Res> {
  factory $PromotionBuyMoreCreationModelCopyWith(
          PromotionBuyMoreCreationModel value,
          $Res Function(PromotionBuyMoreCreationModel) then) =
      _$PromotionBuyMoreCreationModelCopyWithImpl<$Res,
          PromotionBuyMoreCreationModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "buy_more_code")
          String? buyMoreCode,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          int? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "offer_group_name")
          String? offerGroupName,
      @JsonKey(name: "buy_more_applying_on")
          String? buyMoreApplyingOn,
      @JsonKey(name: "buy_more_applying_on_name")
          String? buyMoreApplyingOnName,
      @JsonKey(name: "buy_more_applying_on_id")
          int? buyMoreApplyingOnId,
      @JsonKey(name: "buy_more_applying_on_code")
          String? buyMoreApplyingOnCode,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class _$PromotionBuyMoreCreationModelCopyWithImpl<$Res,
        $Val extends PromotionBuyMoreCreationModel>
    implements $PromotionBuyMoreCreationModelCopyWith<$Res> {
  _$PromotionBuyMoreCreationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? buyMoreCode = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? offerPeriodName = freezed,
    Object? offerGroupName = freezed,
    Object? buyMoreApplyingOn = freezed,
    Object? buyMoreApplyingOnName = freezed,
    Object? buyMoreApplyingOnId = freezed,
    Object? buyMoreApplyingOnCode = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreCode: freezed == buyMoreCode
          ? _value.buyMoreCode
          : buyMoreCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupName: freezed == offerGroupName
          ? _value.offerGroupName
          : offerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOn: freezed == buyMoreApplyingOn
          ? _value.buyMoreApplyingOn
          : buyMoreApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOnName: freezed == buyMoreApplyingOnName
          ? _value.buyMoreApplyingOnName
          : buyMoreApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOnId: freezed == buyMoreApplyingOnId
          ? _value.buyMoreApplyingOnId
          : buyMoreApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      buyMoreApplyingOnCode: freezed == buyMoreApplyingOnCode
          ? _value.buyMoreApplyingOnCode
          : buyMoreApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countPricePercentage: freezed == countPricePercentage
          ? _value.countPricePercentage
          : countPricePercentage // ignore: cast_nullable_to_non_nullable
              as List<CountPricePercentageModel>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_PromotionBuyMoreCreationModelCopyWith<$Res>
    implements $PromotionBuyMoreCreationModelCopyWith<$Res> {
  factory _$$_PromotionBuyMoreCreationModelCopyWith(
          _$_PromotionBuyMoreCreationModel value,
          $Res Function(_$_PromotionBuyMoreCreationModel) then) =
      __$$_PromotionBuyMoreCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "buy_more_code")
          String? buyMoreCode,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          int? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "offer_group_name")
          String? offerGroupName,
      @JsonKey(name: "buy_more_applying_on")
          String? buyMoreApplyingOn,
      @JsonKey(name: "buy_more_applying_on_name")
          String? buyMoreApplyingOnName,
      @JsonKey(name: "buy_more_applying_on_id")
          int? buyMoreApplyingOnId,
      @JsonKey(name: "buy_more_applying_on_code")
          String? buyMoreApplyingOnCode,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class __$$_PromotionBuyMoreCreationModelCopyWithImpl<$Res>
    extends _$PromotionBuyMoreCreationModelCopyWithImpl<$Res,
        _$_PromotionBuyMoreCreationModel>
    implements _$$_PromotionBuyMoreCreationModelCopyWith<$Res> {
  __$$_PromotionBuyMoreCreationModelCopyWithImpl(
      _$_PromotionBuyMoreCreationModel _value,
      $Res Function(_$_PromotionBuyMoreCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? buyMoreCode = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? offerPeriodName = freezed,
    Object? offerGroupName = freezed,
    Object? buyMoreApplyingOn = freezed,
    Object? buyMoreApplyingOnName = freezed,
    Object? buyMoreApplyingOnId = freezed,
    Object? buyMoreApplyingOnCode = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_$_PromotionBuyMoreCreationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreCode: freezed == buyMoreCode
          ? _value.buyMoreCode
          : buyMoreCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupName: freezed == offerGroupName
          ? _value.offerGroupName
          : offerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOn: freezed == buyMoreApplyingOn
          ? _value.buyMoreApplyingOn
          : buyMoreApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOnName: freezed == buyMoreApplyingOnName
          ? _value.buyMoreApplyingOnName
          : buyMoreApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreApplyingOnId: freezed == buyMoreApplyingOnId
          ? _value.buyMoreApplyingOnId
          : buyMoreApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      buyMoreApplyingOnCode: freezed == buyMoreApplyingOnCode
          ? _value.buyMoreApplyingOnCode
          : buyMoreApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countPricePercentage: freezed == countPricePercentage
          ? _value._countPricePercentage
          : countPricePercentage // ignore: cast_nullable_to_non_nullable
              as List<CountPricePercentageModel>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_PromotionBuyMoreCreationModel
    implements _PromotionBuyMoreCreationModel {
  const _$_PromotionBuyMoreCreationModel(
      {this.id,
      this.title,
      this.description,
      this.image,
      final List<Segment>? segments,
      final List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "buy_more_code")
          this.buyMoreCode,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "offer_applied_to")
          this.offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          this.offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          this.offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          this.offerPeriodName,
      @JsonKey(name: "offer_group_name")
          this.offerGroupName,
      @JsonKey(name: "buy_more_applying_on")
          this.buyMoreApplyingOn,
      @JsonKey(name: "buy_more_applying_on_name")
          this.buyMoreApplyingOnName,
      @JsonKey(name: "buy_more_applying_on_id")
          this.buyMoreApplyingOnId,
      @JsonKey(name: "buy_more_applying_on_code")
          this.buyMoreApplyingOnCode,
      @JsonKey(name: "count_price_percentage")
          final List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups})
      : _segments = segments,
        _lines = lines,
        _countPricePercentage = countPricePercentage,
        _availableCustomerGroups = availableCustomerGroups;

  factory _$_PromotionBuyMoreCreationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PromotionBuyMoreCreationModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
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

  final List<VariantModel>? _lines;
  @override
  List<VariantModel>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "buy_more_code")
  final String? buyMoreCode;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "offer_applied_to")
  final String? offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final int? offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "offer_period_name")
  final String? offerPeriodName;
  @override
  @JsonKey(name: "offer_group_name")
  final String? offerGroupName;
  @override
  @JsonKey(name: "buy_more_applying_on")
  final String? buyMoreApplyingOn;
  @override
  @JsonKey(name: "buy_more_applying_on_name")
  final String? buyMoreApplyingOnName;
  @override
  @JsonKey(name: "buy_more_applying_on_id")
  final int? buyMoreApplyingOnId;
  @override
  @JsonKey(name: "buy_more_applying_on_code")
  final String? buyMoreApplyingOnCode;
  final List<CountPricePercentageModel>? _countPricePercentage;
  @override
  @JsonKey(name: "count_price_percentage")
  List<CountPricePercentageModel>? get countPricePercentage {
    final value = _countPricePercentage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableForAll;
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
    return 'PromotionBuyMoreCreationModel(id: $id, title: $title, description: $description, image: $image, segments: $segments, lines: $lines, inventoryId: $inventoryId, basedOn: $basedOn, buyMoreCode: $buyMoreCode, offerPeriodId: $offerPeriodId, offerGroupId: $offerGroupId, offerAppliedTo: $offerAppliedTo, offerAppliedToId: $offerAppliedToId, offerAppliedToCode: $offerAppliedToCode, offerPeriodName: $offerPeriodName, offerGroupName: $offerGroupName, buyMoreApplyingOn: $buyMoreApplyingOn, buyMoreApplyingOnName: $buyMoreApplyingOnName, buyMoreApplyingOnId: $buyMoreApplyingOnId, buyMoreApplyingOnCode: $buyMoreApplyingOnCode, countPricePercentage: $countPricePercentage, isActive: $isActive, isAvailableForAll: $isAvailableForAll, createdBy: $createdBy, availableCustomerGroups: $availableCustomerGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionBuyMoreCreationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.buyMoreCode, buyMoreCode) ||
                other.buyMoreCode == buyMoreCode) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.offerAppliedTo, offerAppliedTo) ||
                other.offerAppliedTo == offerAppliedTo) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.offerPeriodName, offerPeriodName) ||
                other.offerPeriodName == offerPeriodName) &&
            (identical(other.offerGroupName, offerGroupName) ||
                other.offerGroupName == offerGroupName) &&
            (identical(other.buyMoreApplyingOn, buyMoreApplyingOn) ||
                other.buyMoreApplyingOn == buyMoreApplyingOn) &&
            (identical(other.buyMoreApplyingOnName, buyMoreApplyingOnName) ||
                other.buyMoreApplyingOnName == buyMoreApplyingOnName) &&
            (identical(other.buyMoreApplyingOnId, buyMoreApplyingOnId) ||
                other.buyMoreApplyingOnId == buyMoreApplyingOnId) &&
            (identical(other.buyMoreApplyingOnCode, buyMoreApplyingOnCode) ||
                other.buyMoreApplyingOnCode == buyMoreApplyingOnCode) &&
            const DeepCollectionEquality()
                .equals(other._countPricePercentage, _countPricePercentage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        image,
        const DeepCollectionEquality().hash(_segments),
        const DeepCollectionEquality().hash(_lines),
        inventoryId,
        basedOn,
        buyMoreCode,
        offerPeriodId,
        offerGroupId,
        offerAppliedTo,
        offerAppliedToId,
        offerAppliedToCode,
        offerPeriodName,
        offerGroupName,
        buyMoreApplyingOn,
        buyMoreApplyingOnName,
        buyMoreApplyingOnId,
        buyMoreApplyingOnCode,
        const DeepCollectionEquality().hash(_countPricePercentage),
        isActive,
        isAvailableForAll,
        createdBy,
        const DeepCollectionEquality().hash(_availableCustomerGroups)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionBuyMoreCreationModelCopyWith<_$_PromotionBuyMoreCreationModel>
      get copyWith => __$$_PromotionBuyMoreCreationModelCopyWithImpl<
          _$_PromotionBuyMoreCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionBuyMoreCreationModelToJson(
      this,
    );
  }
}

abstract class _PromotionBuyMoreCreationModel
    implements PromotionBuyMoreCreationModel {
  const factory _PromotionBuyMoreCreationModel(
          {final int? id,
          final String? title,
          final String? description,
          final String? image,
          final List<Segment>? segments,
          final List<VariantModel>? lines,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "based_on")
              final String? basedOn,
          @JsonKey(name: "buy_more_code")
              final String? buyMoreCode,
          @JsonKey(name: "offer_period_id")
              final int? offerPeriodId,
          @JsonKey(name: "offer_group_id")
              final int? offerGroupId,
          @JsonKey(name: "offer_applied_to")
              final String? offerAppliedTo,
          @JsonKey(name: "offer_applied_to_id")
              final int? offerAppliedToId,
          @JsonKey(name: "offer_applied_to_code")
              final String? offerAppliedToCode,
          @JsonKey(name: "offer_period_name")
              final String? offerPeriodName,
          @JsonKey(name: "offer_group_name")
              final String? offerGroupName,
          @JsonKey(name: "buy_more_applying_on")
              final String? buyMoreApplyingOn,
          @JsonKey(name: "buy_more_applying_on_name")
              final String? buyMoreApplyingOnName,
          @JsonKey(name: "buy_more_applying_on_id")
              final int? buyMoreApplyingOnId,
          @JsonKey(name: "buy_more_applying_on_code")
              final String? buyMoreApplyingOnCode,
          @JsonKey(name: "count_price_percentage")
              final List<CountPricePercentageModel>? countPricePercentage,
          @JsonKey(name: "is_active", defaultValue: false)
              final bool? isActive,
          @JsonKey(name: "is_available_for_all", defaultValue: false)
              final bool? isAvailableForAll,
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "available_customer_groups")
              final List<AvailableCustomerGroups>? availableCustomerGroups}) =
      _$_PromotionBuyMoreCreationModel;

  factory _PromotionBuyMoreCreationModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionBuyMoreCreationModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  List<Segment>? get segments;
  @override
  List<VariantModel>? get lines;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "buy_more_code")
  String? get buyMoreCode;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  int? get offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName;
  @override
  @JsonKey(name: "offer_group_name")
  String? get offerGroupName;
  @override
  @JsonKey(name: "buy_more_applying_on")
  String? get buyMoreApplyingOn;
  @override
  @JsonKey(name: "buy_more_applying_on_name")
  String? get buyMoreApplyingOnName;
  @override
  @JsonKey(name: "buy_more_applying_on_id")
  int? get buyMoreApplyingOnId;
  @override
  @JsonKey(name: "buy_more_applying_on_code")
  String? get buyMoreApplyingOnCode;
  @override
  @JsonKey(name: "count_price_percentage")
  List<CountPricePercentageModel>? get countPricePercentage;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionBuyMoreCreationModelCopyWith<_$_PromotionBuyMoreCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

CountPricePercentageModel _$CountPricePercentageModelFromJson(
    Map<String, dynamic> json) {
  return _CountPricePercentageModel.fromJson(json);
}

/// @nodoc
mixin _$CountPricePercentageModel {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "price_percentage")
  double? get pricePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: true)
  bool? get updateCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountPricePercentageModelCopyWith<CountPricePercentageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountPricePercentageModelCopyWith<$Res> {
  factory $CountPricePercentageModelCopyWith(CountPricePercentageModel value,
          $Res Function(CountPricePercentageModel) then) =
      _$CountPricePercentageModelCopyWithImpl<$Res, CountPricePercentageModel>;
  @useResult
  $Res call(
      {int? count,
      @JsonKey(name: "price_percentage") double? pricePercentage,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updateCheck", defaultValue: true) bool? updateCheck});
}

/// @nodoc
class _$CountPricePercentageModelCopyWithImpl<$Res,
        $Val extends CountPricePercentageModel>
    implements $CountPricePercentageModelCopyWith<$Res> {
  _$CountPricePercentageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pricePercentage = freezed,
    Object? isActive = freezed,
    Object? updateCheck = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pricePercentage: freezed == pricePercentage
          ? _value.pricePercentage
          : pricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountPricePercentageModelCopyWith<$Res>
    implements $CountPricePercentageModelCopyWith<$Res> {
  factory _$$_CountPricePercentageModelCopyWith(
          _$_CountPricePercentageModel value,
          $Res Function(_$_CountPricePercentageModel) then) =
      __$$_CountPricePercentageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      @JsonKey(name: "price_percentage") double? pricePercentage,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updateCheck", defaultValue: true) bool? updateCheck});
}

/// @nodoc
class __$$_CountPricePercentageModelCopyWithImpl<$Res>
    extends _$CountPricePercentageModelCopyWithImpl<$Res,
        _$_CountPricePercentageModel>
    implements _$$_CountPricePercentageModelCopyWith<$Res> {
  __$$_CountPricePercentageModelCopyWithImpl(
      _$_CountPricePercentageModel _value,
      $Res Function(_$_CountPricePercentageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pricePercentage = freezed,
    Object? isActive = freezed,
    Object? updateCheck = freezed,
  }) {
    return _then(_$_CountPricePercentageModel(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pricePercentage: freezed == pricePercentage
          ? _value.pricePercentage
          : pricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountPricePercentageModel implements _CountPricePercentageModel {
  const _$_CountPricePercentageModel(
      {this.count,
      @JsonKey(name: "price_percentage") this.pricePercentage,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "updateCheck", defaultValue: true) this.updateCheck});

  factory _$_CountPricePercentageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountPricePercentageModelFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(name: "price_percentage")
  final double? pricePercentage;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "updateCheck", defaultValue: true)
  final bool? updateCheck;

  @override
  String toString() {
    return 'CountPricePercentageModel(count: $count, pricePercentage: $pricePercentage, isActive: $isActive, updateCheck: $updateCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountPricePercentageModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pricePercentage, pricePercentage) ||
                other.pricePercentage == pricePercentage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, pricePercentage, isActive, updateCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountPricePercentageModelCopyWith<_$_CountPricePercentageModel>
      get copyWith => __$$_CountPricePercentageModelCopyWithImpl<
          _$_CountPricePercentageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountPricePercentageModelToJson(
      this,
    );
  }
}

abstract class _CountPricePercentageModel implements CountPricePercentageModel {
  const factory _CountPricePercentageModel(
      {final int? count,
      @JsonKey(name: "price_percentage")
          final double? pricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "updateCheck", defaultValue: true)
          final bool? updateCheck}) = _$_CountPricePercentageModel;

  factory _CountPricePercentageModel.fromJson(Map<String, dynamic> json) =
      _$_CountPricePercentageModel.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(name: "price_percentage")
  double? get pricePercentage;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "updateCheck", defaultValue: true)
  bool? get updateCheck;
  @override
  @JsonKey(ignore: true)
  _$$_CountPricePercentageModelCopyWith<_$_CountPricePercentageModel>
      get copyWith => throw _privateConstructorUsedError;
}
