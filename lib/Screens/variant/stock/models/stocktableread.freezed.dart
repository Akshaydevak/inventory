// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stocktableread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockTableReadModel _$StockTableReadModelFromJson(Map<String, dynamic> json) {
  return _StockTableReadModel.fromJson(json);
}

/// @nodoc
mixin _$StockTableReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoicedCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoicedLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int? get totalQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockTableReadModelCopyWith<StockTableReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockTableReadModelCopyWith<$Res> {
  factory $StockTableReadModelCopyWith(
          StockTableReadModel value, $Res Function(StockTableReadModel) then) =
      _$StockTableReadModelCopyWithImpl<$Res, StockTableReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "total_qty") int? totalQuantity,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "actual_cost") double? actualCost});
}

/// @nodoc
class _$StockTableReadModelCopyWithImpl<$Res, $Val extends StockTableReadModel>
    implements $StockTableReadModelCopyWith<$Res> {
  _$StockTableReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? invoicedCode = freezed,
    Object? invoicedLineCode = freezed,
    Object? totalQuantity = freezed,
    Object? invoicedDate = freezed,
    Object? actualCost = freezed,
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
      invoicedCode: freezed == invoicedCode
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: freezed == invoicedLineCode
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: freezed == invoicedDate
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockTableReadModelCopyWith<$Res>
    implements $StockTableReadModelCopyWith<$Res> {
  factory _$$_StockTableReadModelCopyWith(_$_StockTableReadModel value,
          $Res Function(_$_StockTableReadModel) then) =
      __$$_StockTableReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "total_qty") int? totalQuantity,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "actual_cost") double? actualCost});
}

/// @nodoc
class __$$_StockTableReadModelCopyWithImpl<$Res>
    extends _$StockTableReadModelCopyWithImpl<$Res, _$_StockTableReadModel>
    implements _$$_StockTableReadModelCopyWith<$Res> {
  __$$_StockTableReadModelCopyWithImpl(_$_StockTableReadModel _value,
      $Res Function(_$_StockTableReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? invoicedCode = freezed,
    Object? invoicedLineCode = freezed,
    Object? totalQuantity = freezed,
    Object? invoicedDate = freezed,
    Object? actualCost = freezed,
  }) {
    return _then(_$_StockTableReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: freezed == invoicedCode
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: freezed == invoicedLineCode
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: freezed == invoicedDate
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockTableReadModel implements _StockTableReadModel {
  const _$_StockTableReadModel(
      {this.id,
      this.code,
      @JsonKey(name: "invoice_code") this.invoicedCode,
      @JsonKey(name: "invoice_line_code") this.invoicedLineCode,
      @JsonKey(name: "total_qty") this.totalQuantity,
      @JsonKey(name: "invoiced_date") this.invoicedDate,
      @JsonKey(name: "actual_cost") this.actualCost});

  factory _$_StockTableReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockTableReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoicedCode;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoicedLineCode;
  @override
  @JsonKey(name: "total_qty")
  final int? totalQuantity;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoicedDate;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;

  @override
  String toString() {
    return 'StockTableReadModel(id: $id, code: $code, invoicedCode: $invoicedCode, invoicedLineCode: $invoicedLineCode, totalQuantity: $totalQuantity, invoicedDate: $invoicedDate, actualCost: $actualCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockTableReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoicedCode, invoicedCode) ||
                other.invoicedCode == invoicedCode) &&
            (identical(other.invoicedLineCode, invoicedLineCode) ||
                other.invoicedLineCode == invoicedLineCode) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.invoicedDate, invoicedDate) ||
                other.invoicedDate == invoicedDate) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, invoicedCode,
      invoicedLineCode, totalQuantity, invoicedDate, actualCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockTableReadModelCopyWith<_$_StockTableReadModel> get copyWith =>
      __$$_StockTableReadModelCopyWithImpl<_$_StockTableReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockTableReadModelToJson(
      this,
    );
  }
}

abstract class _StockTableReadModel implements StockTableReadModel {
  const factory _StockTableReadModel(
          {final int? id,
          final String? code,
          @JsonKey(name: "invoice_code") final String? invoicedCode,
          @JsonKey(name: "invoice_line_code") final String? invoicedLineCode,
          @JsonKey(name: "total_qty") final int? totalQuantity,
          @JsonKey(name: "invoiced_date") final String? invoicedDate,
          @JsonKey(name: "actual_cost") final double? actualCost}) =
      _$_StockTableReadModel;

  factory _StockTableReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockTableReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoicedCode;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoicedLineCode;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQuantity;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(ignore: true)
  _$$_StockTableReadModelCopyWith<_$_StockTableReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
