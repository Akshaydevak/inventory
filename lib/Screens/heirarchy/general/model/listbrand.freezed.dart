// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listbrand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandListModel _$BrandListModelFromJson(Map<String, dynamic> json) {
  return _BrandListModel.fromJson(json);
}

/// @nodoc
class _$BrandListModelTearOff {
  const _$BrandListModelTearOff();

  _BrandListModel call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "uom_code") String? uomCode}) {
    return _BrandListModel(
      id: id,
      name: name,
      code: code,
      standardCode: standardCode,
      uomCode: uomCode,
    );
  }

  BrandListModel fromJson(Map<String, Object> json) {
    return BrandListModel.fromJson(json);
  }
}

/// @nodoc
const $BrandListModel = _$BrandListModelTearOff();

/// @nodoc
mixin _$BrandListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "standard_code")
  String? get standardCode => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandListModelCopyWith<BrandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandListModelCopyWith<$Res> {
  factory $BrandListModelCopyWith(
          BrandListModel value, $Res Function(BrandListModel) then) =
      _$BrandListModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class _$BrandListModelCopyWithImpl<$Res>
    implements $BrandListModelCopyWith<$Res> {
  _$BrandListModelCopyWithImpl(this._value, this._then);

  final BrandListModel _value;
  // ignore: unused_field
  final $Res Function(BrandListModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? standardCode = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: standardCode == freezed
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BrandListModelCopyWith<$Res>
    implements $BrandListModelCopyWith<$Res> {
  factory _$BrandListModelCopyWith(
          _BrandListModel value, $Res Function(_BrandListModel) then) =
      __$BrandListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class __$BrandListModelCopyWithImpl<$Res>
    extends _$BrandListModelCopyWithImpl<$Res>
    implements _$BrandListModelCopyWith<$Res> {
  __$BrandListModelCopyWithImpl(
      _BrandListModel _value, $Res Function(_BrandListModel) _then)
      : super(_value, (v) => _then(v as _BrandListModel));

  @override
  _BrandListModel get _value => super._value as _BrandListModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? standardCode = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_BrandListModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: standardCode == freezed
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandListModel implements _BrandListModel {
  const _$_BrandListModel(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: "standard_code") this.standardCode,
      @JsonKey(name: "uom_code") this.uomCode});

  factory _$_BrandListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: "standard_code")
  final String? standardCode;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;

  @override
  String toString() {
    return 'BrandListModel(id: $id, name: $name, code: $code, standardCode: $standardCode, uomCode: $uomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandListModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.standardCode, standardCode) ||
                const DeepCollectionEquality()
                    .equals(other.standardCode, standardCode)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality().equals(other.uomCode, uomCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(standardCode) ^
      const DeepCollectionEquality().hash(uomCode);

  @JsonKey(ignore: true)
  @override
  _$BrandListModelCopyWith<_BrandListModel> get copyWith =>
      __$BrandListModelCopyWithImpl<_BrandListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandListModelToJson(this);
  }
}

abstract class _BrandListModel implements BrandListModel {
  const factory _BrandListModel(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "uom_code") String? uomCode}) = _$_BrandListModel;

  factory _BrandListModel.fromJson(Map<String, dynamic> json) =
      _$_BrandListModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "standard_code")
  String? get standardCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BrandListModelCopyWith<_BrandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
