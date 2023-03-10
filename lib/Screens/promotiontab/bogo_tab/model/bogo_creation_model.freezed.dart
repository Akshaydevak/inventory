// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bogo_creation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionBogoCreationModel _$PromotionBogoCreationModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionBogoCreationModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionBogoCreationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  List<VariantModel>? get lines => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on")
  String? get bogoApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_name")
  String? get bogoApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "get_count")
  int? get getCount => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_id")
  int? get bogoApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_code")
  String? get bogoApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_count")
  int? get buyCount => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_count")
  int? get maximumCount => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "count_price_percentage")
  List<CountPricePercentageModel>? get countPricePercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionBogoCreationModelCopyWith<PromotionBogoCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionBogoCreationModelCopyWith<$Res> {
  factory $PromotionBogoCreationModelCopyWith(PromotionBogoCreationModel value,
          $Res Function(PromotionBogoCreationModel) then) =
      _$PromotionBogoCreationModelCopyWithImpl<$Res,
          PromotionBogoCreationModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "bogo_applying_on")
          String? bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          String? bogoApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "get_count")
          int? getCount,
      @JsonKey(name: "bogo_applying_on_id")
          int? bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          String? bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          int? buyCount,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class _$PromotionBogoCreationModelCopyWithImpl<$Res,
        $Val extends PromotionBogoCreationModel>
    implements $PromotionBogoCreationModelCopyWith<$Res> {
  _$PromotionBogoCreationModelCopyWithImpl(this._value, this._then);

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
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? bogoApplyingOn = freezed,
    Object? bogoApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? getCount = freezed,
    Object? bogoApplyingOnId = freezed,
    Object? bogoApplyingOnCode = freezed,
    Object? buyCount = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? availableCustomerGroups = freezed,
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
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOn: freezed == bogoApplyingOn
          ? _value.bogoApplyingOn
          : bogoApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOnName: freezed == bogoApplyingOnName
          ? _value.bogoApplyingOnName
          : bogoApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      getCount: freezed == getCount
          ? _value.getCount
          : getCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnId: freezed == bogoApplyingOnId
          ? _value.bogoApplyingOnId
          : bogoApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnCode: freezed == bogoApplyingOnCode
          ? _value.bogoApplyingOnCode
          : bogoApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyCount: freezed == buyCount
          ? _value.buyCount
          : buyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionBogoCreationModelCopyWith<$Res>
    implements $PromotionBogoCreationModelCopyWith<$Res> {
  factory _$$_PromotionBogoCreationModelCopyWith(
          _$_PromotionBogoCreationModel value,
          $Res Function(_$_PromotionBogoCreationModel) then) =
      __$$_PromotionBogoCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "bogo_applying_on")
          String? bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          String? bogoApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "get_count")
          int? getCount,
      @JsonKey(name: "bogo_applying_on_id")
          int? bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          String? bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          int? buyCount,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class __$$_PromotionBogoCreationModelCopyWithImpl<$Res>
    extends _$PromotionBogoCreationModelCopyWithImpl<$Res,
        _$_PromotionBogoCreationModel>
    implements _$$_PromotionBogoCreationModelCopyWith<$Res> {
  __$$_PromotionBogoCreationModelCopyWithImpl(
      _$_PromotionBogoCreationModel _value,
      $Res Function(_$_PromotionBogoCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? bogoApplyingOn = freezed,
    Object? bogoApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? getCount = freezed,
    Object? bogoApplyingOnId = freezed,
    Object? bogoApplyingOnCode = freezed,
    Object? buyCount = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_$_PromotionBogoCreationModel(
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
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOn: freezed == bogoApplyingOn
          ? _value.bogoApplyingOn
          : bogoApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOnName: freezed == bogoApplyingOnName
          ? _value.bogoApplyingOnName
          : bogoApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      getCount: freezed == getCount
          ? _value.getCount
          : getCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnId: freezed == bogoApplyingOnId
          ? _value.bogoApplyingOnId
          : bogoApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnCode: freezed == bogoApplyingOnCode
          ? _value.bogoApplyingOnCode
          : bogoApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyCount: freezed == buyCount
          ? _value.buyCount
          : buyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionBogoCreationModel implements _PromotionBogoCreationModel {
  const _$_PromotionBogoCreationModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      final List<Segment>? segments,
      final List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "offer_applied_to")
          this.offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          this.offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          this.offerAppliedToCode,
      @JsonKey(name: "bogo_applying_on")
          this.bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          this.bogoApplyingOnName,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "get_count")
          this.getCount,
      @JsonKey(name: "bogo_applying_on_id")
          this.bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          this.bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          this.buyCount,
      @JsonKey(name: "maximum_count")
          this.maximumCount,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "count_price_percentage")
          final List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups})
      : _segments = segments,
        _lines = lines,
        _countPricePercentage = countPricePercentage,
        _availableCustomerGroups = availableCustomerGroups;

  factory _$_PromotionBogoCreationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionBogoCreationModelFromJson(json);

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
  @JsonKey(name: "offer_applied_to")
  final String? offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final String? offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "bogo_applying_on")
  final String? bogoApplyingOn;
  @override
  @JsonKey(name: "bogo_applying_on_name")
  final String? bogoApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "get_count")
  final int? getCount;
  @override
  @JsonKey(name: "bogo_applying_on_id")
  final int? bogoApplyingOnId;
  @override
  @JsonKey(name: "bogo_applying_on_code")
  final String? bogoApplyingOnCode;
  @override
  @JsonKey(name: "buy_count")
  final int? buyCount;
  @override
  @JsonKey(name: "maximum_count")
  final int? maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
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
    return 'PromotionBogoCreationModel(id: $id, name: $name, description: $description, image: $image, segments: $segments, lines: $lines, inventoryId: $inventoryId, basedOn: $basedOn, offerAppliedTo: $offerAppliedTo, offerAppliedToId: $offerAppliedToId, offerAppliedToCode: $offerAppliedToCode, bogoApplyingOn: $bogoApplyingOn, bogoApplyingOnName: $bogoApplyingOnName, createdBy: $createdBy, getCount: $getCount, bogoApplyingOnId: $bogoApplyingOnId, bogoApplyingOnCode: $bogoApplyingOnCode, buyCount: $buyCount, maximumCount: $maximumCount, offerPeriodId: $offerPeriodId, offerGroupId: $offerGroupId, countPricePercentage: $countPricePercentage, isActive: $isActive, isAvailableForAll: $isAvailableForAll, availableCustomerGroups: $availableCustomerGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionBogoCreationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.offerAppliedTo, offerAppliedTo) ||
                other.offerAppliedTo == offerAppliedTo) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.bogoApplyingOn, bogoApplyingOn) ||
                other.bogoApplyingOn == bogoApplyingOn) &&
            (identical(other.bogoApplyingOnName, bogoApplyingOnName) ||
                other.bogoApplyingOnName == bogoApplyingOnName) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.getCount, getCount) ||
                other.getCount == getCount) &&
            (identical(other.bogoApplyingOnId, bogoApplyingOnId) ||
                other.bogoApplyingOnId == bogoApplyingOnId) &&
            (identical(other.bogoApplyingOnCode, bogoApplyingOnCode) ||
                other.bogoApplyingOnCode == bogoApplyingOnCode) &&
            (identical(other.buyCount, buyCount) ||
                other.buyCount == buyCount) &&
            (identical(other.maximumCount, maximumCount) ||
                other.maximumCount == maximumCount) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            const DeepCollectionEquality()
                .equals(other._countPricePercentage, _countPricePercentage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups));
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
        const DeepCollectionEquality().hash(_lines),
        inventoryId,
        basedOn,
        offerAppliedTo,
        offerAppliedToId,
        offerAppliedToCode,
        bogoApplyingOn,
        bogoApplyingOnName,
        createdBy,
        getCount,
        bogoApplyingOnId,
        bogoApplyingOnCode,
        buyCount,
        maximumCount,
        offerPeriodId,
        offerGroupId,
        const DeepCollectionEquality().hash(_countPricePercentage),
        isActive,
        isAvailableForAll,
        const DeepCollectionEquality().hash(_availableCustomerGroups)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionBogoCreationModelCopyWith<_$_PromotionBogoCreationModel>
      get copyWith => __$$_PromotionBogoCreationModelCopyWithImpl<
          _$_PromotionBogoCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionBogoCreationModelToJson(
      this,
    );
  }
}

