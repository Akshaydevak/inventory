// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantId _$VariantIdFromJson(Map<String, dynamic> json) {
  return _VariantId.fromJson(json);
}

/// @nodoc
class _$VariantIdTearOff {
  const _$VariantIdTearOff();

  _VariantId call(
      {int? id,
      String? code,
      String? category,
      String? uom,
      double? unit_cost,
      String? name}) {
    return _VariantId(
      id: id,
      code: code,
      category: category,
      uom: uom,
      unit_cost: unit_cost,
      name: name,
    );
  }

  VariantId fromJson(Map<String, Object> json) {
    return VariantId.fromJson(json);
  }
}

/// @nodoc
const $VariantId = _$VariantIdTearOff();

/// @nodoc
mixin _$VariantId {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get uom => throw _privateConstructorUsedError;
  double? get unit_cost => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantIdCopyWith<VariantId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantIdCopyWith<$Res> {
  factory $VariantIdCopyWith(VariantId value, $Res Function(VariantId) then) =
      _$VariantIdCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      String? category,
      String? uom,
      double? unit_cost,
      String? name});
}

/// @nodoc
class _$VariantIdCopyWithImpl<$Res> implements $VariantIdCopyWith<$Res> {
  _$VariantIdCopyWithImpl(this._value, this._then);

  final VariantId _value;
  // ignore: unused_field
  final $Res Function(VariantId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? unit_cost = freezed,
    Object? name = freezed,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_cost: unit_cost == freezed
          ? _value.unit_cost
          : unit_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VariantIdCopyWith<$Res> implements $VariantIdCopyWith<$Res> {
  factory _$VariantIdCopyWith(
          _VariantId value, $Res Function(_VariantId) then) =
      __$VariantIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      String? category,
      String? uom,
      double? unit_cost,
      String? name});
}

/// @nodoc
class __$VariantIdCopyWithImpl<$Res> extends _$VariantIdCopyWithImpl<$Res>
    implements _$VariantIdCopyWith<$Res> {
  __$VariantIdCopyWithImpl(_VariantId _value, $Res Function(_VariantId) _then)
      : super(_value, (v) => _then(v as _VariantId));

  @override
  _VariantId get _value => super._value as _VariantId;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? unit_cost = freezed,
    Object? name = freezed,
  }) {
    return _then(_VariantId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: uom == freezed
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_cost: unit_cost == freezed
          ? _value.unit_cost
          : unit_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantId implements _VariantId {
  const _$_VariantId(
      {this.id, this.code, this.category, this.uom, this.unit_cost, this.name});

  factory _$_VariantId.fromJson(Map<String, dynamic> json) =>
      _$$_VariantIdFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? category;
  @override
  final String? uom;
  @override
  final double? unit_cost;
  @override
  final String? name;

  @override
  String toString() {
    return 'VariantId(id: $id, code: $code, category: $category, uom: $uom, unit_cost: $unit_cost, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.uom, uom) ||
                const DeepCollectionEquality().equals(other.uom, uom)) &&
            (identical(other.unit_cost, unit_cost) ||
                const DeepCollectionEquality()
                    .equals(other.unit_cost, unit_cost)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(uom) ^
      const DeepCollectionEquality().hash(unit_cost) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$VariantIdCopyWith<_VariantId> get copyWith =>
      __$VariantIdCopyWithImpl<_VariantId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantIdToJson(this);
  }
}

abstract class _VariantId implements VariantId {
  const factory _VariantId(
      {int? id,
      String? code,
      String? category,
      String? uom,
      double? unit_cost,
      String? name}) = _$_VariantId;

  factory _VariantId.fromJson(Map<String, dynamic> json) =
      _$_VariantId.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get uom => throw _privateConstructorUsedError;
  @override
  double? get unit_cost => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantIdCopyWith<_VariantId> get copyWith =>
      throw _privateConstructorUsedError;
}
