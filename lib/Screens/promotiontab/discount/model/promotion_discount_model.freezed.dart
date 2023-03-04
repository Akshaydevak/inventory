// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promotion_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionDiscountCreationModel _$PromotionDiscountCreationModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionDiscountCreationModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionDiscountCreationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
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
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentageOrPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDiscountCreationModelCopyWith<PromotionDiscountCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDiscountCreationModelCopyWith<$Res> {
  factory $PromotionDiscountCreationModelCopyWith(
          PromotionDiscountCreationModel value,
          $Res Function(PromotionDiscountCreationModel) then) =
      _$PromotionDiscountCreationModelCopyWithImpl<$Res,
          PromotionDiscountCreationModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "title")
          String? title,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
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
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "discount_percentage_or_price")
          double? discountPercentageOrPrice,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor,
      @JsonKey(name: "offer_lines")
          List<SaleLinesDiscount>? offerLines});
}

/// @nodoc
class _$PromotionDiscountCreationModelCopyWithImpl<$Res,
        $Val extends PromotionDiscountCreationModel>
    implements $PromotionDiscountCreationModelCopyWith<$Res> {
  _$PromotionDiscountCreationModelCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
    Object? offerLines = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
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
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value.availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
      offerLines: freezed == offerLines
          ? _value.offerLines
          : offerLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLinesDiscount>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionDiscountCreationModelCopyWith<$Res>
    implements $PromotionDiscountCreationModelCopyWith<$Res> {
  factory _$$_PromotionDiscountCreationModelCopyWith(
          _$_PromotionDiscountCreationModel value,
          $Res Function(_$_PromotionDiscountCreationModel) then) =
      __$$_PromotionDiscountCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      List<Segment>? segments,
      @JsonKey(name: "title")
          String? title,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
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
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "available_customer_groups")
          List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "discount_percentage_or_price")
          double? discountPercentageOrPrice,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableFor,
      @JsonKey(name: "offer_lines")
          List<SaleLinesDiscount>? offerLines});
}

/// @nodoc
class __$$_PromotionDiscountCreationModelCopyWithImpl<$Res>
    extends _$PromotionDiscountCreationModelCopyWithImpl<$Res,
        _$_PromotionDiscountCreationModel>
    implements _$$_PromotionDiscountCreationModelCopyWith<$Res> {
  __$$_PromotionDiscountCreationModelCopyWithImpl(
      _$_PromotionDiscountCreationModel _value,
      $Res Function(_$_PromotionDiscountCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? segments = freezed,
    Object? title = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerPeriodId = freezed,
    Object? offerGroupId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedToCode = freezed,
    Object? createdBy = freezed,
    Object? availableCustomerGroups = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? isActive = freezed,
    Object? isAvailableFor = freezed,
    Object? offerLines = freezed,
  }) {
    return _then(_$_PromotionDiscountCreationModel(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
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
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroups: freezed == availableCustomerGroups
          ? _value._availableCustomerGroups
          : availableCustomerGroups // ignore: cast_nullable_to_non_nullable
              as List<AvailableCustomerGroups>?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableFor: freezed == isAvailableFor
          ? _value.isAvailableFor
          : isAvailableFor // ignore: cast_nullable_to_non_nullable
              as bool?,
      offerLines: freezed == offerLines
          ? _value._offerLines
          : offerLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLinesDiscount>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionDiscountCreationModel
    implements _PromotionDiscountCreationModel {
  const _$_PromotionDiscountCreationModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      final List<Segment>? segments,
      @JsonKey(name: "title")
          this.title,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "based_on")
          this.basedOn,
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
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "available_customer_groups")
          final List<AvailableCustomerGroups>? availableCustomerGroups,
      @JsonKey(name: "discount_percentage_or_price")
          this.discountPercentageOrPrice,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableFor,
      @JsonKey(name: "offer_lines")
          final List<SaleLinesDiscount>? offerLines})
      : _segments = segments,
        _availableCustomerGroups = availableCustomerGroups,
        _offerLines = offerLines;

  factory _$_PromotionDiscountCreationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PromotionDiscountCreationModelFromJson(json);

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

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
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
  @JsonKey(name: "discount_percentage_or_price")
  final double? discountPercentageOrPrice;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableFor;
  final List<SaleLinesDiscount>? _offerLines;
  @override
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines {
    final value = _offerLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionDiscountCreationModel(id: $id, name: $name, description: $description, image: $image, segments: $segments, title: $title, inventoryId: $inventoryId, basedOn: $basedOn, offerPeriodId: $offerPeriodId, offerGroupId: $offerGroupId, offerAppliedTo: $offerAppliedTo, offerAppliedToId: $offerAppliedToId, offerAppliedToCode: $offerAppliedToCode, createdBy: $createdBy, availableCustomerGroups: $availableCustomerGroups, discountPercentageOrPrice: $discountPercentageOrPrice, isActive: $isActive, isAvailableFor: $isAvailableFor, offerLines: $offerLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionDiscountCreationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
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
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(
                other._availableCustomerGroups, _availableCustomerGroups) &&
            (identical(other.discountPercentageOrPrice,
                    discountPercentageOrPrice) ||
                other.discountPercentageOrPrice == discountPercentageOrPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableFor, isAvailableFor) ||
                other.isAvailableFor == isAvailableFor) &&
            const DeepCollectionEquality()
                .equals(other._offerLines, _offerLines));
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
        title,
        inventoryId,
        basedOn,
        offerPeriodId,
        offerGroupId,
        offerAppliedTo,
        offerAppliedToId,
        offerAppliedToCode,
        createdBy,
        const DeepCollectionEquality().hash(_availableCustomerGroups),
        discountPercentageOrPrice,
        isActive,
        isAvailableFor,
        const DeepCollectionEquality().hash(_offerLines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionDiscountCreationModelCopyWith<_$_PromotionDiscountCreationModel>
      get copyWith => __$$_PromotionDiscountCreationModelCopyWithImpl<
          _$_PromotionDiscountCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionDiscountCreationModelToJson(
      this,
    );
  }
}