abstract class _PromotionBogoCreationModel
    implements PromotionBogoCreationModel {
  const factory _PromotionBogoCreationModel(
          {final int? id,
          final String? name,
          final String? description,
          final String? image,
          final List<Segment>? segments,
          final List<VariantModel>? lines,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "based_on")
              final String? basedOn,
          @JsonKey(name: "offer_applied_to")
              final String? offerAppliedTo,
          @JsonKey(name: "offer_applied_to_id")
              final String? offerAppliedToId,
          @JsonKey(name: "offer_applied_to_code")
              final String? offerAppliedToCode,
          @JsonKey(name: "bogo_applying_on")
              final String? bogoApplyingOn,
          @JsonKey(name: "bogo_applying_on_name")
              final String? bogoApplyingOnName,
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "get_count")
              final int? getCount,
          @JsonKey(name: "bogo_applying_on_id")
              final int? bogoApplyingOnId,
          @JsonKey(name: "bogo_applying_on_code")
              final String? bogoApplyingOnCode,
          @JsonKey(name: "buy_count")
              final int? buyCount,
          @JsonKey(name: "maximum_count")
              final int? maximumCount,
          @JsonKey(name: "offer_period_id")
              final int? offerPeriodId,
          @JsonKey(name: "offer_group_id")
              final int? offerGroupId,
          @JsonKey(name: "count_price_percentage")
              final List<CountPricePercentageModel>? countPricePercentage,
          @JsonKey(name: "is_active", defaultValue: false)
              final bool? isActive,
          @JsonKey(name: "is_available_for_all", defaultValue: false)
              final bool? isAvailableForAll,
          @JsonKey(name: "available_customer_groups")
              final List<AvailableCustomerGroups>? availableCustomerGroups}) =
      _$_PromotionBogoCreationModel;

  factory _PromotionBogoCreationModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionBogoCreationModel.fromJson;

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
  List<VariantModel>? get lines;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "bogo_applying_on")
  String? get bogoApplyingOn;
  @override
  @JsonKey(name: "bogo_applying_on_name")
  String? get bogoApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "get_count")
  int? get getCount;
  @override
  @JsonKey(name: "bogo_applying_on_id")
  int? get bogoApplyingOnId;
  @override
  @JsonKey(name: "bogo_applying_on_code")
  String? get bogoApplyingOnCode;
  @override
  @JsonKey(name: "buy_count")
  int? get buyCount;
  @override
  @JsonKey(name: "maximum_count")
  int? get maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
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
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionBogoCreationModelCopyWith<_$_PromotionBogoCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

