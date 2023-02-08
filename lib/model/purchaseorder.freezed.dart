// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseorder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrder _$PurchaseOrderFromJson(Map<String, dynamic> json) {
  return _PurchaseOrder.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrder {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderCopyWith<PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderCopyWith<$Res> {
  factory $PurchaseOrderCopyWith(
          PurchaseOrder value, $Res Function(PurchaseOrder) then) =
      _$PurchaseOrderCopyWithImpl<$Res, PurchaseOrder>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class _$PurchaseOrderCopyWithImpl<$Res, $Val extends PurchaseOrder>
    implements $PurchaseOrderCopyWith<$Res> {
  _$PurchaseOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseOrderCopyWith<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  factory _$$_PurchaseOrderCopyWith(
          _$_PurchaseOrder value, $Res Function(_$_PurchaseOrder) then) =
      __$$_PurchaseOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class __$$_PurchaseOrderCopyWithImpl<$Res>
    extends _$PurchaseOrderCopyWithImpl<$Res, _$_PurchaseOrder>
    implements _$$_PurchaseOrderCopyWith<$Res> {
  __$$_PurchaseOrderCopyWithImpl(
      _$_PurchaseOrder _value, $Res Function(_$_PurchaseOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_$_PurchaseOrder(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrder implements _PurchaseOrder {
  const _$_PurchaseOrder(
      {this.id,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "return_order_code") this.returnOrderCode});

  factory _$_PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;

  @override
  String toString() {
    return 'PurchaseOrder(id: $id, orderCode: $orderCode, returnOrderCode: $returnOrderCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderCode, returnOrderCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrderCopyWith<_$_PurchaseOrder> get copyWith =>
      __$$_PurchaseOrderCopyWithImpl<_$_PurchaseOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderToJson(
      this,
    );
  }
}

abstract class _PurchaseOrder implements PurchaseOrder {
  const factory _PurchaseOrder(
          {final int? id,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "return_order_code") final String? returnOrderCode}) =
      _$_PurchaseOrder;

  factory _PurchaseOrder.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrder.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrderCopyWith<_$_PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

salesOrderTypeModel _$salesOrderTypeModelFromJson(Map<String, dynamic> json) {
  return _salesOrderTypeModel.fromJson(json);
}

/// @nodoc
mixin _$salesOrderTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_code")
  String? get saleCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $salesOrderTypeModelCopyWith<salesOrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $salesOrderTypeModelCopyWith<$Res> {
  factory $salesOrderTypeModelCopyWith(
          salesOrderTypeModel value, $Res Function(salesOrderTypeModel) then) =
      _$salesOrderTypeModelCopyWithImpl<$Res, salesOrderTypeModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      String? code,
      String? image,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "sale_code") String? saleCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class _$salesOrderTypeModelCopyWithImpl<$Res, $Val extends salesOrderTypeModel>
    implements $salesOrderTypeModelCopyWith<$Res> {
  _$salesOrderTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? saleCode = freezed,
    Object? isActive = freezed,
    Object? updatecheck = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      saleCode: freezed == saleCode
          ? _value.saleCode
          : saleCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: freezed == updatecheck
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_salesOrderTypeModelCopyWith<$Res>
    implements $salesOrderTypeModelCopyWith<$Res> {
  factory _$$_salesOrderTypeModelCopyWith(_$_salesOrderTypeModel value,
          $Res Function(_$_salesOrderTypeModel) then) =
      __$$_salesOrderTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      String? code,
      String? image,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "sale_code") String? saleCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class __$$_salesOrderTypeModelCopyWithImpl<$Res>
    extends _$salesOrderTypeModelCopyWithImpl<$Res, _$_salesOrderTypeModel>
    implements _$$_salesOrderTypeModelCopyWith<$Res> {
  __$$_salesOrderTypeModelCopyWithImpl(_$_salesOrderTypeModel _value,
      $Res Function(_$_salesOrderTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? image = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? saleCode = freezed,
    Object? isActive = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_$_salesOrderTypeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      saleCode: freezed == saleCode
          ? _value.saleCode
          : saleCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: freezed == updatecheck
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_salesOrderTypeModel implements _salesOrderTypeModel {
  const _$_salesOrderTypeModel(
      {this.id,
      this.name,
      this.title,
      this.code,
      this.image,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "sales_return_order_code") this.salesReturnOrderCode,
      @JsonKey(name: "sale_code") this.saleCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) this.updatecheck});

  factory _$_salesOrderTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_salesOrderTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? code;
  @override
  final String? image;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "sale_code")
  final String? saleCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  final bool? updatecheck;

  @override
  String toString() {
    return 'salesOrderTypeModel(id: $id, name: $name, title: $title, code: $code, image: $image, salesOrderCode: $salesOrderCode, salesReturnOrderCode: $salesReturnOrderCode, saleCode: $saleCode, isActive: $isActive, updatecheck: $updatecheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_salesOrderTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                other.salesReturnOrderCode == salesReturnOrderCode) &&
            (identical(other.saleCode, saleCode) ||
                other.saleCode == saleCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatecheck, updatecheck) ||
                other.updatecheck == updatecheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, title, code, image,
      salesOrderCode, salesReturnOrderCode, saleCode, isActive, updatecheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_salesOrderTypeModelCopyWith<_$_salesOrderTypeModel> get copyWith =>
      __$$_salesOrderTypeModelCopyWithImpl<_$_salesOrderTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_salesOrderTypeModelToJson(
      this,
    );
  }
}

abstract class _salesOrderTypeModel implements salesOrderTypeModel {
  const factory _salesOrderTypeModel(
      {final int? id,
      final String? name,
      final String? title,
      final String? code,
      final String? image,
      @JsonKey(name: "sales_order_code")
          final String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code")
          final String? salesReturnOrderCode,
      @JsonKey(name: "sale_code")
          final String? saleCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false)
          final bool? updatecheck}) = _$_salesOrderTypeModel;

  factory _salesOrderTypeModel.fromJson(Map<String, dynamic> json) =
      _$_salesOrderTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get title;
  @override
  String? get code;
  @override
  String? get image;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode;
  @override
  @JsonKey(name: "sale_code")
  String? get saleCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck;
  @override
  @JsonKey(ignore: true)
  _$$_salesOrderTypeModelCopyWith<_$_salesOrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

salesOrderNamePostModel _$salesOrderNamePostModelFromJson(
    Map<String, dynamic> json) {
  return _salesOrderNamePostModel.fromJson(json);
}

/// @nodoc
mixin _$salesOrderNamePostModel {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "search_element")
  String? get searchElemet => throw _privateConstructorUsedError;
  @JsonKey(name: "type_applying_on")
  String? get typeAllyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_list")
  List<String>? get segmentList => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $salesOrderNamePostModelCopyWith<salesOrderNamePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $salesOrderNamePostModelCopyWith<$Res> {
  factory $salesOrderNamePostModelCopyWith(salesOrderNamePostModel value,
          $Res Function(salesOrderNamePostModel) then) =
      _$salesOrderNamePostModelCopyWithImpl<$Res, salesOrderNamePostModel>;
  @useResult
  $Res call(
      {int? id,
      String? type,
      @JsonKey(name: "search_element") String? searchElemet,
      @JsonKey(name: "type_applying_on") String? typeAllyingOn,
      @JsonKey(name: "segment_list") List<String>? segmentList,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class _$salesOrderNamePostModelCopyWithImpl<$Res,
        $Val extends salesOrderNamePostModel>
    implements $salesOrderNamePostModelCopyWith<$Res> {
  _$salesOrderNamePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? searchElemet = freezed,
    Object? typeAllyingOn = freezed,
    Object? segmentList = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      searchElemet: freezed == searchElemet
          ? _value.searchElemet
          : searchElemet // ignore: cast_nullable_to_non_nullable
              as String?,
      typeAllyingOn: freezed == typeAllyingOn
          ? _value.typeAllyingOn
          : typeAllyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentList: freezed == segmentList
          ? _value.segmentList
          : segmentList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_salesOrderNamePostModelCopyWith<$Res>
    implements $salesOrderNamePostModelCopyWith<$Res> {
  factory _$$_salesOrderNamePostModelCopyWith(_$_salesOrderNamePostModel value,
          $Res Function(_$_salesOrderNamePostModel) then) =
      __$$_salesOrderNamePostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? type,
      @JsonKey(name: "search_element") String? searchElemet,
      @JsonKey(name: "type_applying_on") String? typeAllyingOn,
      @JsonKey(name: "segment_list") List<String>? segmentList,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class __$$_salesOrderNamePostModelCopyWithImpl<$Res>
    extends _$salesOrderNamePostModelCopyWithImpl<$Res,
        _$_salesOrderNamePostModel>
    implements _$$_salesOrderNamePostModelCopyWith<$Res> {
  __$$_salesOrderNamePostModelCopyWithImpl(_$_salesOrderNamePostModel _value,
      $Res Function(_$_salesOrderNamePostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? searchElemet = freezed,
    Object? typeAllyingOn = freezed,
    Object? segmentList = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_$_salesOrderNamePostModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      searchElemet: freezed == searchElemet
          ? _value.searchElemet
          : searchElemet // ignore: cast_nullable_to_non_nullable
              as String?,
      typeAllyingOn: freezed == typeAllyingOn
          ? _value.typeAllyingOn
          : typeAllyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentList: freezed == segmentList
          ? _value._segmentList
          : segmentList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_salesOrderNamePostModel implements _salesOrderNamePostModel {
  const _$_salesOrderNamePostModel(
      {this.id,
      this.type,
      @JsonKey(name: "search_element") this.searchElemet,
      @JsonKey(name: "type_applying_on") this.typeAllyingOn,
      @JsonKey(name: "segment_list") final List<String>? segmentList,
      @JsonKey(name: "inventory_id") this.inventoryId})
      : _segmentList = segmentList;

  factory _$_salesOrderNamePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_salesOrderNamePostModelFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  @JsonKey(name: "search_element")
  final String? searchElemet;
  @override
  @JsonKey(name: "type_applying_on")
  final String? typeAllyingOn;
  final List<String>? _segmentList;
  @override
  @JsonKey(name: "segment_list")
  List<String>? get segmentList {
    final value = _segmentList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;

  @override
  String toString() {
    return 'salesOrderNamePostModel(id: $id, type: $type, searchElemet: $searchElemet, typeAllyingOn: $typeAllyingOn, segmentList: $segmentList, inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_salesOrderNamePostModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.searchElemet, searchElemet) ||
                other.searchElemet == searchElemet) &&
            (identical(other.typeAllyingOn, typeAllyingOn) ||
                other.typeAllyingOn == typeAllyingOn) &&
            const DeepCollectionEquality()
                .equals(other._segmentList, _segmentList) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      searchElemet,
      typeAllyingOn,
      const DeepCollectionEquality().hash(_segmentList),
      inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_salesOrderNamePostModelCopyWith<_$_salesOrderNamePostModel>
      get copyWith =>
          __$$_salesOrderNamePostModelCopyWithImpl<_$_salesOrderNamePostModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_salesOrderNamePostModelToJson(
      this,
    );
  }
}

abstract class _salesOrderNamePostModel implements salesOrderNamePostModel {
  const factory _salesOrderNamePostModel(
          {final int? id,
          final String? type,
          @JsonKey(name: "search_element") final String? searchElemet,
          @JsonKey(name: "type_applying_on") final String? typeAllyingOn,
          @JsonKey(name: "segment_list") final List<String>? segmentList,
          @JsonKey(name: "inventory_id") final String? inventoryId}) =
      _$_salesOrderNamePostModel;

  factory _salesOrderNamePostModel.fromJson(Map<String, dynamic> json) =
      _$_salesOrderNamePostModel.fromJson;

  @override
  int? get id;
  @override
  String? get type;
  @override
  @JsonKey(name: "search_element")
  String? get searchElemet;
  @override
  @JsonKey(name: "type_applying_on")
  String? get typeAllyingOn;
  @override
  @JsonKey(name: "segment_list")
  List<String>? get segmentList;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(ignore: true)
  _$$_salesOrderNamePostModelCopyWith<_$_salesOrderNamePostModel>
      get copyWith => throw _privateConstructorUsedError;
}