abstract class _PromotionDiscountCreationModel
    implements PromotionDiscountCreationModel {
  const factory _PromotionDiscountCreationModel(
          {final int? id,
          final String? name,
          final String? description,
          final String? image,
          final List<Segment>? segments,
          @JsonKey(name: "title")
              final String? title,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "based_on")
              final String? basedOn,
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
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "available_customer_groups")
              final List<AvailableCustomerGroups>? availableCustomerGroups,
          @JsonKey(name: "discount_percentage_or_price")
              final double? discountPercentageOrPrice,
          @JsonKey(name: "is_active", defaultValue: false)
              final bool? isActive,
          @JsonKey(name: "is_available_for_all", defaultValue: false)
              final bool? isAvailableFor,
          @JsonKey(name: "offer_lines")
              final List<SaleLinesDiscount>? offerLines}) =
      _$_PromotionDiscountCreationModel;

  factory _PromotionDiscountCreationModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionDiscountCreationModel.fromJson;

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
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
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
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "available_customer_groups")
  List<AvailableCustomerGroups>? get availableCustomerGroups;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentageOrPrice;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableFor;
  @override
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionDiscountCreationModelCopyWith<_$_PromotionDiscountCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

PromotionDiscountReadModel _$PromotionDiscountReadModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionDiscountReadModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionDiscountReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_name")
  String? get offerGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_or_price")
  int? get discountPercentageOrPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_code")
  String? get discountCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDiscountReadModelCopyWith<PromotionDiscountReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDiscountReadModelCopyWith<$Res> {
  factory $PromotionDiscountReadModelCopyWith(PromotionDiscountReadModel value,
          $Res Function(PromotionDiscountReadModel) then) =
      _$PromotionDiscountReadModelCopyWithImpl<$Res,
          PromotionDiscountReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? code,
      String? title,
      List<Segment>? segments,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "offer_group_name")
          String? offerGroupName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "discount_percentage_or_price")
          int? discountPercentageOrPrice,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "discount_code")
          String? discountCode,
      @JsonKey(name: "offer_lines")
          List<SaleLinesDiscount>? offerLines,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll});
}

/// @nodoc
class _$PromotionDiscountReadModelCopyWithImpl<$Res,
        $Val extends PromotionDiscountReadModel>
    implements $PromotionDiscountReadModelCopyWith<$Res> {
  _$PromotionDiscountReadModelCopyWithImpl(this._value, this._then);

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
    Object? code = freezed,
    Object? title = freezed,
    Object? segments = freezed,
    Object? offerPeriodName = freezed,
    Object? offerGroupName = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerPeriodId = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToCode = freezed,
    Object? discountCode = freezed,
    Object? offerLines = freezed,
    Object? offerGroupId = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupName: freezed == offerGroupName
          ? _value.offerGroupName
          : offerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerLines: freezed == offerLines
          ? _value.offerLines
          : offerLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLinesDiscount>?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionDiscountReadModelCopyWith<$Res>
    implements $PromotionDiscountReadModelCopyWith<$Res> {
  factory _$$_PromotionDiscountReadModelCopyWith(
          _$_PromotionDiscountReadModel value,
          $Res Function(_$_PromotionDiscountReadModel) then) =
      __$$_PromotionDiscountReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? code,
      String? title,
      List<Segment>? segments,
      @JsonKey(name: "offer_period_name")
          String? offerPeriodName,
      @JsonKey(name: "offer_group_name")
          String? offerGroupName,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "discount_percentage_or_price")
          int? discountPercentageOrPrice,
      @JsonKey(name: "offer_applied_to_id")
          String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to")
          String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "discount_code")
          String? discountCode,
      @JsonKey(name: "offer_lines")
          List<SaleLinesDiscount>? offerLines,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll});
}

/// @nodoc
class __$$_PromotionDiscountReadModelCopyWithImpl<$Res>
    extends _$PromotionDiscountReadModelCopyWithImpl<$Res,
        _$_PromotionDiscountReadModel>
    implements _$$_PromotionDiscountReadModelCopyWith<$Res> {
  __$$_PromotionDiscountReadModelCopyWithImpl(
      _$_PromotionDiscountReadModel _value,
      $Res Function(_$_PromotionDiscountReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? code = freezed,
    Object? title = freezed,
    Object? segments = freezed,
    Object? offerPeriodName = freezed,
    Object? offerGroupName = freezed,
    Object? inventoryId = freezed,
    Object? basedOn = freezed,
    Object? offerPeriodId = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? offerAppliedToId = freezed,
    Object? offerAppliedTo = freezed,
    Object? offerAppliedToCode = freezed,
    Object? discountCode = freezed,
    Object? offerLines = freezed,
    Object? offerGroupId = freezed,
    Object? isActive = freezed,
    Object? isAvailableForAll = freezed,
  }) {
    return _then(_$_PromotionDiscountReadModel(
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      offerPeriodName: freezed == offerPeriodName
          ? _value.offerPeriodName
          : offerPeriodName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupName: freezed == offerGroupName
          ? _value.offerGroupName
          : offerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerLines: freezed == offerLines
          ? _value._offerLines
          : offerLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLinesDiscount>?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionDiscountReadModel implements _PromotionDiscountReadModel {
  const _$_PromotionDiscountReadModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.code,
      this.title,
      final List<Segment>? segments,
      @JsonKey(name: "offer_period_name")
          this.offerPeriodName,
      @JsonKey(name: "offer_group_name")
          this.offerGroupName,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "discount_percentage_or_price")
          this.discountPercentageOrPrice,
      @JsonKey(name: "offer_applied_to_id")
          this.offerAppliedToId,
      @JsonKey(name: "offer_applied_to")
          this.offerAppliedTo,
      @JsonKey(name: "offer_applied_to_code")
          this.offerAppliedToCode,
      @JsonKey(name: "discount_code")
          this.discountCode,
      @JsonKey(name: "offer_lines")
          final List<SaleLinesDiscount>? offerLines,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll})
      : _segments = segments,
        _offerLines = offerLines;

  factory _$_PromotionDiscountReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionDiscountReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? code;
  @override
  final String? title;
  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_period_name")
  final String? offerPeriodName;
  @override
  @JsonKey(name: "offer_group_name")
  final String? offerGroupName;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  final int? discountPercentageOrPrice;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final String? offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to")
  final String? offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "discount_code")
  final String? discountCode;
  final List<SaleLinesDiscount>? _offerLines;
  @override
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines {
    final value = _offerLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableForAll;

  @override
  String toString() {
    return 'PromotionDiscountReadModel(id: $id, name: $name, description: $description, image: $image, code: $code, title: $title, segments: $segments, offerPeriodName: $offerPeriodName, offerGroupName: $offerGroupName, inventoryId: $inventoryId, basedOn: $basedOn, offerPeriodId: $offerPeriodId, discountPercentageOrPrice: $discountPercentageOrPrice, offerAppliedToId: $offerAppliedToId, offerAppliedTo: $offerAppliedTo, offerAppliedToCode: $offerAppliedToCode, discountCode: $discountCode, offerLines: $offerLines, offerGroupId: $offerGroupId, isActive: $isActive, isAvailableForAll: $isAvailableForAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionDiscountReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            (identical(other.offerPeriodName, offerPeriodName) ||
                other.offerPeriodName == offerPeriodName) &&
            (identical(other.offerGroupName, offerGroupName) ||
                other.offerGroupName == offerGroupName) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.discountPercentageOrPrice,
                    discountPercentageOrPrice) ||
                other.discountPercentageOrPrice == discountPercentageOrPrice) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.offerAppliedTo, offerAppliedTo) ||
                other.offerAppliedTo == offerAppliedTo) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.discountCode, discountCode) ||
                other.discountCode == discountCode) &&
            const DeepCollectionEquality()
                .equals(other._offerLines, _offerLines) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        image,
        code,
        title,
        const DeepCollectionEquality().hash(_segments),
        offerPeriodName,
        offerGroupName,
        inventoryId,
        basedOn,
        offerPeriodId,
        discountPercentageOrPrice,
        offerAppliedToId,
        offerAppliedTo,
        offerAppliedToCode,
        discountCode,
        const DeepCollectionEquality().hash(_offerLines),
        offerGroupId,
        isActive,
        isAvailableForAll
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionDiscountReadModelCopyWith<_$_PromotionDiscountReadModel>
      get copyWith => __$$_PromotionDiscountReadModelCopyWithImpl<
          _$_PromotionDiscountReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionDiscountReadModelToJson(
      this,
    );
  }
}

