// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantId _$VariantIdFromJson(Map<String, dynamic> json) {
  return _VariantId.fromJson(json);
}

/// @nodoc
class _$VariantIdTearOff {
  const _$VariantIdTearOff();

  _VariantId call(
      {int? id, String? code, String? category, String? uom, String? name}) {
    return _VariantId(
      id: id,
      code: code,
      category: category,
      uom: uom,
      name: name,
    );
  }

  VariantId fromJson(Map<String, Object> json) {
    return VariantId.fromJson(json);
  }
}

/// @nodoc
const $VariantId = _$VariantIdTearOff();

/// @nodoc
mixin _$VariantId {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get uom =>
      throw _privateConstructorUsedError; // final double? unit_cost,
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantIdCopyWith<VariantId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantIdCopyWith<$Res> {
  factory $VariantIdCopyWith(VariantId value, $Res Function(VariantId) then) =
      _$VariantIdCopyWithImpl<$Res>;
  $Res call(
      {int? id, String? code, String? category, String? uom, String? name});
}

/// @nodoc
class _$VariantIdCopyWithImpl<$Res> implements $VariantIdCopyWith<$Res> {
  _$VariantIdCopyWithImpl(this._value, this._then);

  final VariantId _value;
  // ignore: unused_field
  final $Res Function(VariantId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VariantIdCopyWith<$Res> implements $VariantIdCopyWith<$Res> {
  factory _$VariantIdCopyWith(
          _VariantId value, $Res Function(_VariantId) then) =
      __$VariantIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id, String? code, String? category, String? uom, String? name});
}

/// @nodoc
class __$VariantIdCopyWithImpl<$Res> extends _$VariantIdCopyWithImpl<$Res>
    implements _$VariantIdCopyWith<$Res> {
  __$VariantIdCopyWithImpl(_VariantId _value, $Res Function(_VariantId) _then)
      : super(_value, (v) => _then(v as _VariantId));

  @override
  _VariantId get _value => super._value as _VariantId;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? name = freezed,
  }) {
    return _then(_VariantId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantId implements _VariantId {
  const _$_VariantId({this.id, this.code, this.category, this.uom, this.name});

  factory _$_VariantId.fromJson(Map<String, dynamic> json) =>
      _$$_VariantIdFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? category;
  @override
  final String? uom;
  @override // final double? unit_cost,
  final String? name;

  @override
  String toString() {
    return 'VariantId(id: $id, code: $code, category: $category, uom: $uom, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.uom, uom) ||
                const DeepCollectionEquality().equals(other.uom, uom)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(uom) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$VariantIdCopyWith<_VariantId> get copyWith =>
      __$VariantIdCopyWithImpl<_VariantId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantIdToJson(this);
  }
}

abstract class _VariantId implements VariantId {
  const factory _VariantId(
      {int? id,
      String? code,
      String? category,
      String? uom,
      String? name}) = _$_VariantId;

  factory _VariantId.fromJson(Map<String, dynamic> json) =
      _$_VariantId.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get uom => throw _privateConstructorUsedError;
  @override // final double? unit_cost,
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantIdCopyWith<_VariantId> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorCodeModel _$VendorCodeModelFromJson(Map<String, dynamic> json) {
  return _VendorCodeModel.fromJson(json);
}

/// @nodoc
class _$VendorCodeModelTearOff {
  const _$VendorCodeModelTearOff();

  _VendorCodeModel call({List<Result>? results}) {
    return _VendorCodeModel(
      results: results,
    );
  }

  VendorCodeModel fromJson(Map<String, Object> json) {
    return VendorCodeModel.fromJson(json);
  }
}

/// @nodoc
const $VendorCodeModel = _$VendorCodeModelTearOff();

/// @nodoc
mixin _$VendorCodeModel {
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCodeModelCopyWith<VendorCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCodeModelCopyWith<$Res> {
  factory $VendorCodeModelCopyWith(
          VendorCodeModel value, $Res Function(VendorCodeModel) then) =
      _$VendorCodeModelCopyWithImpl<$Res>;
  $Res call({List<Result>? results});
}

/// @nodoc
class _$VendorCodeModelCopyWithImpl<$Res>
    implements $VendorCodeModelCopyWith<$Res> {
  _$VendorCodeModelCopyWithImpl(this._value, this._then);

  final VendorCodeModel _value;
  // ignore: unused_field
  final $Res Function(VendorCodeModel) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
abstract class _$VendorCodeModelCopyWith<$Res>
    implements $VendorCodeModelCopyWith<$Res> {
  factory _$VendorCodeModelCopyWith(
          _VendorCodeModel value, $Res Function(_VendorCodeModel) then) =
      __$VendorCodeModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Result>? results});
}

/// @nodoc
class __$VendorCodeModelCopyWithImpl<$Res>
    extends _$VendorCodeModelCopyWithImpl<$Res>
    implements _$VendorCodeModelCopyWith<$Res> {
  __$VendorCodeModelCopyWithImpl(
      _VendorCodeModel _value, $Res Function(_VendorCodeModel) _then)
      : super(_value, (v) => _then(v as _VendorCodeModel));

  @override
  _VendorCodeModel get _value => super._value as _VendorCodeModel;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_VendorCodeModel(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorCodeModel implements _VendorCodeModel {
  const _$_VendorCodeModel({this.results});

  factory _$_VendorCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VendorCodeModelFromJson(json);

  @override
  final List<Result>? results;

  @override
  String toString() {
    return 'VendorCodeModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VendorCodeModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$VendorCodeModelCopyWith<_VendorCodeModel> get copyWith =>
      __$VendorCodeModelCopyWithImpl<_VendorCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorCodeModelToJson(this);
  }
}

abstract class _VendorCodeModel implements VendorCodeModel {
  const factory _VendorCodeModel({List<Result>? results}) = _$_VendorCodeModel;

  factory _VendorCodeModel.fromJson(Map<String, dynamic> json) =
      _$_VendorCodeModel.fromJson;

  @override
  List<Result>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VendorCodeModelCopyWith<_VendorCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization}) {
    return _Result(
      id: id,
      userLoginId: userLoginId,
      partnerCode: partnerCode,
      isOrganization: isOrganization,
    );
  }

  Result fromJson(Map<String, Object> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_login_id")
  int? get userLoginId => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_organization")
  bool? get isOrganization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: userLoginId == freezed
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: isOrganization == freezed
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: userLoginId == freezed
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: isOrganization == freezed
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      @JsonKey(name: "user_login_id") this.userLoginId,
      @JsonKey(name: "partner_code") this.partnerCode,
      @JsonKey(name: "is_organization") this.isOrganization});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_login_id")
  final int? userLoginId;
  @override
  @JsonKey(name: "partner_code")
  final String? partnerCode;
  @override
  @JsonKey(name: "is_organization")
  final bool? isOrganization;

  @override
  String toString() {
    return 'Result(id: $id, userLoginId: $userLoginId, partnerCode: $partnerCode, isOrganization: $isOrganization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Result &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userLoginId, userLoginId) ||
                const DeepCollectionEquality()
                    .equals(other.userLoginId, userLoginId)) &&
            (identical(other.partnerCode, partnerCode) ||
                const DeepCollectionEquality()
                    .equals(other.partnerCode, partnerCode)) &&
            (identical(other.isOrganization, isOrganization) ||
                const DeepCollectionEquality()
                    .equals(other.isOrganization, isOrganization)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userLoginId) ^
      const DeepCollectionEquality().hash(partnerCode) ^
      const DeepCollectionEquality().hash(isOrganization);

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_login_id")
  int? get userLoginId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_organization")
  bool? get isOrganization => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}

VariantDetailsModel _$VariantDetailsModelFromJson(Map<String, dynamic> json) {
  return _VariantDetailsModel.fromJson(json);
}

/// @nodoc
class _$VariantDetailsModelTearOff {
  const _$VariantDetailsModelTearOff();

  _VariantDetailsModel call(
      {@JsonKey(name: "partner_data")
          PartnerData? partnerData,
      @JsonKey(name: "partner_organization_data")
          List<PartnerOrganizationData>? partnerOrganizationdata,
      @JsonKey(name: "partner_address_data")
          List<PartnerAddressdata>? partnerAddressdata}) {
    return _VariantDetailsModel(
      partnerData: partnerData,
      partnerOrganizationdata: partnerOrganizationdata,
      partnerAddressdata: partnerAddressdata,
    );
  }

  VariantDetailsModel fromJson(Map<String, Object> json) {
    return VariantDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $VariantDetailsModel = _$VariantDetailsModelTearOff();

/// @nodoc
mixin _$VariantDetailsModel {
  @JsonKey(name: "partner_data")
  PartnerData? get partnerData => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_organization_data")
  List<PartnerOrganizationData>? get partnerOrganizationdata =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "partner_address_data")
  List<PartnerAddressdata>? get partnerAddressdata =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantDetailsModelCopyWith<VariantDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantDetailsModelCopyWith<$Res> {
  factory $VariantDetailsModelCopyWith(
          VariantDetailsModel value, $Res Function(VariantDetailsModel) then) =
      _$VariantDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "partner_data")
          PartnerData? partnerData,
      @JsonKey(name: "partner_organization_data")
          List<PartnerOrganizationData>? partnerOrganizationdata,
      @JsonKey(name: "partner_address_data")
          List<PartnerAddressdata>? partnerAddressdata});

  $PartnerDataCopyWith<$Res>? get partnerData;
}

/// @nodoc
class _$VariantDetailsModelCopyWithImpl<$Res>
    implements $VariantDetailsModelCopyWith<$Res> {
  _$VariantDetailsModelCopyWithImpl(this._value, this._then);

  final VariantDetailsModel _value;
  // ignore: unused_field
  final $Res Function(VariantDetailsModel) _then;

  @override
  $Res call({
    Object? partnerData = freezed,
    Object? partnerOrganizationdata = freezed,
    Object? partnerAddressdata = freezed,
  }) {
    return _then(_value.copyWith(
      partnerData: partnerData == freezed
          ? _value.partnerData
          : partnerData // ignore: cast_nullable_to_non_nullable
              as PartnerData?,
      partnerOrganizationdata: partnerOrganizationdata == freezed
          ? _value.partnerOrganizationdata
          : partnerOrganizationdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerOrganizationData>?,
      partnerAddressdata: partnerAddressdata == freezed
          ? _value.partnerAddressdata
          : partnerAddressdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerAddressdata>?,
    ));
  }

  @override
  $PartnerDataCopyWith<$Res>? get partnerData {
    if (_value.partnerData == null) {
      return null;
    }

    return $PartnerDataCopyWith<$Res>(_value.partnerData!, (value) {
      return _then(_value.copyWith(partnerData: value));
    });
  }
}

/// @nodoc
abstract class _$VariantDetailsModelCopyWith<$Res>
    implements $VariantDetailsModelCopyWith<$Res> {
  factory _$VariantDetailsModelCopyWith(_VariantDetailsModel value,
          $Res Function(_VariantDetailsModel) then) =
      __$VariantDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "partner_data")
          PartnerData? partnerData,
      @JsonKey(name: "partner_organization_data")
          List<PartnerOrganizationData>? partnerOrganizationdata,
      @JsonKey(name: "partner_address_data")
          List<PartnerAddressdata>? partnerAddressdata});

  @override
  $PartnerDataCopyWith<$Res>? get partnerData;
}

