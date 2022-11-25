// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customeridlistmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerIdCreationModel _$CustomerIdCreationModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerIdCreationModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerIdCreationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get fname => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
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
      _$CustomerIdCreationModelCopyWithImpl<$Res, CustomerIdCreationModel>;
  @useResult
  $Res call(
      {int? id,
      String? fname,
      String? lname,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "customer_name")
          String? customerName,
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
class _$CustomerIdCreationModelCopyWithImpl<$Res,
        $Val extends CustomerIdCreationModel>
    implements $CustomerIdCreationModelCopyWith<$Res> {
  _$CustomerIdCreationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? customerUserCode = freezed,
    Object? customerName = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? loginId = freezed,
    Object? taxId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: freezed == isBuisnessUser
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerIdCreationModelCopyWith<$Res>
    implements $CustomerIdCreationModelCopyWith<$Res> {
  factory _$$_CustomerIdCreationModelCopyWith(_$_CustomerIdCreationModel value,
          $Res Function(_$_CustomerIdCreationModel) then) =
      __$$_CustomerIdCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? fname,
      String? lname,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "customer_name")
          String? customerName,
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
class __$$_CustomerIdCreationModelCopyWithImpl<$Res>
    extends _$CustomerIdCreationModelCopyWithImpl<$Res,
        _$_CustomerIdCreationModel>
    implements _$$_CustomerIdCreationModelCopyWith<$Res> {
  __$$_CustomerIdCreationModelCopyWithImpl(_$_CustomerIdCreationModel _value,
      $Res Function(_$_CustomerIdCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? customerUserCode = freezed,
    Object? customerName = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? loginId = freezed,
    Object? taxId = freezed,
  }) {
    return _then(_$_CustomerIdCreationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: freezed == isBuisnessUser
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: freezed == taxId
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
      this.fname,
      this.lname,
      @JsonKey(name: "customer_usercode")
          this.customerUserCode,
      @JsonKey(name: "customer_name")
          this.customerName,
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
  final String? fname;
  @override
  final String? lname;
  @override
  @JsonKey(name: "customer_usercode")
  final String? customerUserCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
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
    return 'CustomerIdCreationModel(id: $id, fname: $fname, lname: $lname, customerUserCode: $customerUserCode, customerName: $customerName, isActive: $isActive, isDeleted: $isDeleted, isBuisnessUser: $isBuisnessUser, loginId: $loginId, taxId: $taxId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerIdCreationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.customerUserCode, customerUserCode) ||
                other.customerUserCode == customerUserCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isBuisnessUser, isBuisnessUser) ||
                other.isBuisnessUser == isBuisnessUser) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.taxId, taxId) || other.taxId == taxId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fname,
      lname,
      customerUserCode,
      customerName,
      isActive,
      isDeleted,
      isBuisnessUser,
      loginId,
      taxId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerIdCreationModelCopyWith<_$_CustomerIdCreationModel>
      get copyWith =>
          __$$_CustomerIdCreationModelCopyWithImpl<_$_CustomerIdCreationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerIdCreationModelToJson(
      this,
    );
  }
}

abstract class _CustomerIdCreationModel implements CustomerIdCreationModel {
  const factory _CustomerIdCreationModel(
      {final int? id,
      final String? fname,
      final String? lname,
      @JsonKey(name: "customer_usercode")
          final String? customerUserCode,
      @JsonKey(name: "customer_name")
          final String? customerName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          final bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          final bool? isBuisnessUser,
      @JsonKey(name: "login_id")
          final int? loginId,
      @JsonKey(name: "tax_id")
          final String? taxId}) = _$_CustomerIdCreationModel;

  factory _CustomerIdCreationModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerIdCreationModel.fromJson;

