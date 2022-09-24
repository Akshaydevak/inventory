// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantframeworkpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantFrameworkPostModel _$VariantFrameworkPostModelFromJson(
    Map<String, dynamic> json) {
  return _VariantFrameworkPostModel.fromJson(json);
}

/// @nodoc
class _$VariantFrameworkPostModelTearOff {
  const _$VariantFrameworkPostModelTearOff();

  _VariantFrameworkPostModel call(
      {String? name,
      String? barcode,
      String? description,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "variant_lines_list")
          List<VariantLineListModel>? variantLineList,
      bool? purchaseBlock}) {
    return _VariantFrameworkPostModel(
      name: name,
      barcode: barcode,
      description: description,
      categoryId: categoryId,
      variantLineList: variantLineList,
      purchaseBlock: purchaseBlock,
    );
  }

  VariantFrameworkPostModel fromJson(Map<String, Object> json) {
    return VariantFrameworkPostModel.fromJson(json);
  }
}

/// @nodoc
const $VariantFrameworkPostModel = _$VariantFrameworkPostModelTearOff();

/// @nodoc
mixin _$VariantFrameworkPostModel {
  String? get name => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_lines_list")
  List<VariantLineListModel>? get variantLineList =>
      throw _privateConstructorUsedError;
  bool? get purchaseBlock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantFrameworkPostModelCopyWith<VariantFrameworkPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantFrameworkPostModelCopyWith<$Res> {
  factory $VariantFrameworkPostModelCopyWith(VariantFrameworkPostModel value,
          $Res Function(VariantFrameworkPostModel) then) =
      _$VariantFrameworkPostModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? barcode,
      String? description,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "variant_lines_list")
          List<VariantLineListModel>? variantLineList,
      bool? purchaseBlock});
}

/// @nodoc
class _$VariantFrameworkPostModelCopyWithImpl<$Res>
    implements $VariantFrameworkPostModelCopyWith<$Res> {
  _$VariantFrameworkPostModelCopyWithImpl(this._value, this._then);

  final VariantFrameworkPostModel _value;
  // ignore: unused_field
  final $Res Function(VariantFrameworkPostModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? variantLineList = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantLineList: variantLineList == freezed
          ? _value.variantLineList
          : variantLineList // ignore: cast_nullable_to_non_nullable
              as List<VariantLineListModel>?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$VariantFrameworkPostModelCopyWith<$Res>
    implements $VariantFrameworkPostModelCopyWith<$Res> {
  factory _$VariantFrameworkPostModelCopyWith(_VariantFrameworkPostModel value,
          $Res Function(_VariantFrameworkPostModel) then) =
      __$VariantFrameworkPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? barcode,
      String? description,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "variant_lines_list")
          List<VariantLineListModel>? variantLineList,
      bool? purchaseBlock});
}

/// @nodoc
class __$VariantFrameworkPostModelCopyWithImpl<$Res>
    extends _$VariantFrameworkPostModelCopyWithImpl<$Res>
    implements _$VariantFrameworkPostModelCopyWith<$Res> {
  __$VariantFrameworkPostModelCopyWithImpl(_VariantFrameworkPostModel _value,
      $Res Function(_VariantFrameworkPostModel) _then)
      : super(_value, (v) => _then(v as _VariantFrameworkPostModel));

  @override
  _VariantFrameworkPostModel get _value =>
      super._value as _VariantFrameworkPostModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? variantLineList = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_VariantFrameworkPostModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantLineList: variantLineList == freezed
          ? _value.variantLineList
          : variantLineList // ignore: cast_nullable_to_non_nullable
              as List<VariantLineListModel>?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantFrameworkPostModel implements _VariantFrameworkPostModel {
  const _$_VariantFrameworkPostModel(
      {this.name,
      this.barcode,
      this.description,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "variant_lines_list") this.variantLineList,
      this.purchaseBlock});

  factory _$_VariantFrameworkPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFrameworkPostModelFromJson(json);

  @override
  final String? name;
  @override
  final String? barcode;
  @override
  final String? description;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "variant_lines_list")
  final List<VariantLineListModel>? variantLineList;
  @override
  final bool? purchaseBlock;

  @override
  String toString() {
    return 'VariantFrameworkPostModel(name: $name, barcode: $barcode, description: $description, categoryId: $categoryId, variantLineList: $variantLineList, purchaseBlock: $purchaseBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantFrameworkPostModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.variantLineList, variantLineList) ||
                const DeepCollectionEquality()
                    .equals(other.variantLineList, variantLineList)) &&
            (identical(other.purchaseBlock, purchaseBlock) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseBlock, purchaseBlock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(variantLineList) ^
      const DeepCollectionEquality().hash(purchaseBlock);

  @JsonKey(ignore: true)
  @override
  _$VariantFrameworkPostModelCopyWith<_VariantFrameworkPostModel>
      get copyWith =>
          __$VariantFrameworkPostModelCopyWithImpl<_VariantFrameworkPostModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantFrameworkPostModelToJson(this);
  }
}