PromotionBogoReadModel _$PromotionBogoReadModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionBogoReadModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionBogoReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  List<VariantModel>? get lines => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_code")
  String? get bogoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on")
  String? get bogoApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_name")
  String? get bogoApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "get_count")
  int? get getCount => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_id")
  int? get bogoApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "bogo_applying_on_code")
  String? get bogoApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_count")
  int? get buyCount => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_count")
  int? get maximumCount => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "count_price_percentage")
  List<CountPricePercentageModel>? get countPricePercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionBogoReadModelCopyWith<PromotionBogoReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionBogoReadModelCopyWith<$Res> {
  factory $PromotionBogoReadModelCopyWith(PromotionBogoReadModel value,
          $Res Function(PromotionBogoReadModel) then) =
      _$PromotionBogoReadModelCopyWithImpl<$Res, PromotionBogoReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "bogo_code")
          String? bogoCode,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "bogo_applying_on")
          String? bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          String? bogoApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "get_count")
          int? getCount,
      @JsonKey(name: "bogo_applying_on_id")
          int? bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          String? bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          int? buyCount,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class _$PromotionBogoReadModelCopyWithImpl<$Res,
        $Val extends PromotionBogoReadModel>
    implements $PromotionBogoReadModelCopyWith<$Res> {
  _$PromotionBogoReadModelCopyWithImpl(this._value, this._then);

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
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? bogoCode = freezed,
    Object? basedOn = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? offerPeriodName = freezed,
    Object? bogoApplyingOn = freezed,
    Object? bogoApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? getCount = freezed,
    Object? bogoApplyingOnId = freezed,
    Object? bogoApplyingOnCode = freezed,
    Object? buyCount = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? availableCustomerGroups = freezed,
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
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoCode: freezed == bogoCode
          ? _value.bogoCode
          : bogoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOn: freezed == bogoApplyingOn
          ? _value.bogoApplyingOn
          : bogoApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOnName: freezed == bogoApplyingOnName
          ? _value.bogoApplyingOnName
          : bogoApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      getCount: freezed == getCount
          ? _value.getCount
          : getCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnId: freezed == bogoApplyingOnId
          ? _value.bogoApplyingOnId
          : bogoApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnCode: freezed == bogoApplyingOnCode
          ? _value.bogoApplyingOnCode
          : bogoApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyCount: freezed == buyCount
          ? _value.buyCount
          : buyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionBogoReadModelCopyWith<$Res>
    implements $PromotionBogoReadModelCopyWith<$Res> {
  factory _$$_PromotionBogoReadModelCopyWith(_$_PromotionBogoReadModel value,
          $Res Function(_$_PromotionBogoReadModel) then) =
      __$$_PromotionBogoReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "bogo_code")
          String? bogoCode,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "bogo_applying_on")
          String? bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          String? bogoApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "get_count")
          int? getCount,
      @JsonKey(name: "bogo_applying_on_id")
          int? bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          String? bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          int? buyCount,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "count_price_percentage")
          List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups});
}

