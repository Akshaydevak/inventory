// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'creationmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DivisionCreationtModel _$DivisionCreationtModelFromJson(
    Map<String, dynamic> json) {
  return _DivisionCreationtModel.fromJson(json);
}

/// @nodoc
class _$DivisionCreationtModelTearOff {
  const _$DivisionCreationtModelTearOff();

  _DivisionCreationtModel call(
      {String? name,
      String? description,
      String? image,
      int? priority,
      @JsonKey(name: "minimum_gp") double? minimumGp,
      @JsonKey(name: "uom_code") List<String>? uomCode,
      @JsonKey(name: "category_code") List<String>? categoryCode,
      @JsonKey(name: "group_code") List<String>? groupCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed}) {
    return _DivisionCreationtModel(
      name: name,
      description: description,
      image: image,
      priority: priority,
      minimumGp: minimumGp,
      uomCode: uomCode,
      categoryCode: categoryCode,
      groupCode: groupCode,
      isActive: isActive,
      isMixed: isMixed,
    );
  }

  DivisionCreationtModel fromJson(Map<String, Object> json) {
    return DivisionCreationtModel.fromJson(json);
  }
}

/// @nodoc
const $DivisionCreationtModel = _$DivisionCreationtModelTearOff();

/// @nodoc
mixin _$DivisionCreationtModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_gp")
  double? get minimumGp => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  List<String>? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "category_code")
  List<String>? get categoryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "group_code")
  List<String>? get groupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_mixed", defaultValue: false)
  bool? get isMixed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionCreationtModelCopyWith<DivisionCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCreationtModelCopyWith<$Res> {
  factory $DivisionCreationtModelCopyWith(DivisionCreationtModel value,
          $Res Function(DivisionCreationtModel) then) =
      _$DivisionCreationtModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? description,
      String? image,
      int? priority,
      @JsonKey(name: "minimum_gp") double? minimumGp,
      @JsonKey(name: "uom_code") List<String>? uomCode,
      @JsonKey(name: "category_code") List<String>? categoryCode,
      @JsonKey(name: "group_code") List<String>? groupCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed});
}

/// @nodoc
class _$DivisionCreationtModelCopyWithImpl<$Res>
    implements $DivisionCreationtModelCopyWith<$Res> {
  _$DivisionCreationtModelCopyWithImpl(this._value, this._then);

  final DivisionCreationtModel _value;
  // ignore: unused_field
  final $Res Function(DivisionCreationtModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? priority = freezed,
    Object? minimumGp = freezed,
    Object? uomCode = freezed,
    Object? categoryCode = freezed,
    Object? groupCode = freezed,
    Object? isActive = freezed,
    Object? isMixed = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumGp: minimumGp == freezed
          ? _value.minimumGp
          : minimumGp // ignore: cast_nullable_to_non_nullable
              as double?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupCode: groupCode == freezed
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMixed: isMixed == freezed
          ? _value.isMixed
          : isMixed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DivisionCreationtModelCopyWith<$Res>
    implements $DivisionCreationtModelCopyWith<$Res> {
  factory _$DivisionCreationtModelCopyWith(_DivisionCreationtModel value,
          $Res Function(_DivisionCreationtModel) then) =
      __$DivisionCreationtModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? description,
      String? image,
      int? priority,
      @JsonKey(name: "minimum_gp") double? minimumGp,
      @JsonKey(name: "uom_code") List<String>? uomCode,
      @JsonKey(name: "category_code") List<String>? categoryCode,
      @JsonKey(name: "group_code") List<String>? groupCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed});
}

