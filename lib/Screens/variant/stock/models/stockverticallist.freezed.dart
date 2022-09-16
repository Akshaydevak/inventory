// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stockverticallist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockVerticalReadModel _$StockVerticalReadModelFromJson(
    Map<String, dynamic> json) {
  return _StockVerticalReadModel.fromJson(json);
}

/// @nodoc
class _$StockVerticalReadModelTearOff {
  const _$StockVerticalReadModelTearOff();

  _StockVerticalReadModel call({Category? category, String? name}) {
    return _StockVerticalReadModel(
      category: category,
      name: name,
    );
  }

  StockVerticalReadModel fromJson(Map<String, Object> json) {
    return StockVerticalReadModel.fromJson(json);
  }
}

/// @nodoc
const $StockVerticalReadModel = _$StockVerticalReadModelTearOff();

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
      _$StockVerticalReadModelCopyWithImpl<$Res>;
  $Res call({Category? category, String? name});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$StockVerticalReadModelCopyWithImpl<$Res>
    implements $StockVerticalReadModelCopyWith<$Res> {
  _$StockVerticalReadModelCopyWithImpl(this._value, this._then);

  final StockVerticalReadModel _value;
  // ignore: unused_field
  final $Res Function(StockVerticalReadModel) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$StockVerticalReadModelCopyWith<$Res>
    implements $StockVerticalReadModelCopyWith<$Res> {
  factory _$StockVerticalReadModelCopyWith(_StockVerticalReadModel value,
          $Res Function(_StockVerticalReadModel) then) =
      __$StockVerticalReadModelCopyWithImpl<$Res>;
  @override
  $Res call({Category? category, String? name});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$StockVerticalReadModelCopyWithImpl<$Res>
    extends _$StockVerticalReadModelCopyWithImpl<$Res>
    implements _$StockVerticalReadModelCopyWith<$Res> {
  __$StockVerticalReadModelCopyWithImpl(_StockVerticalReadModel _value,
      $Res Function(_StockVerticalReadModel) _then)
      : super(_value, (v) => _then(v as _StockVerticalReadModel));

  @override
  _StockVerticalReadModel get _value => super._value as _StockVerticalReadModel;

  @override
  $Res call({
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_StockVerticalReadModel(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: name == freezed
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
        (other is _StockVerticalReadModel &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$StockVerticalReadModelCopyWith<_StockVerticalReadModel> get copyWith =>
      __$StockVerticalReadModelCopyWithImpl<_StockVerticalReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockVerticalReadModelToJson(this);
  }
}

abstract class _StockVerticalReadModel implements StockVerticalReadModel {
  const factory _StockVerticalReadModel({Category? category, String? name}) =
      _$_StockVerticalReadModel;

  factory _StockVerticalReadModel.fromJson(Map<String, dynamic> json) =
      _$_StockVerticalReadModel.fromJson;

  @override
  Category? get category => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockVerticalReadModelCopyWith<_StockVerticalReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {String? name,
      String? description,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType}) {
    return _Category(
      name: name,
      description: description,
      id: id,
      isActive: isActive,
      legalUnitType: legalUnitType,
    );
  }

  Category fromJson(Map<String, Object> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "legal_unit_type")
  String? get legalUnitType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? description,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? legalUnitType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      legalUnitType: legalUnitType == freezed
          ? _value.legalUnitType
          : legalUnitType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? description,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? legalUnitType = freezed,
  }) {
    return _then(_Category(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      legalUnitType: legalUnitType == freezed
          ? _value.legalUnitType
          : legalUnitType // ignore: cast_nullable_to_non_nullable
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
      this.id,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "legal_unit_type") this.legalUnitType});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? id;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "legal_unit_type")
  final String? legalUnitType;

  @override
  String toString() {
    return 'Category(name: $name, description: $description, id: $id, isActive: $isActive, legalUnitType: $legalUnitType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.legalUnitType, legalUnitType) ||
                const DeepCollectionEquality()
                    .equals(other.legalUnitType, legalUnitType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(legalUnitType);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {String? name,
      String? description,
      int? id,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "legal_unit_type") String? legalUnitType}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "legal_unit_type")
  String? get legalUnitType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}