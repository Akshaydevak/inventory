// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listbrand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandListModel _$BrandListModelFromJson(Map<String, dynamic> json) {
  return _BrandListModel.fromJson(json);
}

/// @nodoc
mixin _$BrandListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "standard_code")
  String? get standardCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framework_name")
  String? get variantFrameWorkName => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandListModelCopyWith<BrandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandListModelCopyWith<$Res> {
  factory $BrandListModelCopyWith(
          BrandListModel value, $Res Function(BrandListModel) then) =
      _$BrandListModelCopyWithImpl<$Res, BrandListModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class _$BrandListModelCopyWithImpl<$Res, $Val extends BrandListModel>
    implements $BrandListModelCopyWith<$Res> {
  _$BrandListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? standardCode = freezed,
    Object? variantFrameWorkName = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: freezed == standardCode
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: freezed == variantFrameWorkName
          ? _value.variantFrameWorkName
          : variantFrameWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: freezed == uomCode
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandListModelCopyWith<$Res>
    implements $BrandListModelCopyWith<$Res> {
  factory _$$_BrandListModelCopyWith(
          _$_BrandListModel value, $Res Function(_$_BrandListModel) then) =
      __$$_BrandListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class __$$_BrandListModelCopyWithImpl<$Res>
    extends _$BrandListModelCopyWithImpl<$Res, _$_BrandListModel>
    implements _$$_BrandListModelCopyWith<$Res> {
  __$$_BrandListModelCopyWithImpl(
      _$_BrandListModel _value, $Res Function(_$_BrandListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? standardCode = freezed,
    Object? variantFrameWorkName = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_$_BrandListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: freezed == standardCode
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: freezed == variantFrameWorkName
          ? _value.variantFrameWorkName
          : variantFrameWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: freezed == uomCode
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandListModel implements _BrandListModel {
  const _$_BrandListModel(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: "standard_code") this.standardCode,
      @JsonKey(name: "variant_framework_name") this.variantFrameWorkName,
      @JsonKey(name: "uom_code") this.uomCode});

  factory _$_BrandListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: "standard_code")
  final String? standardCode;
  @override
  @JsonKey(name: "variant_framework_name")
  final String? variantFrameWorkName;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;

  @override
  String toString() {
    return 'BrandListModel(id: $id, name: $name, code: $code, standardCode: $standardCode, variantFrameWorkName: $variantFrameWorkName, uomCode: $uomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.standardCode, standardCode) ||
                other.standardCode == standardCode) &&
            (identical(other.variantFrameWorkName, variantFrameWorkName) ||
                other.variantFrameWorkName == variantFrameWorkName) &&
            (identical(other.uomCode, uomCode) || other.uomCode == uomCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, standardCode, variantFrameWorkName, uomCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandListModelCopyWith<_$_BrandListModel> get copyWith =>
      __$$_BrandListModelCopyWithImpl<_$_BrandListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandListModelToJson(
      this,
    );
  }
}

abstract class _BrandListModel implements BrandListModel {
  const factory _BrandListModel(
      {final int? id,
      final String? name,
      final String? code,
      @JsonKey(name: "standard_code")
          final String? standardCode,
      @JsonKey(name: "variant_framework_name")
          final String? variantFrameWorkName,
      @JsonKey(name: "uom_code")
          final String? uomCode}) = _$_BrandListModel;

  factory _BrandListModel.fromJson(Map<String, dynamic> json) =
      _$_BrandListModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(name: "standard_code")
  String? get standardCode;
  @override
  @JsonKey(name: "variant_framework_name")
  String? get variantFrameWorkName;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode;
  @override
  @JsonKey(ignore: true)
  _$$_BrandListModelCopyWith<_$_BrandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
