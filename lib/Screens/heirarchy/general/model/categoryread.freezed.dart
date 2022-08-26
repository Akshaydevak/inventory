// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categoryread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryReadModel _$CategoryReadModelFromJson(Map<String, dynamic> json) {
  return _CategoryReadModel.fromJson(json);
}

/// @nodoc
class _$CategoryReadModelTearOff {
  const _$CategoryReadModelTearOff();

  _CategoryReadModel call(
      {String? description,
      String? code,
      String? status,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "alternative_name") String? alternativename,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "division_code") String? divisionCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _CategoryReadModel(
      description: description,
      code: code,
      status: status,
      name: name,
      image: image,
      id: id,
      alternativename: alternativename,
      parentCode: parentCode,
      divisionCode: divisionCode,
      isActive: isActive,
    );
  }

  CategoryReadModel fromJson(Map<String, Object> json) {
    return CategoryReadModel.fromJson(json);
  }
}

/// @nodoc
const $CategoryReadModel = _$CategoryReadModelTearOff();

/// @nodoc
mixin _$CategoryReadModel {
  String? get description => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_name")
  String? get alternativename => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_code")
  String? get parentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "division_code")
  String? get divisionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryReadModelCopyWith<CategoryReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryReadModelCopyWith<$Res> {
  factory $CategoryReadModelCopyWith(
          CategoryReadModel value, $Res Function(CategoryReadModel) then) =
      _$CategoryReadModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? code,
      String? status,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "alternative_name") String? alternativename,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "division_code") String? divisionCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$CategoryReadModelCopyWithImpl<$Res>
    implements $CategoryReadModelCopyWith<$Res> {
  _$CategoryReadModelCopyWithImpl(this._value, this._then);

  final CategoryReadModel _value;
  // ignore: unused_field
  final $Res Function(CategoryReadModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? alternativename = freezed,
    Object? parentCode = freezed,
    Object? divisionCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      alternativename: alternativename == freezed
          ? _value.alternativename
          : alternativename // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: parentCode == freezed
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionCode: divisionCode == freezed
          ? _value.divisionCode
          : divisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryReadModelCopyWith<$Res>
    implements $CategoryReadModelCopyWith<$Res> {
  factory _$CategoryReadModelCopyWith(
          _CategoryReadModel value, $Res Function(_CategoryReadModel) then) =
      __$CategoryReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? code,
      String? status,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "alternative_name") String? alternativename,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "division_code") String? divisionCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$CategoryReadModelCopyWithImpl<$Res>
    extends _$CategoryReadModelCopyWithImpl<$Res>
    implements _$CategoryReadModelCopyWith<$Res> {
  __$CategoryReadModelCopyWithImpl(
      _CategoryReadModel _value, $Res Function(_CategoryReadModel) _then)
      : super(_value, (v) => _then(v as _CategoryReadModel));

  @override
  _CategoryReadModel get _value => super._value as _CategoryReadModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? alternativename = freezed,
    Object? parentCode = freezed,
    Object? divisionCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_CategoryReadModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      alternativename: alternativename == freezed
          ? _value.alternativename
          : alternativename // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: parentCode == freezed
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionCode: divisionCode == freezed
          ? _value.divisionCode
          : divisionCode // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryReadModel implements _CategoryReadModel {
  const _$_CategoryReadModel(
      {this.description,
      this.code,
      this.status,
      this.name,
      this.image,
      this.id,
      @JsonKey(name: "alternative_name") this.alternativename,
      @JsonKey(name: "parent_code") this.parentCode,
      @JsonKey(name: "division_code") this.divisionCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_CategoryReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryReadModelFromJson(json);

  @override
  final String? description;
  @override
  final String? code;
  @override
  final String? status;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? id;
  @override
  @JsonKey(name: "alternative_name")
  final String? alternativename;
  @override
  @JsonKey(name: "parent_code")
  final String? parentCode;
  @override
  @JsonKey(name: "division_code")
  final String? divisionCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'CategoryReadModel(description: $description, code: $code, status: $status, name: $name, image: $image, id: $id, alternativename: $alternativename, parentCode: $parentCode, divisionCode: $divisionCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryReadModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.alternativename, alternativename) ||
                const DeepCollectionEquality()
                    .equals(other.alternativename, alternativename)) &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.divisionCode, divisionCode) ||
                const DeepCollectionEquality()
                    .equals(other.divisionCode, divisionCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(alternativename) ^
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(divisionCode) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$CategoryReadModelCopyWith<_CategoryReadModel> get copyWith =>
      __$CategoryReadModelCopyWithImpl<_CategoryReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryReadModelToJson(this);
  }
}

abstract class _CategoryReadModel implements CategoryReadModel {
  const factory _CategoryReadModel(
          {String? description,
          String? code,
          String? status,
          String? name,
          String? image,
          int? id,
          @JsonKey(name: "alternative_name") String? alternativename,
          @JsonKey(name: "parent_code") String? parentCode,
          @JsonKey(name: "division_code") String? divisionCode,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_CategoryReadModel;

  factory _CategoryReadModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryReadModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "alternative_name")
  String? get alternativename => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "parent_code")
  String? get parentCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "division_code")
  String? get divisionCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryReadModelCopyWith<_CategoryReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