abstract class _PromotionDiscountReadModel
    implements PromotionDiscountReadModel {
  const factory _PromotionDiscountReadModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final String? code,
      final String? title,
      final List<Segment>? segments,
      @JsonKey(name: "offer_period_name")
          final String? offerPeriodName,
      @JsonKey(name: "offer_group_name")
          final String? offerGroupName,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "based_on")
          final String? basedOn,
      @JsonKey(name: "offer_period_id")
          final int? offerPeriodId,
      @JsonKey(name: "discount_percentage_or_price")
          final int? discountPercentageOrPrice,
      @JsonKey(name: "offer_applied_to_id")
          final String? offerAppliedToId,
      @JsonKey(name: "offer_applied_to")
          final String? offerAppliedTo,
      @JsonKey(name: "offer_applied_to_code")
          final String? offerAppliedToCode,
      @JsonKey(name: "discount_code")
          final String? discountCode,
      @JsonKey(name: "offer_lines")
          final List<SaleLinesDiscount>? offerLines,
      @JsonKey(name: "offer_group_id")
          final int? offerGroupId,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          final bool? isAvailableForAll}) = _$_PromotionDiscountReadModel;

  factory _PromotionDiscountReadModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionDiscountReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get code;
  @override
  String? get title;
  @override
  List<Segment>? get segments;
  @override
  @JsonKey(name: "offer_period_name")
  String? get offerPeriodName;
  @override
  @JsonKey(name: "offer_group_name")
  String? get offerGroupName;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  int? get discountPercentageOrPrice;
  @override
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId;
  @override
  @JsonKey(name: "offer_applied_to")
  String? get offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "discount_code")
  String? get discountCode;
  @override
  @JsonKey(name: "offer_lines")
  List<SaleLinesDiscount>? get offerLines;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionDiscountReadModelCopyWith<_$_PromotionDiscountReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

CustomGroupReadModel _$CustomGroupReadModelFromJson(Map<String, dynamic> json) {
  return _CustomGroupReadModel.fromJson(json);
}

/// @nodoc
mixin _$CustomGroupReadModel {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomGroupReadModelCopyWith<CustomGroupReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomGroupReadModelCopyWith<$Res> {
  factory $CustomGroupReadModelCopyWith(CustomGroupReadModel value,
          $Res Function(CustomGroupReadModel) then) =
      _$CustomGroupReadModelCopyWithImpl<$Res, CustomGroupReadModel>;
  @useResult
  $Res call({String? code, String? name});
}

/// @nodoc
class _$CustomGroupReadModelCopyWithImpl<$Res,
        $Val extends CustomGroupReadModel>
    implements $CustomGroupReadModelCopyWith<$Res> {
  _$CustomGroupReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomGroupReadModelCopyWith<$Res>
    implements $CustomGroupReadModelCopyWith<$Res> {
  factory _$$_CustomGroupReadModelCopyWith(_$_CustomGroupReadModel value,
          $Res Function(_$_CustomGroupReadModel) then) =
      __$$_CustomGroupReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? name});
}

/// @nodoc
class __$$_CustomGroupReadModelCopyWithImpl<$Res>
    extends _$CustomGroupReadModelCopyWithImpl<$Res, _$_CustomGroupReadModel>
    implements _$$_CustomGroupReadModelCopyWith<$Res> {
  __$$_CustomGroupReadModelCopyWithImpl(_$_CustomGroupReadModel _value,
      $Res Function(_$_CustomGroupReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CustomGroupReadModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomGroupReadModel implements _CustomGroupReadModel {
  const _$_CustomGroupReadModel({this.code, this.name});

  factory _$_CustomGroupReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomGroupReadModelFromJson(json);

  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'CustomGroupReadModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomGroupReadModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomGroupReadModelCopyWith<_$_CustomGroupReadModel> get copyWith =>
      __$$_CustomGroupReadModelCopyWithImpl<_$_CustomGroupReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomGroupReadModelToJson(
      this,
    );
  }
}

abstract class _CustomGroupReadModel implements CustomGroupReadModel {
  const factory _CustomGroupReadModel(
      {final String? code, final String? name}) = _$_CustomGroupReadModel;

  factory _CustomGroupReadModel.fromJson(Map<String, dynamic> json) =
      _$_CustomGroupReadModel.fromJson;

  @override
  String? get code;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CustomGroupReadModelCopyWith<_$_CustomGroupReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferLines _$OfferLinesFromJson(Map<String, dynamic> json) {
  return _OfferLines.fromJson(json);
}

/// @nodoc
mixin _$OfferLines {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_id")
  int? get customerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_product_group_code")
  String? get offerProductGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "type_applying")
  String? get typeApplying => throw _privateConstructorUsedError;
  @JsonKey(name: "type_id")
  int? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_qty")
  int? get maximumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_product_group_id")
  int? get offerProductGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "override_priority", defaultValue: false)
  bool? get overridePriority => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "type_code")
  String? get typeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferLinesCopyWith<OfferLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferLinesCopyWith<$Res> {
  factory $OfferLinesCopyWith(
          OfferLines value, $Res Function(OfferLines) then) =
      _$OfferLinesCopyWithImpl<$Res, OfferLines>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? priority,
      @JsonKey(name: "customer_group_id")
          int? customerGroupId,
      @JsonKey(name: "offer_product_group_code")
          String? offerProductGroupCode,
      @JsonKey(name: "type_applying")
          String? typeApplying,
      @JsonKey(name: "type_id")
          int? typeId,
      @JsonKey(name: "maximum_qty")
          int? maximumQuantity,
      @JsonKey(name: "offer_product_group_id")
          int? offerProductGroupId,
      @JsonKey(name: "override_priority", defaultValue: false)
          bool? overridePriority,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "type_code")
          String? typeCode});
}

