// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'frameworklistmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrameWorkListModel _$FrameWorkListModelFromJson(Map<String, dynamic> json) {
  return _FrameWorkListModel.fromJson(json);
}

/// @nodoc
mixin _$FrameWorkListModel {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_code")
  String? get categoryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  List<AttributesModel>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrameWorkListModelCopyWith<FrameWorkListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameWorkListModelCopyWith<$Res> {
  factory $FrameWorkListModelCopyWith(
          FrameWorkListModel value, $Res Function(FrameWorkListModel) then) =
      _$FrameWorkListModelCopyWithImpl<$Res, FrameWorkListModel>;
  @useResult
  $Res call(
      {String? code,
      String? description,
      String? status,
      String? name,
      String? category,
      int? id,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "attributes") List<AttributesModel>? attributes});
}

/// @nodoc
class _$FrameWorkListModelCopyWithImpl<$Res, $Val extends FrameWorkListModel>
    implements $FrameWorkListModelCopyWith<$Res> {
  _$FrameWorkListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? id = freezed,
    Object? categoryCode = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrameWorkListModelCopyWith<$Res>
    implements $FrameWorkListModelCopyWith<$Res> {
  factory _$$_FrameWorkListModelCopyWith(_$_FrameWorkListModel value,
          $Res Function(_$_FrameWorkListModel) then) =
      __$$_FrameWorkListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? description,
      String? status,
      String? name,
      String? category,
      int? id,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "attributes") List<AttributesModel>? attributes});
}

