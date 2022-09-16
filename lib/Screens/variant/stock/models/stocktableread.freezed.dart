// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stocktableread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockTableReadModel _$StockTableReadModelFromJson(Map<String, dynamic> json) {
  return _StockTableReadModel.fromJson(json);
}

/// @nodoc
class _$StockTableReadModelTearOff {
  const _$StockTableReadModelTearOff();

  _StockTableReadModel call(
      {int? id,
      String? code,
      @JsonKey(name: "invoice_code") String? invoicedCode,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "total_qty") int? totalQuantity,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "actual_cost") double? actualCost}) {
    return _StockTableReadModel(
      id: id,
      code: code,
      invoicedCode: invoicedCode,
      invoicedLineCode: invoicedLineCode,
      totalQuantity: totalQuantity,
      invoicedDate: invoicedDate,
      actualCost: actualCost,
    );
  }

  StockTableReadModel fromJson(Map<String, Object> json) {
    return StockTableReadModel.fromJson(json);
  }
}

/// @nodoc
const $StockTableReadModel = _$StockTableReadModelTearOff();

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
      _$StockTableReadModelCopyWithImpl<$Res>;
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
class _$StockTableReadModelCopyWithImpl<$Res>
    implements $StockTableReadModelCopyWith<$Res> {
  _$StockTableReadModelCopyWithImpl(this._value, this._then);

  final StockTableReadModel _value;
  // ignore: unused_field
  final $Res Function(StockTableReadModel) _then;

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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: invoicedCode == freezed
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: invoicedLineCode == freezed
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: totalQuantity == freezed
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: invoicedDate == freezed
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$StockTableReadModelCopyWith<$Res>
    implements $StockTableReadModelCopyWith<$Res> {
  factory _$StockTableReadModelCopyWith(_StockTableReadModel value,
          $Res Function(_StockTableReadModel) then) =
      __$StockTableReadModelCopyWithImpl<$Res>;
  @override
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
class __$StockTableReadModelCopyWithImpl<$Res>
    extends _$StockTableReadModelCopyWithImpl<$Res>
    implements _$StockTableReadModelCopyWith<$Res> {
  __$StockTableReadModelCopyWithImpl(
      _StockTableReadModel _value, $Res Function(_StockTableReadModel) _then)
      : super(_value, (v) => _then(v as _StockTableReadModel));

  @override
  _StockTableReadModel get _value => super._value as _StockTableReadModel;

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
    return _then(_StockTableReadModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedCode: invoicedCode == freezed
          ? _value.invoicedCode
          : invoicedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: invoicedLineCode == freezed
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: totalQuantity == freezed
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: invoicedDate == freezed
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualCost: actualCost == freezed
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
        (other is _StockTableReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.invoicedCode, invoicedCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedCode, invoicedCode)) &&
            (identical(other.invoicedLineCode, invoicedLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedLineCode, invoicedLineCode)) &&
            (identical(other.totalQuantity, totalQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuantity, totalQuantity)) &&
            (identical(other.invoicedDate, invoicedDate) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedDate, invoicedDate)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(invoicedCode) ^
      const DeepCollectionEquality().hash(invoicedLineCode) ^
      const DeepCollectionEquality().hash(totalQuantity) ^
      const DeepCollectionEquality().hash(invoicedDate) ^
      const DeepCollectionEquality().hash(actualCost);

  @JsonKey(ignore: true)
  @override
  _$StockTableReadModelCopyWith<_StockTableReadModel> get copyWith =>
      __$StockTableReadModelCopyWithImpl<_StockTableReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockTableReadModelToJson(this);
  }
}

abstract class _StockTableReadModel implements StockTableReadModel {
  const factory _StockTableReadModel(
          {int? id,
          String? code,
          @JsonKey(name: "invoice_code") String? invoicedCode,
          @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
          @JsonKey(name: "total_qty") int? totalQuantity,
          @JsonKey(name: "invoiced_date") String? invoicedDate,
          @JsonKey(name: "actual_cost") double? actualCost}) =
      _$_StockTableReadModel;

  factory _StockTableReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockTableReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoicedCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoicedLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockTableReadModelCopyWith<_StockTableReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