/// @nodoc
class __$VariantDetailsModelCopyWithImpl<$Res>
    extends _$VariantDetailsModelCopyWithImpl<$Res>
    implements _$VariantDetailsModelCopyWith<$Res> {
  __$VariantDetailsModelCopyWithImpl(
      _VariantDetailsModel _value, $Res Function(_VariantDetailsModel) _then)
      : super(_value, (v) => _then(v as _VariantDetailsModel));

  @override
  _VariantDetailsModel get _value => super._value as _VariantDetailsModel;

  @override
  $Res call({
    Object? partnerData = freezed,
    Object? partnerOrganizationdata = freezed,
    Object? partnerAddressdata = freezed,
  }) {
    return _then(_VariantDetailsModel(
      partnerData: partnerData == freezed
          ? _value.partnerData
          : partnerData // ignore: cast_nullable_to_non_nullable
              as PartnerData?,
      partnerOrganizationdata: partnerOrganizationdata == freezed
          ? _value.partnerOrganizationdata
          : partnerOrganizationdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerOrganizationData>?,
      partnerAddressdata: partnerAddressdata == freezed
          ? _value.partnerAddressdata
          : partnerAddressdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerAddressdata>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantDetailsModel implements _VariantDetailsModel {
  const _$_VariantDetailsModel(
      {@JsonKey(name: "partner_data") this.partnerData,
      @JsonKey(name: "partner_organization_data") this.partnerOrganizationdata,
      @JsonKey(name: "partner_address_data") this.partnerAddressdata});

  factory _$_VariantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantDetailsModelFromJson(json);

  @override
  @JsonKey(name: "partner_data")
  final PartnerData? partnerData;
  @override
  @JsonKey(name: "partner_organization_data")
  final List<PartnerOrganizationData>? partnerOrganizationdata;
  @override
  @JsonKey(name: "partner_address_data")
  final List<PartnerAddressdata>? partnerAddressdata;

  @override
  String toString() {
    return 'VariantDetailsModel(partnerData: $partnerData, partnerOrganizationdata: $partnerOrganizationdata, partnerAddressdata: $partnerAddressdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantDetailsModel &&
            (identical(other.partnerData, partnerData) ||
                const DeepCollectionEquality()
                    .equals(other.partnerData, partnerData)) &&
            (identical(
                    other.partnerOrganizationdata, partnerOrganizationdata) ||
                const DeepCollectionEquality().equals(
                    other.partnerOrganizationdata, partnerOrganizationdata)) &&
            (identical(other.partnerAddressdata, partnerAddressdata) ||
                const DeepCollectionEquality()
                    .equals(other.partnerAddressdata, partnerAddressdata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(partnerData) ^
      const DeepCollectionEquality().hash(partnerOrganizationdata) ^
      const DeepCollectionEquality().hash(partnerAddressdata);

  @JsonKey(ignore: true)
  @override
  _$VariantDetailsModelCopyWith<_VariantDetailsModel> get copyWith =>
      __$VariantDetailsModelCopyWithImpl<_VariantDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantDetailsModelToJson(this);
  }
}

abstract class _VariantDetailsModel implements VariantDetailsModel {
  const factory _VariantDetailsModel(
          {@JsonKey(name: "partner_data")
              PartnerData? partnerData,
          @JsonKey(name: "partner_organization_data")
              List<PartnerOrganizationData>? partnerOrganizationdata,
          @JsonKey(name: "partner_address_data")
              List<PartnerAddressdata>? partnerAddressdata}) =
      _$_VariantDetailsModel;

  factory _VariantDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_VariantDetailsModel.fromJson;

  @override
  @JsonKey(name: "partner_data")
  PartnerData? get partnerData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "partner_organization_data")
  List<PartnerOrganizationData>? get partnerOrganizationdata =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "partner_address_data")
  List<PartnerAddressdata>? get partnerAddressdata =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantDetailsModelCopyWith<_VariantDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerData _$PartnerDataFromJson(Map<String, dynamic> json) {
  return _PartnerData.fromJson(json);
}

/// @nodoc
class _$PartnerDataTearOff {
  const _$PartnerDataTearOff();

  _PartnerData call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization}) {
    return _PartnerData(
      id: id,
      userLoginId: userLoginId,
      partnerCode: partnerCode,
      isOrganization: isOrganization,
    );
  }

  PartnerData fromJson(Map<String, Object> json) {
    return PartnerData.fromJson(json);
  }
}

/// @nodoc
const $PartnerData = _$PartnerDataTearOff();

/// @nodoc
mixin _$PartnerData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_login_id")
  int? get userLoginId => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_organization")
  bool? get isOrganization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerDataCopyWith<PartnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerDataCopyWith<$Res> {
  factory $PartnerDataCopyWith(
          PartnerData value, $Res Function(PartnerData) then) =
      _$PartnerDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class _$PartnerDataCopyWithImpl<$Res> implements $PartnerDataCopyWith<$Res> {
  _$PartnerDataCopyWithImpl(this._value, this._then);

  final PartnerData _value;
  // ignore: unused_field
  final $Res Function(PartnerData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: userLoginId == freezed
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: isOrganization == freezed
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PartnerDataCopyWith<$Res>
    implements $PartnerDataCopyWith<$Res> {
  factory _$PartnerDataCopyWith(
          _PartnerData value, $Res Function(_PartnerData) then) =
      __$PartnerDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class __$PartnerDataCopyWithImpl<$Res> extends _$PartnerDataCopyWithImpl<$Res>
    implements _$PartnerDataCopyWith<$Res> {
  __$PartnerDataCopyWithImpl(
      _PartnerData _value, $Res Function(_PartnerData) _then)
      : super(_value, (v) => _then(v as _PartnerData));

  @override
  _PartnerData get _value => super._value as _PartnerData;

  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_PartnerData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: userLoginId == freezed
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: isOrganization == freezed
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerData implements _PartnerData {
  const _$_PartnerData(
      {this.id,
      @JsonKey(name: "user_login_id") this.userLoginId,
      @JsonKey(name: "partner_code") this.partnerCode,
      @JsonKey(name: "is_organization") this.isOrganization});

  factory _$_PartnerData.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerDataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_login_id")
  final int? userLoginId;
  @override
  @JsonKey(name: "partner_code")
  final String? partnerCode;
  @override
  @JsonKey(name: "is_organization")
  final bool? isOrganization;

  @override
  String toString() {
    return 'PartnerData(id: $id, userLoginId: $userLoginId, partnerCode: $partnerCode, isOrganization: $isOrganization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PartnerData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userLoginId, userLoginId) ||
                const DeepCollectionEquality()
                    .equals(other.userLoginId, userLoginId)) &&
            (identical(other.partnerCode, partnerCode) ||
                const DeepCollectionEquality()
                    .equals(other.partnerCode, partnerCode)) &&
            (identical(other.isOrganization, isOrganization) ||
                const DeepCollectionEquality()
                    .equals(other.isOrganization, isOrganization)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userLoginId) ^
      const DeepCollectionEquality().hash(partnerCode) ^
      const DeepCollectionEquality().hash(isOrganization);

  @JsonKey(ignore: true)
  @override
  _$PartnerDataCopyWith<_PartnerData> get copyWith =>
      __$PartnerDataCopyWithImpl<_PartnerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerDataToJson(this);
  }
}

abstract class _PartnerData implements PartnerData {
  const factory _PartnerData(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization}) = _$_PartnerData;

  factory _PartnerData.fromJson(Map<String, dynamic> json) =
      _$_PartnerData.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_login_id")
  int? get userLoginId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_organization")
  bool? get isOrganization => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PartnerDataCopyWith<_PartnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerOrganizationData _$PartnerOrganizationDataFromJson(
    Map<String, dynamic> json) {
  return _PartnerOrganizationData.fromJson(json);
}

/// @nodoc
class _$PartnerOrganizationDataTearOff {
  const _$PartnerOrganizationDataTearOff();

  _PartnerOrganizationData call(
      {int? id,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "email_1") String? email,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "display_name") String? displayName}) {
    return _PartnerOrganizationData(
      id: id,
      partnerCode: partnerCode,
      email: email,
      trnNumber: trnNumber,
      displayName: displayName,
    );
  }

  PartnerOrganizationData fromJson(Map<String, Object> json) {
    return PartnerOrganizationData.fromJson(json);
  }
}

/// @nodoc
const $PartnerOrganizationData = _$PartnerOrganizationDataTearOff();

/// @nodoc
mixin _$PartnerOrganizationData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "email_1")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerOrganizationDataCopyWith<PartnerOrganizationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerOrganizationDataCopyWith<$Res> {
  factory $PartnerOrganizationDataCopyWith(PartnerOrganizationData value,
          $Res Function(PartnerOrganizationData) then) =
      _$PartnerOrganizationDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "email_1") String? email,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "display_name") String? displayName});
}

