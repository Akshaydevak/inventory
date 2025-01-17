// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brandcreation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandCreationtModel _$BrandCreationtModelFromJson(Map<String, dynamic> json) {
  return _BrandCreationtModel.fromJson(json);
}

/// @nodoc
mixin _$BrandCreationtModel {
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
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
      _$BrandCreationtModelCopyWithImpl<$Res, BrandCreationtModel>;
  @useResult
  $Res call(
      {String? description,
      String? name,
      String? image,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$BrandCreationtModelCopyWithImpl<$Res, $Val extends BrandCreationtModel>
    implements $BrandCreationtModelCopyWith<$Res> {
  _$BrandCreationtModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      brandIdentifierUrl: freezed == brandIdentifierUrl
          ? _value.brandIdentifierUrl
          : brandIdentifierUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: freezed == parentCode
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandCreationtModelCopyWith<$Res>
    implements $BrandCreationtModelCopyWith<$Res> {
  factory _$$_BrandCreationtModelCopyWith(_$_BrandCreationtModel value,
          $Res Function(_$_BrandCreationtModel) then) =
      __$$_BrandCreationtModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? name,
      String? image,
      @JsonKey(name: "brand_identifier_url") String? brandIdentifierUrl,
      @JsonKey(name: "parent_code") String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_BrandCreationtModelCopyWithImpl<$Res>
    extends _$BrandCreationtModelCopyWithImpl<$Res, _$_BrandCreationtModel>
    implements _$$_BrandCreationtModelCopyWith<$Res> {
  __$$_BrandCreationtModelCopyWithImpl(_$_BrandCreationtModel _value,
      $Res Function(_$_BrandCreationtModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? brandIdentifierUrl = freezed,
    Object? parentCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_BrandCreationtModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      brandIdentifierUrl: freezed == brandIdentifierUrl
          ? _value.brandIdentifierUrl
          : brandIdentifierUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCode: freezed == parentCode
          ? _value.parentCode
          : parentCode // ignore: cast_nullable_to_non_nullable
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
  final String? image;
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
        (other.runtimeType == runtimeType &&
            other is _$_BrandCreationtModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.brandIdentifierUrl, brandIdentifierUrl) ||
                other.brandIdentifierUrl == brandIdentifierUrl) &&
            (identical(other.parentCode, parentCode) ||
                other.parentCode == parentCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, name, image,
      brandIdentifierUrl, parentCode, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandCreationtModelCopyWith<_$_BrandCreationtModel> get copyWith =>
      __$$_BrandCreationtModelCopyWithImpl<_$_BrandCreationtModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandCreationtModelToJson(
      this,
    );
  }
}

abstract class _BrandCreationtModel implements BrandCreationtModel {
  const factory _BrandCreationtModel(
      {final String? description,
      final String? name,
      final String? image,
      @JsonKey(name: "brand_identifier_url")
          final String? brandIdentifierUrl,
      @JsonKey(name: "parent_code")
          final String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_BrandCreationtModel;

  factory _BrandCreationtModel.fromJson(Map<String, dynamic> json) =
      _$_BrandCreationtModel.fromJson;

  @override
  String? get description;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(name: "brand_identifier_url")
  String? get brandIdentifierUrl;
  @override
  @JsonKey(name: "parent_code")
  String? get parentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCreationtModelCopyWith<_$_BrandCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}