  @override
  int? get id;
  @override
  String? get fname;
  @override
  String? get lname;
  @override
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_delete", defaultValue: false)
  bool? get isDeleted;
  @override
  @JsonKey(name: "is_business_user", defaultValue: false)
  bool? get isBuisnessUser;
  @override
  @JsonKey(name: "login_id")
  int? get loginId;
  @override
  @JsonKey(name: "tax_id")
  String? get taxId;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerIdCreationModelCopyWith<_$_CustomerIdCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerIdListModel _$CustomerIdListModelFromJson(Map<String, dynamic> json) {
  return _CustomerIdListModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerIdListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get fname => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_delete", defaultValue: false)
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "is_business_user", defaultValue: false)
  bool? get isBuisnessUser => throw _privateConstructorUsedError;
  @JsonKey(name: "business_data")
  BusinessData? get businessData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerIdListModelCopyWith<CustomerIdListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerIdListModelCopyWith<$Res> {
  factory $CustomerIdListModelCopyWith(
          CustomerIdListModel value, $Res Function(CustomerIdListModel) then) =
      _$CustomerIdListModelCopyWithImpl<$Res, CustomerIdListModel>;
  @useResult
  $Res call(
      {int? id,
      String? fname,
      String? lname,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "customer_name")
          String? customerName,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "business_data")
          BusinessData? businessData});

  $BusinessDataCopyWith<$Res>? get businessData;
}