/// @nodoc
class _$OfferLinesCopyWithImpl<$Res, $Val extends OfferLines>
    implements $OfferLinesCopyWith<$Res> {
  _$OfferLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? priority = freezed,
    Object? customerGroupId = freezed,
    Object? offerProductGroupCode = freezed,
    Object? typeApplying = freezed,
    Object? typeId = freezed,
    Object? maximumQuantity = freezed,
    Object? offerProductGroupId = freezed,
    Object? overridePriority = freezed,
    Object? isActive = freezed,
    Object? typeCode = freezed,
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupId: freezed == customerGroupId
          ? _value.customerGroupId
          : customerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerProductGroupCode: freezed == offerProductGroupCode
          ? _value.offerProductGroupCode
          : offerProductGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeApplying: freezed == typeApplying
          ? _value.typeApplying
          : typeApplying // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      offerProductGroupId: freezed == offerProductGroupId
          ? _value.offerProductGroupId
          : offerProductGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      overridePriority: freezed == overridePriority
          ? _value.overridePriority
          : overridePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferLinesCopyWith<$Res>
    implements $OfferLinesCopyWith<$Res> {
  factory _$$_OfferLinesCopyWith(
          _$_OfferLines value, $Res Function(_$_OfferLines) then) =
      __$$_OfferLinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? priority,
      @JsonKey(name: "customer_group_id")
          int? customerGroupId,
      @JsonKey(name: "offer_product_group_code")
          String? offerProductGroupCode,
      @JsonKey(name: "type_applying")
          String? typeApplying,
      @JsonKey(name: "type_id")
          int? typeId,
      @JsonKey(name: "maximum_qty")
          int? maximumQuantity,
      @JsonKey(name: "offer_product_group_id")
          int? offerProductGroupId,
      @JsonKey(name: "override_priority", defaultValue: false)
          bool? overridePriority,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "type_code")
          String? typeCode});
}

/// @nodoc
class __$$_OfferLinesCopyWithImpl<$Res>
    extends _$OfferLinesCopyWithImpl<$Res, _$_OfferLines>
    implements _$$_OfferLinesCopyWith<$Res> {
  __$$_OfferLinesCopyWithImpl(
      _$_OfferLines _value, $Res Function(_$_OfferLines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? priority = freezed,
    Object? customerGroupId = freezed,
    Object? offerProductGroupCode = freezed,
    Object? typeApplying = freezed,
    Object? typeId = freezed,
    Object? maximumQuantity = freezed,
    Object? offerProductGroupId = freezed,
    Object? overridePriority = freezed,
    Object? isActive = freezed,
    Object? typeCode = freezed,
  }) {
    return _then(_$_OfferLines(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupId: freezed == customerGroupId
          ? _value.customerGroupId
          : customerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerProductGroupCode: freezed == offerProductGroupCode
          ? _value.offerProductGroupCode
          : offerProductGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeApplying: freezed == typeApplying
          ? _value.typeApplying
          : typeApplying // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      offerProductGroupId: freezed == offerProductGroupId
          ? _value.offerProductGroupId
          : offerProductGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      overridePriority: freezed == overridePriority
          ? _value.overridePriority
          : overridePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferLines implements _OfferLines {
  const _$_OfferLines(
      {this.id,
      this.title,
      this.priority,
      @JsonKey(name: "customer_group_id")
          this.customerGroupId,
      @JsonKey(name: "offer_product_group_code")
          this.offerProductGroupCode,
      @JsonKey(name: "type_applying")
          this.typeApplying,
      @JsonKey(name: "type_id")
          this.typeId,
      @JsonKey(name: "maximum_qty")
          this.maximumQuantity,
      @JsonKey(name: "offer_product_group_id")
          this.offerProductGroupId,
      @JsonKey(name: "override_priority", defaultValue: false)
          this.overridePriority,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "type_code")
          this.typeCode});

  factory _$_OfferLines.fromJson(Map<String, dynamic> json) =>
      _$$_OfferLinesFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? priority;
  @override
  @JsonKey(name: "customer_group_id")
  final int? customerGroupId;
  @override
  @JsonKey(name: "offer_product_group_code")
  final String? offerProductGroupCode;
  @override
  @JsonKey(name: "type_applying")
  final String? typeApplying;
  @override
  @JsonKey(name: "type_id")
  final int? typeId;
  @override
  @JsonKey(name: "maximum_qty")
  final int? maximumQuantity;
  @override
  @JsonKey(name: "offer_product_group_id")
  final int? offerProductGroupId;
  @override
  @JsonKey(name: "override_priority", defaultValue: false)
  final bool? overridePriority;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "type_code")
  final String? typeCode;

  @override
  String toString() {
    return 'OfferLines(id: $id, title: $title, priority: $priority, customerGroupId: $customerGroupId, offerProductGroupCode: $offerProductGroupCode, typeApplying: $typeApplying, typeId: $typeId, maximumQuantity: $maximumQuantity, offerProductGroupId: $offerProductGroupId, overridePriority: $overridePriority, isActive: $isActive, typeCode: $typeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferLines &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.customerGroupId, customerGroupId) ||
                other.customerGroupId == customerGroupId) &&
            (identical(other.offerProductGroupCode, offerProductGroupCode) ||
                other.offerProductGroupCode == offerProductGroupCode) &&
            (identical(other.typeApplying, typeApplying) ||
                other.typeApplying == typeApplying) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.offerProductGroupId, offerProductGroupId) ||
                other.offerProductGroupId == offerProductGroupId) &&
            (identical(other.overridePriority, overridePriority) ||
                other.overridePriority == overridePriority) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      priority,
      customerGroupId,
      offerProductGroupCode,
      typeApplying,
      typeId,
      maximumQuantity,
      offerProductGroupId,
      overridePriority,
      isActive,
      typeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferLinesCopyWith<_$_OfferLines> get copyWith =>
      __$$_OfferLinesCopyWithImpl<_$_OfferLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferLinesToJson(
      this,
    );
  }
}

