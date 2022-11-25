// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantframeworkpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantFrameworkPostModel _$VariantFrameworkPostModelFromJson(
    Map<String, dynamic> json) {
  return _VariantFrameworkPostModel.fromJson(json);
}

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
      _$VariantFrameworkPostModelCopyWithImpl<$Res, VariantFrameworkPostModel>;
  @useResult
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
class _$VariantFrameworkPostModelCopyWithImpl<$Res,
        $Val extends VariantFrameworkPostModel>
    implements $VariantFrameworkPostModelCopyWith<$Res> {
  _$VariantFrameworkPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantLineList: freezed == variantLineList
          ? _value.variantLineList
          : variantLineList // ignore: cast_nullable_to_non_nullable
              as List<VariantLineListModel>?,
      purchaseBlock: freezed == purchaseBlock
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantFrameworkPostModelCopyWith<$Res>
    implements $VariantFrameworkPostModelCopyWith<$Res> {
  factory _$$_VariantFrameworkPostModelCopyWith(
          _$_VariantFrameworkPostModel value,
          $Res Function(_$_VariantFrameworkPostModel) then) =
      __$$_VariantFrameworkPostModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_VariantFrameworkPostModelCopyWithImpl<$Res>
    extends _$VariantFrameworkPostModelCopyWithImpl<$Res,
        _$_VariantFrameworkPostModel>
    implements _$$_VariantFrameworkPostModelCopyWith<$Res> {
  __$$_VariantFrameworkPostModelCopyWithImpl(
      _$_VariantFrameworkPostModel _value,
      $Res Function(_$_VariantFrameworkPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? variantLineList = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_$_VariantFrameworkPostModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantLineList: freezed == variantLineList
          ? _value._variantLineList
          : variantLineList // ignore: cast_nullable_to_non_nullable
              as List<VariantLineListModel>?,
      purchaseBlock: freezed == purchaseBlock
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
      @JsonKey(name: "category_id")
          this.categoryId,
      @JsonKey(name: "variant_lines_list")
          final List<VariantLineListModel>? variantLineList,
      this.purchaseBlock})
      : _variantLineList = variantLineList;

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
  final List<VariantLineListModel>? _variantLineList;
  @override
  @JsonKey(name: "variant_lines_list")
  List<VariantLineListModel>? get variantLineList {
    final value = _variantLineList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? purchaseBlock;

  @override
  String toString() {
    return 'VariantFrameworkPostModel(name: $name, barcode: $barcode, description: $description, categoryId: $categoryId, variantLineList: $variantLineList, purchaseBlock: $purchaseBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantFrameworkPostModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._variantLineList, _variantLineList) &&
            (identical(other.purchaseBlock, purchaseBlock) ||
                other.purchaseBlock == purchaseBlock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      barcode,
      description,
      categoryId,
      const DeepCollectionEquality().hash(_variantLineList),
      purchaseBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantFrameworkPostModelCopyWith<_$_VariantFrameworkPostModel>
      get copyWith => __$$_VariantFrameworkPostModelCopyWithImpl<
          _$_VariantFrameworkPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantFrameworkPostModelToJson(
      this,
    );
  }
}

abstract class _VariantFrameworkPostModel implements VariantFrameworkPostModel {
  const factory _VariantFrameworkPostModel(
      {final String? name,
      final String? barcode,
      final String? description,
      @JsonKey(name: "category_id")
          final int? categoryId,
      @JsonKey(name: "variant_lines_list")
          final List<VariantLineListModel>? variantLineList,
      final bool? purchaseBlock}) = _$_VariantFrameworkPostModel;

  factory _VariantFrameworkPostModel.fromJson(Map<String, dynamic> json) =
      _$_VariantFrameworkPostModel.fromJson;

  @override
  String? get name;
  @override
  String? get barcode;
  @override
  String? get description;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "variant_lines_list")
  List<VariantLineListModel>? get variantLineList;
  @override
  bool? get purchaseBlock;
  @override
  @JsonKey(ignore: true)
  _$$_VariantFrameworkPostModelCopyWith<_$_VariantFrameworkPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

VariantLineListModel _$VariantLineListModelFromJson(Map<String, dynamic> json) {
  return _VariantLineListModel.fromJson(json);
}

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
      _$VariantLineListModelCopyWithImpl<$Res, VariantLineListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock});
}

/// @nodoc
class _$VariantLineListModelCopyWithImpl<$Res,
        $Val extends VariantLineListModel>
    implements $VariantLineListModelCopyWith<$Res> {
  _$VariantLineListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = freezed,
    Object? values = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_value.copyWith(
      attributeId: freezed == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      purchaseBlock: freezed == purchaseBlock
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantLineListModelCopyWith<$Res>
    implements $VariantLineListModelCopyWith<$Res> {
  factory _$$_VariantLineListModelCopyWith(_$_VariantLineListModel value,
          $Res Function(_$_VariantLineListModel) then) =
      __$$_VariantLineListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_id") int? attributeId,
      List<String>? values,
      bool? purchaseBlock});
}

/// @nodoc
class __$$_VariantLineListModelCopyWithImpl<$Res>
    extends _$VariantLineListModelCopyWithImpl<$Res, _$_VariantLineListModel>
    implements _$$_VariantLineListModelCopyWith<$Res> {
  __$$_VariantLineListModelCopyWithImpl(_$_VariantLineListModel _value,
      $Res Function(_$_VariantLineListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = freezed,
    Object? values = freezed,
    Object? purchaseBlock = freezed,
  }) {
    return _then(_$_VariantLineListModel(
      attributeId: freezed == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      purchaseBlock: freezed == purchaseBlock
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
      final List<String>? values,
      this.purchaseBlock})
      : _values = values;

  factory _$_VariantLineListModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantLineListModelFromJson(json);

  @override
  @JsonKey(name: "attribute_id")
  final int? attributeId;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? purchaseBlock;

  @override
  String toString() {
    return 'VariantLineListModel(attributeId: $attributeId, values: $values, purchaseBlock: $purchaseBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantLineListModel &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.purchaseBlock, purchaseBlock) ||
                other.purchaseBlock == purchaseBlock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributeId,
      const DeepCollectionEquality().hash(_values), purchaseBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantLineListModelCopyWith<_$_VariantLineListModel> get copyWith =>
      __$$_VariantLineListModelCopyWithImpl<_$_VariantLineListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantLineListModelToJson(
      this,
    );
  }
}

abstract class _VariantLineListModel implements VariantLineListModel {
  const factory _VariantLineListModel(
      {@JsonKey(name: "attribute_id") final int? attributeId,
      final List<String>? values,
      final bool? purchaseBlock}) = _$_VariantLineListModel;

  factory _VariantLineListModel.fromJson(Map<String, dynamic> json) =
      _$_VariantLineListModel.fromJson;

  @override
  @JsonKey(name: "attribute_id")
  int? get attributeId;
  @override
  List<String>? get values;
  @override
  bool? get purchaseBlock;
  @override
  @JsonKey(ignore: true)
  _$$_VariantLineListModelCopyWith<_$_VariantLineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeListModel _$AttributeListModelFromJson(Map<String, dynamic> json) {
  return _AttributeListModel.fromJson(json);
}

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
      _$AttributeListModelCopyWithImpl<$Res, AttributeListModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "attribute_type") String? attributeType,
      @JsonKey(name: "attribute_name") String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$AttributeListModelCopyWithImpl<$Res, $Val extends AttributeListModel>
    implements $AttributeListModelCopyWith<$Res> {
  _$AttributeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? attributeType = freezed,
    Object? attributeName = freezed,
    Object? isActive = freezed,
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
      attributeType: freezed == attributeType
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeName: freezed == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeListModelCopyWith<$Res>
    implements $AttributeListModelCopyWith<$Res> {
  factory _$$_AttributeListModelCopyWith(_$_AttributeListModel value,
          $Res Function(_$_AttributeListModel) then) =
      __$$_AttributeListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "attribute_type") String? attributeType,
      @JsonKey(name: "attribute_name") String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_AttributeListModelCopyWithImpl<$Res>
    extends _$AttributeListModelCopyWithImpl<$Res, _$_AttributeListModel>
    implements _$$_AttributeListModelCopyWith<$Res> {
  __$$_AttributeListModelCopyWithImpl(
      _$_AttributeListModel _value, $Res Function(_$_AttributeListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? attributeType = freezed,
    Object? attributeName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_AttributeListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeType: freezed == attributeType
          ? _value.attributeType
          : attributeType // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeName: freezed == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
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
        (other.runtimeType == runtimeType &&
            other is _$_AttributeListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.attributeType, attributeType) ||
                other.attributeType == attributeType) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, attributeType, attributeName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeListModelCopyWith<_$_AttributeListModel> get copyWith =>
      __$$_AttributeListModelCopyWithImpl<_$_AttributeListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeListModelToJson(
      this,
    );
  }
}

abstract class _AttributeListModel implements AttributeListModel {
  const factory _AttributeListModel(
      {final int? id,
      final String? code,
      @JsonKey(name: "attribute_type")
          final String? attributeType,
      @JsonKey(name: "attribute_name")
          final String? attributeName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_AttributeListModel;

  factory _AttributeListModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeListModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: "attribute_type")
  String? get attributeType;
  @override
  @JsonKey(name: "attribute_name")
  String? get attributeName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeListModelCopyWith<_$_AttributeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
