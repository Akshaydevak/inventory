// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantId _$VariantIdFromJson(Map<String, dynamic> json) {
  return _VariantId.fromJson(json);
}

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
      _$VariantIdCopyWithImpl<$Res, VariantId>;
  @useResult
  $Res call(
      {int? id, String? code, String? category, String? uom, String? name});
}

/// @nodoc
class _$VariantIdCopyWithImpl<$Res, $Val extends VariantId>
    implements $VariantIdCopyWith<$Res> {
  _$VariantIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantIdCopyWith<$Res> implements $VariantIdCopyWith<$Res> {
  factory _$$_VariantIdCopyWith(
          _$_VariantId value, $Res Function(_$_VariantId) then) =
      __$$_VariantIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? code, String? category, String? uom, String? name});
}

/// @nodoc
class __$$_VariantIdCopyWithImpl<$Res>
    extends _$VariantIdCopyWithImpl<$Res, _$_VariantId>
    implements _$$_VariantIdCopyWith<$Res> {
  __$$_VariantIdCopyWithImpl(
      _$_VariantId _value, $Res Function(_$_VariantId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_VariantId(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
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
// final double? unit_cost,
  @override
  final String? name;

  @override
  String toString() {
    return 'VariantId(id: $id, code: $code, category: $category, uom: $uom, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, category, uom, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantIdCopyWith<_$_VariantId> get copyWith =>
      __$$_VariantIdCopyWithImpl<_$_VariantId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantIdToJson(
      this,
    );
  }
}

abstract class _VariantId implements VariantId {
  const factory _VariantId(
      {final int? id,
      final String? code,
      final String? category,
      final String? uom,
      final String? name}) = _$_VariantId;

  factory _VariantId.fromJson(Map<String, dynamic> json) =
      _$_VariantId.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get category;
  @override
  String? get uom;
  @override // final double? unit_cost,
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_VariantIdCopyWith<_$_VariantId> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorCodeModel _$VendorCodeModelFromJson(Map<String, dynamic> json) {
  return _VendorCodeModel.fromJson(json);
}

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
      _$VendorCodeModelCopyWithImpl<$Res, VendorCodeModel>;
  @useResult
  $Res call({List<Result>? results});
}

/// @nodoc
class _$VendorCodeModelCopyWithImpl<$Res, $Val extends VendorCodeModel>
    implements $VendorCodeModelCopyWith<$Res> {
  _$VendorCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendorCodeModelCopyWith<$Res>
    implements $VendorCodeModelCopyWith<$Res> {
  factory _$$_VendorCodeModelCopyWith(
          _$_VendorCodeModel value, $Res Function(_$_VendorCodeModel) then) =
      __$$_VendorCodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Result>? results});
}

/// @nodoc
class __$$_VendorCodeModelCopyWithImpl<$Res>
    extends _$VendorCodeModelCopyWithImpl<$Res, _$_VendorCodeModel>
    implements _$$_VendorCodeModelCopyWith<$Res> {
  __$$_VendorCodeModelCopyWithImpl(
      _$_VendorCodeModel _value, $Res Function(_$_VendorCodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_VendorCodeModel(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorCodeModel implements _VendorCodeModel {
  const _$_VendorCodeModel({final List<Result>? results}) : _results = results;

  factory _$_VendorCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VendorCodeModelFromJson(json);

  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorCodeModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorCodeModel &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorCodeModelCopyWith<_$_VendorCodeModel> get copyWith =>
      __$$_VendorCodeModelCopyWithImpl<_$_VendorCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorCodeModelToJson(
      this,
    );
  }
}

abstract class _VendorCodeModel implements VendorCodeModel {
  const factory _VendorCodeModel({final List<Result>? results}) =
      _$_VendorCodeModel;

  factory _VendorCodeModel.fromJson(Map<String, dynamic> json) =
      _$_VendorCodeModel.fromJson;

  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_VendorCodeModelCopyWith<_$_VendorCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
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
      userLoginId: freezed == userLoginId
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: freezed == isOrganization
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userLoginId: freezed == userLoginId
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: freezed == isOrganization
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
      this.name,
      @JsonKey(name: "user_login_id") this.userLoginId,
      @JsonKey(name: "partner_code") this.partnerCode,
      @JsonKey(name: "is_organization") this.isOrganization});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
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
    return 'Result(id: $id, name: $name, userLoginId: $userLoginId, partnerCode: $partnerCode, isOrganization: $isOrganization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userLoginId, userLoginId) ||
                other.userLoginId == userLoginId) &&
            (identical(other.partnerCode, partnerCode) ||
                other.partnerCode == partnerCode) &&
            (identical(other.isOrganization, isOrganization) ||
                other.isOrganization == isOrganization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, userLoginId, partnerCode, isOrganization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
          {final int? id,
          final String? name,
          @JsonKey(name: "user_login_id") final int? userLoginId,
          @JsonKey(name: "partner_code") final String? partnerCode,
          @JsonKey(name: "is_organization") final bool? isOrganization}) =
      _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "user_login_id")
  int? get userLoginId;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode;
  @override
  @JsonKey(name: "is_organization")
  bool? get isOrganization;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantDetailsModel _$VariantDetailsModelFromJson(Map<String, dynamic> json) {
  return _VariantDetailsModel.fromJson(json);
}

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
      _$VariantDetailsModelCopyWithImpl<$Res, VariantDetailsModel>;
  @useResult
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
class _$VariantDetailsModelCopyWithImpl<$Res, $Val extends VariantDetailsModel>
    implements $VariantDetailsModelCopyWith<$Res> {
  _$VariantDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerData = freezed,
    Object? partnerOrganizationdata = freezed,
    Object? partnerAddressdata = freezed,
  }) {
    return _then(_value.copyWith(
      partnerData: freezed == partnerData
          ? _value.partnerData
          : partnerData // ignore: cast_nullable_to_non_nullable
              as PartnerData?,
      partnerOrganizationdata: freezed == partnerOrganizationdata
          ? _value.partnerOrganizationdata
          : partnerOrganizationdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerOrganizationData>?,
      partnerAddressdata: freezed == partnerAddressdata
          ? _value.partnerAddressdata
          : partnerAddressdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerAddressdata>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerDataCopyWith<$Res>? get partnerData {
    if (_value.partnerData == null) {
      return null;
    }

    return $PartnerDataCopyWith<$Res>(_value.partnerData!, (value) {
      return _then(_value.copyWith(partnerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VariantDetailsModelCopyWith<$Res>
    implements $VariantDetailsModelCopyWith<$Res> {
  factory _$$_VariantDetailsModelCopyWith(_$_VariantDetailsModel value,
          $Res Function(_$_VariantDetailsModel) then) =
      __$$_VariantDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_VariantDetailsModelCopyWithImpl<$Res>
    extends _$VariantDetailsModelCopyWithImpl<$Res, _$_VariantDetailsModel>
    implements _$$_VariantDetailsModelCopyWith<$Res> {
  __$$_VariantDetailsModelCopyWithImpl(_$_VariantDetailsModel _value,
      $Res Function(_$_VariantDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerData = freezed,
    Object? partnerOrganizationdata = freezed,
    Object? partnerAddressdata = freezed,
  }) {
    return _then(_$_VariantDetailsModel(
      partnerData: freezed == partnerData
          ? _value.partnerData
          : partnerData // ignore: cast_nullable_to_non_nullable
              as PartnerData?,
      partnerOrganizationdata: freezed == partnerOrganizationdata
          ? _value._partnerOrganizationdata
          : partnerOrganizationdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerOrganizationData>?,
      partnerAddressdata: freezed == partnerAddressdata
          ? _value._partnerAddressdata
          : partnerAddressdata // ignore: cast_nullable_to_non_nullable
              as List<PartnerAddressdata>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantDetailsModel implements _VariantDetailsModel {
  const _$_VariantDetailsModel(
      {@JsonKey(name: "partner_data")
          this.partnerData,
      @JsonKey(name: "partner_organization_data")
          final List<PartnerOrganizationData>? partnerOrganizationdata,
      @JsonKey(name: "partner_address_data")
          final List<PartnerAddressdata>? partnerAddressdata})
      : _partnerOrganizationdata = partnerOrganizationdata,
        _partnerAddressdata = partnerAddressdata;

  factory _$_VariantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantDetailsModelFromJson(json);

  @override
  @JsonKey(name: "partner_data")
  final PartnerData? partnerData;
  final List<PartnerOrganizationData>? _partnerOrganizationdata;
  @override
  @JsonKey(name: "partner_organization_data")
  List<PartnerOrganizationData>? get partnerOrganizationdata {
    final value = _partnerOrganizationdata;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartnerAddressdata>? _partnerAddressdata;
  @override
  @JsonKey(name: "partner_address_data")
  List<PartnerAddressdata>? get partnerAddressdata {
    final value = _partnerAddressdata;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VariantDetailsModel(partnerData: $partnerData, partnerOrganizationdata: $partnerOrganizationdata, partnerAddressdata: $partnerAddressdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantDetailsModel &&
            (identical(other.partnerData, partnerData) ||
                other.partnerData == partnerData) &&
            const DeepCollectionEquality().equals(
                other._partnerOrganizationdata, _partnerOrganizationdata) &&
            const DeepCollectionEquality()
                .equals(other._partnerAddressdata, _partnerAddressdata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partnerData,
      const DeepCollectionEquality().hash(_partnerOrganizationdata),
      const DeepCollectionEquality().hash(_partnerAddressdata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantDetailsModelCopyWith<_$_VariantDetailsModel> get copyWith =>
      __$$_VariantDetailsModelCopyWithImpl<_$_VariantDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantDetailsModelToJson(
      this,
    );
  }
}

abstract class _VariantDetailsModel implements VariantDetailsModel {
  const factory _VariantDetailsModel(
          {@JsonKey(name: "partner_data")
              final PartnerData? partnerData,
          @JsonKey(name: "partner_organization_data")
              final List<PartnerOrganizationData>? partnerOrganizationdata,
          @JsonKey(name: "partner_address_data")
              final List<PartnerAddressdata>? partnerAddressdata}) =
      _$_VariantDetailsModel;

  factory _VariantDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_VariantDetailsModel.fromJson;

  @override
  @JsonKey(name: "partner_data")
  PartnerData? get partnerData;
  @override
  @JsonKey(name: "partner_organization_data")
  List<PartnerOrganizationData>? get partnerOrganizationdata;
  @override
  @JsonKey(name: "partner_address_data")
  List<PartnerAddressdata>? get partnerAddressdata;
  @override
  @JsonKey(ignore: true)
  _$$_VariantDetailsModelCopyWith<_$_VariantDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerData _$PartnerDataFromJson(Map<String, dynamic> json) {
  return _PartnerData.fromJson(json);
}

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
      _$PartnerDataCopyWithImpl<$Res, PartnerData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class _$PartnerDataCopyWithImpl<$Res, $Val extends PartnerData>
    implements $PartnerDataCopyWith<$Res> {
  _$PartnerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: freezed == userLoginId
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: freezed == isOrganization
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerDataCopyWith<$Res>
    implements $PartnerDataCopyWith<$Res> {
  factory _$$_PartnerDataCopyWith(
          _$_PartnerData value, $Res Function(_$_PartnerData) then) =
      __$$_PartnerDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_login_id") int? userLoginId,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "is_organization") bool? isOrganization});
}

/// @nodoc
class __$$_PartnerDataCopyWithImpl<$Res>
    extends _$PartnerDataCopyWithImpl<$Res, _$_PartnerData>
    implements _$$_PartnerDataCopyWith<$Res> {
  __$$_PartnerDataCopyWithImpl(
      _$_PartnerData _value, $Res Function(_$_PartnerData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userLoginId = freezed,
    Object? partnerCode = freezed,
    Object? isOrganization = freezed,
  }) {
    return _then(_$_PartnerData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userLoginId: freezed == userLoginId
          ? _value.userLoginId
          : userLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isOrganization: freezed == isOrganization
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
        (other.runtimeType == runtimeType &&
            other is _$_PartnerData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userLoginId, userLoginId) ||
                other.userLoginId == userLoginId) &&
            (identical(other.partnerCode, partnerCode) ||
                other.partnerCode == partnerCode) &&
            (identical(other.isOrganization, isOrganization) ||
                other.isOrganization == isOrganization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userLoginId, partnerCode, isOrganization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerDataCopyWith<_$_PartnerData> get copyWith =>
      __$$_PartnerDataCopyWithImpl<_$_PartnerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerDataToJson(
      this,
    );
  }
}

abstract class _PartnerData implements PartnerData {
  const factory _PartnerData(
          {final int? id,
          @JsonKey(name: "user_login_id") final int? userLoginId,
          @JsonKey(name: "partner_code") final String? partnerCode,
          @JsonKey(name: "is_organization") final bool? isOrganization}) =
      _$_PartnerData;

  factory _PartnerData.fromJson(Map<String, dynamic> json) =
      _$_PartnerData.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user_login_id")
  int? get userLoginId;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode;
  @override
  @JsonKey(name: "is_organization")
  bool? get isOrganization;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerDataCopyWith<_$_PartnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerOrganizationData _$PartnerOrganizationDataFromJson(
    Map<String, dynamic> json) {
  return _PartnerOrganizationData.fromJson(json);
}

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
      _$PartnerOrganizationDataCopyWithImpl<$Res, PartnerOrganizationData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "email_1") String? email,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "display_name") String? displayName});
}

/// @nodoc
class _$PartnerOrganizationDataCopyWithImpl<$Res,
        $Val extends PartnerOrganizationData>
    implements $PartnerOrganizationDataCopyWith<$Res> {
  _$PartnerOrganizationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerCode = freezed,
    Object? email = freezed,
    Object? trnNumber = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerOrganizationDataCopyWith<$Res>
    implements $PartnerOrganizationDataCopyWith<$Res> {
  factory _$$_PartnerOrganizationDataCopyWith(_$_PartnerOrganizationData value,
          $Res Function(_$_PartnerOrganizationData) then) =
      __$$_PartnerOrganizationDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "partner_code") String? partnerCode,
      @JsonKey(name: "email_1") String? email,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "display_name") String? displayName});
}

/// @nodoc
class __$$_PartnerOrganizationDataCopyWithImpl<$Res>
    extends _$PartnerOrganizationDataCopyWithImpl<$Res,
        _$_PartnerOrganizationData>
    implements _$$_PartnerOrganizationDataCopyWith<$Res> {
  __$$_PartnerOrganizationDataCopyWithImpl(_$_PartnerOrganizationData _value,
      $Res Function(_$_PartnerOrganizationData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerCode = freezed,
    Object? email = freezed,
    Object? trnNumber = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_$_PartnerOrganizationData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerCode: freezed == partnerCode
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
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
        (other.runtimeType == runtimeType &&
            other is _$_PartnerOrganizationData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerCode, partnerCode) ||
                other.partnerCode == partnerCode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partnerCode, email, trnNumber, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerOrganizationDataCopyWith<_$_PartnerOrganizationData>
      get copyWith =>
          __$$_PartnerOrganizationDataCopyWithImpl<_$_PartnerOrganizationData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerOrganizationDataToJson(
      this,
    );
  }
}

abstract class _PartnerOrganizationData implements PartnerOrganizationData {
  const factory _PartnerOrganizationData(
          {final int? id,
          @JsonKey(name: "partner_code") final String? partnerCode,
          @JsonKey(name: "email_1") final String? email,
          @JsonKey(name: "trn_number") final String? trnNumber,
          @JsonKey(name: "display_name") final String? displayName}) =
      _$_PartnerOrganizationData;

  factory _PartnerOrganizationData.fromJson(Map<String, dynamic> json) =
      _$_PartnerOrganizationData.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "partner_code")
  String? get partnerCode;
  @override
  @JsonKey(name: "email_1")
  String? get email;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerOrganizationDataCopyWith<_$_PartnerOrganizationData>
      get copyWith => throw _privateConstructorUsedError;
}

PartnerAddressdata _$PartnerAddressdataFromJson(Map<String, dynamic> json) {
  return _PartnerAddressdata.fromJson(json);
}

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
      _$PartnerAddressdataCopyWithImpl<$Res, PartnerAddressdata>;
  @useResult
  $Res call({int? id, @JsonKey(name: "address_type") String? addressType});
}

/// @nodoc
class _$PartnerAddressdataCopyWithImpl<$Res, $Val extends PartnerAddressdata>
    implements $PartnerAddressdataCopyWith<$Res> {
  _$PartnerAddressdataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerAddressdataCopyWith<$Res>
    implements $PartnerAddressdataCopyWith<$Res> {
  factory _$$_PartnerAddressdataCopyWith(_$_PartnerAddressdata value,
          $Res Function(_$_PartnerAddressdata) then) =
      __$$_PartnerAddressdataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: "address_type") String? addressType});
}

/// @nodoc
class __$$_PartnerAddressdataCopyWithImpl<$Res>
    extends _$PartnerAddressdataCopyWithImpl<$Res, _$_PartnerAddressdata>
    implements _$$_PartnerAddressdataCopyWith<$Res> {
  __$$_PartnerAddressdataCopyWithImpl(
      _$_PartnerAddressdata _value, $Res Function(_$_PartnerAddressdata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_$_PartnerAddressdata(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      addressType: freezed == addressType
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
        (other.runtimeType == runtimeType &&
            other is _$_PartnerAddressdata &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, addressType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerAddressdataCopyWith<_$_PartnerAddressdata> get copyWith =>
      __$$_PartnerAddressdataCopyWithImpl<_$_PartnerAddressdata>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerAddressdataToJson(
      this,
    );
  }
}

abstract class _PartnerAddressdata implements PartnerAddressdata {
  const factory _PartnerAddressdata(
          {final int? id,
          @JsonKey(name: "address_type") final String? addressType}) =
      _$_PartnerAddressdata;

  factory _PartnerAddressdata.fromJson(Map<String, dynamic> json) =
      _$_PartnerAddressdata.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "address_type")
  String? get addressType;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerAddressdataCopyWith<_$_PartnerAddressdata> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseInvoice _$PurchaseInvoiceFromJson(Map<String, dynamic> json) {
  return _PurchaseInvoice.fromJson(json);
}

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
      _$PurchaseInvoiceCopyWithImpl<$Res, PurchaseInvoice>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class _$PurchaseInvoiceCopyWithImpl<$Res, $Val extends PurchaseInvoice>
    implements $PurchaseInvoiceCopyWith<$Res> {
  _$PurchaseInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseInvoiceCopyWith<$Res>
    implements $PurchaseInvoiceCopyWith<$Res> {
  factory _$$_PurchaseInvoiceCopyWith(
          _$_PurchaseInvoice value, $Res Function(_$_PurchaseInvoice) then) =
      __$$_PurchaseInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class __$$_PurchaseInvoiceCopyWithImpl<$Res>
    extends _$PurchaseInvoiceCopyWithImpl<$Res, _$_PurchaseInvoice>
    implements _$$_PurchaseInvoiceCopyWith<$Res> {
  __$$_PurchaseInvoiceCopyWithImpl(
      _$_PurchaseInvoice _value, $Res Function(_$_PurchaseInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_$_PurchaseInvoice(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
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
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoiceCode, inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseInvoiceCopyWith<_$_PurchaseInvoice> get copyWith =>
      __$$_PurchaseInvoiceCopyWithImpl<_$_PurchaseInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseInvoiceToJson(
      this,
    );
  }
}

abstract class _PurchaseInvoice implements PurchaseInvoice {
  const factory _PurchaseInvoice(
          {final int? id,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "inventory_id") final String? inventoryId}) =
      _$_PurchaseInvoice;

  factory _PurchaseInvoice.fromJson(Map<String, dynamic> json) =
      _$_PurchaseInvoice.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseInvoiceCopyWith<_$_PurchaseInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}
