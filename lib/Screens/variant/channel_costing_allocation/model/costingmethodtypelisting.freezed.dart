// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'costingmethodtypelisting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostingMetodTypePostModel _$CostingMetodTypePostModelFromJson(
    Map<String, dynamic> json) {
  return _CostingMetodTypePostModel.fromJson(json);
}

/// @nodoc
mixin _$CostingMetodTypePostModel {
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type_code")
  String? get typeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "type_name")
  String? get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostingMetodTypePostModelCopyWith<CostingMetodTypePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostingMetodTypePostModelCopyWith<$Res> {
  factory $CostingMetodTypePostModelCopyWith(CostingMetodTypePostModel value,
          $Res Function(CostingMetodTypePostModel) then) =
      _$CostingMetodTypePostModelCopyWithImpl<$Res, CostingMetodTypePostModel>;
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "type_code") String? typeCode,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$CostingMetodTypePostModelCopyWithImpl<$Res,
        $Val extends CostingMetodTypePostModel>
    implements $CostingMetodTypePostModelCopyWith<$Res> {
  _$CostingMetodTypePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostingMetodTypePostModelCopyWith<$Res>
    implements $CostingMetodTypePostModelCopyWith<$Res> {
  factory _$$_CostingMetodTypePostModelCopyWith(
          _$_CostingMetodTypePostModel value,
          $Res Function(_$_CostingMetodTypePostModel) then) =
      __$$_CostingMetodTypePostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "type_code") String? typeCode,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_CostingMetodTypePostModelCopyWithImpl<$Res>
    extends _$CostingMetodTypePostModelCopyWithImpl<$Res,
        _$_CostingMetodTypePostModel>
    implements _$$_CostingMetodTypePostModelCopyWith<$Res> {
  __$$_CostingMetodTypePostModelCopyWithImpl(
      _$_CostingMetodTypePostModel _value,
      $Res Function(_$_CostingMetodTypePostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CostingMetodTypePostModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCode: freezed == typeCode
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostingMetodTypePostModel implements _CostingMetodTypePostModel {
  const _$_CostingMetodTypePostModel(
      {this.description,
      this.id,
      @JsonKey(name: "type_code") this.typeCode,
      @JsonKey(name: "type_name") this.typeName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_CostingMetodTypePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostingMetodTypePostModelFromJson(json);

  @override
  final String? description;
  @override
  final int? id;
  @override
  @JsonKey(name: "type_code")
  final String? typeCode;
  @override
  @JsonKey(name: "type_name")
  final String? typeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'CostingMetodTypePostModel(description: $description, id: $id, typeCode: $typeCode, typeName: $typeName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostingMetodTypePostModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, id, typeCode, typeName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostingMetodTypePostModelCopyWith<_$_CostingMetodTypePostModel>
      get copyWith => __$$_CostingMetodTypePostModelCopyWithImpl<
          _$_CostingMetodTypePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostingMetodTypePostModelToJson(
      this,
    );
  }
}

abstract class _CostingMetodTypePostModel implements CostingMetodTypePostModel {
  const factory _CostingMetodTypePostModel(
      {final String? description,
      final int? id,
      @JsonKey(name: "type_code")
          final String? typeCode,
      @JsonKey(name: "type_name")
          final String? typeName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_CostingMetodTypePostModel;

  factory _CostingMetodTypePostModel.fromJson(Map<String, dynamic> json) =
      _$_CostingMetodTypePostModel.fromJson;

  @override
  String? get description;
  @override
  int? get id;
  @override
  @JsonKey(name: "type_code")
  String? get typeCode;
  @override
  @JsonKey(name: "type_name")
  String? get typeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CostingMetodTypePostModelCopyWith<_$_CostingMetodTypePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

CostingCreatePostModel _$CostingCreatePostModelFromJson(
    Map<String, dynamic> json) {
  return _CostingCreatePostModel.fromJson(json);
}

/// @nodoc
mixin _$CostingCreatePostModel {
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "method_type_id")
  int? get methodTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "costing_method_type_name")
  String? get costingMethodTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "method_code")
  String? get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "method_name")
  String? get methodName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostingCreatePostModelCopyWith<CostingCreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostingCreatePostModelCopyWith<$Res> {
  factory $CostingCreatePostModelCopyWith(CostingCreatePostModel value,
          $Res Function(CostingCreatePostModel) then) =
      _$CostingCreatePostModelCopyWithImpl<$Res, CostingCreatePostModel>;
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "method_type_id") int? methodTypeId,
      @JsonKey(name: "costing_method_type_name") String? costingMethodTypeName,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "method_name") String? methodName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$CostingCreatePostModelCopyWithImpl<$Res,
        $Val extends CostingCreatePostModel>
    implements $CostingCreatePostModelCopyWith<$Res> {
  _$CostingCreatePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? methodTypeId = freezed,
    Object? costingMethodTypeName = freezed,
    Object? methodCode = freezed,
    Object? methodName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTypeId: freezed == methodTypeId
          ? _value.methodTypeId
          : methodTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      costingMethodTypeName: freezed == costingMethodTypeName
          ? _value.costingMethodTypeName
          : costingMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methodName: freezed == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostingCreatePostModelCopyWith<$Res>
    implements $CostingCreatePostModelCopyWith<$Res> {
  factory _$$_CostingCreatePostModelCopyWith(_$_CostingCreatePostModel value,
          $Res Function(_$_CostingCreatePostModel) then) =
      __$$_CostingCreatePostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "method_type_id") int? methodTypeId,
      @JsonKey(name: "costing_method_type_name") String? costingMethodTypeName,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "method_name") String? methodName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_CostingCreatePostModelCopyWithImpl<$Res>
    extends _$CostingCreatePostModelCopyWithImpl<$Res,
        _$_CostingCreatePostModel>
    implements _$$_CostingCreatePostModelCopyWith<$Res> {
  __$$_CostingCreatePostModelCopyWithImpl(_$_CostingCreatePostModel _value,
      $Res Function(_$_CostingCreatePostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? methodTypeId = freezed,
    Object? costingMethodTypeName = freezed,
    Object? methodCode = freezed,
    Object? methodName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CostingCreatePostModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTypeId: freezed == methodTypeId
          ? _value.methodTypeId
          : methodTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      costingMethodTypeName: freezed == costingMethodTypeName
          ? _value.costingMethodTypeName
          : costingMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methodName: freezed == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostingCreatePostModel implements _CostingCreatePostModel {
  const _$_CostingCreatePostModel(
      {this.description,
      this.id,
      @JsonKey(name: "method_type_id") this.methodTypeId,
      @JsonKey(name: "costing_method_type_name") this.costingMethodTypeName,
      @JsonKey(name: "method_code") this.methodCode,
      @JsonKey(name: "method_name") this.methodName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_CostingCreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostingCreatePostModelFromJson(json);

  @override
  final String? description;
  @override
  final int? id;
  @override
  @JsonKey(name: "method_type_id")
  final int? methodTypeId;
  @override
  @JsonKey(name: "costing_method_type_name")
  final String? costingMethodTypeName;
  @override
  @JsonKey(name: "method_code")
  final String? methodCode;
  @override
  @JsonKey(name: "method_name")
  final String? methodName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'CostingCreatePostModel(description: $description, id: $id, methodTypeId: $methodTypeId, costingMethodTypeName: $costingMethodTypeName, methodCode: $methodCode, methodName: $methodName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostingCreatePostModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.methodTypeId, methodTypeId) ||
                other.methodTypeId == methodTypeId) &&
            (identical(other.costingMethodTypeName, costingMethodTypeName) ||
                other.costingMethodTypeName == costingMethodTypeName) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, id, methodTypeId,
      costingMethodTypeName, methodCode, methodName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostingCreatePostModelCopyWith<_$_CostingCreatePostModel> get copyWith =>
      __$$_CostingCreatePostModelCopyWithImpl<_$_CostingCreatePostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostingCreatePostModelToJson(
      this,
    );
  }
}

abstract class _CostingCreatePostModel implements CostingCreatePostModel {
  const factory _CostingCreatePostModel(
      {final String? description,
      final int? id,
      @JsonKey(name: "method_type_id")
          final int? methodTypeId,
      @JsonKey(name: "costing_method_type_name")
          final String? costingMethodTypeName,
      @JsonKey(name: "method_code")
          final String? methodCode,
      @JsonKey(name: "method_name")
          final String? methodName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_CostingCreatePostModel;

  factory _CostingCreatePostModel.fromJson(Map<String, dynamic> json) =
      _$_CostingCreatePostModel.fromJson;

  @override
  String? get description;
  @override
  int? get id;
  @override
  @JsonKey(name: "method_type_id")
  int? get methodTypeId;
  @override
  @JsonKey(name: "costing_method_type_name")
  String? get costingMethodTypeName;
  @override
  @JsonKey(name: "method_code")
  String? get methodCode;
  @override
  @JsonKey(name: "method_name")
  String? get methodName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CostingCreatePostModelCopyWith<_$_CostingCreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingGroupListModel _$PricingGroupListModelFromJson(
    Map<String, dynamic> json) {
  return _PricingGroupListModel.fromJson(json);
}

/// @nodoc
mixin _$PricingGroupListModel {
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_type_code")
  String? get pricingTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingGroupListModelCopyWith<PricingGroupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingGroupListModelCopyWith<$Res> {
  factory $PricingGroupListModelCopyWith(PricingGroupListModel value,
          $Res Function(PricingGroupListModel) then) =
      _$PricingGroupListModelCopyWithImpl<$Res, PricingGroupListModel>;
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$PricingGroupListModelCopyWithImpl<$Res,
        $Val extends PricingGroupListModel>
    implements $PricingGroupListModelCopyWith<$Res> {
  _$PricingGroupListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? pricingTypeCode = freezed,
    Object? createdBy = freezed,
    Object? pricingTypeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeCode: freezed == pricingTypeCode
          ? _value.pricingTypeCode
          : pricingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeName: freezed == pricingTypeName
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PricingGroupListModelCopyWith<$Res>
    implements $PricingGroupListModelCopyWith<$Res> {
  factory _$$_PricingGroupListModelCopyWith(_$_PricingGroupListModel value,
          $Res Function(_$_PricingGroupListModel) then) =
      __$$_PricingGroupListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_PricingGroupListModelCopyWithImpl<$Res>
    extends _$PricingGroupListModelCopyWithImpl<$Res, _$_PricingGroupListModel>
    implements _$$_PricingGroupListModelCopyWith<$Res> {
  __$$_PricingGroupListModelCopyWithImpl(_$_PricingGroupListModel _value,
      $Res Function(_$_PricingGroupListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? pricingTypeCode = freezed,
    Object? createdBy = freezed,
    Object? pricingTypeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_PricingGroupListModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeCode: freezed == pricingTypeCode
          ? _value.pricingTypeCode
          : pricingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeName: freezed == pricingTypeName
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingGroupListModel implements _PricingGroupListModel {
  const _$_PricingGroupListModel(
      {this.description,
      this.id,
      @JsonKey(name: "pricing_type_code") this.pricingTypeCode,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "pricing_type_name") this.pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_PricingGroupListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PricingGroupListModelFromJson(json);

  @override
  final String? description;
  @override
  final int? id;
  @override
  @JsonKey(name: "pricing_type_code")
  final String? pricingTypeCode;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "pricing_type_name")
  final String? pricingTypeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'PricingGroupListModel(description: $description, id: $id, pricingTypeCode: $pricingTypeCode, createdBy: $createdBy, pricingTypeName: $pricingTypeName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PricingGroupListModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pricingTypeCode, pricingTypeCode) ||
                other.pricingTypeCode == pricingTypeCode) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.pricingTypeName, pricingTypeName) ||
                other.pricingTypeName == pricingTypeName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, id, pricingTypeCode,
      createdBy, pricingTypeName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PricingGroupListModelCopyWith<_$_PricingGroupListModel> get copyWith =>
      __$$_PricingGroupListModelCopyWithImpl<_$_PricingGroupListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingGroupListModelToJson(
      this,
    );
  }
}

abstract class _PricingGroupListModel implements PricingGroupListModel {
  const factory _PricingGroupListModel(
      {final String? description,
      final int? id,
      @JsonKey(name: "pricing_type_code")
          final String? pricingTypeCode,
      @JsonKey(name: "created_by")
          final String? createdBy,
      @JsonKey(name: "pricing_type_name")
          final String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_PricingGroupListModel;

  factory _PricingGroupListModel.fromJson(Map<String, dynamic> json) =
      _$_PricingGroupListModel.fromJson;

  @override
  String? get description;
  @override
  int? get id;
  @override
  @JsonKey(name: "pricing_type_code")
  String? get pricingTypeCode;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_PricingGroupListModelCopyWith<_$_PricingGroupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingTypeListModel _$PricingTypeListModelFromJson(Map<String, dynamic> json) {
  return _PricingTypeListModel.fromJson(json);
}

/// @nodoc
mixin _$PricingTypeListModel {
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_group_code")
  String? get pricingCroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_type_id")
  int? get pricingTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_code")
  String? get customerGrouCode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingTypeListModelCopyWith<PricingTypeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingTypeListModelCopyWith<$Res> {
  factory $PricingTypeListModelCopyWith(PricingTypeListModel value,
          $Res Function(PricingTypeListModel) then) =
      _$PricingTypeListModelCopyWithImpl<$Res, PricingTypeListModel>;
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: "pricing_group_code") String? pricingCroupCode,
      @JsonKey(name: "pricing_type_id") int? pricingTypeId,
      @JsonKey(name: "customer_group_code") String? customerGrouCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$PricingTypeListModelCopyWithImpl<$Res,
        $Val extends PricingTypeListModel>
    implements $PricingTypeListModelCopyWith<$Res> {
  _$PricingTypeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? pricingCroupCode = freezed,
    Object? pricingTypeId = freezed,
    Object? customerGrouCode = freezed,
    Object? createdBy = freezed,
    Object? pricingGroupName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingCroupCode: freezed == pricingCroupCode
          ? _value.pricingCroupCode
          : pricingCroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeId: freezed == pricingTypeId
          ? _value.pricingTypeId
          : pricingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGrouCode: freezed == customerGrouCode
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: freezed == pricingGroupName
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PricingTypeListModelCopyWith<$Res>
    implements $PricingTypeListModelCopyWith<$Res> {
  factory _$$_PricingTypeListModelCopyWith(_$_PricingTypeListModel value,
          $Res Function(_$_PricingTypeListModel) then) =
      __$$_PricingTypeListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: "pricing_group_code") String? pricingCroupCode,
      @JsonKey(name: "pricing_type_id") int? pricingTypeId,
      @JsonKey(name: "customer_group_code") String? customerGrouCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_PricingTypeListModelCopyWithImpl<$Res>
    extends _$PricingTypeListModelCopyWithImpl<$Res, _$_PricingTypeListModel>
    implements _$$_PricingTypeListModelCopyWith<$Res> {
  __$$_PricingTypeListModelCopyWithImpl(_$_PricingTypeListModel _value,
      $Res Function(_$_PricingTypeListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? pricingCroupCode = freezed,
    Object? pricingTypeId = freezed,
    Object? customerGrouCode = freezed,
    Object? createdBy = freezed,
    Object? pricingGroupName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_PricingTypeListModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingCroupCode: freezed == pricingCroupCode
          ? _value.pricingCroupCode
          : pricingCroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeId: freezed == pricingTypeId
          ? _value.pricingTypeId
          : pricingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGrouCode: freezed == customerGrouCode
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: freezed == pricingGroupName
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingTypeListModel implements _PricingTypeListModel {
  const _$_PricingTypeListModel(
      {this.description,
      @JsonKey(name: "pricing_group_code") this.pricingCroupCode,
      @JsonKey(name: "pricing_type_id") this.pricingTypeId,
      @JsonKey(name: "customer_group_code") this.customerGrouCode,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "pricing_group_name") this.pricingGroupName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_PricingTypeListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PricingTypeListModelFromJson(json);

  @override
  final String? description;
  @override
  @JsonKey(name: "pricing_group_code")
  final String? pricingCroupCode;
  @override
  @JsonKey(name: "pricing_type_id")
  final int? pricingTypeId;
  @override
  @JsonKey(name: "customer_group_code")
  final String? customerGrouCode;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "pricing_group_name")
  final String? pricingGroupName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'PricingTypeListModel(description: $description, pricingCroupCode: $pricingCroupCode, pricingTypeId: $pricingTypeId, customerGrouCode: $customerGrouCode, createdBy: $createdBy, pricingGroupName: $pricingGroupName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PricingTypeListModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pricingCroupCode, pricingCroupCode) ||
                other.pricingCroupCode == pricingCroupCode) &&
            (identical(other.pricingTypeId, pricingTypeId) ||
                other.pricingTypeId == pricingTypeId) &&
            (identical(other.customerGrouCode, customerGrouCode) ||
                other.customerGrouCode == customerGrouCode) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.pricingGroupName, pricingGroupName) ||
                other.pricingGroupName == pricingGroupName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, pricingCroupCode,
      pricingTypeId, customerGrouCode, createdBy, pricingGroupName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PricingTypeListModelCopyWith<_$_PricingTypeListModel> get copyWith =>
      __$$_PricingTypeListModelCopyWithImpl<_$_PricingTypeListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingTypeListModelToJson(
      this,
    );
  }
}

abstract class _PricingTypeListModel implements PricingTypeListModel {
  const factory _PricingTypeListModel(
      {final String? description,
      @JsonKey(name: "pricing_group_code")
          final String? pricingCroupCode,
      @JsonKey(name: "pricing_type_id")
          final int? pricingTypeId,
      @JsonKey(name: "customer_group_code")
          final String? customerGrouCode,
      @JsonKey(name: "created_by")
          final String? createdBy,
      @JsonKey(name: "pricing_group_name")
          final String? pricingGroupName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_PricingTypeListModel;

  factory _PricingTypeListModel.fromJson(Map<String, dynamic> json) =
      _$_PricingTypeListModel.fromJson;

  @override
  String? get description;
  @override
  @JsonKey(name: "pricing_group_code")
  String? get pricingCroupCode;
  @override
  @JsonKey(name: "pricing_type_id")
  int? get pricingTypeId;
  @override
  @JsonKey(name: "customer_group_code")
  String? get customerGrouCode;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_PricingTypeListModelCopyWith<_$_PricingTypeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ListingChnanelTableModel _$ListingChnanelTableModelFromJson(
    Map<String, dynamic> json) {
  return _ListingChnanelTableModel.fromJson(json);
}

/// @nodoc
mixin _$ListingChnanelTableModel {
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "gp_percentage")
  double? get gpPrecentage => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_group_id")
  int? get pricingGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_gp_type")
  String? get pricingGPType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingChnanelTableModelCopyWith<ListingChnanelTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingChnanelTableModelCopyWith<$Res> {
  factory $ListingChnanelTableModelCopyWith(ListingChnanelTableModel value,
          $Res Function(ListingChnanelTableModel) then) =
      _$ListingChnanelTableModelCopyWithImpl<$Res, ListingChnanelTableModel>;
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "gp_percentage") double? gpPrecentage,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "pricing_group_id") int? pricingGroupId,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "pricing_gp_type") String? pricingGPType,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$ListingChnanelTableModelCopyWithImpl<$Res,
        $Val extends ListingChnanelTableModel>
    implements $ListingChnanelTableModelCopyWith<$Res> {
  _$ListingChnanelTableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? gpPrecentage = freezed,
    Object? sellingPrice = freezed,
    Object? pricingGroupId = freezed,
    Object? pricingTypeName = freezed,
    Object? pricingGroupName = freezed,
    Object? pricingGPType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gpPrecentage: freezed == gpPrecentage
          ? _value.gpPrecentage
          : gpPrecentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricingGroupId: freezed == pricingGroupId
          ? _value.pricingGroupId
          : pricingGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeName: freezed == pricingTypeName
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: freezed == pricingGroupName
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGPType: freezed == pricingGPType
          ? _value.pricingGPType
          : pricingGPType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListingChnanelTableModelCopyWith<$Res>
    implements $ListingChnanelTableModelCopyWith<$Res> {
  factory _$$_ListingChnanelTableModelCopyWith(
          _$_ListingChnanelTableModel value,
          $Res Function(_$_ListingChnanelTableModel) then) =
      __$$_ListingChnanelTableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "gp_percentage") double? gpPrecentage,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "pricing_group_id") int? pricingGroupId,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "pricing_gp_type") String? pricingGPType,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_ListingChnanelTableModelCopyWithImpl<$Res>
    extends _$ListingChnanelTableModelCopyWithImpl<$Res,
        _$_ListingChnanelTableModel>
    implements _$$_ListingChnanelTableModelCopyWith<$Res> {
  __$$_ListingChnanelTableModelCopyWithImpl(_$_ListingChnanelTableModel _value,
      $Res Function(_$_ListingChnanelTableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? gpPrecentage = freezed,
    Object? sellingPrice = freezed,
    Object? pricingGroupId = freezed,
    Object? pricingTypeName = freezed,
    Object? pricingGroupName = freezed,
    Object? pricingGPType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ListingChnanelTableModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gpPrecentage: freezed == gpPrecentage
          ? _value.gpPrecentage
          : gpPrecentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricingGroupId: freezed == pricingGroupId
          ? _value.pricingGroupId
          : pricingGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeName: freezed == pricingTypeName
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: freezed == pricingGroupName
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGPType: freezed == pricingGPType
          ? _value.pricingGPType
          : pricingGPType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingChnanelTableModel implements _ListingChnanelTableModel {
  const _$_ListingChnanelTableModel(
      {this.description,
      this.id,
      @JsonKey(name: "gp_percentage") this.gpPrecentage,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "pricing_group_id") this.pricingGroupId,
      @JsonKey(name: "pricing_type_name") this.pricingTypeName,
      @JsonKey(name: "pricing_group_name") this.pricingGroupName,
      @JsonKey(name: "pricing_gp_type") this.pricingGPType,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ListingChnanelTableModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListingChnanelTableModelFromJson(json);

  @override
  final String? description;
  @override
  final int? id;
  @override
  @JsonKey(name: "gp_percentage")
  final double? gpPrecentage;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "pricing_group_id")
  final int? pricingGroupId;
  @override
  @JsonKey(name: "pricing_type_name")
  final String? pricingTypeName;
  @override
  @JsonKey(name: "pricing_group_name")
  final String? pricingGroupName;
  @override
  @JsonKey(name: "pricing_gp_type")
  final String? pricingGPType;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'ListingChnanelTableModel(description: $description, id: $id, gpPrecentage: $gpPrecentage, sellingPrice: $sellingPrice, pricingGroupId: $pricingGroupId, pricingTypeName: $pricingTypeName, pricingGroupName: $pricingGroupName, pricingGPType: $pricingGPType, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingChnanelTableModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gpPrecentage, gpPrecentage) ||
                other.gpPrecentage == gpPrecentage) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.pricingGroupId, pricingGroupId) ||
                other.pricingGroupId == pricingGroupId) &&
            (identical(other.pricingTypeName, pricingTypeName) ||
                other.pricingTypeName == pricingTypeName) &&
            (identical(other.pricingGroupName, pricingGroupName) ||
                other.pricingGroupName == pricingGroupName) &&
            (identical(other.pricingGPType, pricingGPType) ||
                other.pricingGPType == pricingGPType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      id,
      gpPrecentage,
      sellingPrice,
      pricingGroupId,
      pricingTypeName,
      pricingGroupName,
      pricingGPType,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListingChnanelTableModelCopyWith<_$_ListingChnanelTableModel>
      get copyWith => __$$_ListingChnanelTableModelCopyWithImpl<
          _$_ListingChnanelTableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingChnanelTableModelToJson(
      this,
    );
  }
}

abstract class _ListingChnanelTableModel implements ListingChnanelTableModel {
  const factory _ListingChnanelTableModel(
      {final String? description,
      final int? id,
      @JsonKey(name: "gp_percentage")
          final double? gpPrecentage,
      @JsonKey(name: "selling_price")
          final double? sellingPrice,
      @JsonKey(name: "pricing_group_id")
          final int? pricingGroupId,
      @JsonKey(name: "pricing_type_name")
          final String? pricingTypeName,
      @JsonKey(name: "pricing_group_name")
          final String? pricingGroupName,
      @JsonKey(name: "pricing_gp_type")
          final String? pricingGPType,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_ListingChnanelTableModel;

  factory _ListingChnanelTableModel.fromJson(Map<String, dynamic> json) =
      _$_ListingChnanelTableModel.fromJson;

  @override
  String? get description;
  @override
  int? get id;
  @override
  @JsonKey(name: "gp_percentage")
  double? get gpPrecentage;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "pricing_group_id")
  int? get pricingGroupId;
  @override
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName;
  @override
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName;
  @override
  @JsonKey(name: "pricing_gp_type")
  String? get pricingGPType;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ListingChnanelTableModelCopyWith<_$_ListingChnanelTableModel>
      get copyWith => throw _privateConstructorUsedError;
}