/// @nodoc
class _$PartnerOrganizationDataCopyWithImpl<$Res>
    implements $PartnerOrganizationDataCopyWith<$Res> {
  _$PartnerOrganizationDataCopyWithImpl(this._value, this._then);

  final PartnerOrganizationData _value;
  // ignore: unused_field
  final $Res Function(PartnerOrganizationData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? partnerCode = freezed,
    Object? email = freezed,
    Object? trnNumber = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PartnerOrganizationDataCopyWith<$Res>
    implements $PartnerOrganizationDataCopyWith<$Res> {
  factory _$PartnerOrganizationDataCopyWith(_PartnerOrganizationData value,
          $Res Function(_PartnerOrganizationData) then) =
      __$PartnerOrganizationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "email_1") String? email,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "display_name") String? displayName});
}

/// @nodoc
class __$PartnerOrganizationDataCopyWithImpl<$Res>
    extends _$PartnerOrganizationDataCopyWithImpl<$Res>
    implements _$PartnerOrganizationDataCopyWith<$Res> {
  __$PartnerOrganizationDataCopyWithImpl(_PartnerOrganizationData _value,
      $Res Function(_PartnerOrganizationData) _then)
      : super(_value, (v) => _then(v as _PartnerOrganizationData));

  @override
  _PartnerOrganizationData get _value =>
      super._value as _PartnerOrganizationData;

  @override
  $Res call({
    Object? id = freezed,
    Object? partnerCode = freezed,
    Object? email = freezed,
    Object? trnNumber = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_PartnerOrganizationData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerOrganizationData implements _PartnerOrganizationData {
  const _$_PartnerOrganizationData(
      {this.id,
      @JsonKey(name: "partner_code") this.partnerCode,
      @JsonKey(name: "email_1") this.email,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "display_name") this.displayName});

  factory _$_PartnerOrganizationData.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerOrganizationDataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "partner_code")
  final String? partnerCode;
  @override
  @JsonKey(name: "email_1")
  final String? email;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;

  @override
  String toString() {
    return 'PartnerOrganizationData(id: $id, partnerCode: $partnerCode, email: $email, trnNumber: $trnNumber, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PartnerOrganizationData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.partnerCode, partnerCode) ||
                const DeepCollectionEquality()
                    .equals(other.partnerCode, partnerCode)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.trnNumber, trnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trnNumber, trnNumber)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(partnerCode) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(trnNumber) ^
      const DeepCollectionEquality().hash(displayName);

  @JsonKey(ignore: true)
  @override
  _$PartnerOrganizationDataCopyWith<_PartnerOrganizationData> get copyWith =>
      __$PartnerOrganizationDataCopyWithImpl<_PartnerOrganizationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerOrganizationDataToJson(this);
  }
}