abstract class _OfferLines implements OfferLines {
  const factory _OfferLines(
      {final int? id,
      final String? title,
      final String? priority,
      @JsonKey(name: "customer_group_id")
          final int? customerGroupId,
      @JsonKey(name: "offer_product_group_code")
          final String? offerProductGroupCode,
      @JsonKey(name: "type_applying")
          final String? typeApplying,
      @JsonKey(name: "type_id")
          final int? typeId,
      @JsonKey(name: "maximum_qty")
          final int? maximumQuantity,
      @JsonKey(name: "offer_product_group_id")
          final int? offerProductGroupId,
      @JsonKey(name: "override_priority", defaultValue: false)
          final bool? overridePriority,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "type_code")
          final String? typeCode}) = _$_OfferLines;

  factory _OfferLines.fromJson(Map<String, dynamic> json) =
      _$_OfferLines.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get priority;
  @override
  @JsonKey(name: "customer_group_id")
  int? get customerGroupId;
  @override
  @JsonKey(name: "offer_product_group_code")
  String? get offerProductGroupCode;
  @override
  @JsonKey(name: "type_applying")
  String? get typeApplying;
  @override
  @JsonKey(name: "type_id")
  int? get typeId;
  @override
  @JsonKey(name: "maximum_qty")
  int? get maximumQuantity;
  @override
  @JsonKey(name: "offer_product_group_id")
  int? get offerProductGroupId;
  @override
  @JsonKey(name: "override_priority", defaultValue: false)
  bool? get overridePriority;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "type_code")
  String? get typeCode;
  @override
  @JsonKey(ignore: true)
  _$$_OfferLinesCopyWith<_$_OfferLines> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableCustomerGroups _$AvailableCustomerGroupsFromJson(
    Map<String, dynamic> json) {
  return _AvailableCustomerGroups.fromJson(json);
}

/// @nodoc
mixin _$AvailableCustomerGroups {
  @JsonKey(name: "customer_group_id")
  String? get customerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_cod")
  String? get customerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_name")
  String? get customerGroupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableCustomerGroupsCopyWith<AvailableCustomerGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableCustomerGroupsCopyWith<$Res> {
  factory $AvailableCustomerGroupsCopyWith(AvailableCustomerGroups value,
          $Res Function(AvailableCustomerGroups) then) =
      _$AvailableCustomerGroupsCopyWithImpl<$Res, AvailableCustomerGroups>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_group_id") String? customerGroupId,
      @JsonKey(name: "customer_group_cod") String? customerGroupCode,
      @JsonKey(name: "customer_group_name") String? customerGroupName});
}