/// @nodoc
class __$$_FrameWorkListModelCopyWithImpl<$Res>
    extends _$FrameWorkListModelCopyWithImpl<$Res, _$_FrameWorkListModel>
    implements _$$_FrameWorkListModelCopyWith<$Res> {
  __$$_FrameWorkListModelCopyWithImpl(
      _$_FrameWorkListModel _value, $Res Function(_$_FrameWorkListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? id = freezed,
    Object? categoryCode = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_FrameWorkListModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrameWorkListModel implements _FrameWorkListModel {
  const _$_FrameWorkListModel(
      {this.code,
      this.description,
      this.status,
      this.name,
      this.category,
      this.id,
      @JsonKey(name: "category_code") this.categoryCode,
      @JsonKey(name: "attributes") final List<AttributesModel>? attributes})
      : _attributes = attributes;

  factory _$_FrameWorkListModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrameWorkListModelFromJson(json);

  @override
  final String? code;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? name;
  @override
  final String? category;
  @override
  final int? id;
  @override
  @JsonKey(name: "category_code")
  final String? categoryCode;
  final List<AttributesModel>? _attributes;
  @override
  @JsonKey(name: "attributes")
  List<AttributesModel>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FrameWorkListModel(code: $code, description: $description, status: $status, name: $name, category: $category, id: $id, categoryCode: $categoryCode, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrameWorkListModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      description,
      status,
      name,
      category,
      id,
      categoryCode,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrameWorkListModelCopyWith<_$_FrameWorkListModel> get copyWith =>
      __$$_FrameWorkListModelCopyWithImpl<_$_FrameWorkListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrameWorkListModelToJson(
      this,
    );
  }
}

abstract class _FrameWorkListModel implements FrameWorkListModel {
  const factory _FrameWorkListModel(
      {final String? code,
      final String? description,
      final String? status,
      final String? name,
      final String? category,
      final int? id,
      @JsonKey(name: "category_code")
          final String? categoryCode,
      @JsonKey(name: "attributes")
          final List<AttributesModel>? attributes}) = _$_FrameWorkListModel;

  factory _FrameWorkListModel.fromJson(Map<String, dynamic> json) =
      _$_FrameWorkListModel.fromJson;

  @override
  String? get code;
  @override
  String? get description;
  @override
  String? get status;
  @override
  String? get name;
  @override
  String? get category;
  @override
  int? get id;
  @override
  @JsonKey(name: "category_code")
  String? get categoryCode;
  @override
  @JsonKey(name: "attributes")
  List<AttributesModel>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_FrameWorkListModelCopyWith<_$_FrameWorkListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) {
  return _AttributesModel.fromJson(json);
}

/// @nodoc
mixin _$AttributesModel {
  List<dynamic>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_id")
  int? get attrributeId => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_name")
  String? get attrributeName => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_type")
  String? get attrributeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesModelCopyWith<AttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesModelCopyWith<$Res> {
  factory $AttributesModelCopyWith(
          AttributesModel value, $Res Function(AttributesModel) then) =
      _$AttributesModelCopyWithImpl<$Res, AttributesModel>;
  @useResult
  $Res call(
      {List<dynamic>? values,
      @JsonKey(name: "attribute_id") int? attrributeId,
      @JsonKey(name: "attribute_name") String? attrributeName,
      @JsonKey(name: "attribute_type") String? attrributeType});
}

/// @nodoc
class _$AttributesModelCopyWithImpl<$Res, $Val extends AttributesModel>
    implements $AttributesModelCopyWith<$Res> {
  _$AttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = freezed,
    Object? attrributeId = freezed,
    Object? attrributeName = freezed,
    Object? attrributeType = freezed,
  }) {
    return _then(_value.copyWith(
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attrributeId: freezed == attrributeId
          ? _value.attrributeId
          : attrributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      attrributeName: freezed == attrributeName
          ? _value.attrributeName
          : attrributeName // ignore: cast_nullable_to_non_nullable
              as String?,
      attrributeType: freezed == attrributeType
          ? _value.attrributeType
          : attrributeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributesModelCopyWith<$Res>
    implements $AttributesModelCopyWith<$Res> {
  factory _$$_AttributesModelCopyWith(
          _$_AttributesModel value, $Res Function(_$_AttributesModel) then) =
      __$$_AttributesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? values,
      @JsonKey(name: "attribute_id") int? attrributeId,
      @JsonKey(name: "attribute_name") String? attrributeName,
      @JsonKey(name: "attribute_type") String? attrributeType});
}

/// @nodoc
class __$$_AttributesModelCopyWithImpl<$Res>
    extends _$AttributesModelCopyWithImpl<$Res, _$_AttributesModel>
    implements _$$_AttributesModelCopyWith<$Res> {
  __$$_AttributesModelCopyWithImpl(
      _$_AttributesModel _value, $Res Function(_$_AttributesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = freezed,
    Object? attrributeId = freezed,
    Object? attrributeName = freezed,
    Object? attrributeType = freezed,
  }) {
    return _then(_$_AttributesModel(
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attrributeId: freezed == attrributeId
          ? _value.attrributeId
          : attrributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      attrributeName: freezed == attrributeName
          ? _value.attrributeName
          : attrributeName // ignore: cast_nullable_to_non_nullable
              as String?,
      attrributeType: freezed == attrributeType
          ? _value.attrributeType
          : attrributeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributesModel implements _AttributesModel {
  const _$_AttributesModel(
      {final List<dynamic>? values,
      @JsonKey(name: "attribute_id") this.attrributeId,
      @JsonKey(name: "attribute_name") this.attrributeName,
      @JsonKey(name: "attribute_type") this.attrributeType})
      : _values = values;

  factory _$_AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesModelFromJson(json);

  final List<dynamic>? _values;
  @override
  List<dynamic>? get values {
    final value = _values;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "attribute_id")
  final int? attrributeId;
  @override
  @JsonKey(name: "attribute_name")
  final String? attrributeName;
  @override
  @JsonKey(name: "attribute_type")
  final String? attrributeType;

  @override
  String toString() {
    return 'AttributesModel(values: $values, attrributeId: $attrributeId, attrributeName: $attrributeName, attrributeType: $attrributeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributesModel &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.attrributeId, attrributeId) ||
                other.attrributeId == attrributeId) &&
            (identical(other.attrributeName, attrributeName) ||
                other.attrributeName == attrributeName) &&
            (identical(other.attrributeType, attrributeType) ||
                other.attrributeType == attrributeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      attrributeId,
      attrributeName,
      attrributeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesModelCopyWith<_$_AttributesModel> get copyWith =>
      __$$_AttributesModelCopyWithImpl<_$_AttributesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesModelToJson(
      this,
    );
  }
}

abstract class _AttributesModel implements AttributesModel {
  const factory _AttributesModel(
          {final List<dynamic>? values,
          @JsonKey(name: "attribute_id") final int? attrributeId,
          @JsonKey(name: "attribute_name") final String? attrributeName,
          @JsonKey(name: "attribute_type") final String? attrributeType}) =
      _$_AttributesModel;

  factory _AttributesModel.fromJson(Map<String, dynamic> json) =
      _$_AttributesModel.fromJson;

  @override
  List<dynamic>? get values;
  @override
  @JsonKey(name: "attribute_id")
  int? get attrributeId;
  @override
  @JsonKey(name: "attribute_name")
  String? get attrributeName;
  @override
  @JsonKey(name: "attribute_type")
  String? get attrributeType;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesModelCopyWith<_$_AttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantFrameWorkPostModel _$VariantFrameWorkPostModelFromJson(
    Map<String, dynamic> json) {
  return _VariantFrameWorkPostModel.fromJson(json);
}

/// @nodoc
mixin _$VariantFrameWorkPostModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<dynamic>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_lines_list")
  List<VariantLinesLiostModel>? get variantListModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<VariantLinesLiostModel>? get lines => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_type")
  String? get attrributeType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantFrameWorkPostModelCopyWith<VariantFrameWorkPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantFrameWorkPostModelCopyWith<$Res> {
  factory $VariantFrameWorkPostModelCopyWith(VariantFrameWorkPostModel value,
          $Res Function(VariantFrameWorkPostModel) then) =
      _$VariantFrameWorkPostModelCopyWithImpl<$Res, VariantFrameWorkPostModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? code,
      List<dynamic>? values,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "category_name")
          String? categoryName,
      @JsonKey(name: "variant_lines_list")
          List<VariantLinesLiostModel>? variantListModel,
      @JsonKey(name: "lines")
          List<VariantLinesLiostModel>? lines,
      @JsonKey(name: "attribute_type")
          String? attrributeType,
      @JsonKey(name: "is_active")
          bool? isActive});
}

/// @nodoc
class _$VariantFrameWorkPostModelCopyWithImpl<$Res,
        $Val extends VariantFrameWorkPostModel>
    implements $VariantFrameWorkPostModelCopyWith<$Res> {
  _$VariantFrameWorkPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? values = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? variantListModel = freezed,
    Object? lines = freezed,
    Object? attrributeType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantListModel: freezed == variantListModel
          ? _value.variantListModel
          : variantListModel // ignore: cast_nullable_to_non_nullable
              as List<VariantLinesLiostModel>?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantLinesLiostModel>?,
      attrributeType: freezed == attrributeType
          ? _value.attrributeType
          : attrributeType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantFrameWorkPostModelCopyWith<$Res>
    implements $VariantFrameWorkPostModelCopyWith<$Res> {
  factory _$$_VariantFrameWorkPostModelCopyWith(
          _$_VariantFrameWorkPostModel value,
          $Res Function(_$_VariantFrameWorkPostModel) then) =
      __$$_VariantFrameWorkPostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? code,
      List<dynamic>? values,
      @JsonKey(name: "category_id")
          int? categoryId,
      @JsonKey(name: "category_name")
          String? categoryName,
      @JsonKey(name: "variant_lines_list")
          List<VariantLinesLiostModel>? variantListModel,
      @JsonKey(name: "lines")
          List<VariantLinesLiostModel>? lines,
      @JsonKey(name: "attribute_type")
          String? attrributeType,
      @JsonKey(name: "is_active")
          bool? isActive});
}

/// @nodoc
class __$$_VariantFrameWorkPostModelCopyWithImpl<$Res>
    extends _$VariantFrameWorkPostModelCopyWithImpl<$Res,
        _$_VariantFrameWorkPostModel>
    implements _$$_VariantFrameWorkPostModelCopyWith<$Res> {
  __$$_VariantFrameWorkPostModelCopyWithImpl(
      _$_VariantFrameWorkPostModel _value,
      $Res Function(_$_VariantFrameWorkPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? values = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? variantListModel = freezed,
    Object? lines = freezed,
    Object? attrributeType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_VariantFrameWorkPostModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantListModel: freezed == variantListModel
          ? _value._variantListModel
          : variantListModel // ignore: cast_nullable_to_non_nullable
              as List<VariantLinesLiostModel>?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<VariantLinesLiostModel>?,
      attrributeType: freezed == attrributeType
          ? _value.attrributeType
          : attrributeType // ignore: cast_nullable_to_non_nullable
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
class _$_VariantFrameWorkPostModel implements _VariantFrameWorkPostModel {
  const _$_VariantFrameWorkPostModel(
      {this.name,
      this.description,
      this.code,
      final List<dynamic>? values,
      @JsonKey(name: "category_id")
          this.categoryId,
      @JsonKey(name: "category_name")
          this.categoryName,
      @JsonKey(name: "variant_lines_list")
          final List<VariantLinesLiostModel>? variantListModel,
      @JsonKey(name: "lines")
          final List<VariantLinesLiostModel>? lines,
      @JsonKey(name: "attribute_type")
          this.attrributeType,
      @JsonKey(name: "is_active")
          this.isActive})
      : _values = values,
        _variantListModel = variantListModel,
        _lines = lines;

  factory _$_VariantFrameWorkPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFrameWorkPostModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? code;
  final List<dynamic>? _values;
  @override
  List<dynamic>? get values {
    final value = _values;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  final List<VariantLinesLiostModel>? _variantListModel;
  @override
  @JsonKey(name: "variant_lines_list")
  List<VariantLinesLiostModel>? get variantListModel {
    final value = _variantListModel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VariantLinesLiostModel>? _lines;
  @override
  @JsonKey(name: "lines")
  List<VariantLinesLiostModel>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "attribute_type")
  final String? attrributeType;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'VariantFrameWorkPostModel(name: $name, description: $description, code: $code, values: $values, categoryId: $categoryId, categoryName: $categoryName, variantListModel: $variantListModel, lines: $lines, attrributeType: $attrributeType, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantFrameWorkPostModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._variantListModel, _variantListModel) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.attrributeType, attrributeType) ||
                other.attrributeType == attrributeType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      code,
      const DeepCollectionEquality().hash(_values),
      categoryId,
      categoryName,
      const DeepCollectionEquality().hash(_variantListModel),
      const DeepCollectionEquality().hash(_lines),
      attrributeType,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantFrameWorkPostModelCopyWith<_$_VariantFrameWorkPostModel>
      get copyWith => __$$_VariantFrameWorkPostModelCopyWithImpl<
          _$_VariantFrameWorkPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantFrameWorkPostModelToJson(
      this,
    );
  }
}

abstract class _VariantFrameWorkPostModel implements VariantFrameWorkPostModel {
  const factory _VariantFrameWorkPostModel(
      {final String? name,
      final String? description,
      final String? code,
      final List<dynamic>? values,
      @JsonKey(name: "category_id")
          final int? categoryId,
      @JsonKey(name: "category_name")
          final String? categoryName,
      @JsonKey(name: "variant_lines_list")
          final List<VariantLinesLiostModel>? variantListModel,
      @JsonKey(name: "lines")
          final List<VariantLinesLiostModel>? lines,
      @JsonKey(name: "attribute_type")
          final String? attrributeType,
      @JsonKey(name: "is_active")
          final bool? isActive}) = _$_VariantFrameWorkPostModel;

  factory _VariantFrameWorkPostModel.fromJson(Map<String, dynamic> json) =
      _$_VariantFrameWorkPostModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get code;
  @override
  List<dynamic>? get values;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "variant_lines_list")
  List<VariantLinesLiostModel>? get variantListModel;
  @override
  @JsonKey(name: "lines")
  List<VariantLinesLiostModel>? get lines;
  @override
  @JsonKey(name: "attribute_type")
  String? get attrributeType;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_VariantFrameWorkPostModelCopyWith<_$_VariantFrameWorkPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

VariantLinesLiostModel _$VariantLinesLiostModelFromJson(
    Map<String, dynamic> json) {
  return _VariantLinesLiostModel.fromJson(json);
}

/// @nodoc
mixin _$VariantLinesLiostModel {
  int? get id => throw _privateConstructorUsedError;
  List<String>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_id")
  int? get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_code")
  String? get attributeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantLinesLiostModelCopyWith<VariantLinesLiostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantLinesLiostModelCopyWith<$Res> {
  factory $VariantLinesLiostModelCopyWith(VariantLinesLiostModel value,
          $Res Function(VariantLinesLiostModel) then) =
      _$VariantLinesLiostModelCopyWithImpl<$Res, VariantLinesLiostModel>;
  @useResult
  $Res call(
      {int? id,
      List<String>? values,
      @JsonKey(name: "attribute_id") int? attributeId,
      @JsonKey(name: "attribute_name") String? name,
      @JsonKey(name: "attribute_type") String? type,
      @JsonKey(name: "attribute_code") String? attributeCode,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$VariantLinesLiostModelCopyWithImpl<$Res,
        $Val extends VariantLinesLiostModel>
    implements $VariantLinesLiostModelCopyWith<$Res> {
  _$VariantLinesLiostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? values = freezed,
    Object? attributeId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? attributeCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributeId: freezed == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeCode: freezed == attributeCode
          ? _value.attributeCode
          : attributeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantLinesLiostModelCopyWith<$Res>
    implements $VariantLinesLiostModelCopyWith<$Res> {
  factory _$$_VariantLinesLiostModelCopyWith(_$_VariantLinesLiostModel value,
          $Res Function(_$_VariantLinesLiostModel) then) =
      __$$_VariantLinesLiostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<String>? values,
      @JsonKey(name: "attribute_id") int? attributeId,
      @JsonKey(name: "attribute_name") String? name,
      @JsonKey(name: "attribute_type") String? type,
      @JsonKey(name: "attribute_code") String? attributeCode,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$_VariantLinesLiostModelCopyWithImpl<$Res>
    extends _$VariantLinesLiostModelCopyWithImpl<$Res,
        _$_VariantLinesLiostModel>
    implements _$$_VariantLinesLiostModelCopyWith<$Res> {
  __$$_VariantLinesLiostModelCopyWithImpl(_$_VariantLinesLiostModel _value,
      $Res Function(_$_VariantLinesLiostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? values = freezed,
    Object? attributeId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? attributeCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_VariantLinesLiostModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributeId: freezed == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeCode: freezed == attributeCode
          ? _value.attributeCode
          : attributeCode // ignore: cast_nullable_to_non_nullable
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
class _$_VariantLinesLiostModel implements _VariantLinesLiostModel {
  const _$_VariantLinesLiostModel(
      {this.id,
      final List<String>? values,
      @JsonKey(name: "attribute_id") this.attributeId,
      @JsonKey(name: "attribute_name") this.name,
      @JsonKey(name: "attribute_type") this.type,
      @JsonKey(name: "attribute_code") this.attributeCode,
      @JsonKey(name: "is_active") this.isActive})
      : _values = values;

  factory _$_VariantLinesLiostModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantLinesLiostModelFromJson(json);

  @override
  final int? id;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "attribute_id")
  final int? attributeId;
  @override
  @JsonKey(name: "attribute_name")
  final String? name;
  @override
  @JsonKey(name: "attribute_type")
  final String? type;
  @override
  @JsonKey(name: "attribute_code")
  final String? attributeCode;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'VariantLinesLiostModel(id: $id, values: $values, attributeId: $attributeId, name: $name, type: $type, attributeCode: $attributeCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantLinesLiostModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributeCode, attributeCode) ||
                other.attributeCode == attributeCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_values),
      attributeId,
      name,
      type,
      attributeCode,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantLinesLiostModelCopyWith<_$_VariantLinesLiostModel> get copyWith =>
      __$$_VariantLinesLiostModelCopyWithImpl<_$_VariantLinesLiostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantLinesLiostModelToJson(
      this,
    );
  }
}

abstract class _VariantLinesLiostModel implements VariantLinesLiostModel {
  const factory _VariantLinesLiostModel(
          {final int? id,
          final List<String>? values,
          @JsonKey(name: "attribute_id") final int? attributeId,
          @JsonKey(name: "attribute_name") final String? name,
          @JsonKey(name: "attribute_type") final String? type,
          @JsonKey(name: "attribute_code") final String? attributeCode,
          @JsonKey(name: "is_active") final bool? isActive}) =
      _$_VariantLinesLiostModel;

  factory _VariantLinesLiostModel.fromJson(Map<String, dynamic> json) =
      _$_VariantLinesLiostModel.fromJson;

  @override
  int? get id;
  @override
  List<String>? get values;
  @override
  @JsonKey(name: "attribute_id")
  int? get attributeId;
  @override
  @JsonKey(name: "attribute_name")
  String? get name;
  @override
  @JsonKey(name: "attribute_type")
  String? get type;
  @override
  @JsonKey(name: "attribute_code")
  String? get attributeCode;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_VariantLinesLiostModelCopyWith<_$_VariantLinesLiostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
