// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'baseuomcreation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseUomCreationtModel _$BaseUomCreationtModelFromJson(
    Map<String, dynamic> json) {
  return _BaseUomCreationtModel.fromJson(json);
}

/// @nodoc
class _$BaseUomCreationtModelTearOff {
  const _$BaseUomCreationtModelTearOff();

  _BaseUomCreationtModel call(
      {String? name,
      @JsonKey(name: "base_equivalent") String? baseEquivalent,
      @JsonKey(name: "uomgroup_code") String? uomGroupCode,
      @JsonKey(name: "short_name") String? shortName,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "conversion_factor") int? conversionFactor,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _BaseUomCreationtModel(
      name: name,
      baseEquivalent: baseEquivalent,
      uomGroupCode: uomGroupCode,
      shortName: shortName,
      uomCode: uomCode,
      standardCode: standardCode,
      conversionFactor: conversionFactor,
      isActive: isActive,
    );
  }

  BaseUomCreationtModel fromJson(Map<String, Object> json) {
    return BaseUomCreationtModel.fromJson(json);
  }
}

/// @nodoc
const $BaseUomCreationtModel = _$BaseUomCreationtModelTearOff();

/// @nodoc
mixin _$BaseUomCreationtModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "base_equivalent")
  String? get baseEquivalent => throw _privateConstructorUsedError;
  @JsonKey(name: "uomgroup_code")
  String? get uomGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "short_name")
  String? get shortName => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "standard_code")
  String? get standardCode => throw _privateConstructorUsedError;
  @JsonKey(name: "conversion_factor")
  int? get conversionFactor => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseUomCreationtModelCopyWith<BaseUomCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseUomCreationtModelCopyWith<$Res> {
  factory $BaseUomCreationtModelCopyWith(BaseUomCreationtModel value,
          $Res Function(BaseUomCreationtModel) then) =
      _$BaseUomCreationtModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      @JsonKey(name: "base_equivalent") String? baseEquivalent,
      @JsonKey(name: "uomgroup_code") String? uomGroupCode,
      @JsonKey(name: "short_name") String? shortName,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "conversion_factor") int? conversionFactor,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$BaseUomCreationtModelCopyWithImpl<$Res>
    implements $BaseUomCreationtModelCopyWith<$Res> {
  _$BaseUomCreationtModelCopyWithImpl(this._value, this._then);

  final BaseUomCreationtModel _value;
  // ignore: unused_field
  final $Res Function(BaseUomCreationtModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? baseEquivalent = freezed,
    Object? uomGroupCode = freezed,
    Object? shortName = freezed,
    Object? uomCode = freezed,
    Object? standardCode = freezed,
    Object? conversionFactor = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseEquivalent: baseEquivalent == freezed
          ? _value.baseEquivalent
          : baseEquivalent // ignore: cast_nullable_to_non_nullable
              as String?,
      uomGroupCode: uomGroupCode == freezed
          ? _value.uomGroupCode
          : uomGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: standardCode == freezed
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionFactor: conversionFactor == freezed
          ? _value.conversionFactor
          : conversionFactor // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$BaseUomCreationtModelCopyWith<$Res>
    implements $BaseUomCreationtModelCopyWith<$Res> {
  factory _$BaseUomCreationtModelCopyWith(_BaseUomCreationtModel value,
          $Res Function(_BaseUomCreationtModel) then) =
      __$BaseUomCreationtModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      @JsonKey(name: "base_equivalent") String? baseEquivalent,
      @JsonKey(name: "uomgroup_code") String? uomGroupCode,
      @JsonKey(name: "short_name") String? shortName,
      @JsonKey(name: "uom_code") String? uomCode,
      @JsonKey(name: "standard_code") String? standardCode,
      @JsonKey(name: "conversion_factor") int? conversionFactor,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$BaseUomCreationtModelCopyWithImpl<$Res>
    extends _$BaseUomCreationtModelCopyWithImpl<$Res>
    implements _$BaseUomCreationtModelCopyWith<$Res> {
  __$BaseUomCreationtModelCopyWithImpl(_BaseUomCreationtModel _value,
      $Res Function(_BaseUomCreationtModel) _then)
      : super(_value, (v) => _then(v as _BaseUomCreationtModel));

  @override
  _BaseUomCreationtModel get _value => super._value as _BaseUomCreationtModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? baseEquivalent = freezed,
    Object? uomGroupCode = freezed,
    Object? shortName = freezed,
    Object? uomCode = freezed,
    Object? standardCode = freezed,
    Object? conversionFactor = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_BaseUomCreationtModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseEquivalent: baseEquivalent == freezed
          ? _value.baseEquivalent
          : baseEquivalent // ignore: cast_nullable_to_non_nullable
              as String?,
      uomGroupCode: uomGroupCode == freezed
          ? _value.uomGroupCode
          : uomGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      standardCode: standardCode == freezed
          ? _value.standardCode
          : standardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionFactor: conversionFactor == freezed
          ? _value.conversionFactor
          : conversionFactor // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseUomCreationtModel implements _BaseUomCreationtModel {
  const _$_BaseUomCreationtModel(
      {this.name,
      @JsonKey(name: "base_equivalent") this.baseEquivalent,
      @JsonKey(name: "uomgroup_code") this.uomGroupCode,
      @JsonKey(name: "short_name") this.shortName,
      @JsonKey(name: "uom_code") this.uomCode,
      @JsonKey(name: "standard_code") this.standardCode,
      @JsonKey(name: "conversion_factor") this.conversionFactor,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_BaseUomCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$$_BaseUomCreationtModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "base_equivalent")
  final String? baseEquivalent;
  @override
  @JsonKey(name: "uomgroup_code")
  final String? uomGroupCode;
  @override
  @JsonKey(name: "short_name")
  final String? shortName;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;
  @override
  @JsonKey(name: "standard_code")
  final String? standardCode;
  @override
  @JsonKey(name: "conversion_factor")
  final int? conversionFactor;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'BaseUomCreationtModel(name: $name, baseEquivalent: $baseEquivalent, uomGroupCode: $uomGroupCode, shortName: $shortName, uomCode: $uomCode, standardCode: $standardCode, conversionFactor: $conversionFactor, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseUomCreationtModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.baseEquivalent, baseEquivalent) ||
                const DeepCollectionEquality()
                    .equals(other.baseEquivalent, baseEquivalent)) &&
            (identical(other.uomGroupCode, uomGroupCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomGroupCode, uomGroupCode)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.standardCode, standardCode) ||
                const DeepCollectionEquality()
                    .equals(other.standardCode, standardCode)) &&
            (identical(other.conversionFactor, conversionFactor) ||
                const DeepCollectionEquality()
                    .equals(other.conversionFactor, conversionFactor)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(baseEquivalent) ^
      const DeepCollectionEquality().hash(uomGroupCode) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(standardCode) ^
      const DeepCollectionEquality().hash(conversionFactor) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$BaseUomCreationtModelCopyWith<_BaseUomCreationtModel> get copyWith =>
      __$BaseUomCreationtModelCopyWithImpl<_BaseUomCreationtModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseUomCreationtModelToJson(this);
  }
}

abstract class _BaseUomCreationtModel implements BaseUomCreationtModel {
  const factory _BaseUomCreationtModel(
          {String? name,
          @JsonKey(name: "base_equivalent") String? baseEquivalent,
          @JsonKey(name: "uomgroup_code") String? uomGroupCode,
          @JsonKey(name: "short_name") String? shortName,
          @JsonKey(name: "uom_code") String? uomCode,
          @JsonKey(name: "standard_code") String? standardCode,
          @JsonKey(name: "conversion_factor") int? conversionFactor,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_BaseUomCreationtModel;

  factory _BaseUomCreationtModel.fromJson(Map<String, dynamic> json) =
      _$_BaseUomCreationtModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "base_equivalent")
  String? get baseEquivalent => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uomgroup_code")
  String? get uomGroupCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "short_name")
  String? get shortName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "standard_code")
  String? get standardCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "conversion_factor")
  int? get conversionFactor => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseUomCreationtModelCopyWith<_BaseUomCreationtModel> get copyWith =>
      throw _privateConstructorUsedError;
}