abstract class _VariantFrameworkPostModel implements VariantFrameworkPostModel {
  const factory _VariantFrameworkPostModel(
      {String? name,
      String? barcode,
      String? description,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "variant_lines_list")
          List<VariantLineListModel>? variantLineList,
      bool? purchaseBlock}) = _$_VariantFrameworkPostModel;

  factory _VariantFrameworkPostModel.fromJson(Map<String, dynamic> json) =
      _$_VariantFrameworkPostModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_lines_list")
  List<VariantLineListModel>? get variantLineList =>
      throw _privateConstructorUsedError;
  @override
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantFrameworkPostModelCopyWith<_VariantFrameworkPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

VariantLineListModel _$VariantLineListModelFromJson(Map<String, dynamic> json) {
  return _VariantLineListModel.fromJson(json);
}

/// @nodoc
class _$VariantLineListModelTearOff {
  const _$VariantLineListModelTearOff();

  _VariantLineListModel call(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock}) {
    return _VariantLineListModel(
      attributeId: attributeId,
      values: values,
      purchaseBlock: purchaseBlock,
    );
  }

  VariantLineListModel fromJson(Map<String, Object> json) {
    return VariantLineListModel.fromJson(json);
  }
}

/// @nodoc
const $VariantLineListModel = _$VariantLineListModelTearOff();

/// @nodoc
mixin _$VariantLineListModel {
  @JsonKey(name: "attribute_id")
  int? get attributeId => throw _privateConstructorUsedError;
  List<String>? get values => throw _privateConstructorUsedError;
  bool? get purchaseBlock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantLineListModelCopyWith<VariantLineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantLineListModelCopyWith<$Res> {
  factory $VariantLineListModelCopyWith(VariantLineListModel value,
          $Res Function(VariantLineListModel) then) =
      _$VariantLineListModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock});
}