/// @nodoc
class __$DivisionCreationtModelCopyWithImpl<$Res>
    extends _$DivisionCreationtModelCopyWithImpl<$Res>
    implements _$DivisionCreationtModelCopyWith<$Res> {
  __$DivisionCreationtModelCopyWithImpl(_DivisionCreationtModel _value,
      $Res Function(_DivisionCreationtModel) _then)
      : super(_value, (v) => _then(v as _DivisionCreationtModel));

  @override
  _DivisionCreationtModel get _value => super._value as _DivisionCreationtModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? priority = freezed,
    Object? minimumGp = freezed,
    Object? uomCode = freezed,
    Object? categoryCode = freezed,
    Object? groupCode = freezed,
    Object? isActive = freezed,
    Object? isMixed = freezed,
  }) {
    return _then(_DivisionCreationtModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumGp: minimumGp == freezed
          ? _value.minimumGp
          : minimumGp // ignore: cast_nullable_to_non_nullable
              as double?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupCode: groupCode == freezed
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMixed: isMixed == freezed
          ? _value.isMixed
          : isMixed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DivisionCreationtModel implements _DivisionCreationtModel {
  const _$_DivisionCreationtModel(
      {this.name,
      this.description,
      this.image,
      this.priority,
      @JsonKey(name: "minimum_gp") this.minimumGp,
      @JsonKey(name: "uom_code") this.uomCode,
      @JsonKey(name: "category_code") this.categoryCode,
      @JsonKey(name: "group_code") this.groupCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_mixed", defaultValue: false) this.isMixed});

  factory _$_DivisionCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$$_DivisionCreationtModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int? priority;
  @override
  @JsonKey(name: "minimum_gp")
  final double? minimumGp;
  @override
  @JsonKey(name: "uom_code")
  final List<String>? uomCode;
  @override
  @JsonKey(name: "category_code")
  final List<String>? categoryCode;
  @override
  @JsonKey(name: "group_code")
  final List<String>? groupCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_mixed", defaultValue: false)
  final bool? isMixed;

  @override
  String toString() {
    return 'DivisionCreationtModel(name: $name, description: $description, image: $image, priority: $priority, minimumGp: $minimumGp, uomCode: $uomCode, categoryCode: $categoryCode, groupCode: $groupCode, isActive: $isActive, isMixed: $isMixed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DivisionCreationtModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.minimumGp, minimumGp) ||
                const DeepCollectionEquality()
                    .equals(other.minimumGp, minimumGp)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isMixed, isMixed) ||
                const DeepCollectionEquality().equals(other.isMixed, isMixed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(minimumGp) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isMixed);

  @JsonKey(ignore: true)
  @override
  _$DivisionCreationtModelCopyWith<_DivisionCreationtModel> get copyWith =>
      __$DivisionCreationtModelCopyWithImpl<_DivisionCreationtModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DivisionCreationtModelToJson(this);
  }
}

abstract class _DivisionCreationtModel implements DivisionCreationtModel {
  const factory _DivisionCreationtModel(
          {String? name,
          String? description,
          String? image,
          int? priority,
          @JsonKey(name: "minimum_gp") double? minimumGp,
          @JsonKey(name: "uom_code") List<String>? uomCode,
          @JsonKey(name: "category_code") List<String>? categoryCode,
          @JsonKey(name: "group_code") List<String>? groupCode,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
          @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed}) =
      _$_DivisionCreationtModel;

  factory _DivisionCreationtModel.fromJson(Map<String, dynamic> json) =
      _$_DivisionCreationtModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get priority => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_gp")
  double? get minimumGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  List<String>? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_code")
  List<String>? get categoryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "group_code")
  List<String>? get groupCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_mixed", defaultValue: false)
  bool? get isMixed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DivisionCreationtModelCopyWith<_DivisionCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DivisionReadModel _$DivisionReadModelFromJson(Map<String, dynamic> json) {
  return _DivisionReadModel.fromJson(json);
}

/// @nodoc
class _$DivisionReadModelTearOff {
  const _$DivisionReadModelTearOff();

  _DivisionReadModel call(
      {String? name,
      String? description,
      String? code,
      String? image,
      int? priority,
      int? id,
      @JsonKey(name: "uom_name") List<DataInclude>? uom,
      @JsonKey(name: "category_name") List<DataInclude>? category,
      @JsonKey(name: "group_name") List<DataInclude>? groupName,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _DivisionReadModel(
      name: name,
      description: description,
      code: code,
      image: image,
      priority: priority,
      id: id,
      uom: uom,
      category: category,
      groupName: groupName,
      isMixed: isMixed,
      isActive: isActive,
    );
  }

  DivisionReadModel fromJson(Map<String, Object> json) {
    return DivisionReadModel.fromJson(json);
  }
}

/// @nodoc
const $DivisionReadModel = _$DivisionReadModelTearOff();

/// @nodoc
mixin _$DivisionReadModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name")
  List<DataInclude>? get uom => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  List<DataInclude>? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "group_name")
  List<DataInclude>? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_mixed", defaultValue: false)
  bool? get isMixed => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionReadModelCopyWith<DivisionReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionReadModelCopyWith<$Res> {
  factory $DivisionReadModelCopyWith(
          DivisionReadModel value, $Res Function(DivisionReadModel) then) =
      _$DivisionReadModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? description,
      String? code,
      String? image,
      int? priority,
      int? id,
      @JsonKey(name: "uom_name") List<DataInclude>? uom,
      @JsonKey(name: "category_name") List<DataInclude>? category,
      @JsonKey(name: "group_name") List<DataInclude>? groupName,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$DivisionReadModelCopyWithImpl<$Res>
    implements $DivisionReadModelCopyWith<$Res> {
  _$DivisionReadModelCopyWithImpl(this._value, this._then);

  final DivisionReadModel _value;
  // ignore: unused_field
  final $Res Function(DivisionReadModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? priority = freezed,
    Object? id = freezed,
    Object? uom = freezed,
    Object? category = freezed,
    Object? groupName = freezed,
    Object? isMixed = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      isMixed: isMixed == freezed
          ? _value.isMixed
          : isMixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DivisionReadModelCopyWith<$Res>
    implements $DivisionReadModelCopyWith<$Res> {
  factory _$DivisionReadModelCopyWith(
          _DivisionReadModel value, $Res Function(_DivisionReadModel) then) =
      __$DivisionReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? description,
      String? code,
      String? image,
      int? priority,
      int? id,
      @JsonKey(name: "uom_name") List<DataInclude>? uom,
      @JsonKey(name: "category_name") List<DataInclude>? category,
      @JsonKey(name: "group_name") List<DataInclude>? groupName,
      @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$DivisionReadModelCopyWithImpl<$Res>
    extends _$DivisionReadModelCopyWithImpl<$Res>
    implements _$DivisionReadModelCopyWith<$Res> {
  __$DivisionReadModelCopyWithImpl(
      _DivisionReadModel _value, $Res Function(_DivisionReadModel) _then)
      : super(_value, (v) => _then(v as _DivisionReadModel));

  @override
  _DivisionReadModel get _value => super._value as _DivisionReadModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? priority = freezed,
    Object? id = freezed,
    Object? uom = freezed,
    Object? category = freezed,
    Object? groupName = freezed,
    Object? isMixed = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_DivisionReadModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as List<DataInclude>?,
      isMixed: isMixed == freezed
          ? _value.isMixed
          : isMixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DivisionReadModel implements _DivisionReadModel {
  const _$_DivisionReadModel(
      {this.name,
      this.description,
      this.code,
      this.image,
      this.priority,
      this.id,
      @JsonKey(name: "uom_name") this.uom,
      @JsonKey(name: "category_name") this.category,
      @JsonKey(name: "group_name") this.groupName,
      @JsonKey(name: "is_mixed", defaultValue: false) this.isMixed,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_DivisionReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_DivisionReadModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? code;
  @override
  final String? image;
  @override
  final int? priority;
  @override
  final int? id;
  @override
  @JsonKey(name: "uom_name")
  final List<DataInclude>? uom;
  @override
  @JsonKey(name: "category_name")
  final List<DataInclude>? category;
  @override
  @JsonKey(name: "group_name")
  final List<DataInclude>? groupName;
  @override
  @JsonKey(name: "is_mixed", defaultValue: false)
  final bool? isMixed;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'DivisionReadModel(name: $name, description: $description, code: $code, image: $image, priority: $priority, id: $id, uom: $uom, category: $category, groupName: $groupName, isMixed: $isMixed, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DivisionReadModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uom, uom) ||
                const DeepCollectionEquality().equals(other.uom, uom)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.isMixed, isMixed) ||
                const DeepCollectionEquality()
                    .equals(other.isMixed, isMixed)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uom) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(isMixed) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$DivisionReadModelCopyWith<_DivisionReadModel> get copyWith =>
      __$DivisionReadModelCopyWithImpl<_DivisionReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DivisionReadModelToJson(this);
  }
}

abstract class _DivisionReadModel implements DivisionReadModel {
  const factory _DivisionReadModel(
          {String? name,
          String? description,
          String? code,
          String? image,
          int? priority,
          int? id,
          @JsonKey(name: "uom_name") List<DataInclude>? uom,
          @JsonKey(name: "category_name") List<DataInclude>? category,
          @JsonKey(name: "group_name") List<DataInclude>? groupName,
          @JsonKey(name: "is_mixed", defaultValue: false) bool? isMixed,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_DivisionReadModel;

  factory _DivisionReadModel.fromJson(Map<String, dynamic> json) =
      _$_DivisionReadModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get priority => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_name")
  List<DataInclude>? get uom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_name")
  List<DataInclude>? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "group_name")
  List<DataInclude>? get groupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_mixed", defaultValue: false)
  bool? get isMixed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DivisionReadModelCopyWith<_DivisionReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataInclude _$DataIncludeFromJson(Map<String, dynamic> json) {
  return _DataInclude.fromJson(json);
}

/// @nodoc
class _$DataIncludeTearOff {
  const _$DataIncludeTearOff();

  _DataInclude call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _DataInclude(
      id: id,
      name: name,
      code: code,
      uomCode: uomCode,
      isActive: isActive,
    );
  }

  DataInclude fromJson(Map<String, Object> json) {
    return DataInclude.fromJson(json);
  }
}

/// @nodoc
const $DataInclude = _$DataIncludeTearOff();

/// @nodoc
mixin _$DataInclude {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataIncludeCopyWith<DataInclude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataIncludeCopyWith<$Res> {
  factory $DataIncludeCopyWith(
          DataInclude value, $Res Function(DataInclude) then) =
      _$DataIncludeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$DataIncludeCopyWithImpl<$Res> implements $DataIncludeCopyWith<$Res> {
  _$DataIncludeCopyWithImpl(this._value, this._then);

  final DataInclude _value;
  // ignore: unused_field
  final $Res Function(DataInclude) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? uomCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DataIncludeCopyWith<$Res>
    implements $DataIncludeCopyWith<$Res> {
  factory _$DataIncludeCopyWith(
          _DataInclude value, $Res Function(_DataInclude) then) =
      __$DataIncludeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$DataIncludeCopyWithImpl<$Res> extends _$DataIncludeCopyWithImpl<$Res>
    implements _$DataIncludeCopyWith<$Res> {
  __$DataIncludeCopyWithImpl(
      _DataInclude _value, $Res Function(_DataInclude) _then)
      : super(_value, (v) => _then(v as _DataInclude));

  @override
  _DataInclude get _value => super._value as _DataInclude;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? uomCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_DataInclude(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
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
class _$_DataInclude implements _DataInclude {
  const _$_DataInclude(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: "uom_code") this.uomCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_DataInclude.fromJson(Map<String, dynamic> json) =>
      _$$_DataIncludeFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'DataInclude(id: $id, name: $name, code: $code, uomCode: $uomCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataInclude &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$DataIncludeCopyWith<_DataInclude> get copyWith =>
      __$DataIncludeCopyWithImpl<_DataInclude>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataIncludeToJson(this);
  }
}

abstract class _DataInclude implements DataInclude {
  const factory _DataInclude(
          {int? id,
          String? name,
          String? code,
          @JsonKey(name: "uom_code") String? uomCode,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_DataInclude;

  factory _DataInclude.fromJson(Map<String, dynamic> json) =
      _$_DataInclude.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataIncludeCopyWith<_DataInclude> get copyWith =>
      throw _privateConstructorUsedError;
}