/// @nodoc
class _$AvailableCustomerGroupsCopyWithImpl<$Res,
        $Val extends AvailableCustomerGroups>
    implements $AvailableCustomerGroupsCopyWith<$Res> {
  _$AvailableCustomerGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerGroupId = freezed,
    Object? customerGroupCode = freezed,
    Object? customerGroupName = freezed,
  }) {
    return _then(_value.copyWith(
      customerGroupId: freezed == customerGroupId
          ? _value.customerGroupId
          : customerGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupName: freezed == customerGroupName
          ? _value.customerGroupName
          : customerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableCustomerGroupsCopyWith<$Res>
    implements $AvailableCustomerGroupsCopyWith<$Res> {
  factory _$$_AvailableCustomerGroupsCopyWith(_$_AvailableCustomerGroups value,
          $Res Function(_$_AvailableCustomerGroups) then) =
      __$$_AvailableCustomerGroupsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_group_id") String? customerGroupId,
      @JsonKey(name: "customer_group_cod") String? customerGroupCode,
      @JsonKey(name: "customer_group_name") String? customerGroupName});
}

/// @nodoc
class __$$_AvailableCustomerGroupsCopyWithImpl<$Res>
    extends _$AvailableCustomerGroupsCopyWithImpl<$Res,
        _$_AvailableCustomerGroups>
    implements _$$_AvailableCustomerGroupsCopyWith<$Res> {
  __$$_AvailableCustomerGroupsCopyWithImpl(_$_AvailableCustomerGroups _value,
      $Res Function(_$_AvailableCustomerGroups) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerGroupId = freezed,
    Object? customerGroupCode = freezed,
    Object? customerGroupName = freezed,
  }) {
    return _then(_$_AvailableCustomerGroups(
      customerGroupId: freezed == customerGroupId
          ? _value.customerGroupId
          : customerGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupName: freezed == customerGroupName
          ? _value.customerGroupName
          : customerGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableCustomerGroups implements _AvailableCustomerGroups {
  const _$_AvailableCustomerGroups(
      {@JsonKey(name: "customer_group_id") this.customerGroupId,
      @JsonKey(name: "customer_group_cod") this.customerGroupCode,
      @JsonKey(name: "customer_group_name") this.customerGroupName});

  factory _$_AvailableCustomerGroups.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableCustomerGroupsFromJson(json);

  @override
  @JsonKey(name: "customer_group_id")
  final String? customerGroupId;
  @override
  @JsonKey(name: "customer_group_cod")
  final String? customerGroupCode;
  @override
  @JsonKey(name: "customer_group_name")
  final String? customerGroupName;

  @override
  String toString() {
    return 'AvailableCustomerGroups(customerGroupId: $customerGroupId, customerGroupCode: $customerGroupCode, customerGroupName: $customerGroupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableCustomerGroups &&
            (identical(other.customerGroupId, customerGroupId) ||
                other.customerGroupId == customerGroupId) &&
            (identical(other.customerGroupCode, customerGroupCode) ||
                other.customerGroupCode == customerGroupCode) &&
            (identical(other.customerGroupName, customerGroupName) ||
                other.customerGroupName == customerGroupName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerGroupId, customerGroupCode, customerGroupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableCustomerGroupsCopyWith<_$_AvailableCustomerGroups>
      get copyWith =>
          __$$_AvailableCustomerGroupsCopyWithImpl<_$_AvailableCustomerGroups>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableCustomerGroupsToJson(
      this,
    );
  }
}

abstract class _AvailableCustomerGroups implements AvailableCustomerGroups {
  const factory _AvailableCustomerGroups(
      {@JsonKey(name: "customer_group_id")
          final String? customerGroupId,
      @JsonKey(name: "customer_group_cod")
          final String? customerGroupCode,
      @JsonKey(name: "customer_group_name")
          final String? customerGroupName}) = _$_AvailableCustomerGroups;

  factory _AvailableCustomerGroups.fromJson(Map<String, dynamic> json) =
      _$_AvailableCustomerGroups.fromJson;

  @override
  @JsonKey(name: "customer_group_id")
  String? get customerGroupId;
  @override
  @JsonKey(name: "customer_group_cod")
  String? get customerGroupCode;
  @override
  @JsonKey(name: "customer_group_name")
  String? get customerGroupName;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableCustomerGroupsCopyWith<_$_AvailableCustomerGroups>
      get copyWith => throw _privateConstructorUsedError;
}

SaleLinesDiscount _$SaleLinesDiscountFromJson(Map<String, dynamic> json) {
  return _SaleLinesDiscount.fromJson(json);
}

/// @nodoc
mixin _$SaleLinesDiscount {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<VariantsLinesDiscount>? get variants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "type_id")
  int? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: "type_Name")
  String? get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_qty")
  int? get maximumQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "type_applying")
  String? get typeApplying => throw _privateConstructorUsedError;
  @JsonKey(name: "addedd_variants")
  List<VariantsLinesDiscount>? get addedVariant =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_variants")
  List<VariantsLinesDiscount>? get deletedVariants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "type_code")
  String? get typeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_name")
  String? get offerName => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_product_group_code")
  String? get offerProductGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_product_group_id")
  int? get offerProductGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "type_data")
  String? get typeData => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleLinesDiscountCopyWith<SaleLinesDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleLinesDiscountCopyWith<$Res> {
  factory $SaleLinesDiscountCopyWith(
          SaleLinesDiscount value, $Res Function(SaleLinesDiscount) then) =
      _$SaleLinesDiscountCopyWithImpl<$Res, SaleLinesDiscount>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? imageName,
      String? title,
      List<VariantsLinesDiscount>? variants,
      @JsonKey(name: "type_id")
          int? typeId,
      @JsonKey(name: "type_Name")
          String? typeName,
      @JsonKey(name: "maximum_qty")
          int? maximumQuantity,
      @JsonKey(name: "type_applying")
          String? typeApplying,
      @JsonKey(name: "addedd_variants")
          List<VariantsLinesDiscount>? addedVariant,
      @JsonKey(name: "deleted_variants")
          List<VariantsLinesDiscount>? deletedVariants,
      @JsonKey(name: "type_code")
          String? typeCode,
      @JsonKey(name: "offer_group_code")
          String? offerGroupCode,
      @JsonKey(name: "offer_name")
          String? offerName,
      @JsonKey(name: "offer_product_group_code")
          String? offerProductGroupCode,
      @JsonKey(name: "offer_product_group_id")
          int? offerProductGroupId,
      @JsonKey(name: "type_data")
          String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false)
          bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive});
}

/// @nodoc
class _$SaleLinesDiscountCopyWithImpl<$Res, $Val extends SaleLinesDiscount>
    implements $SaleLinesDiscountCopyWith<$Res> {
  _$SaleLinesDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? imageName = freezed,
    Object? title = freezed,
    Object? variants = freezed,
    Object? typeId = freezed,
    Object? typeName = freezed,
    Object? maximumQuantity = freezed,
    Object? typeApplying = freezed,
    Object? addedVariant = freezed,
    Object? deletedVariants = freezed,
    Object? typeCode = freezed,
    Object? offerGroupCode = freezed,
    Object? offerName = freezed,
    Object? offerProductGroupCode = freezed,
    Object? offerProductGroupId = freezed,
    Object? typeData = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      typeApplying: freezed == typeApplying
          ? _value.typeApplying
          : typeApplying // ignore: cast_nullable_to_non_nullable
              as String?,
      addedVariant: freezed == addedVariant
          ? _value.addedVariant
          : addedVariant // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      deletedVariants: freezed == deletedVariants
          ? _value.deletedVariants
          : deletedVariants // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerProductGroupCode: freezed == offerProductGroupCode
          ? _value.offerProductGroupCode
          : offerProductGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerProductGroupId: freezed == offerProductGroupId
          ? _value.offerProductGroupId
          : offerProductGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleLinesDiscountCopyWith<$Res>
    implements $SaleLinesDiscountCopyWith<$Res> {
  factory _$$_SaleLinesDiscountCopyWith(_$_SaleLinesDiscount value,
          $Res Function(_$_SaleLinesDiscount) then) =
      __$$_SaleLinesDiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? imageName,
      String? title,
      List<VariantsLinesDiscount>? variants,
      @JsonKey(name: "type_id")
          int? typeId,
      @JsonKey(name: "type_Name")
          String? typeName,
      @JsonKey(name: "maximum_qty")
          int? maximumQuantity,
      @JsonKey(name: "type_applying")
          String? typeApplying,
      @JsonKey(name: "addedd_variants")
          List<VariantsLinesDiscount>? addedVariant,
      @JsonKey(name: "deleted_variants")
          List<VariantsLinesDiscount>? deletedVariants,
      @JsonKey(name: "type_code")
          String? typeCode,
      @JsonKey(name: "offer_group_code")
          String? offerGroupCode,
      @JsonKey(name: "offer_name")
          String? offerName,
      @JsonKey(name: "offer_product_group_code")
          String? offerProductGroupCode,
      @JsonKey(name: "offer_product_group_id")
          int? offerProductGroupId,
      @JsonKey(name: "type_data")
          String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false)
          bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive});
}