abstract class _PartnerOrganizationData implements PartnerOrganizationData {
  const factory _PartnerOrganizationData(
          {int? id,
          @JsonKey(name: "partner_code") String? partnerCode,
          @JsonKey(name: "email_1") String? email,
          @JsonKey(name: "trn_number") String? trnNumber,
          @JsonKey(name: "display_name") String? displayName}) =
      _$_PartnerOrganizationData;

  factory _PartnerOrganizationData.fromJson(Map<String, dynamic> json) =
      _$_PartnerOrganizationData.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "email_1")
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PartnerOrganizationDataCopyWith<_PartnerOrganizationData> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerAddressdata _$PartnerAddressdataFromJson(Map<String, dynamic> json) {
  return _PartnerAddressdata.fromJson(json);
}

/// @nodoc
class _$PartnerAddressdataTearOff {
  const _$PartnerAddressdataTearOff();

  _PartnerAddressdata call(
      {int? id, @JsonKey(name: "address_type") String? addressType}) {
    return _PartnerAddressdata(
      id: id,
      addressType: addressType,
    );
  }

  PartnerAddressdata fromJson(Map<String, Object> json) {
    return PartnerAddressdata.fromJson(json);
  }
}

/// @nodoc
const $PartnerAddressdata = _$PartnerAddressdataTearOff();

