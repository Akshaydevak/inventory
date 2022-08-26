// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brandreadmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandReadModel _$BrandReadModelFromJson(Map<String, dynamic> json) {
  return _BrandReadModel.fromJson(json);
}

/// @nodoc
class _$BrandReadModelTearOff {
  const _$BrandReadModelTearOff();

  _BrandReadModel call(
      {String? description,
      String? name,
      String? code,
      String? image,
      int? id,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _BrandReadModel(
      description: description,
      name: name,
      code: code,
      image: image,
      id: id,
      brandIdentifierUrl: brandIdentifierUrl,
      parentCode: parentCode,
      isActive: isActive,
    );
  }

  BrandReadModel fromJson(Map<String, Object> json) {
    return BrandReadModel.fromJson(json);
  }
}

/// @nodoc
const $BrandReadModel = _$BrandReadModelTearOff();

/// @nodoc
mixin _$BrandReadModel {
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_identifier_url")
  String? get brandIdentifierUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_code")
  String? get parentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandReadModelCopyWith<BrandReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandReadModelCopyWith<$Res> {
  factory $BrandReadModelCopyWith(
          BrandReadModel value, $Res Function(BrandReadModel) then) =
      _$BrandReadModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? name,
      String? code,
      String? image,
      int? id,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$BrandReadModelCopyWithImpl<$Res>
    implements $BrandReadModelCopyWith<$Res> {
  _$BrandReadModelCopyWithImpl(this._value, this._then);

  final BrandReadModel _value;
  // ignore: unused_field
  final $Res Function(BrandReadModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? brandIdentifierUrl = freezed,
    Object? parentCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandIdentifierUrl: brandIdentifierUrl == freezed
          ? _value.brandIdentifierUrl
          : brandIdentifierUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: parentCode == freezed
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$BrandReadModelCopyWith<$Res>
    implements $BrandReadModelCopyWith<$Res> {
  factory _$BrandReadModelCopyWith(
          _BrandReadModel value, $Res Function(_BrandReadModel) then) =
      __$BrandReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? name,
      String? code,
      String? image,
      int? id,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$BrandReadModelCopyWithImpl<$Res>
    extends _$BrandReadModelCopyWithImpl<$Res>
    implements _$BrandReadModelCopyWith<$Res> {
  __$BrandReadModelCopyWithImpl(
      _BrandReadModel _value, $Res Function(_BrandReadModel) _then)
      : super(_value, (v) => _then(v as _BrandReadModel));

  @override
  _BrandReadModel get _value => super._value as _BrandReadModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? brandIdentifierUrl = freezed,
    Object? parentCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_BrandReadModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandIdentifierUrl: brandIdentifierUrl == freezed
          ? _value.brandIdentifierUrl
          : brandIdentifierUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: parentCode == freezed
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
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
class _$_BrandReadModel implements _BrandReadModel {
  const _$_BrandReadModel(
      {this.description,
      this.name,
      this.code,
      this.image,
      this.id,
      @JsonKey(name: "brand_identifier_url") this.brandIdentifierUrl,
      @JsonKey(name: "parent_code") this.parentCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_BrandReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandReadModelFromJson(json);

  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? image;
  @override
  final int? id;
  @override
  @JsonKey(name: "brand_identifier_url")
  final String? brandIdentifierUrl;
  @override
  @JsonKey(name: "parent_code")
  final String? parentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'BrandReadModel(description: $description, name: $name, code: $code, image: $image, id: $id, brandIdentifierUrl: $brandIdentifierUrl, parentCode: $parentCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandReadModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.brandIdentifierUrl, brandIdentifierUrl) ||
                const DeepCollectionEquality()
                    .equals(other.brandIdentifierUrl, brandIdentifierUrl)) &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(brandIdentifierUrl) ^
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$BrandReadModelCopyWith<_BrandReadModel> get copyWith =>
      __$BrandReadModelCopyWithImpl<_BrandReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandReadModelToJson(this);
  }
}

abstract class _BrandReadModel implements BrandReadModel {
  const factory _BrandReadModel(
          {String? description,
          String? name,
          String? code,
          String? image,
          int? id,
          @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
          @JsonKey(name: "parent_code") String? parentCode,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_BrandReadModel;

  factory _BrandReadModel.fromJson(Map<String, dynamic> json) =
      _$_BrandReadModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "brand_identifier_url")
  String? get brandIdentifierUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "parent_code")
  String? get parentCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BrandReadModelCopyWith<_BrandReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
