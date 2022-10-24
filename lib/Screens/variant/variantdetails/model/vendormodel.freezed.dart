// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vendormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorDetailsModel _$VendorDetailsModelFromJson(Map<String, dynamic> json) {
  return _VendorDetailsModel.fromJson(json);
}

/// @nodoc
class _$VendorDetailsModelTearOff {
  const _$VendorDetailsModelTearOff();

  _VendorDetailsModel call(
      {int? id,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") String? manuFactureName}) {
    return _VendorDetailsModel(
      id: id,
      manuFactureuserCode: manuFactureuserCode,
      manuFactureName: manuFactureName,
    );
  }

  VendorDetailsModel fromJson(Map<String, Object> json) {
    return VendorDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $VendorDetailsModel = _$VendorDetailsModelTearOff();

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
      _$VendorDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});
}

/// @nodoc
class _$VendorDetailsModelCopyWithImpl<$Res>
    implements $VendorDetailsModelCopyWith<$Res> {
  _$VendorDetailsModelCopyWithImpl(this._value, this._then);

  final VendorDetailsModel _value;
  // ignore: unused_field
  final $Res Function(VendorDetailsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? manuFactureuserCode = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFactureuserCode: manuFactureuserCode == freezed
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureName: manuFactureName == freezed
          ? _value.manuFactureName
          : manuFactureName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VendorDetailsModelCopyWith<$Res>
    implements $VendorDetailsModelCopyWith<$Res> {
  factory _$VendorDetailsModelCopyWith(
          _VendorDetailsModel value, $Res Function(_VendorDetailsModel) then) =
      __$VendorDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});
}

/// @nodoc
class __$VendorDetailsModelCopyWithImpl<$Res>
    extends _$VendorDetailsModelCopyWithImpl<$Res>
    implements _$VendorDetailsModelCopyWith<$Res> {
  __$VendorDetailsModelCopyWithImpl(
      _VendorDetailsModel _value, $Res Function(_VendorDetailsModel) _then)
      : super(_value, (v) => _then(v as _VendorDetailsModel));

  @override
  _VendorDetailsModel get _value => super._value as _VendorDetailsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? manuFactureuserCode = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_VendorDetailsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFactureuserCode: manuFactureuserCode == freezed
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureName: manuFactureName == freezed
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
        (other is _VendorDetailsModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.manuFactureuserCode, manuFactureuserCode) ||
                const DeepCollectionEquality()
                    .equals(other.manuFactureuserCode, manuFactureuserCode)) &&
            (identical(other.manuFactureName, manuFactureName) ||
                const DeepCollectionEquality()
                    .equals(other.manuFactureName, manuFactureName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(manuFactureuserCode) ^
      const DeepCollectionEquality().hash(manuFactureName);

  @JsonKey(ignore: true)
  @override
  _$VendorDetailsModelCopyWith<_VendorDetailsModel> get copyWith =>
      __$VendorDetailsModelCopyWithImpl<_VendorDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDetailsModelToJson(this);
  }
}

abstract class _VendorDetailsModel implements VendorDetailsModel {
  const factory _VendorDetailsModel(
          {int? id,
          @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
          @JsonKey(name: "manufacturer_name") String? manuFactureName}) =
      _$_VendorDetailsModel;

  factory _VendorDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_VendorDetailsModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacturer_usercode")
  String? get manuFactureuserCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacturer_name")
  String? get manuFactureName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VendorDetailsModelCopyWith<_VendorDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
