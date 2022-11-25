// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vendormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorDetailsModel _$VendorDetailsModelFromJson(Map<String, dynamic> json) {
  return _VendorDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$VendorDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacturer_usercode")
  String? get manuFactureuserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacturer_name")
  String? get manuFactureName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorDetailsModelCopyWith<VendorDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDetailsModelCopyWith<$Res> {
  factory $VendorDetailsModelCopyWith(
          VendorDetailsModel value, $Res Function(VendorDetailsModel) then) =
      _$VendorDetailsModelCopyWithImpl<$Res, VendorDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});
}

/// @nodoc
class _$VendorDetailsModelCopyWithImpl<$Res, $Val extends VendorDetailsModel>
    implements $VendorDetailsModelCopyWith<$Res> {
  _$VendorDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? manuFactureuserCode = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFactureuserCode: freezed == manuFactureuserCode
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureName: freezed == manuFactureName
          ? _value.manuFactureName
          : manuFactureName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendorDetailsModelCopyWith<$Res>
    implements $VendorDetailsModelCopyWith<$Res> {
  factory _$$_VendorDetailsModelCopyWith(_$_VendorDetailsModel value,
          $Res Function(_$_VendorDetailsModel) then) =
      __$$_VendorDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});
}

/// @nodoc
class __$$_VendorDetailsModelCopyWithImpl<$Res>
    extends _$VendorDetailsModelCopyWithImpl<$Res, _$_VendorDetailsModel>
    implements _$$_VendorDetailsModelCopyWith<$Res> {
  __$$_VendorDetailsModelCopyWithImpl(
      _$_VendorDetailsModel _value, $Res Function(_$_VendorDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? manuFactureuserCode = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_$_VendorDetailsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFactureuserCode: freezed == manuFactureuserCode
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureName: freezed == manuFactureName
          ? _value.manuFactureName
          : manuFactureName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorDetailsModel implements _VendorDetailsModel {
  const _$_VendorDetailsModel(
      {this.id,
      @JsonKey(name: "manufacturer_usercode") this.manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") this.manuFactureName});

  factory _$_VendorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_VendorDetailsModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "manufacturer_usercode")
  final String? manuFactureuserCode;
  @override
  @JsonKey(name: "manufacturer_name")
  final String? manuFactureName;

  @override
  String toString() {
    return 'VendorDetailsModel(id: $id, manuFactureuserCode: $manuFactureuserCode, manuFactureName: $manuFactureName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.manuFactureuserCode, manuFactureuserCode) ||
                other.manuFactureuserCode == manuFactureuserCode) &&
            (identical(other.manuFactureName, manuFactureName) ||
                other.manuFactureName == manuFactureName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, manuFactureuserCode, manuFactureName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorDetailsModelCopyWith<_$_VendorDetailsModel> get copyWith =>
      __$$_VendorDetailsModelCopyWithImpl<_$_VendorDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDetailsModelToJson(
      this,
    );
  }
}

abstract class _VendorDetailsModel implements VendorDetailsModel {
  const factory _VendorDetailsModel(
      {final int? id,
      @JsonKey(name: "manufacturer_usercode")
          final String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name")
          final String? manuFactureName}) = _$_VendorDetailsModel;

  factory _VendorDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_VendorDetailsModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "manufacturer_usercode")
  String? get manuFactureuserCode;
  @override
  @JsonKey(name: "manufacturer_name")
  String? get manuFactureName;
  @override
  @JsonKey(ignore: true)
  _$$_VendorDetailsModelCopyWith<_$_VendorDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