/// @nodoc
class __$$_SaleLinesDiscountCopyWithImpl<$Res>
    extends _$SaleLinesDiscountCopyWithImpl<$Res, _$_SaleLinesDiscount>
    implements _$$_SaleLinesDiscountCopyWith<$Res> {
  __$$_SaleLinesDiscountCopyWithImpl(
      _$_SaleLinesDiscount _value, $Res Function(_$_SaleLinesDiscount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? imageName = freezed,
    Object? title = freezed,
    Object? variants = freezed,
    Object? typeId = freezed,
    Object? typeName = freezed,
    Object? maximumQuantity = freezed,
    Object? typeApplying = freezed,
    Object? addedVariant = freezed,
    Object? deletedVariants = freezed,
    Object? typeCode = freezed,
    Object? offerGroupCode = freezed,
    Object? offerName = freezed,
    Object? offerProductGroupCode = freezed,
    Object? offerProductGroupId = freezed,
    Object? typeData = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_SaleLinesDiscount(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumQuantity: freezed == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      typeApplying: freezed == typeApplying
          ? _value.typeApplying
          : typeApplying // ignore: cast_nullable_to_non_nullable
              as String?,
      addedVariant: freezed == addedVariant
          ? _value._addedVariant
          : addedVariant // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      deletedVariants: freezed == deletedVariants
          ? _value._deletedVariants
          : deletedVariants // ignore: cast_nullable_to_non_nullable
              as List<VariantsLinesDiscount>?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerProductGroupCode: freezed == offerProductGroupCode
          ? _value.offerProductGroupCode
          : offerProductGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerProductGroupId: freezed == offerProductGroupId
          ? _value.offerProductGroupId
          : offerProductGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleLinesDiscount implements _SaleLinesDiscount {
  const _$_SaleLinesDiscount(
      {this.id,
      this.image,
      this.imageName,
      this.title,
      final List<VariantsLinesDiscount>? variants,
      @JsonKey(name: "type_id")
          this.typeId,
      @JsonKey(name: "type_Name")
          this.typeName,
      @JsonKey(name: "maximum_qty")
          this.maximumQuantity,
      @JsonKey(name: "type_applying")
          this.typeApplying,
      @JsonKey(name: "addedd_variants")
          final List<VariantsLinesDiscount>? addedVariant,
      @JsonKey(name: "deleted_variants")
          final List<VariantsLinesDiscount>? deletedVariants,
      @JsonKey(name: "type_code")
          this.typeCode,
      @JsonKey(name: "offer_group_code")
          this.offerGroupCode,
      @JsonKey(name: "offer_name")
          this.offerName,
      @JsonKey(name: "offer_product_group_code")
          this.offerProductGroupCode,
      @JsonKey(name: "offer_product_group_id")
          this.offerProductGroupId,
      @JsonKey(name: "type_data")
          this.typeData,
      @JsonKey(name: "updateCheck", defaultValue: false)
          this.updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive})
      : _variants = variants,
        _addedVariant = addedVariant,
        _deletedVariants = deletedVariants;

  factory _$_SaleLinesDiscount.fromJson(Map<String, dynamic> json) =>
      _$$_SaleLinesDiscountFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? imageName;
  @override
  final String? title;
  final List<VariantsLinesDiscount>? _variants;
  @override
  List<VariantsLinesDiscount>? get variants {
    final value = _variants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "type_id")
  final int? typeId;
  @override
  @JsonKey(name: "type_Name")
  final String? typeName;
  @override
  @JsonKey(name: "maximum_qty")
  final int? maximumQuantity;
  @override
  @JsonKey(name: "type_applying")
  final String? typeApplying;
  final List<VariantsLinesDiscount>? _addedVariant;
  @override
  @JsonKey(name: "addedd_variants")
  List<VariantsLinesDiscount>? get addedVariant {
    final value = _addedVariant;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VariantsLinesDiscount>? _deletedVariants;
  @override
  @JsonKey(name: "deleted_variants")
  List<VariantsLinesDiscount>? get deletedVariants {
    final value = _deletedVariants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "type_code")
  final String? typeCode;
  @override
  @JsonKey(name: "offer_group_code")
  final String? offerGroupCode;
  @override
  @JsonKey(name: "offer_name")
  final String? offerName;
  @override
  @JsonKey(name: "offer_product_group_code")
  final String? offerProductGroupCode;
  @override
  @JsonKey(name: "offer_product_group_id")
  final int? offerProductGroupId;
  @override
  @JsonKey(name: "type_data")
  final String? typeData;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'SaleLinesDiscount(id: $id, image: $image, imageName: $imageName, title: $title, variants: $variants, typeId: $typeId, typeName: $typeName, maximumQuantity: $maximumQuantity, typeApplying: $typeApplying, addedVariant: $addedVariant, deletedVariants: $deletedVariants, typeCode: $typeCode, offerGroupCode: $offerGroupCode, offerName: $offerName, offerProductGroupCode: $offerProductGroupCode, offerProductGroupId: $offerProductGroupId, typeData: $typeData, updateCheck: $updateCheck, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleLinesDiscount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.typeApplying, typeApplying) ||
                other.typeApplying == typeApplying) &&
            const DeepCollectionEquality()
                .equals(other._addedVariant, _addedVariant) &&
            const DeepCollectionEquality()
                .equals(other._deletedVariants, _deletedVariants) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.offerGroupCode, offerGroupCode) ||
                other.offerGroupCode == offerGroupCode) &&
            (identical(other.offerName, offerName) ||
                other.offerName == offerName) &&
            (identical(other.offerProductGroupCode, offerProductGroupCode) ||
                other.offerProductGroupCode == offerProductGroupCode) &&
            (identical(other.offerProductGroupId, offerProductGroupId) ||
                other.offerProductGroupId == offerProductGroupId) &&
            (identical(other.typeData, typeData) ||
                other.typeData == typeData) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        imageName,
        title,
        const DeepCollectionEquality().hash(_variants),
        typeId,
        typeName,
        maximumQuantity,
        typeApplying,
        const DeepCollectionEquality().hash(_addedVariant),
        const DeepCollectionEquality().hash(_deletedVariants),
        typeCode,
        offerGroupCode,
        offerName,
        offerProductGroupCode,
        offerProductGroupId,
        typeData,
        updateCheck,
        isActive
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleLinesDiscountCopyWith<_$_SaleLinesDiscount> get copyWith =>
      __$$_SaleLinesDiscountCopyWithImpl<_$_SaleLinesDiscount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleLinesDiscountToJson(
      this,
    );
  }
}

abstract class _SaleLinesDiscount implements SaleLinesDiscount {
  const factory _SaleLinesDiscount(
      {final int? id,
      final String? image,
      final String? imageName,
      final String? title,
      final List<VariantsLinesDiscount>? variants,
      @JsonKey(name: "type_id")
          final int? typeId,
      @JsonKey(name: "type_Name")
          final String? typeName,
      @JsonKey(name: "maximum_qty")
          final int? maximumQuantity,
      @JsonKey(name: "type_applying")
          final String? typeApplying,
      @JsonKey(name: "addedd_variants")
          final List<VariantsLinesDiscount>? addedVariant,
      @JsonKey(name: "deleted_variants")
          final List<VariantsLinesDiscount>? deletedVariants,
      @JsonKey(name: "type_code")
          final String? typeCode,
      @JsonKey(name: "offer_group_code")
          final String? offerGroupCode,
      @JsonKey(name: "offer_name")
          final String? offerName,
      @JsonKey(name: "offer_product_group_code")
          final String? offerProductGroupCode,
      @JsonKey(name: "offer_product_group_id")
          final int? offerProductGroupId,
      @JsonKey(name: "type_data")
          final String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_SaleLinesDiscount;

  factory _SaleLinesDiscount.fromJson(Map<String, dynamic> json) =
      _$_SaleLinesDiscount.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get imageName;
  @override
  String? get title;
  @override
  List<VariantsLinesDiscount>? get variants;
  @override
  @JsonKey(name: "type_id")
  int? get typeId;
  @override
  @JsonKey(name: "type_Name")
  String? get typeName;
  @override
  @JsonKey(name: "maximum_qty")
  int? get maximumQuantity;
  @override
  @JsonKey(name: "type_applying")
  String? get typeApplying;
  @override
  @JsonKey(name: "addedd_variants")
  List<VariantsLinesDiscount>? get addedVariant;
  @override
  @JsonKey(name: "deleted_variants")
  List<VariantsLinesDiscount>? get deletedVariants;
  @override
  @JsonKey(name: "type_code")
  String? get typeCode;
  @override
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode;
  @override
  @JsonKey(name: "offer_name")
  String? get offerName;
  @override
  @JsonKey(name: "offer_product_group_code")
  String? get offerProductGroupCode;
  @override
  @JsonKey(name: "offer_product_group_id")
  int? get offerProductGroupId;
  @override
  @JsonKey(name: "type_data")
  String? get typeData;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_SaleLinesDiscountCopyWith<_$_SaleLinesDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantsLinesDiscount _$VariantsLinesDiscountFromJson(
    Map<String, dynamic> json) {
  return _VariantsLinesDiscount.fromJson(json);
}

/// @nodoc
mixin _$VariantsLinesDiscount {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantIdd => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantsLinesDiscountCopyWith<VariantsLinesDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsLinesDiscountCopyWith<$Res> {
  factory $VariantsLinesDiscountCopyWith(VariantsLinesDiscount value,
          $Res Function(VariantsLinesDiscount) then) =
      _$VariantsLinesDiscountCopyWithImpl<$Res, VariantsLinesDiscount>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      Barcode? barcode,
      @JsonKey(name: "variant_id") int? variantIdd,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "variant_code") String? variantCode});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$VariantsLinesDiscountCopyWithImpl<$Res,
        $Val extends VariantsLinesDiscount>
    implements $VariantsLinesDiscountCopyWith<$Res> {
  _$VariantsLinesDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
    Object? variantIdd = freezed,
    Object? variantName = freezed,
    Object? variantCode = freezed,
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
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      variantIdd: freezed == variantIdd
          ? _value.variantIdd
          : variantIdd // ignore: cast_nullable_to_non_nullable
              as int?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarcodeCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VariantsLinesDiscountCopyWith<$Res>
    implements $VariantsLinesDiscountCopyWith<$Res> {
  factory _$$_VariantsLinesDiscountCopyWith(_$_VariantsLinesDiscount value,
          $Res Function(_$_VariantsLinesDiscount) then) =
      __$$_VariantsLinesDiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      Barcode? barcode,
      @JsonKey(name: "variant_id") int? variantIdd,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "variant_code") String? variantCode});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$_VariantsLinesDiscountCopyWithImpl<$Res>
    extends _$VariantsLinesDiscountCopyWithImpl<$Res, _$_VariantsLinesDiscount>
    implements _$$_VariantsLinesDiscountCopyWith<$Res> {
  __$$_VariantsLinesDiscountCopyWithImpl(_$_VariantsLinesDiscount _value,
      $Res Function(_$_VariantsLinesDiscount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
    Object? variantIdd = freezed,
    Object? variantName = freezed,
    Object? variantCode = freezed,
  }) {
    return _then(_$_VariantsLinesDiscount(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      variantIdd: freezed == variantIdd
          ? _value.variantIdd
          : variantIdd // ignore: cast_nullable_to_non_nullable
              as int?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantsLinesDiscount implements _VariantsLinesDiscount {
  const _$_VariantsLinesDiscount(
      {this.id,
      this.name,
      this.barcode,
      @JsonKey(name: "variant_id") this.variantIdd,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "variant_code") this.variantCode});

  factory _$_VariantsLinesDiscount.fromJson(Map<String, dynamic> json) =>
      _$$_VariantsLinesDiscountFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final Barcode? barcode;
  @override
  @JsonKey(name: "variant_id")
  final int? variantIdd;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;

  @override
  String toString() {
    return 'VariantsLinesDiscount(id: $id, name: $name, barcode: $barcode, variantIdd: $variantIdd, variantName: $variantName, variantCode: $variantCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantsLinesDiscount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantIdd, variantIdd) ||
                other.variantIdd == variantIdd) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, barcode, variantIdd, variantName, variantCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantsLinesDiscountCopyWith<_$_VariantsLinesDiscount> get copyWith =>
      __$$_VariantsLinesDiscountCopyWithImpl<_$_VariantsLinesDiscount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantsLinesDiscountToJson(
      this,
    );
  }
}

abstract class _VariantsLinesDiscount implements VariantsLinesDiscount {
  const factory _VariantsLinesDiscount(
          {final int? id,
          final String? name,
          final Barcode? barcode,
          @JsonKey(name: "variant_id") final int? variantIdd,
          @JsonKey(name: "variant_name") final String? variantName,
          @JsonKey(name: "variant_code") final String? variantCode}) =
      _$_VariantsLinesDiscount;

  factory _VariantsLinesDiscount.fromJson(Map<String, dynamic> json) =
      _$_VariantsLinesDiscount.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  Barcode? get barcode;
  @override
  @JsonKey(name: "variant_id")
  int? get variantIdd;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(ignore: true)
  _$$_VariantsLinesDiscountCopyWith<_$_VariantsLinesDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}
