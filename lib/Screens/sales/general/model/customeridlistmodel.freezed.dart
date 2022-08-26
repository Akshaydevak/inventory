// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customeridlistmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerIdCreationModel _$CustomerIdCreationModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerIdCreationModel.fromJson(json);
}

/// @nodoc
class _$CustomerIdCreationModelTearOff {
  const _$CustomerIdCreationModelTearOff();

  _CustomerIdCreationModel call(
      {int? id,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "login_id")
          int? loginId,
      @JsonKey(name: "tax_id")
          String? taxId}) {
    return _CustomerIdCreationModel(
      id: id,
      customerUserCode: customerUserCode,
      isActive: isActive,
      isDeleted: isDeleted,
      isBuisnessUser: isBuisnessUser,
      loginId: loginId,
      taxId: taxId,
    );
  }

  CustomerIdCreationModel fromJson(Map<String, Object> json) {
    return CustomerIdCreationModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerIdCreationModel = _$CustomerIdCreationModelTearOff();

/// @nodoc
mixin _$CustomerIdCreationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_delete", defaultValue: false)
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "is_business_user", defaultValue: false)
  bool? get isBuisnessUser => throw _privateConstructorUsedError;
  @JsonKey(name: "login_id")
  int? get loginId => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_id")
  String? get taxId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerIdCreationModelCopyWith<CustomerIdCreationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerIdCreationModelCopyWith<$Res> {
  factory $CustomerIdCreationModelCopyWith(CustomerIdCreationModel value,
          $Res Function(CustomerIdCreationModel) then) =
      _$CustomerIdCreationModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "login_id")
          int? loginId,
      @JsonKey(name: "tax_id")
          String? taxId});
}

/// @nodoc
class _$CustomerIdCreationModelCopyWithImpl<$Res>
    implements $CustomerIdCreationModelCopyWith<$Res> {
  _$CustomerIdCreationModelCopyWithImpl(this._value, this._then);

  final CustomerIdCreationModel _value;
  // ignore: unused_field
  final $Res Function(CustomerIdCreationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerUserCode = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? loginId = freezed,
    Object? taxId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUserCode: customerUserCode == freezed
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: isBuisnessUser == freezed
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginId: loginId == freezed
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: taxId == freezed
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerIdCreationModelCopyWith<$Res>
    implements $CustomerIdCreationModelCopyWith<$Res> {
  factory _$CustomerIdCreationModelCopyWith(_CustomerIdCreationModel value,
          $Res Function(_CustomerIdCreationModel) then) =
      __$CustomerIdCreationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "login_id")
          int? loginId,
      @JsonKey(name: "tax_id")
          String? taxId});
}

/// @nodoc
class __$CustomerIdCreationModelCopyWithImpl<$Res>
    extends _$CustomerIdCreationModelCopyWithImpl<$Res>
    implements _$CustomerIdCreationModelCopyWith<$Res> {
  __$CustomerIdCreationModelCopyWithImpl(_CustomerIdCreationModel _value,
      $Res Function(_CustomerIdCreationModel) _then)
      : super(_value, (v) => _then(v as _CustomerIdCreationModel));

  @override
  _CustomerIdCreationModel get _value =>
      super._value as _CustomerIdCreationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerUserCode = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? loginId = freezed,
    Object? taxId = freezed,
  }) {
    return _then(_CustomerIdCreationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUserCode: customerUserCode == freezed
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: isBuisnessUser == freezed
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginId: loginId == freezed
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: taxId == freezed
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerIdCreationModel implements _CustomerIdCreationModel {
  const _$_CustomerIdCreationModel(
      {this.id,
      @JsonKey(name: "customer_usercode")
          this.customerUserCode,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          this.isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          this.isBuisnessUser,
      @JsonKey(name: "login_id")
          this.loginId,
      @JsonKey(name: "tax_id")
          this.taxId});

  factory _$_CustomerIdCreationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerIdCreationModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "customer_usercode")
  final String? customerUserCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_delete", defaultValue: false)
  final bool? isDeleted;
  @override
  @JsonKey(name: "is_business_user", defaultValue: false)
  final bool? isBuisnessUser;
  @override
  @JsonKey(name: "login_id")
  final int? loginId;
  @override
  @JsonKey(name: "tax_id")
  final String? taxId;

  @override
  String toString() {
    return 'CustomerIdCreationModel(id: $id, customerUserCode: $customerUserCode, isActive: $isActive, isDeleted: $isDeleted, isBuisnessUser: $isBuisnessUser, loginId: $loginId, taxId: $taxId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerIdCreationModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.customerUserCode, customerUserCode) ||
                const DeepCollectionEquality()
                    .equals(other.customerUserCode, customerUserCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.isBuisnessUser, isBuisnessUser) ||
                const DeepCollectionEquality()
                    .equals(other.isBuisnessUser, isBuisnessUser)) &&
            (identical(other.loginId, loginId) ||
                const DeepCollectionEquality()
                    .equals(other.loginId, loginId)) &&
            (identical(other.taxId, taxId) ||
                const DeepCollectionEquality().equals(other.taxId, taxId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(customerUserCode) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(isBuisnessUser) ^
      const DeepCollectionEquality().hash(loginId) ^
      const DeepCollectionEquality().hash(taxId);

  @JsonKey(ignore: true)
  @override
  _$CustomerIdCreationModelCopyWith<_CustomerIdCreationModel> get copyWith =>
      __$CustomerIdCreationModelCopyWithImpl<_CustomerIdCreationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerIdCreationModelToJson(this);
  }
}

abstract class _CustomerIdCreationModel implements CustomerIdCreationModel {
  const factory _CustomerIdCreationModel(
      {int? id,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "login_id")
          int? loginId,
      @JsonKey(name: "tax_id")
          String? taxId}) = _$_CustomerIdCreationModel;

  factory _CustomerIdCreationModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerIdCreationModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_delete", defaultValue: false)
  bool? get isDeleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_business_user", defaultValue: false)
  bool? get isBuisnessUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "login_id")
  int? get loginId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "tax_id")
  String? get taxId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomerIdCreationModelCopyWith<_CustomerIdCreationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
