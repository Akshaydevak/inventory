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
  Address? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacturer_usercode")
  String? get manuFactureuserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_email")
  String? get alternativeEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "tr_number")
  int? get trnNumber => throw _privateConstructorUsedError;
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
      Address? address,
      String? email,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "alternative_email") String? alternativeEmail,
      @JsonKey(name: "tr_number") int? trnNumber,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});

  $AddressCopyWith<$Res>? get address;
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
    Object? address = freezed,
    Object? email = freezed,
    Object? manuFactureuserCode = freezed,
    Object? alternativeEmail = freezed,
    Object? trnNumber = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureuserCode: freezed == manuFactureuserCode
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeEmail: freezed == alternativeEmail
          ? _value.alternativeEmail
          : alternativeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFactureName: freezed == manuFactureName
          ? _value.manuFactureName
          : manuFactureName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
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
      Address? address,
      String? email,
      @JsonKey(name: "manufacturer_usercode") String? manuFactureuserCode,
      @JsonKey(name: "alternative_email") String? alternativeEmail,
      @JsonKey(name: "tr_number") int? trnNumber,
      @JsonKey(name: "manufacturer_name") String? manuFactureName});

  @override
  $AddressCopyWith<$Res>? get address;
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
    Object? address = freezed,
    Object? email = freezed,
    Object? manuFactureuserCode = freezed,
    Object? alternativeEmail = freezed,
    Object? trnNumber = freezed,
    Object? manuFactureName = freezed,
  }) {
    return _then(_$_VendorDetailsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      manuFactureuserCode: freezed == manuFactureuserCode
          ? _value.manuFactureuserCode
          : manuFactureuserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeEmail: freezed == alternativeEmail
          ? _value.alternativeEmail
          : alternativeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
      this.address,
      this.email,
      @JsonKey(name: "manufacturer_usercode") this.manuFactureuserCode,
      @JsonKey(name: "alternative_email") this.alternativeEmail,
      @JsonKey(name: "tr_number") this.trnNumber,
      @JsonKey(name: "manufacturer_name") this.manuFactureName});

  factory _$_VendorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_VendorDetailsModelFromJson(json);

  @override
  final int? id;
  @override
  final Address? address;
  @override
  final String? email;
  @override
  @JsonKey(name: "manufacturer_usercode")
  final String? manuFactureuserCode;
  @override
  @JsonKey(name: "alternative_email")
  final String? alternativeEmail;
  @override
  @JsonKey(name: "tr_number")
  final int? trnNumber;
  @override
  @JsonKey(name: "manufacturer_name")
  final String? manuFactureName;

  @override
  String toString() {
    return 'VendorDetailsModel(id: $id, address: $address, email: $email, manuFactureuserCode: $manuFactureuserCode, alternativeEmail: $alternativeEmail, trnNumber: $trnNumber, manuFactureName: $manuFactureName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.manuFactureuserCode, manuFactureuserCode) ||
                other.manuFactureuserCode == manuFactureuserCode) &&
            (identical(other.alternativeEmail, alternativeEmail) ||
                other.alternativeEmail == alternativeEmail) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.manuFactureName, manuFactureName) ||
                other.manuFactureName == manuFactureName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, address, email,
      manuFactureuserCode, alternativeEmail, trnNumber, manuFactureName);

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
      final Address? address,
      final String? email,
      @JsonKey(name: "manufacturer_usercode")
          final String? manuFactureuserCode,
      @JsonKey(name: "alternative_email")
          final String? alternativeEmail,
      @JsonKey(name: "tr_number")
          final int? trnNumber,
      @JsonKey(name: "manufacturer_name")
          final String? manuFactureName}) = _$_VendorDetailsModel;

  factory _VendorDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_VendorDetailsModel.fromJson;

  @override
  int? get id;
  @override
  Address? get address;
  @override
  String? get email;
  @override
  @JsonKey(name: "manufacturer_usercode")
  String? get manuFactureuserCode;
  @override
  @JsonKey(name: "alternative_email")
  String? get alternativeEmail;
  @override
  @JsonKey(name: "tr_number")
  int? get trnNumber;
  @override
  @JsonKey(name: "manufacturer_name")
  String? get manuFactureName;
  @override
  @JsonKey(ignore: true)
  _$$_VendorDetailsModelCopyWith<_$_VendorDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({int? id, String? email, String? phone, String? place});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? email, String? phone, String? place});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_Address(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address({this.id, this.email, this.phone, this.place});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? place;

  @override
  String toString() {
    return 'Address(id: $id, email: $email, phone: $phone, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final int? id,
      final String? email,
      final String? phone,
      final String? place}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get place;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