/// @nodoc
class __$$_PromotionBogoReadModelCopyWithImpl<$Res>
    extends _$PromotionBogoReadModelCopyWithImpl<$Res,
        _$_PromotionBogoReadModel>
    implements _$$_PromotionBogoReadModelCopyWith<$Res> {
  __$$_PromotionBogoReadModelCopyWithImpl(_$_PromotionBogoReadModel _value,
      $Res Function(_$_PromotionBogoReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? lines = freezed,
    Object? inventoryId = freezed,
    Object? bogoCode = freezed,
    Object? basedOn = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? offerPeriodName = freezed,
    Object? bogoApplyingOn = freezed,
    Object? bogoApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? getCount = freezed,
    Object? bogoApplyingOnId = freezed,
    Object? bogoApplyingOnCode = freezed,
    Object? buyCount = freezed,
    Object? maximumCount = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? countPricePercentage = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
    Object? availableCustomerGroups = freezed,
  }) {
    return _then(_$_PromotionBogoReadModel(
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
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoCode: freezed == bogoCode
          ? _value.bogoCode
          : bogoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOn: freezed == bogoApplyingOn
          ? _value.bogoApplyingOn
          : bogoApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      bogoApplyingOnName: freezed == bogoApplyingOnName
          ? _value.bogoApplyingOnName
          : bogoApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      getCount: freezed == getCount
          ? _value.getCount
          : getCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnId: freezed == bogoApplyingOnId
          ? _value.bogoApplyingOnId
          : bogoApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      bogoApplyingOnCode: freezed == bogoApplyingOnCode
          ? _value.bogoApplyingOnCode
          : bogoApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyCount: freezed == buyCount
          ? _value.buyCount
          : buyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionBogoReadModel implements _PromotionBogoReadModel {
  const _$_PromotionBogoReadModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      final List<Segment>? segments,
      final List<VariantModel>? lines,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "bogo_code")
          this.bogoCode,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "offer_applied_to")
          this.offerAppliedTo,
      @JsonKey(name: "offer_applied_to_id")
          this.offerAppliedToId,
      @JsonKey(name: "offer_applied_to_code")
          this.offerAppliedToCode,
      @JsonKey(name: "offer_period_name")
          this.offerPeriodName,
      @JsonKey(name: "bogo_applying_on")
          this.bogoApplyingOn,
      @JsonKey(name: "bogo_applying_on_name")
          this.bogoApplyingOnName,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "get_count")
          this.getCount,
      @JsonKey(name: "bogo_applying_on_id")
          this.bogoApplyingOnId,
      @JsonKey(name: "bogo_applying_on_code")
          this.bogoApplyingOnCode,
      @JsonKey(name: "buy_count")
          this.buyCount,
      @JsonKey(name: "maximum_count")
          this.maximumCount,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "count_price_percentage")
          final List<CountPricePercentageModel>? countPricePercentage,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups})
      : _segments = segments,
        _lines = lines,
        _countPricePercentage = countPricePercentage,
        _availableCustomerGroups = availableCustomerGroups;

  factory _$_PromotionBogoReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionBogoReadModelFromJson(json);

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
  @JsonKey(name: "bogo_code")
  final String? bogoCode;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "offer_applied_to")
  final String? offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final String? offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "offer_period_name")
  final String? offerPeriodName;
  @override
  @JsonKey(name: "bogo_applying_on")
  final String? bogoApplyingOn;
  @override
  @JsonKey(name: "bogo_applying_on_name")
  final String? bogoApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "get_count")
  final int? getCount;
  @override
  @JsonKey(name: "bogo_applying_on_id")
  final int? bogoApplyingOnId;
  @override
  @JsonKey(name: "bogo_applying_on_code")
  final String? bogoApplyingOnCode;
  @override
  @JsonKey(name: "buy_count")
  final int? buyCount;
  @override
  @JsonKey(name: "maximum_count")
  final int? maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
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
    return 'PromotionBogoReadModel(id: $id, name: $name, description: $description, image: $image, segments: $segments, lines: $lines, inventoryId: $inventoryId, bogoCode: $bogoCode, basedOn: $basedOn, offerAppliedTo: $offerAppliedTo, offerAppliedToId: $offerAppliedToId, offerAppliedToCode: $offerAppliedToCode, offerPeriodName: $offerPeriodName, bogoApplyingOn: $bogoApplyingOn, bogoApplyingOnName: $bogoApplyingOnName, createdBy: $createdBy, getCount: $getCount, bogoApplyingOnId: $bogoApplyingOnId, bogoApplyingOnCode: $bogoApplyingOnCode, buyCount: $buyCount, maximumCount: $maximumCount, offerPeriodId: $offerPeriodId, offerGroupId: $offerGroupId, countPricePercentage: $countPricePercentage, isActive: $isActive, isAvailableForAll: $isAvailableForAll, availableCustomerGroups: $availableCustomerGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionBogoReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.bogoCode, bogoCode) ||
                other.bogoCode == bogoCode) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.offerAppliedTo, offerAppliedTo) ||
                other.offerAppliedTo == offerAppliedTo) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.offerPeriodName, offerPeriodName) ||
                other.offerPeriodName == offerPeriodName) &&
            (identical(other.bogoApplyingOn, bogoApplyingOn) ||
                other.bogoApplyingOn == bogoApplyingOn) &&
            (identical(other.bogoApplyingOnName, bogoApplyingOnName) ||
                other.bogoApplyingOnName == bogoApplyingOnName) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.getCount, getCount) ||
                other.getCount == getCount) &&
            (identical(other.bogoApplyingOnId, bogoApplyingOnId) ||
                other.bogoApplyingOnId == bogoApplyingOnId) &&
            (identical(other.bogoApplyingOnCode, bogoApplyingOnCode) ||
                other.bogoApplyingOnCode == bogoApplyingOnCode) &&
            (identical(other.buyCount, buyCount) ||
                other.buyCount == buyCount) &&
            (identical(other.maximumCount, maximumCount) ||
                other.maximumCount == maximumCount) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            const DeepCollectionEquality()
                .equals(other._countPricePercentage, _countPricePercentage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups));
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
        const DeepCollectionEquality().hash(_lines),
        inventoryId,
        bogoCode,
        basedOn,
        offerAppliedTo,
        offerAppliedToId,
        offerAppliedToCode,
        offerPeriodName,
        bogoApplyingOn,
        bogoApplyingOnName,
        createdBy,
        getCount,
        bogoApplyingOnId,
        bogoApplyingOnCode,
        buyCount,
        maximumCount,
        offerPeriodId,
        offerGroupId,
        const DeepCollectionEquality().hash(_countPricePercentage),
        isActive,
        isAvailableForAll,
        const DeepCollectionEquality().hash(_availableCustomerGroups)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionBogoReadModelCopyWith<_$_PromotionBogoReadModel> get copyWith =>
      __$$_PromotionBogoReadModelCopyWithImpl<_$_PromotionBogoReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionBogoReadModelToJson(
      this,
    );
  }
}