/// @nodoc
class _$VariantLineListModelCopyWithImpl<$Res>
    implements $VariantLineListModelCopyWith<$Res> {
  _$VariantLineListModelCopyWithImpl(this._value, this._then);

  final VariantLineListModel _value;
  // ignore: unused_field
  final $Res Function(VariantLineListModel) _then;

  @override
  $Res call({
    Object? attributeId = freezed,
    Object? values = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_value.copyWith(
      attributeId: attributeId == freezed
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$VariantLineListModelCopyWith<$Res>
    implements $VariantLineListModelCopyWith<$Res> {
  factory _$VariantLineListModelCopyWith(_VariantLineListModel value,
          $Res Function(_VariantLineListModel) then) =
      __$VariantLineListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock});
}

/// @nodoc
class __$VariantLineListModelCopyWithImpl<$Res>
    extends _$VariantLineListModelCopyWithImpl<$Res>
    implements _$VariantLineListModelCopyWith<$Res> {
  __$VariantLineListModelCopyWithImpl(
      _VariantLineListModel _value, $Res Function(_VariantLineListModel) _then)
      : super(_value, (v) => _then(v as _VariantLineListModel));

  @override
  _VariantLineListModel get _value => super._value as _VariantLineListModel;

  @override
  $Res call({
    Object? attributeId = freezed,
    Object? values = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_VariantLineListModel(
      attributeId: attributeId == freezed
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantLineListModel implements _VariantLineListModel {
  const _$_VariantLineListModel(
      {@JsonKey(name: "attribute_id") this.attributeId,
      this.values,
      this.purchaseBlock});

  factory _$_VariantLineListModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantLineListModelFromJson(json);

  @override
  @JsonKey(name: "attribute_id")
  final int? attributeId;
  @override
  final List<String>? values;
  @override
  final bool? purchaseBlock;

  @override
  String toString() {
    return 'VariantLineListModel(attributeId: $attributeId, values: $values, purchaseBlock: $purchaseBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantLineListModel &&
            (identical(other.attributeId, attributeId) ||
                const DeepCollectionEquality()
                    .equals(other.attributeId, attributeId)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.purchaseBlock, purchaseBlock) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseBlock, purchaseBlock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attributeId) ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(purchaseBlock);

  @JsonKey(ignore: true)
  @override
  _$VariantLineListModelCopyWith<_VariantLineListModel> get copyWith =>
      __$VariantLineListModelCopyWithImpl<_VariantLineListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantLineListModelToJson(this);
  }
}

abstract class _VariantLineListModel implements VariantLineListModel {
  const factory _VariantLineListModel(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock}) = _$_VariantLineListModel;

  factory _VariantLineListModel.fromJson(Map<String, dynamic> json) =
      _$_VariantLineListModel.fromJson;

  @override
  @JsonKey(name: "attribute_id")
  int? get attributeId => throw _privateConstructorUsedError;
  @override
  List<String>? get values => throw _privateConstructorUsedError;
  @override
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantLineListModelCopyWith<_VariantLineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeListModel _$AttributeListModelFromJson(Map<String, dynamic> json) {
  return _AttributeListModel.fromJson(json);
}

/// @nodoc
class _$AttributeListModelTearOff {
  const _$AttributeListModelTearOff();

  _AttributeListModel call(
      {int? id,
      String? code,
      @JsonKey(name: "attribute_type") String? attributeType,
      @JsonKey(name: "attribute_name") String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _AttributeListModel(
      id: id,
      code: code,
      attributeType: attributeType,
      attributeName: attributeName,
      isActive: isActive,
    );
  }

  AttributeListModel fromJson(Map<String, Object> json) {
    return AttributeListModel.fromJson(json);
  }
}

/// @nodoc
const $AttributeListModel = _$AttributeListModelTearOff();

/// @nodoc
mixin _$AttributeListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_type")
  String? get attributeType => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_name")
  String? get attributeName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeListModelCopyWith<AttributeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeListModelCopyWith<$Res> {
  factory $AttributeListModelCopyWith(
          AttributeListModel value, $Res Function(AttributeListModel) then) =
      _$AttributeListModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "attribute_type") String? attributeType,
      @JsonKey(name: "attribute_name") String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$AttributeListModelCopyWithImpl<$Res>
    implements $AttributeListModelCopyWith<$Res> {
  _$AttributeListModelCopyWithImpl(this._value, this._then);

  final AttributeListModel _value;
  // ignore: unused_field
  final $Res Function(AttributeListModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? attributeType = freezed,
    Object? attributeName = freezed,
    Object? isActive = freezed,
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
      attributeType: attributeType == freezed
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeName: attributeName == freezed
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeListModelCopyWith<$Res>
    implements $AttributeListModelCopyWith<$Res> {
  factory _$AttributeListModelCopyWith(
          _AttributeListModel value, $Res Function(_AttributeListModel) then) =
      __$AttributeListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "attribute_type") String? attributeType,
      @JsonKey(name: "attribute_name") String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$AttributeListModelCopyWithImpl<$Res>
    extends _$AttributeListModelCopyWithImpl<$Res>
    implements _$AttributeListModelCopyWith<$Res> {
  __$AttributeListModelCopyWithImpl(
      _AttributeListModel _value, $Res Function(_AttributeListModel) _then)
      : super(_value, (v) => _then(v as _AttributeListModel));

  @override
  _AttributeListModel get _value => super._value as _AttributeListModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? attributeType = freezed,
    Object? attributeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_AttributeListModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeType: attributeType == freezed
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeName: attributeName == freezed
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
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
class _$_AttributeListModel implements _AttributeListModel {
  const _$_AttributeListModel(
      {this.id,
      this.code,
      @JsonKey(name: "attribute_type") this.attributeType,
      @JsonKey(name: "attribute_name") this.attributeName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_AttributeListModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: "attribute_type")
  final String? attributeType;
  @override
  @JsonKey(name: "attribute_name")
  final String? attributeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'AttributeListModel(id: $id, code: $code, attributeType: $attributeType, attributeName: $attributeName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttributeListModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.attributeType, attributeType) ||
                const DeepCollectionEquality()
                    .equals(other.attributeType, attributeType)) &&
            (identical(other.attributeName, attributeName) ||
                const DeepCollectionEquality()
                    .equals(other.attributeName, attributeName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(attributeType) ^
      const DeepCollectionEquality().hash(attributeName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$AttributeListModelCopyWith<_AttributeListModel> get copyWith =>
      __$AttributeListModelCopyWithImpl<_AttributeListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeListModelToJson(this);
  }
}

abstract class _AttributeListModel implements AttributeListModel {
  const factory _AttributeListModel(
          {int? id,
          String? code,
          @JsonKey(name: "attribute_type") String? attributeType,
          @JsonKey(name: "attribute_name") String? attributeName,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_AttributeListModel;

  factory _AttributeListModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeListModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "attribute_type")
  String? get attributeType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "attribute_name")
  String? get attributeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AttributeListModelCopyWith<_AttributeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
