// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'costingmethodtypelisting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostingMetodTypePostModel _$CostingMetodTypePostModelFromJson(
    Map<String, dynamic> json) {
  return _CostingMetodTypePostModel.fromJson(json);
}

/// @nodoc
class _$CostingMetodTypePostModelTearOff {
  const _$CostingMetodTypePostModelTearOff();

  _CostingMetodTypePostModel call(
      {String? description,
      int? id,
      @JsonKey(name: "type_code") String? typeCode,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _CostingMetodTypePostModel(
      description: description,
      id: id,
      typeCode: typeCode,
      typeName: typeName,
      isActive: isActive,
    );
  }

  CostingMetodTypePostModel fromJson(Map<String, Object> json) {
    return CostingMetodTypePostModel.fromJson(json);
  }
}

/// @nodoc
const $CostingMetodTypePostModel = _$CostingMetodTypePostModelTearOff();

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
      _$CostingMetodTypePostModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "type_code") String? typeCode,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$CostingMetodTypePostModelCopyWithImpl<$Res>
    implements $CostingMetodTypePostModelCopyWith<$Res> {
  _$CostingMetodTypePostModelCopyWithImpl(this._value, this._then);

  final CostingMetodTypePostModel _value;
  // ignore: unused_field
  final $Res Function(CostingMetodTypePostModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCode: typeCode == freezed
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CostingMetodTypePostModelCopyWith<$Res>
    implements $CostingMetodTypePostModelCopyWith<$Res> {
  factory _$CostingMetodTypePostModelCopyWith(_CostingMetodTypePostModel value,
          $Res Function(_CostingMetodTypePostModel) then) =
      __$CostingMetodTypePostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "type_code") String? typeCode,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$CostingMetodTypePostModelCopyWithImpl<$Res>
    extends _$CostingMetodTypePostModelCopyWithImpl<$Res>
    implements _$CostingMetodTypePostModelCopyWith<$Res> {
  __$CostingMetodTypePostModelCopyWithImpl(_CostingMetodTypePostModel _value,
      $Res Function(_CostingMetodTypePostModel) _then)
      : super(_value, (v) => _then(v as _CostingMetodTypePostModel));

  @override
  _CostingMetodTypePostModel get _value =>
      super._value as _CostingMetodTypePostModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_CostingMetodTypePostModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCode: typeCode == freezed
          ? _value.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
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
        (other is _CostingMetodTypePostModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.typeCode, typeCode) ||
                const DeepCollectionEquality()
                    .equals(other.typeCode, typeCode)) &&
            (identical(other.typeName, typeName) ||
                const DeepCollectionEquality()
                    .equals(other.typeName, typeName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(typeCode) ^
      const DeepCollectionEquality().hash(typeName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$CostingMetodTypePostModelCopyWith<_CostingMetodTypePostModel>
      get copyWith =>
          __$CostingMetodTypePostModelCopyWithImpl<_CostingMetodTypePostModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostingMetodTypePostModelToJson(this);
  }
}

abstract class _CostingMetodTypePostModel implements CostingMetodTypePostModel {
  const factory _CostingMetodTypePostModel(
          {String? description,
          int? id,
          @JsonKey(name: "type_code") String? typeCode,
          @JsonKey(name: "type_name") String? typeName,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_CostingMetodTypePostModel;

  factory _CostingMetodTypePostModel.fromJson(Map<String, dynamic> json) =
      _$_CostingMetodTypePostModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type_code")
  String? get typeCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type_name")
  String? get typeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostingMetodTypePostModelCopyWith<_CostingMetodTypePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

CostingCreatePostModel _$CostingCreatePostModelFromJson(
    Map<String, dynamic> json) {
  return _CostingCreatePostModel.fromJson(json);
}

/// @nodoc
class _$CostingCreatePostModelTearOff {
  const _$CostingCreatePostModelTearOff();

  _CostingCreatePostModel call(
      {String? description,
      int? id,
      @JsonKey(name: "method_type_id") int? methodTypeId,
      @JsonKey(name: "costing_method_type_name") String? costingMethodTypeName,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "method_name") String? methodName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _CostingCreatePostModel(
      description: description,
      id: id,
      methodTypeId: methodTypeId,
      costingMethodTypeName: costingMethodTypeName,
      methodCode: methodCode,
      methodName: methodName,
      isActive: isActive,
    );
  }

  CostingCreatePostModel fromJson(Map<String, Object> json) {
    return CostingCreatePostModel.fromJson(json);
  }
}

/// @nodoc
const $CostingCreatePostModel = _$CostingCreatePostModelTearOff();

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
      _$CostingCreatePostModelCopyWithImpl<$Res>;
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
class _$CostingCreatePostModelCopyWithImpl<$Res>
    implements $CostingCreatePostModelCopyWith<$Res> {
  _$CostingCreatePostModelCopyWithImpl(this._value, this._then);

  final CostingCreatePostModel _value;
  // ignore: unused_field
  final $Res Function(CostingCreatePostModel) _then;

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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTypeId: methodTypeId == freezed
          ? _value.methodTypeId
          : methodTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      costingMethodTypeName: costingMethodTypeName == freezed
          ? _value.costingMethodTypeName
          : costingMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      methodCode: methodCode == freezed
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methodName: methodName == freezed
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CostingCreatePostModelCopyWith<$Res>
    implements $CostingCreatePostModelCopyWith<$Res> {
  factory _$CostingCreatePostModelCopyWith(_CostingCreatePostModel value,
          $Res Function(_CostingCreatePostModel) then) =
      __$CostingCreatePostModelCopyWithImpl<$Res>;
  @override
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
class __$CostingCreatePostModelCopyWithImpl<$Res>
    extends _$CostingCreatePostModelCopyWithImpl<$Res>
    implements _$CostingCreatePostModelCopyWith<$Res> {
  __$CostingCreatePostModelCopyWithImpl(_CostingCreatePostModel _value,
      $Res Function(_CostingCreatePostModel) _then)
      : super(_value, (v) => _then(v as _CostingCreatePostModel));

  @override
  _CostingCreatePostModel get _value => super._value as _CostingCreatePostModel;

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
    return _then(_CostingCreatePostModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTypeId: methodTypeId == freezed
          ? _value.methodTypeId
          : methodTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      costingMethodTypeName: costingMethodTypeName == freezed
          ? _value.costingMethodTypeName
          : costingMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      methodCode: methodCode == freezed
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methodName: methodName == freezed
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
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
        (other is _CostingCreatePostModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.methodTypeId, methodTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.methodTypeId, methodTypeId)) &&
            (identical(other.costingMethodTypeName, costingMethodTypeName) ||
                const DeepCollectionEquality().equals(
                    other.costingMethodTypeName, costingMethodTypeName)) &&
            (identical(other.methodCode, methodCode) ||
                const DeepCollectionEquality()
                    .equals(other.methodCode, methodCode)) &&
            (identical(other.methodName, methodName) ||
                const DeepCollectionEquality()
                    .equals(other.methodName, methodName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(methodTypeId) ^
      const DeepCollectionEquality().hash(costingMethodTypeName) ^
      const DeepCollectionEquality().hash(methodCode) ^
      const DeepCollectionEquality().hash(methodName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$CostingCreatePostModelCopyWith<_CostingCreatePostModel> get copyWith =>
      __$CostingCreatePostModelCopyWithImpl<_CostingCreatePostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostingCreatePostModelToJson(this);
  }
}

abstract class _CostingCreatePostModel implements CostingCreatePostModel {
  const factory _CostingCreatePostModel(
      {String? description,
      int? id,
      @JsonKey(name: "method_type_id")
          int? methodTypeId,
      @JsonKey(name: "costing_method_type_name")
          String? costingMethodTypeName,
      @JsonKey(name: "method_code")
          String? methodCode,
      @JsonKey(name: "method_name")
          String? methodName,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive}) = _$_CostingCreatePostModel;

  factory _CostingCreatePostModel.fromJson(Map<String, dynamic> json) =
      _$_CostingCreatePostModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "method_type_id")
  int? get methodTypeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "costing_method_type_name")
  String? get costingMethodTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "method_code")
  String? get methodCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "method_name")
  String? get methodName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostingCreatePostModelCopyWith<_CostingCreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingGroupListModel _$PricingGroupListModelFromJson(
    Map<String, dynamic> json) {
  return _PricingGroupListModel.fromJson(json);
}

/// @nodoc
class _$PricingGroupListModelTearOff {
  const _$PricingGroupListModelTearOff();

  _PricingGroupListModel call(
      {String? description,
      int? id,
      @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _PricingGroupListModel(
      description: description,
      id: id,
      pricingTypeCode: pricingTypeCode,
      createdBy: createdBy,
      pricingTypeName: pricingTypeName,
      isActive: isActive,
    );
  }

  PricingGroupListModel fromJson(Map<String, Object> json) {
    return PricingGroupListModel.fromJson(json);
  }
}

/// @nodoc
const $PricingGroupListModel = _$PricingGroupListModelTearOff();

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
      _$PricingGroupListModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$PricingGroupListModelCopyWithImpl<$Res>
    implements $PricingGroupListModelCopyWith<$Res> {
  _$PricingGroupListModelCopyWithImpl(this._value, this._then);

  final PricingGroupListModel _value;
  // ignore: unused_field
  final $Res Function(PricingGroupListModel) _then;

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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeCode: pricingTypeCode == freezed
          ? _value.pricingTypeCode
          : pricingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeName: pricingTypeName == freezed
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PricingGroupListModelCopyWith<$Res>
    implements $PricingGroupListModelCopyWith<$Res> {
  factory _$PricingGroupListModelCopyWith(_PricingGroupListModel value,
          $Res Function(_PricingGroupListModel) then) =
      __$PricingGroupListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      int? id,
      @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$PricingGroupListModelCopyWithImpl<$Res>
    extends _$PricingGroupListModelCopyWithImpl<$Res>
    implements _$PricingGroupListModelCopyWith<$Res> {
  __$PricingGroupListModelCopyWithImpl(_PricingGroupListModel _value,
      $Res Function(_PricingGroupListModel) _then)
      : super(_value, (v) => _then(v as _PricingGroupListModel));

  @override
  _PricingGroupListModel get _value => super._value as _PricingGroupListModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? pricingTypeCode = freezed,
    Object? createdBy = freezed,
    Object? pricingTypeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_PricingGroupListModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeCode: pricingTypeCode == freezed
          ? _value.pricingTypeCode
          : pricingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeName: pricingTypeName == freezed
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
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
        (other is _PricingGroupListModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pricingTypeCode, pricingTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.pricingTypeCode, pricingTypeCode)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.pricingTypeName, pricingTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.pricingTypeName, pricingTypeName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pricingTypeCode) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(pricingTypeName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$PricingGroupListModelCopyWith<_PricingGroupListModel> get copyWith =>
      __$PricingGroupListModelCopyWithImpl<_PricingGroupListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingGroupListModelToJson(this);
  }
}

abstract class _PricingGroupListModel implements PricingGroupListModel {
  const factory _PricingGroupListModel(
          {String? description,
          int? id,
          @JsonKey(name: "pricing_type_code") String? pricingTypeCode,
          @JsonKey(name: "created_by") String? createdBy,
          @JsonKey(name: "pricing_type_name") String? pricingTypeName,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_PricingGroupListModel;

  factory _PricingGroupListModel.fromJson(Map<String, dynamic> json) =
      _$_PricingGroupListModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_type_code")
  String? get pricingTypeCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PricingGroupListModelCopyWith<_PricingGroupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingTypeListModel _$PricingTypeListModelFromJson(Map<String, dynamic> json) {
  return _PricingTypeListModel.fromJson(json);
}

/// @nodoc
class _$PricingTypeListModelTearOff {
  const _$PricingTypeListModelTearOff();

  _PricingTypeListModel call(
      {String? description,
      @JsonKey(name: "pricing_group_code") String? pricingCroupCode,
      @JsonKey(name: "pricing_type_id") int? pricingTypeId,
      @JsonKey(name: "customer_group_code") String? customerGrouCode,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _PricingTypeListModel(
      description: description,
      pricingCroupCode: pricingCroupCode,
      pricingTypeId: pricingTypeId,
      customerGrouCode: customerGrouCode,
      createdBy: createdBy,
      pricingGroupName: pricingGroupName,
      isActive: isActive,
    );
  }

  PricingTypeListModel fromJson(Map<String, Object> json) {
    return PricingTypeListModel.fromJson(json);
  }
}

/// @nodoc
const $PricingTypeListModel = _$PricingTypeListModelTearOff();

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
      _$PricingTypeListModelCopyWithImpl<$Res>;
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
class _$PricingTypeListModelCopyWithImpl<$Res>
    implements $PricingTypeListModelCopyWith<$Res> {
  _$PricingTypeListModelCopyWithImpl(this._value, this._then);

  final PricingTypeListModel _value;
  // ignore: unused_field
  final $Res Function(PricingTypeListModel) _then;

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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingCroupCode: pricingCroupCode == freezed
          ? _value.pricingCroupCode
          : pricingCroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeId: pricingTypeId == freezed
          ? _value.pricingTypeId
          : pricingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGrouCode: customerGrouCode == freezed
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: pricingGroupName == freezed
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PricingTypeListModelCopyWith<$Res>
    implements $PricingTypeListModelCopyWith<$Res> {
  factory _$PricingTypeListModelCopyWith(_PricingTypeListModel value,
          $Res Function(_PricingTypeListModel) then) =
      __$PricingTypeListModelCopyWithImpl<$Res>;
  @override
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
class __$PricingTypeListModelCopyWithImpl<$Res>
    extends _$PricingTypeListModelCopyWithImpl<$Res>
    implements _$PricingTypeListModelCopyWith<$Res> {
  __$PricingTypeListModelCopyWithImpl(
      _PricingTypeListModel _value, $Res Function(_PricingTypeListModel) _then)
      : super(_value, (v) => _then(v as _PricingTypeListModel));

  @override
  _PricingTypeListModel get _value => super._value as _PricingTypeListModel;

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
    return _then(_PricingTypeListModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingCroupCode: pricingCroupCode == freezed
          ? _value.pricingCroupCode
          : pricingCroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingTypeId: pricingTypeId == freezed
          ? _value.pricingTypeId
          : pricingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGrouCode: customerGrouCode == freezed
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: pricingGroupName == freezed
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
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
        (other is _PricingTypeListModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.pricingCroupCode, pricingCroupCode) ||
                const DeepCollectionEquality()
                    .equals(other.pricingCroupCode, pricingCroupCode)) &&
            (identical(other.pricingTypeId, pricingTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.pricingTypeId, pricingTypeId)) &&
            (identical(other.customerGrouCode, customerGrouCode) ||
                const DeepCollectionEquality()
                    .equals(other.customerGrouCode, customerGrouCode)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.pricingGroupName, pricingGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.pricingGroupName, pricingGroupName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(pricingCroupCode) ^
      const DeepCollectionEquality().hash(pricingTypeId) ^
      const DeepCollectionEquality().hash(customerGrouCode) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(pricingGroupName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$PricingTypeListModelCopyWith<_PricingTypeListModel> get copyWith =>
      __$PricingTypeListModelCopyWithImpl<_PricingTypeListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingTypeListModelToJson(this);
  }
}

abstract class _PricingTypeListModel implements PricingTypeListModel {
  const factory _PricingTypeListModel(
          {String? description,
          @JsonKey(name: "pricing_group_code") String? pricingCroupCode,
          @JsonKey(name: "pricing_type_id") int? pricingTypeId,
          @JsonKey(name: "customer_group_code") String? customerGrouCode,
          @JsonKey(name: "created_by") String? createdBy,
          @JsonKey(name: "pricing_group_name") String? pricingGroupName,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_PricingTypeListModel;

  factory _PricingTypeListModel.fromJson(Map<String, dynamic> json) =
      _$_PricingTypeListModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_group_code")
  String? get pricingCroupCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_type_id")
  int? get pricingTypeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_group_code")
  String? get customerGrouCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PricingTypeListModelCopyWith<_PricingTypeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ListingChnanelTableModel _$ListingChnanelTableModelFromJson(
    Map<String, dynamic> json) {
  return _ListingChnanelTableModel.fromJson(json);
}

/// @nodoc
class _$ListingChnanelTableModelTearOff {
  const _$ListingChnanelTableModelTearOff();

  _ListingChnanelTableModel call(
      {String? description,
      int? id,
      @JsonKey(name: "gp_percentage") double? gpPrecentage,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "pricing_group_id") int? pricingGroupId,
      @JsonKey(name: "pricing_type_name") String? pricingTypeName,
      @JsonKey(name: "pricing_group_name") String? pricingGroupName,
      @JsonKey(name: "pricing_gp_type") String? pricingGPType,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _ListingChnanelTableModel(
      description: description,
      id: id,
      gpPrecentage: gpPrecentage,
      sellingPrice: sellingPrice,
      pricingGroupId: pricingGroupId,
      pricingTypeName: pricingTypeName,
      pricingGroupName: pricingGroupName,
      pricingGPType: pricingGPType,
      isActive: isActive,
    );
  }

  ListingChnanelTableModel fromJson(Map<String, Object> json) {
    return ListingChnanelTableModel.fromJson(json);
  }
}

/// @nodoc
const $ListingChnanelTableModel = _$ListingChnanelTableModelTearOff();

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
      _$ListingChnanelTableModelCopyWithImpl<$Res>;
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
class _$ListingChnanelTableModelCopyWithImpl<$Res>
    implements $ListingChnanelTableModelCopyWith<$Res> {
  _$ListingChnanelTableModelCopyWithImpl(this._value, this._then);

  final ListingChnanelTableModel _value;
  // ignore: unused_field
  final $Res Function(ListingChnanelTableModel) _then;

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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gpPrecentage: gpPrecentage == freezed
          ? _value.gpPrecentage
          : gpPrecentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricingGroupId: pricingGroupId == freezed
          ? _value.pricingGroupId
          : pricingGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeName: pricingTypeName == freezed
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: pricingGroupName == freezed
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGPType: pricingGPType == freezed
          ? _value.pricingGPType
          : pricingGPType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ListingChnanelTableModelCopyWith<$Res>
    implements $ListingChnanelTableModelCopyWith<$Res> {
  factory _$ListingChnanelTableModelCopyWith(_ListingChnanelTableModel value,
          $Res Function(_ListingChnanelTableModel) then) =
      __$ListingChnanelTableModelCopyWithImpl<$Res>;
  @override
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
class __$ListingChnanelTableModelCopyWithImpl<$Res>
    extends _$ListingChnanelTableModelCopyWithImpl<$Res>
    implements _$ListingChnanelTableModelCopyWith<$Res> {
  __$ListingChnanelTableModelCopyWithImpl(_ListingChnanelTableModel _value,
      $Res Function(_ListingChnanelTableModel) _then)
      : super(_value, (v) => _then(v as _ListingChnanelTableModel));

  @override
  _ListingChnanelTableModel get _value =>
      super._value as _ListingChnanelTableModel;

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
    return _then(_ListingChnanelTableModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gpPrecentage: gpPrecentage == freezed
          ? _value.gpPrecentage
          : gpPrecentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricingGroupId: pricingGroupId == freezed
          ? _value.pricingGroupId
          : pricingGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingTypeName: pricingTypeName == freezed
          ? _value.pricingTypeName
          : pricingTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGroupName: pricingGroupName == freezed
          ? _value.pricingGroupName
          : pricingGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingGPType: pricingGPType == freezed
          ? _value.pricingGPType
          : pricingGPType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
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
        (other is _ListingChnanelTableModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.gpPrecentage, gpPrecentage) ||
                const DeepCollectionEquality()
                    .equals(other.gpPrecentage, gpPrecentage)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
            (identical(other.pricingGroupId, pricingGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.pricingGroupId, pricingGroupId)) &&
            (identical(other.pricingTypeName, pricingTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.pricingTypeName, pricingTypeName)) &&
            (identical(other.pricingGroupName, pricingGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.pricingGroupName, pricingGroupName)) &&
            (identical(other.pricingGPType, pricingGPType) ||
                const DeepCollectionEquality()
                    .equals(other.pricingGPType, pricingGPType)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(gpPrecentage) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(pricingGroupId) ^
      const DeepCollectionEquality().hash(pricingTypeName) ^
      const DeepCollectionEquality().hash(pricingGroupName) ^
      const DeepCollectionEquality().hash(pricingGPType) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$ListingChnanelTableModelCopyWith<_ListingChnanelTableModel> get copyWith =>
      __$ListingChnanelTableModelCopyWithImpl<_ListingChnanelTableModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingChnanelTableModelToJson(this);
  }
}

abstract class _ListingChnanelTableModel implements ListingChnanelTableModel {
  const factory _ListingChnanelTableModel(
          {String? description,
          int? id,
          @JsonKey(name: "gp_percentage") double? gpPrecentage,
          @JsonKey(name: "selling_price") double? sellingPrice,
          @JsonKey(name: "pricing_group_id") int? pricingGroupId,
          @JsonKey(name: "pricing_type_name") String? pricingTypeName,
          @JsonKey(name: "pricing_group_name") String? pricingGroupName,
          @JsonKey(name: "pricing_gp_type") String? pricingGPType,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_ListingChnanelTableModel;

  factory _ListingChnanelTableModel.fromJson(Map<String, dynamic> json) =
      _$_ListingChnanelTableModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "gp_percentage")
  double? get gpPrecentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_group_id")
  int? get pricingGroupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_type_name")
  String? get pricingTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_group_name")
  String? get pricingGroupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_gp_type")
  String? get pricingGPType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingChnanelTableModelCopyWith<_ListingChnanelTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
