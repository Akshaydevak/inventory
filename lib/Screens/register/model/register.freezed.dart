// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _RegisterModel call(
      {String? email,
      String? password,
      String? mobile,
      String? lname,
      String? fname,
      String? country,
      String? gender,
      String? token,
      @JsonKey(name: "acess_site") String? accesssite,
      @JsonKey(name: "created_code") int? createdCode,
      @JsonKey(name: "isLoggedIn", defaultValue: false) bool? isLoggedIn}) {
    return _RegisterModel(
      email: email,
      password: password,
      mobile: mobile,
      lname: lname,
      fname: fname,
      country: country,
      gender: gender,
      token: token,
      accesssite: accesssite,
      createdCode: createdCode,
      isLoggedIn: isLoggedIn,
    );
  }

  RegisterModel fromJson(Map<String, Object> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  String? get fname => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "acess_site")
  String? get accesssite => throw _privateConstructorUsedError;
  @JsonKey(name: "created_code")
  int? get createdCode => throw _privateConstructorUsedError;
  @JsonKey(name: "isLoggedIn", defaultValue: false)
  bool? get isLoggedIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      String? mobile,
      String? lname,
      String? fname,
      String? country,
      String? gender,
      String? token,
      @JsonKey(name: "acess_site") String? accesssite,
      @JsonKey(name: "created_code") int? createdCode,
      @JsonKey(name: "isLoggedIn", defaultValue: false) bool? isLoggedIn});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? mobile = freezed,
    Object? lname = freezed,
    Object? fname = freezed,
    Object? country = freezed,
    Object? gender = freezed,
    Object? token = freezed,
    Object? accesssite = freezed,
    Object? createdCode = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: lname == freezed
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      fname: fname == freezed
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      accesssite: accesssite == freezed
          ? _value.accesssite
          : accesssite // ignore: cast_nullable_to_non_nullable
              as String?,
      createdCode: createdCode == freezed
          ? _value.createdCode
          : createdCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(
          _RegisterModel value, $Res Function(_RegisterModel) then) =
      __$RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      String? password,
      String? mobile,
      String? lname,
      String? fname,
      String? country,
      String? gender,
      String? token,
      @JsonKey(name: "acess_site") String? accesssite,
      @JsonKey(name: "created_code") int? createdCode,
      @JsonKey(name: "isLoggedIn", defaultValue: false) bool? isLoggedIn});
}

/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(
      _RegisterModel _value, $Res Function(_RegisterModel) _then)
      : super(_value, (v) => _then(v as _RegisterModel));

  @override
  _RegisterModel get _value => super._value as _RegisterModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? mobile = freezed,
    Object? lname = freezed,
    Object? fname = freezed,
    Object? country = freezed,
    Object? gender = freezed,
    Object? token = freezed,
    Object? accesssite = freezed,
    Object? createdCode = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_RegisterModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: lname == freezed
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      fname: fname == freezed
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      accesssite: accesssite == freezed
          ? _value.accesssite
          : accesssite // ignore: cast_nullable_to_non_nullable
              as String?,
      createdCode: createdCode == freezed
          ? _value.createdCode
          : createdCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel(
      {this.email,
      this.password,
      this.mobile,
      this.lname,
      this.fname,
      this.country,
      this.gender,
      this.token,
      @JsonKey(name: "acess_site") this.accesssite,
      @JsonKey(name: "created_code") this.createdCode,
      @JsonKey(name: "isLoggedIn", defaultValue: false) this.isLoggedIn});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? mobile;
  @override
  final String? lname;
  @override
  final String? fname;
  @override
  final String? country;
  @override
  final String? gender;
  @override
  final String? token;
  @override
  @JsonKey(name: "acess_site")
  final String? accesssite;
  @override
  @JsonKey(name: "created_code")
  final int? createdCode;
  @override
  @JsonKey(name: "isLoggedIn", defaultValue: false)
  final bool? isLoggedIn;

  @override
  String toString() {
    return 'RegisterModel(email: $email, password: $password, mobile: $mobile, lname: $lname, fname: $fname, country: $country, gender: $gender, token: $token, accesssite: $accesssite, createdCode: $createdCode, isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.accesssite, accesssite) ||
                const DeepCollectionEquality()
                    .equals(other.accesssite, accesssite)) &&
            (identical(other.createdCode, createdCode) ||
                const DeepCollectionEquality()
                    .equals(other.createdCode, createdCode)) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggedIn, isLoggedIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(accesssite) ^
      const DeepCollectionEquality().hash(createdCode) ^
      const DeepCollectionEquality().hash(isLoggedIn);

  @JsonKey(ignore: true)
  @override
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
          {String? email,
          String? password,
          String? mobile,
          String? lname,
          String? fname,
          String? country,
          String? gender,
          String? token,
          @JsonKey(name: "acess_site") String? accesssite,
          @JsonKey(name: "created_code") int? createdCode,
          @JsonKey(name: "isLoggedIn", defaultValue: false) bool? isLoggedIn}) =
      _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get lname => throw _privateConstructorUsedError;
  @override
  String? get fname => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  String? get gender => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "acess_site")
  String? get accesssite => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_code")
  int? get createdCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "isLoggedIn", defaultValue: false)
  bool? get isLoggedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