/// @nodoc
class _$CustomerIdListModelCopyWithImpl<$Res, $Val extends CustomerIdListModel>
    implements $CustomerIdListModelCopyWith<$Res> {
  _$CustomerIdListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? customerUserCode = freezed,
    Object? customerName = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? businessData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: freezed == isBuisnessUser
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      businessData: freezed == businessData
          ? _value.businessData
          : businessData // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessDataCopyWith<$Res>? get businessData {
    if (_value.businessData == null) {
      return null;
    }

    return $BusinessDataCopyWith<$Res>(_value.businessData!, (value) {
      return _then(_value.copyWith(businessData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerIdListModelCopyWith<$Res>
    implements $CustomerIdListModelCopyWith<$Res> {
  factory _$$_CustomerIdListModelCopyWith(_$_CustomerIdListModel value,
          $Res Function(_$_CustomerIdListModel) then) =
      __$$_CustomerIdListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? fname,
      String? lname,
      @JsonKey(name: "customer_usercode")
          String? customerUserCode,
      @JsonKey(name: "customer_name")
          String? customerName,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          bool? isBuisnessUser,
      @JsonKey(name: "business_data")
          BusinessData? businessData});

  @override
  $BusinessDataCopyWith<$Res>? get businessData;
}

/// @nodoc
class __$$_CustomerIdListModelCopyWithImpl<$Res>
    extends _$CustomerIdListModelCopyWithImpl<$Res, _$_CustomerIdListModel>
    implements _$$_CustomerIdListModelCopyWith<$Res> {
  __$$_CustomerIdListModelCopyWithImpl(_$_CustomerIdListModel _value,
      $Res Function(_$_CustomerIdListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? customerUserCode = freezed,
    Object? customerName = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBuisnessUser = freezed,
    Object? businessData = freezed,
  }) {
    return _then(_$_CustomerIdListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBuisnessUser: freezed == isBuisnessUser
          ? _value.isBuisnessUser
          : isBuisnessUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      businessData: freezed == businessData
          ? _value.businessData
          : businessData // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerIdListModel implements _CustomerIdListModel {
  const _$_CustomerIdListModel(
      {this.id,
      this.fname,
      this.lname,
      @JsonKey(name: "customer_usercode")
          this.customerUserCode,
      @JsonKey(name: "customer_name")
          this.customerName,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          this.isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          this.isBuisnessUser,
      @JsonKey(name: "business_data")
          this.businessData});

  factory _$_CustomerIdListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerIdListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? fname;
  @override
  final String? lname;
  @override
  @JsonKey(name: "customer_usercode")
  final String? customerUserCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
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
  @JsonKey(name: "business_data")
  final BusinessData? businessData;

  @override
  String toString() {
    return 'CustomerIdListModel(id: $id, fname: $fname, lname: $lname, customerUserCode: $customerUserCode, customerName: $customerName, isActive: $isActive, isDeleted: $isDeleted, isBuisnessUser: $isBuisnessUser, businessData: $businessData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerIdListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.customerUserCode, customerUserCode) ||
                other.customerUserCode == customerUserCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isBuisnessUser, isBuisnessUser) ||
                other.isBuisnessUser == isBuisnessUser) &&
            (identical(other.businessData, businessData) ||
                other.businessData == businessData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fname,
      lname,
      customerUserCode,
      customerName,
      isActive,
      isDeleted,
      isBuisnessUser,
      businessData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerIdListModelCopyWith<_$_CustomerIdListModel> get copyWith =>
      __$$_CustomerIdListModelCopyWithImpl<_$_CustomerIdListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerIdListModelToJson(
      this,
    );
  }
}

abstract class _CustomerIdListModel implements CustomerIdListModel {
  const factory _CustomerIdListModel(
      {final int? id,
      final String? fname,
      final String? lname,
      @JsonKey(name: "customer_usercode")
          final String? customerUserCode,
      @JsonKey(name: "customer_name")
          final String? customerName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_delete", defaultValue: false)
          final bool? isDeleted,
      @JsonKey(name: "is_business_user", defaultValue: false)
          final bool? isBuisnessUser,
      @JsonKey(name: "business_data")
          final BusinessData? businessData}) = _$_CustomerIdListModel;

  factory _CustomerIdListModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerIdListModel.fromJson;

  @override
  int? get id;
  @override
  String? get fname;
  @override
  String? get lname;
  @override
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_delete", defaultValue: false)
  bool? get isDeleted;
  @override
  @JsonKey(name: "is_business_user", defaultValue: false)
  bool? get isBuisnessUser;
  @override
  @JsonKey(name: "business_data")
  BusinessData? get businessData;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerIdListModelCopyWith<_$_CustomerIdListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessData _$BusinessDataFromJson(Map<String, dynamic> json) {
  return _BusinessData.fromJson(json);
}

/// @nodoc
mixin _$BusinessData {
  @JsonKey(name: "tax_id")
  String? get taxId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessDataCopyWith<BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataCopyWith<$Res> {
  factory $BusinessDataCopyWith(
          BusinessData value, $Res Function(BusinessData) then) =
      _$BusinessDataCopyWithImpl<$Res, BusinessData>;
  @useResult
  $Res call({@JsonKey(name: "tax_id") String? taxId});
}

/// @nodoc
class _$BusinessDataCopyWithImpl<$Res, $Val extends BusinessData>
    implements $BusinessDataCopyWith<$Res> {
  _$BusinessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxId = freezed,
  }) {
    return _then(_value.copyWith(
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessDataCopyWith<$Res>
    implements $BusinessDataCopyWith<$Res> {
  factory _$$_BusinessDataCopyWith(
          _$_BusinessData value, $Res Function(_$_BusinessData) then) =
      __$$_BusinessDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "tax_id") String? taxId});
}

/// @nodoc
class __$$_BusinessDataCopyWithImpl<$Res>
    extends _$BusinessDataCopyWithImpl<$Res, _$_BusinessData>
    implements _$$_BusinessDataCopyWith<$Res> {
  __$$_BusinessDataCopyWithImpl(
      _$_BusinessData _value, $Res Function(_$_BusinessData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxId = freezed,
  }) {
    return _then(_$_BusinessData(
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessData implements _BusinessData {
  const _$_BusinessData({@JsonKey(name: "tax_id") this.taxId});

  factory _$_BusinessData.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessDataFromJson(json);

  @override
  @JsonKey(name: "tax_id")
  final String? taxId;

  @override
  String toString() {
    return 'BusinessData(taxId: $taxId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessData &&
            (identical(other.taxId, taxId) || other.taxId == taxId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taxId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessDataCopyWith<_$_BusinessData> get copyWith =>
      __$$_BusinessDataCopyWithImpl<_$_BusinessData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessDataToJson(
      this,
    );
  }
}

abstract class _BusinessData implements BusinessData {
  const factory _BusinessData({@JsonKey(name: "tax_id") final String? taxId}) =
      _$_BusinessData;

  factory _BusinessData.fromJson(Map<String, dynamic> json) =
      _$_BusinessData.fromJson;

  @override
  @JsonKey(name: "tax_id")
  String? get taxId;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessDataCopyWith<_$_BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}