/// @nodoc
mixin _$PartnerAddressdata {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerAddressdataCopyWith<PartnerAddressdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerAddressdataCopyWith<$Res> {
  factory $PartnerAddressdataCopyWith(
          PartnerAddressdata value, $Res Function(PartnerAddressdata) then) =
      _$PartnerAddressdataCopyWithImpl<$Res>;
  $Res call({int? id, @JsonKey(name: "address_type") String? addressType});
}

/// @nodoc
class _$PartnerAddressdataCopyWithImpl<$Res>
    implements $PartnerAddressdataCopyWith<$Res> {
  _$PartnerAddressdataCopyWithImpl(this._value, this._then);

  final PartnerAddressdata _value;
  // ignore: unused_field
  final $Res Function(PartnerAddressdata) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PartnerAddressdataCopyWith<$Res>
    implements $PartnerAddressdataCopyWith<$Res> {
  factory _$PartnerAddressdataCopyWith(
          _PartnerAddressdata value, $Res Function(_PartnerAddressdata) then) =
      __$PartnerAddressdataCopyWithImpl<$Res>;
  @override
  $Res call({int? id, @JsonKey(name: "address_type") String? addressType});
}

/// @nodoc
class __$PartnerAddressdataCopyWithImpl<$Res>
    extends _$PartnerAddressdataCopyWithImpl<$Res>
    implements _$PartnerAddressdataCopyWith<$Res> {
  __$PartnerAddressdataCopyWithImpl(
      _PartnerAddressdata _value, $Res Function(_PartnerAddressdata) _then)
      : super(_value, (v) => _then(v as _PartnerAddressdata));

  @override
  _PartnerAddressdata get _value => super._value as _PartnerAddressdata;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_PartnerAddressdata(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerAddressdata implements _PartnerAddressdata {
  const _$_PartnerAddressdata(
      {this.id, @JsonKey(name: "address_type") this.addressType});

  factory _$_PartnerAddressdata.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerAddressdataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "address_type")
  final String? addressType;

  @override
  String toString() {
    return 'PartnerAddressdata(id: $id, addressType: $addressType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PartnerAddressdata &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.addressType, addressType) ||
                const DeepCollectionEquality()
                    .equals(other.addressType, addressType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(addressType);

  @JsonKey(ignore: true)
  @override
  _$PartnerAddressdataCopyWith<_PartnerAddressdata> get copyWith =>
      __$PartnerAddressdataCopyWithImpl<_PartnerAddressdata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerAddressdataToJson(this);
  }
}

abstract class _PartnerAddressdata implements PartnerAddressdata {
  const factory _PartnerAddressdata(
          {int? id, @JsonKey(name: "address_type") String? addressType}) =
      _$_PartnerAddressdata;

  factory _PartnerAddressdata.fromJson(Map<String, dynamic> json) =
      _$_PartnerAddressdata.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PartnerAddressdataCopyWith<_PartnerAddressdata> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseInvoice _$PurchaseInvoiceFromJson(Map<String, dynamic> json) {
  return _PurchaseInvoice.fromJson(json);
}

/// @nodoc
class _$PurchaseInvoiceTearOff {
  const _$PurchaseInvoiceTearOff();

  _PurchaseInvoice call(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId}) {
    return _PurchaseInvoice(
      id: id,
      invoiceCode: invoiceCode,
      inventoryId: inventoryId,
    );
  }

  PurchaseInvoice fromJson(Map<String, Object> json) {
    return PurchaseInvoice.fromJson(json);
  }
}

/// @nodoc
const $PurchaseInvoice = _$PurchaseInvoiceTearOff();

/// @nodoc
mixin _$PurchaseInvoice {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseInvoiceCopyWith<PurchaseInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseInvoiceCopyWith<$Res> {
  factory $PurchaseInvoiceCopyWith(
          PurchaseInvoice value, $Res Function(PurchaseInvoice) then) =
      _$PurchaseInvoiceCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class _$PurchaseInvoiceCopyWithImpl<$Res>
    implements $PurchaseInvoiceCopyWith<$Res> {
  _$PurchaseInvoiceCopyWithImpl(this._value, this._then);

  final PurchaseInvoice _value;
  // ignore: unused_field
  final $Res Function(PurchaseInvoice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseInvoiceCopyWith<$Res>
    implements $PurchaseInvoiceCopyWith<$Res> {
  factory _$PurchaseInvoiceCopyWith(
          _PurchaseInvoice value, $Res Function(_PurchaseInvoice) then) =
      __$PurchaseInvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class __$PurchaseInvoiceCopyWithImpl<$Res>
    extends _$PurchaseInvoiceCopyWithImpl<$Res>
    implements _$PurchaseInvoiceCopyWith<$Res> {
  __$PurchaseInvoiceCopyWithImpl(
      _PurchaseInvoice _value, $Res Function(_PurchaseInvoice) _then)
      : super(_value, (v) => _then(v as _PurchaseInvoice));

  @override
  _PurchaseInvoice get _value => super._value as _PurchaseInvoice;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_PurchaseInvoice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseInvoice implements _PurchaseInvoice {
  const _$_PurchaseInvoice(
      {this.id,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "inventory_id") this.inventoryId});

  factory _$_PurchaseInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseInvoiceFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;

  @override
  String toString() {
    return 'PurchaseInvoice(id: $id, invoiceCode: $invoiceCode, inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseInvoice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(inventoryId);

  @JsonKey(ignore: true)
  @override
  _$PurchaseInvoiceCopyWith<_PurchaseInvoice> get copyWith =>
      __$PurchaseInvoiceCopyWithImpl<_PurchaseInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseInvoiceToJson(this);
  }
}

abstract class _PurchaseInvoice implements PurchaseInvoice {
  const factory _PurchaseInvoice(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId}) = _$_PurchaseInvoice;

  factory _PurchaseInvoice.fromJson(Map<String, dynamic> json) =
      _$_PurchaseInvoice.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseInvoiceCopyWith<_PurchaseInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}