abstract class _PromotionBogoReadModel implements PromotionBogoReadModel {
  const factory _PromotionBogoReadModel(
          {final int? id,
          final String? name,
          final String? description,
          final String? image,
          final List<Segment>? segments,
          final List<VariantModel>? lines,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "bogo_code")
              final String? bogoCode,
          @JsonKey(name: "based_on")
              final String? basedOn,
          @JsonKey(name: "offer_applied_to")
              final String? offerAppliedTo,
          @JsonKey(name: "offer_applied_to_id")
              final String? offerAppliedToId,
          @JsonKey(name: "offer_applied_to_code")
              final String? offerAppliedToCode,
          @JsonKey(name: "offer_period_name")
              final String? offerPeriodName,
          @JsonKey(name: "bogo_applying_on")
              final String? bogoApplyingOn,
          @JsonKey(name: "bogo_applying_on_name")
              final String? bogoApplyingOnName,
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "get_count")
              final int? getCount,
          @JsonKey(name: "bogo_applying_on_id")
              final int? bogoApplyingOnId,
          @JsonKey(name: "bogo_applying_on_code")
              final String? bogoApplyingOnCode,
          @JsonKey(name: "buy_count")
              final int? buyCount,
          @JsonKey(name: "maximum_count")
              final int? maximumCount,
          @JsonKey(name: "offer_period_id")
              final int? offerPeriodId,
          @JsonKey(name: "offer_group_id")
              final int? offerGroupId,
          @JsonKey(name: "count_price_percentage")
              final List<CountPricePercentageModel>? countPricePercentage,
          @JsonKey(name: "is_active", defaultValue: false)
              final bool? isActive,
          @JsonKey(name: "is_available_for_all", defaultValue: false)
              final bool? isAvailableForAll,
          @JsonKey(name: "available_customer_groups")
              final List<AvailableCustomerGroups>? availableCustomerGroups}) =
      _$_PromotionBogoReadModel;

  factory _PromotionBogoReadModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionBogoReadModel.fromJson;

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
  List<VariantModel>? get lines;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "bogo_code")
  String? get bogoCode;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName;
  @override
  @JsonKey(name: "bogo_applying_on")
  String? get bogoApplyingOn;
  @override
  @JsonKey(name: "bogo_applying_on_name")
  String? get bogoApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "get_count")
  int? get getCount;
  @override
  @JsonKey(name: "bogo_applying_on_id")
  int? get bogoApplyingOnId;
  @override
  @JsonKey(name: "bogo_applying_on_code")
  String? get bogoApplyingOnCode;
  @override
  @JsonKey(name: "buy_count")
  int? get buyCount;
  @override
  @JsonKey(name: "maximum_count")
  int? get maximumCount;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
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
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionBogoReadModelCopyWith<_$_PromotionBogoReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
