// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantCreationReadModel _$VariantCreationReadModelFromJson(
    Map<String, dynamic> json) {
  return _VariantCreationReadModel.fromJson(json);
}

/// @nodoc
class _$VariantCreationReadModelTearOff {
  const _$VariantCreationReadModelTearOff();

  _VariantCreationReadModel call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code") String? variantFrameWork,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName}) {
    return _VariantCreationReadModel(
      id: id,
      name: name,
      code: code,
      variantFrameWork: variantFrameWork,
      variantFrameWorkName: variantFrameWorkName,
    );
  }

  VariantCreationReadModel fromJson(Map<String, Object> json) {
    return VariantCreationReadModel.fromJson(json);
  }
}

/// @nodoc
const $VariantCreationReadModel = _$VariantCreationReadModelTearOff();

/// @nodoc
mixin _$VariantCreationReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framework_code")
  String? get variantFrameWork => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framework_name")
  String? get variantFrameWorkName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCreationReadModelCopyWith<VariantCreationReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCreationReadModelCopyWith<$Res> {
  factory $VariantCreationReadModelCopyWith(VariantCreationReadModel value,
          $Res Function(VariantCreationReadModel) then) =
      _$VariantCreationReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code") String? variantFrameWork,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName});
}

/// @nodoc
class _$VariantCreationReadModelCopyWithImpl<$Res>
    implements $VariantCreationReadModelCopyWith<$Res> {
  _$VariantCreationReadModelCopyWithImpl(this._value, this._then);

  final VariantCreationReadModel _value;
  // ignore: unused_field
  final $Res Function(VariantCreationReadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkName = freezed,
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
      variantFrameWork: variantFrameWork == freezed
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: variantFrameWorkName == freezed
          ? _value.variantFrameWorkName
          : variantFrameWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VariantCreationReadModelCopyWith<$Res>
    implements $VariantCreationReadModelCopyWith<$Res> {
  factory _$VariantCreationReadModelCopyWith(_VariantCreationReadModel value,
          $Res Function(_VariantCreationReadModel) then) =
      __$VariantCreationReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code") String? variantFrameWork,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName});
}

/// @nodoc
class __$VariantCreationReadModelCopyWithImpl<$Res>
    extends _$VariantCreationReadModelCopyWithImpl<$Res>
    implements _$VariantCreationReadModelCopyWith<$Res> {
  __$VariantCreationReadModelCopyWithImpl(_VariantCreationReadModel _value,
      $Res Function(_VariantCreationReadModel) _then)
      : super(_value, (v) => _then(v as _VariantCreationReadModel));

  @override
  _VariantCreationReadModel get _value =>
      super._value as _VariantCreationReadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkName = freezed,
  }) {
    return _then(_VariantCreationReadModel(
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
      variantFrameWork: variantFrameWork == freezed
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: variantFrameWorkName == freezed
          ? _value.variantFrameWorkName
          : variantFrameWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantCreationReadModel implements _VariantCreationReadModel {
  const _$_VariantCreationReadModel(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: "variant_framework_code") this.variantFrameWork,
      @JsonKey(name: "variant_framework_name") this.variantFrameWorkName});

  factory _$_VariantCreationReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantCreationReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: "variant_framework_code")
  final String? variantFrameWork;
  @override
  @JsonKey(name: "variant_framework_name")
  final String? variantFrameWorkName;

  @override
  String toString() {
    return 'VariantCreationReadModel(id: $id, name: $name, code: $code, variantFrameWork: $variantFrameWork, variantFrameWorkName: $variantFrameWorkName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantCreationReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.variantFrameWork, variantFrameWork) ||
                const DeepCollectionEquality()
                    .equals(other.variantFrameWork, variantFrameWork)) &&
            (identical(other.variantFrameWorkName, variantFrameWorkName) ||
                const DeepCollectionEquality()
                    .equals(other.variantFrameWorkName, variantFrameWorkName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(variantFrameWork) ^
      const DeepCollectionEquality().hash(variantFrameWorkName);

  @JsonKey(ignore: true)
  @override
  _$VariantCreationReadModelCopyWith<_VariantCreationReadModel> get copyWith =>
      __$VariantCreationReadModelCopyWithImpl<_VariantCreationReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantCreationReadModelToJson(this);
  }
}

abstract class _VariantCreationReadModel implements VariantCreationReadModel {
  const factory _VariantCreationReadModel(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code")
          String? variantFrameWork,
      @JsonKey(name: "variant_framework_name")
          String? variantFrameWorkName}) = _$_VariantCreationReadModel;

  factory _VariantCreationReadModel.fromJson(Map<String, dynamic> json) =
      _$_VariantCreationReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_framework_code")
  String? get variantFrameWork => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_framework_name")
  String? get variantFrameWorkName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantCreationReadModelCopyWith<_VariantCreationReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
