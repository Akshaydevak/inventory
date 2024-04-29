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

PaymentListSalesModel _$PaymentListSalesModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentListSalesModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentListSalesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "user_code")
  String? get userCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_code")
  String? get transactionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "update_check", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "post_response")
  PostResponse? get postResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentListSalesModelCopyWith<PaymentListSalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentListSalesModelCopyWith<$Res> {
  factory $PaymentListSalesModelCopyWith(PaymentListSalesModel value,
          $Res Function(PaymentListSalesModel) then) =
      _$PaymentListSalesModelCopyWithImpl<$Res, PaymentListSalesModel>;
  @useResult
  $Res call(
      {int? id,
      String? order,
      String? lname,
      String? created,
      String? updated,
      @JsonKey(name: "user_code") String? userCode,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "transaction_code") String? transactionCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "update_check", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "post_response") PostResponse? postResponse});

  $PostResponseCopyWith<$Res>? get postResponse;
}

/// @nodoc
class _$PaymentListSalesModelCopyWithImpl<$Res,
        $Val extends PaymentListSalesModel>
    implements $PaymentListSalesModelCopyWith<$Res> {
  _$PaymentListSalesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? lname = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? userCode = freezed,
    Object? paymentMethod = freezed,
    Object? transactionCode = freezed,
    Object? customerCode = freezed,
    Object? paymentStatus = freezed,
    Object? totalAmount = freezed,
    Object? updateCheck = freezed,
    Object? postResponse = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      postResponse: freezed == postResponse
          ? _value.postResponse
          : postResponse // ignore: cast_nullable_to_non_nullable
              as PostResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostResponseCopyWith<$Res>? get postResponse {
    if (_value.postResponse == null) {
      return null;
    }

    return $PostResponseCopyWith<$Res>(_value.postResponse!, (value) {
      return _then(_value.copyWith(postResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentListSalesModelCopyWith<$Res>
    implements $PaymentListSalesModelCopyWith<$Res> {
  factory _$$_PaymentListSalesModelCopyWith(_$_PaymentListSalesModel value,
          $Res Function(_$_PaymentListSalesModel) then) =
      __$$_PaymentListSalesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? order,
      String? lname,
      String? created,
      String? updated,
      @JsonKey(name: "user_code") String? userCode,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "transaction_code") String? transactionCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "update_check", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "post_response") PostResponse? postResponse});

  @override
  $PostResponseCopyWith<$Res>? get postResponse;
}

/// @nodoc
class __$$_PaymentListSalesModelCopyWithImpl<$Res>
    extends _$PaymentListSalesModelCopyWithImpl<$Res, _$_PaymentListSalesModel>
    implements _$$_PaymentListSalesModelCopyWith<$Res> {
  __$$_PaymentListSalesModelCopyWithImpl(_$_PaymentListSalesModel _value,
      $Res Function(_$_PaymentListSalesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? lname = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? userCode = freezed,
    Object? paymentMethod = freezed,
    Object? transactionCode = freezed,
    Object? customerCode = freezed,
    Object? paymentStatus = freezed,
    Object? totalAmount = freezed,
    Object? updateCheck = freezed,
    Object? postResponse = freezed,
  }) {
    return _then(_$_PaymentListSalesModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      postResponse: freezed == postResponse
          ? _value.postResponse
          : postResponse // ignore: cast_nullable_to_non_nullable
              as PostResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentListSalesModel implements _PaymentListSalesModel {
  const _$_PaymentListSalesModel(
      {this.id,
      this.order,
      this.lname,
      this.created,
      this.updated,
      @JsonKey(name: "user_code") this.userCode,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "transaction_code") this.transactionCode,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "update_check", defaultValue: false) this.updateCheck,
      @JsonKey(name: "post_response") this.postResponse});

  factory _$_PaymentListSalesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentListSalesModelFromJson(json);

  @override
  final int? id;
  @override
  final String? order;
  @override
  final String? lname;
  @override
  final String? created;
  @override
  final String? updated;
  @override
  @JsonKey(name: "user_code")
  final String? userCode;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "transaction_code")
  final String? transactionCode;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "update_check", defaultValue: false)
  final bool? updateCheck;
  @override
  @JsonKey(name: "post_response")
  final PostResponse? postResponse;

  @override
  String toString() {
    return 'PaymentListSalesModel(id: $id, order: $order, lname: $lname, created: $created, updated: $updated, userCode: $userCode, paymentMethod: $paymentMethod, transactionCode: $transactionCode, customerCode: $customerCode, paymentStatus: $paymentStatus, totalAmount: $totalAmount, updateCheck: $updateCheck, postResponse: $postResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentListSalesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck) &&
            (identical(other.postResponse, postResponse) ||
                other.postResponse == postResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      order,
      lname,
      created,
      updated,
      userCode,
      paymentMethod,
      transactionCode,
      customerCode,
      paymentStatus,
      totalAmount,
      updateCheck,
      postResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentListSalesModelCopyWith<_$_PaymentListSalesModel> get copyWith =>
      __$$_PaymentListSalesModelCopyWithImpl<_$_PaymentListSalesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentListSalesModelToJson(
      this,
    );
  }
}

abstract class _PaymentListSalesModel implements PaymentListSalesModel {
  const factory _PaymentListSalesModel(
      {final int? id,
      final String? order,
      final String? lname,
      final String? created,
      final String? updated,
      @JsonKey(name: "user_code")
          final String? userCode,
      @JsonKey(name: "payment_method")
          final String? paymentMethod,
      @JsonKey(name: "transaction_code")
          final String? transactionCode,
      @JsonKey(name: "customer_code")
          final String? customerCode,
      @JsonKey(name: "payment_status")
          final String? paymentStatus,
      @JsonKey(name: "total_amount")
          final double? totalAmount,
      @JsonKey(name: "update_check", defaultValue: false)
          final bool? updateCheck,
      @JsonKey(name: "post_response")
          final PostResponse? postResponse}) = _$_PaymentListSalesModel;

  factory _PaymentListSalesModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentListSalesModel.fromJson;

  @override
  int? get id;
  @override
  String? get order;
  @override
  String? get lname;
  @override
  String? get created;
  @override
  String? get updated;
  @override
  @JsonKey(name: "user_code")
  String? get userCode;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "transaction_code")
  String? get transactionCode;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "update_check", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(name: "post_response")
  PostResponse? get postResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentListSalesModelCopyWith<_$_PaymentListSalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return _PostResponse.fromJson(json);
}

/// @nodoc
mixin _$PostResponse {
  String? get contact => throw _privateConstructorUsedError;
  String? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostResponseCopyWith<PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResponseCopyWith<$Res> {
  factory $PostResponseCopyWith(
          PostResponse value, $Res Function(PostResponse) then) =
      _$PostResponseCopyWithImpl<$Res, PostResponse>;
  @useResult
  $Res call(
      {String? contact,
      String? updated,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "customer_name") String? customerName});
}

/// @nodoc
class _$PostResponseCopyWithImpl<$Res, $Val extends PostResponse>
    implements $PostResponseCopyWith<$Res> {
  _$PostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? updated = freezed,
    Object? orderId = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostResponseCopyWith<$Res>
    implements $PostResponseCopyWith<$Res> {
  factory _$$_PostResponseCopyWith(
          _$_PostResponse value, $Res Function(_$_PostResponse) then) =
      __$$_PostResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? contact,
      String? updated,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "customer_name") String? customerName});
}

