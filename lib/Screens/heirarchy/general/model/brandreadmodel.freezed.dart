// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brandreadmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandReadModel _$BrandReadModelFromJson(Map<String, dynamic> json) {
  return _BrandReadModel.fromJson(json);
}

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
      _$BrandReadModelCopyWithImpl<$Res, BrandReadModel>;
  @useResult
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
class _$BrandReadModelCopyWithImpl<$Res, $Val extends BrandReadModel>
    implements $BrandReadModelCopyWith<$Res> {
  _$BrandReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_BrandReadModelCopyWith<$Res>
    implements $BrandReadModelCopyWith<$Res> {
  factory _$$_BrandReadModelCopyWith(
          _$_BrandReadModel value, $Res Function(_$_BrandReadModel) then) =
      __$$_BrandReadModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_BrandReadModelCopyWithImpl<$Res>
    extends _$BrandReadModelCopyWithImpl<$Res, _$_BrandReadModel>
    implements _$$_BrandReadModelCopyWith<$Res> {
  __$$_BrandReadModelCopyWithImpl(
      _$_BrandReadModel _value, $Res Function(_$_BrandReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_BrandReadModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
        (other.runtimeType == runtimeType &&
            other is _$_BrandReadModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandIdentifierUrl, brandIdentifierUrl) ||
                other.brandIdentifierUrl == brandIdentifierUrl) &&
            (identical(other.parentCode, parentCode) ||
                other.parentCode == parentCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, name, code, image,
      id, brandIdentifierUrl, parentCode, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandReadModelCopyWith<_$_BrandReadModel> get copyWith =>
      __$$_BrandReadModelCopyWithImpl<_$_BrandReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandReadModelToJson(
      this,
    );
  }
}

abstract class _BrandReadModel implements BrandReadModel {
  const factory _BrandReadModel(
      {final String? description,
      final String? name,
      final String? code,
      final String? image,
      final int? id,
      @JsonKey(name: "brand_identifier_url")
          final String? brandIdentifierUrl,
      @JsonKey(name: "parent_code")
          final String? parentCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_BrandReadModel;

  factory _BrandReadModel.fromJson(Map<String, dynamic> json) =
      _$_BrandReadModel.fromJson;

  @override
  String? get description;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get image;
  @override
  int? get id;
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
  _$$_BrandReadModelCopyWith<_$_BrandReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
