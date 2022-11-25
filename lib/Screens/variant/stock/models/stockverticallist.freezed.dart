// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stockverticallist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockVerticalReadModel _$StockVerticalReadModelFromJson(
    Map<String, dynamic> json) {
  return _StockVerticalReadModel.fromJson(json);
}

/// @nodoc
mixin _$StockVerticalReadModel {
  Category? get category => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockVerticalReadModelCopyWith<StockVerticalReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockVerticalReadModelCopyWith<$Res> {
  factory $StockVerticalReadModelCopyWith(StockVerticalReadModel value,
          $Res Function(StockVerticalReadModel) then) =
      _$StockVerticalReadModelCopyWithImpl<$Res, StockVerticalReadModel>;
  @useResult
  $Res call({Category? category, String? name});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$StockVerticalReadModelCopyWithImpl<$Res,
        $Val extends StockVerticalReadModel>
    implements $StockVerticalReadModelCopyWith<$Res> {
  _$StockVerticalReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StockVerticalReadModelCopyWith<$Res>
    implements $StockVerticalReadModelCopyWith<$Res> {
  factory _$$_StockVerticalReadModelCopyWith(_$_StockVerticalReadModel value,
          $Res Function(_$_StockVerticalReadModel) then) =
      __$$_StockVerticalReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category? category, String? name});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_StockVerticalReadModelCopyWithImpl<$Res>
    extends _$StockVerticalReadModelCopyWithImpl<$Res,
        _$_StockVerticalReadModel>
    implements _$$_StockVerticalReadModelCopyWith<$Res> {
  __$$_StockVerticalReadModelCopyWithImpl(_$_StockVerticalReadModel _value,
      $Res Function(_$_StockVerticalReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StockVerticalReadModel(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockVerticalReadModel implements _StockVerticalReadModel {
  const _$_StockVerticalReadModel({this.category, this.name});

  factory _$_StockVerticalReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockVerticalReadModelFromJson(json);

  @override
  final Category? category;
  @override
  final String? name;

  @override
  String toString() {
    return 'StockVerticalReadModel(category: $category, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockVerticalReadModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockVerticalReadModelCopyWith<_$_StockVerticalReadModel> get copyWith =>
      __$$_StockVerticalReadModelCopyWithImpl<_$_StockVerticalReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockVerticalReadModelToJson(
      this,
    );
  }
}

abstract class _StockVerticalReadModel implements StockVerticalReadModel {
  const factory _StockVerticalReadModel(
      {final Category? category,
      final String? name}) = _$_StockVerticalReadModel;

  factory _StockVerticalReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockVerticalReadModel.fromJson;

  @override
  Category? get category;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StockVerticalReadModelCopyWith<_$_StockVerticalReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

channelAllocatesRead _$channelAllocatesReadFromJson(Map<String, dynamic> json) {
  return _channelAllocatesRead.fromJson(json);
}

/// @nodoc
mixin _$channelAllocatesRead {
  List<Category>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_id")
  int? get channelTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $channelAllocatesReadCopyWith<channelAllocatesRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $channelAllocatesReadCopyWith<$Res> {
  factory $channelAllocatesReadCopyWith(channelAllocatesRead value,
          $Res Function(channelAllocatesRead) then) =
      _$channelAllocatesReadCopyWithImpl<$Res, channelAllocatesRead>;
  @useResult
  $Res call(
      {List<Category>? results,
      @JsonKey(name: "channel_type_id") int? channelTypeId,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class _$channelAllocatesReadCopyWithImpl<$Res,
        $Val extends channelAllocatesRead>
    implements $channelAllocatesReadCopyWith<$Res> {
  _$channelAllocatesReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? channelTypeId = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_channelAllocatesReadCopyWith<$Res>
    implements $channelAllocatesReadCopyWith<$Res> {
  factory _$$_channelAllocatesReadCopyWith(_$_channelAllocatesRead value,
          $Res Function(_$_channelAllocatesRead) then) =
      __$$_channelAllocatesReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category>? results,
      @JsonKey(name: "channel_type_id") int? channelTypeId,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class __$$_channelAllocatesReadCopyWithImpl<$Res>
    extends _$channelAllocatesReadCopyWithImpl<$Res, _$_channelAllocatesRead>
    implements _$$_channelAllocatesReadCopyWith<$Res> {
  __$$_channelAllocatesReadCopyWithImpl(_$_channelAllocatesRead _value,
      $Res Function(_$_channelAllocatesRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? channelTypeId = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_$_channelAllocatesRead(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_channelAllocatesRead implements _channelAllocatesRead {
  const _$_channelAllocatesRead(
      {final List<Category>? results,
      @JsonKey(name: "channel_type_id") this.channelTypeId,
      @JsonKey(name: "channel_type_code") this.channelTypeCode})
      : _results = results;

  factory _$_channelAllocatesRead.fromJson(Map<String, dynamic> json) =>
      _$$_channelAllocatesReadFromJson(json);

  final List<Category>? _results;
  @override
  List<Category>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "channel_type_id")
  final int? channelTypeId;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;

  @override
  String toString() {
    return 'channelAllocatesRead(results: $results, channelTypeId: $channelTypeId, channelTypeCode: $channelTypeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_channelAllocatesRead &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      channelTypeId,
      channelTypeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_channelAllocatesReadCopyWith<_$_channelAllocatesRead> get copyWith =>
      __$$_channelAllocatesReadCopyWithImpl<_$_channelAllocatesRead>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_channelAllocatesReadToJson(
      this,
    );
  }
}

abstract class _channelAllocatesRead implements channelAllocatesRead {
  const factory _channelAllocatesRead(
          {final List<Category>? results,
          @JsonKey(name: "channel_type_id") final int? channelTypeId,
          @JsonKey(name: "channel_type_code") final String? channelTypeCode}) =
      _$_channelAllocatesRead;

  factory _channelAllocatesRead.fromJson(Map<String, dynamic> json) =
      _$_channelAllocatesRead.fromJson;

  @override
  List<Category>? get results;
  @override
  @JsonKey(name: "channel_type_id")
  int? get channelTypeId;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(ignore: true)
  _$$_channelAllocatesReadCopyWith<_$_channelAllocatesRead> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "legal_unit_type")
  String? get legalUnitType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? code,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? legalUnitType = freezed,
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      legalUnitType: freezed == legalUnitType
          ? _value.legalUnitType
          : legalUnitType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? code,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? legalUnitType = freezed,
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_$_Category(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      legalUnitType: freezed == legalUnitType
          ? _value.legalUnitType
          : legalUnitType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {this.name,
      this.description,
      this.code,
      this.id,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "legal_unit_type") this.legalUnitType,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_stock_type") this.channelStockType,
      @JsonKey(name: "channel_type_code") this.channelTypeCode});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? code;
  @override
  final int? id;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "legal_unit_type")
  final String? legalUnitType;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  final String? channelStockType;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;

  @override
  String toString() {
    return 'Category(name: $name, description: $description, code: $code, id: $id, isActive: $isActive, legalUnitType: $legalUnitType, channelCode: $channelCode, channelStockType: $channelStockType, channelTypeCode: $channelTypeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.legalUnitType, legalUnitType) ||
                other.legalUnitType == legalUnitType) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelStockType, channelStockType) ||
                other.channelStockType == channelStockType) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, code, id,
      isActive, legalUnitType, channelCode, channelStockType, channelTypeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
          {final String? name,
          final String? description,
          final String? code,
          final int? id,
          @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
          @JsonKey(name: "legal_unit_type") final String? legalUnitType,
          @JsonKey(name: "channel_code") final String? channelCode,
          @JsonKey(name: "channel_stock_type") final String? channelStockType,
          @JsonKey(name: "channel_type_code") final String? channelTypeCode}) =
      _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get code;
  @override
  int? get id;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "legal_unit_type")
  String? get legalUnitType;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