/// @nodoc
class __$$_PostResponseCopyWithImpl<$Res>
    extends _$PostResponseCopyWithImpl<$Res, _$_PostResponse>
    implements _$$_PostResponseCopyWith<$Res> {
  __$$_PostResponseCopyWithImpl(
      _$_PostResponse _value, $Res Function(_$_PostResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? updated = freezed,
    Object? orderId = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_$_PostResponse(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostResponse implements _PostResponse {
  const _$_PostResponse(
      {this.contact,
      this.updated,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "customer_name") this.customerName});

  factory _$_PostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostResponseFromJson(json);

  @override
  final String? contact;
  @override
  final String? updated;
  @override
  @JsonKey(name: "order_id")
  final String? orderId;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;

  @override
  String toString() {
    return 'PostResponse(contact: $contact, updated: $updated, orderId: $orderId, customerName: $customerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostResponse &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contact, updated, orderId, customerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostResponseCopyWith<_$_PostResponse> get copyWith =>
      __$$_PostResponseCopyWithImpl<_$_PostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostResponseToJson(
      this,
    );
  }
}

abstract class _PostResponse implements PostResponse {
  const factory _PostResponse(
          {final String? contact,
          final String? updated,
          @JsonKey(name: "order_id") final String? orderId,
          @JsonKey(name: "customer_name") final String? customerName}) =
      _$_PostResponse;

  factory _PostResponse.fromJson(Map<String, dynamic> json) =
      _$_PostResponse.fromJson;

  @override
  String? get contact;
  @override
  String? get updated;
  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(ignore: true)
  _$$_PostResponseCopyWith<_$_PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: "tax_id")
  String? get taxId => throw _privateConstructorUsedError;

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
          BusinessData? businessData,
      @JsonKey(name: "tax_id")
          String? taxId});

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
      businessData: freezed == businessData
          ? _value.businessData
          : businessData // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
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
          BusinessData? businessData,
      @JsonKey(name: "tax_id")
          String? taxId});

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
    Object? taxId = freezed,
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
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
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
          this.businessData,
      @JsonKey(name: "tax_id")
          this.taxId});

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
  @JsonKey(name: "tax_id")
  final String? taxId;

  @override
  String toString() {
    return 'CustomerIdListModel(id: $id, fname: $fname, lname: $lname, customerUserCode: $customerUserCode, customerName: $customerName, isActive: $isActive, isDeleted: $isDeleted, isBuisnessUser: $isBuisnessUser, businessData: $businessData, taxId: $taxId)';
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
                other.businessData == businessData) &&
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
      businessData,
      taxId);

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
          final BusinessData? businessData,
      @JsonKey(name: "tax_id")
          final String? taxId}) = _$_CustomerIdListModel;

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
  @JsonKey(name: "tax_id")
  String? get taxId;
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
  @JsonKey(name: "business_meta")
  BusinessMeta? get buisnessMeta => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "tax_id") String? taxId,
      @JsonKey(name: "business_meta") BusinessMeta? buisnessMeta});

  $BusinessMetaCopyWith<$Res>? get buisnessMeta;
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
    Object? buisnessMeta = freezed,
  }) {
    return _then(_value.copyWith(
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      buisnessMeta: freezed == buisnessMeta
          ? _value.buisnessMeta
          : buisnessMeta // ignore: cast_nullable_to_non_nullable
              as BusinessMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessMetaCopyWith<$Res>? get buisnessMeta {
    if (_value.buisnessMeta == null) {
      return null;
    }

    return $BusinessMetaCopyWith<$Res>(_value.buisnessMeta!, (value) {
      return _then(_value.copyWith(buisnessMeta: value) as $Val);
    });
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
  $Res call(
      {@JsonKey(name: "tax_id") String? taxId,
      @JsonKey(name: "business_meta") BusinessMeta? buisnessMeta});

  @override
  $BusinessMetaCopyWith<$Res>? get buisnessMeta;
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
    Object? buisnessMeta = freezed,
  }) {
    return _then(_$_BusinessData(
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      buisnessMeta: freezed == buisnessMeta
          ? _value.buisnessMeta
          : buisnessMeta // ignore: cast_nullable_to_non_nullable
              as BusinessMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessData implements _BusinessData {
  const _$_BusinessData(
      {@JsonKey(name: "tax_id") this.taxId,
      @JsonKey(name: "business_meta") this.buisnessMeta});

  factory _$_BusinessData.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessDataFromJson(json);

  @override
  @JsonKey(name: "tax_id")
  final String? taxId;
  @override
  @JsonKey(name: "business_meta")
  final BusinessMeta? buisnessMeta;

  @override
  String toString() {
    return 'BusinessData(taxId: $taxId, buisnessMeta: $buisnessMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessData &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.buisnessMeta, buisnessMeta) ||
                other.buisnessMeta == buisnessMeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taxId, buisnessMeta);

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
  const factory _BusinessData(
          {@JsonKey(name: "tax_id") final String? taxId,
          @JsonKey(name: "business_meta") final BusinessMeta? buisnessMeta}) =
      _$_BusinessData;

  factory _BusinessData.fromJson(Map<String, dynamic> json) =
      _$_BusinessData.fromJson;

  @override
  @JsonKey(name: "tax_id")
  String? get taxId;
  @override
  @JsonKey(name: "business_meta")
  BusinessMeta? get buisnessMeta;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessDataCopyWith<_$_BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessMeta _$BusinessMetaFromJson(Map<String, dynamic> json) {
  return _BusinessMeta.fromJson(json);
}

/// @nodoc
mixin _$BusinessMeta {
  @JsonKey(name: "fullname")
  String? get fullmae => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessMetaCopyWith<BusinessMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessMetaCopyWith<$Res> {
  factory $BusinessMetaCopyWith(
          BusinessMeta value, $Res Function(BusinessMeta) then) =
      _$BusinessMetaCopyWithImpl<$Res, BusinessMeta>;
  @useResult
  $Res call({@JsonKey(name: "fullname") String? fullmae});
}

/// @nodoc
class _$BusinessMetaCopyWithImpl<$Res, $Val extends BusinessMeta>
    implements $BusinessMetaCopyWith<$Res> {
  _$BusinessMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullmae = freezed,
  }) {
    return _then(_value.copyWith(
      fullmae: freezed == fullmae
          ? _value.fullmae
          : fullmae // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessMetaCopyWith<$Res>
    implements $BusinessMetaCopyWith<$Res> {
  factory _$$_BusinessMetaCopyWith(
          _$_BusinessMeta value, $Res Function(_$_BusinessMeta) then) =
      __$$_BusinessMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "fullname") String? fullmae});
}

/// @nodoc
class __$$_BusinessMetaCopyWithImpl<$Res>
    extends _$BusinessMetaCopyWithImpl<$Res, _$_BusinessMeta>
    implements _$$_BusinessMetaCopyWith<$Res> {
  __$$_BusinessMetaCopyWithImpl(
      _$_BusinessMeta _value, $Res Function(_$_BusinessMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullmae = freezed,
  }) {
    return _then(_$_BusinessMeta(
      fullmae: freezed == fullmae
          ? _value.fullmae
          : fullmae // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessMeta implements _BusinessMeta {
  const _$_BusinessMeta({@JsonKey(name: "fullname") this.fullmae});

  factory _$_BusinessMeta.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessMetaFromJson(json);

  @override
  @JsonKey(name: "fullname")
  final String? fullmae;

  @override
  String toString() {
    return 'BusinessMeta(fullmae: $fullmae)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessMeta &&
            (identical(other.fullmae, fullmae) || other.fullmae == fullmae));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullmae);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessMetaCopyWith<_$_BusinessMeta> get copyWith =>
      __$$_BusinessMetaCopyWithImpl<_$_BusinessMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessMetaToJson(
      this,
    );
  }
}

abstract class _BusinessMeta implements BusinessMeta {
  const factory _BusinessMeta(
      {@JsonKey(name: "fullname") final String? fullmae}) = _$_BusinessMeta;

  factory _BusinessMeta.fromJson(Map<String, dynamic> json) =
      _$_BusinessMeta.fromJson;

  @override
  @JsonKey(name: "fullname")
  String? get fullmae;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessMetaCopyWith<_$_BusinessMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
