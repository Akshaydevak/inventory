// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brandcreation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandCreationtModel _$BrandCreationtModelFromJson(Map<String, dynamic> json) {
  return _BrandCreationtModel.fromJson(json);
}

/// @nodoc
class _$BrandCreationtModelTearOff {
  const _$BrandCreationtModelTearOff();

  _BrandCreationtModel call(
      {String? description,
      String? name,
      int? image,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _BrandCreationtModel(
      description: description,
      name: name,
      image: image,
      brandIdentifierUrl: brandIdentifierUrl,
      parentCode: parentCode,
      isActive: isActive,
    );
  }

  BrandCreationtModel fromJson(Map<String, Object> json) {
    return BrandCreationtModel.fromJson(json);
  }
}

/// @nodoc
const $BrandCreationtModel = _$BrandCreationtModelTearOff();

/// @nodoc
mixin _$BrandCreationtModel {
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_identifier_url")
  String? get brandIdentifierUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_code")
  String? get parentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCreationtModelCopyWith<BrandCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCreationtModelCopyWith<$Res> {
  factory $BrandCreationtModelCopyWith(
          BrandCreationtModel value, $Res Function(BrandCreationtModel) then) =
      _$BrandCreationtModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? name,
      int? image,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$BrandCreationtModelCopyWithImpl<$Res>
    implements $BrandCreationtModelCopyWith<$Res> {
  _$BrandCreationtModelCopyWithImpl(this._value, this._then);

  final BrandCreationtModel _value;
  // ignore: unused_field
  final $Res Function(BrandCreationtModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? name = freezed,
    Object? image = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$BrandCreationtModelCopyWith<$Res>
    implements $BrandCreationtModelCopyWith<$Res> {
  factory _$BrandCreationtModelCopyWith(_BrandCreationtModel value,
          $Res Function(_BrandCreationtModel) then) =
      __$BrandCreationtModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? name,
      int? image,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$BrandCreationtModelCopyWithImpl<$Res>
    extends _$BrandCreationtModelCopyWithImpl<$Res>
    implements _$BrandCreationtModelCopyWith<$Res> {
  __$BrandCreationtModelCopyWithImpl(
      _BrandCreationtModel _value, $Res Function(_BrandCreationtModel) _then)
      : super(_value, (v) => _then(v as _BrandCreationtModel));

  @override
  _BrandCreationtModel get _value => super._value as _BrandCreationtModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? brandIdentifierUrl = freezed,
    Object? parentCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_BrandCreationtModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_BrandCreationtModel implements _BrandCreationtModel {
  const _$_BrandCreationtModel(
      {this.description,
      this.name,
      this.image,
      @JsonKey(name: "brand_identifier_url") this.brandIdentifierUrl,
      @JsonKey(name: "parent_code") this.parentCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_BrandCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandCreationtModelFromJson(json);

  @override
  final String? description;
  @override
  final String? name;
  @override
  final int? image;
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
    return 'BrandCreationtModel(description: $description, name: $name, image: $image, brandIdentifierUrl: $brandIdentifierUrl, parentCode: $parentCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandCreationtModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
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
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(brandIdentifierUrl) ^
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$BrandCreationtModelCopyWith<_BrandCreationtModel> get copyWith =>
      __$BrandCreationtModelCopyWithImpl<_BrandCreationtModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandCreationtModelToJson(this);
  }
}

abstract class _BrandCreationtModel implements BrandCreationtModel {
  const factory _BrandCreationtModel(
          {String? description,
          String? name,
          int? image,
          @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
          @JsonKey(name: "parent_code") String? parentCode,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_BrandCreationtModel;

  factory _BrandCreationtModel.fromJson(Map<String, dynamic> json) =
      _$_BrandCreationtModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get image => throw _privateConstructorUsedError;
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
  _$BrandCreationtModelCopyWith<_BrandCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}
