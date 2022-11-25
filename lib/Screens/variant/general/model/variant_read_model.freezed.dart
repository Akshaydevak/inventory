// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantCreationReadModel _$VariantCreationReadModelFromJson(
    Map<String, dynamic> json) {
  return _VariantCreationReadModel.fromJson(json);
}

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
      _$VariantCreationReadModelCopyWithImpl<$Res, VariantCreationReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code") String? variantFrameWork,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName});
}

/// @nodoc
class _$VariantCreationReadModelCopyWithImpl<$Res,
        $Val extends VariantCreationReadModel>
    implements $VariantCreationReadModelCopyWith<$Res> {
  _$VariantCreationReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkName = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWork: freezed == variantFrameWork
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: freezed == variantFrameWorkName
          ? _value.variantFrameWorkName
          : variantFrameWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantCreationReadModelCopyWith<$Res>
    implements $VariantCreationReadModelCopyWith<$Res> {
  factory _$$_VariantCreationReadModelCopyWith(
          _$_VariantCreationReadModel value,
          $Res Function(_$_VariantCreationReadModel) then) =
      __$$_VariantCreationReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "variant_framework_code") String? variantFrameWork,
      @JsonKey(name: "variant_framework_name") String? variantFrameWorkName});
}

/// @nodoc
class __$$_VariantCreationReadModelCopyWithImpl<$Res>
    extends _$VariantCreationReadModelCopyWithImpl<$Res,
        _$_VariantCreationReadModel>
    implements _$$_VariantCreationReadModelCopyWith<$Res> {
  __$$_VariantCreationReadModelCopyWithImpl(_$_VariantCreationReadModel _value,
      $Res Function(_$_VariantCreationReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkName = freezed,
  }) {
    return _then(_$_VariantCreationReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWork: freezed == variantFrameWork
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkName: freezed == variantFrameWorkName
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
        (other.runtimeType == runtimeType &&
            other is _$_VariantCreationReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.variantFrameWork, variantFrameWork) ||
                other.variantFrameWork == variantFrameWork) &&
            (identical(other.variantFrameWorkName, variantFrameWorkName) ||
                other.variantFrameWorkName == variantFrameWorkName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, variantFrameWork, variantFrameWorkName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantCreationReadModelCopyWith<_$_VariantCreationReadModel>
      get copyWith => __$$_VariantCreationReadModelCopyWithImpl<
          _$_VariantCreationReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantCreationReadModelToJson(
      this,
    );
  }
}

abstract class _VariantCreationReadModel implements VariantCreationReadModel {
  const factory _VariantCreationReadModel(
      {final int? id,
      final String? name,
      final String? code,
      @JsonKey(name: "variant_framework_code")
          final String? variantFrameWork,
      @JsonKey(name: "variant_framework_name")
          final String? variantFrameWorkName}) = _$_VariantCreationReadModel;

  factory _VariantCreationReadModel.fromJson(Map<String, dynamic> json) =
      _$_VariantCreationReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(name: "variant_framework_code")
  String? get variantFrameWork;
  @override
  @JsonKey(name: "variant_framework_name")
  String? get variantFrameWorkName;
  @override
  @JsonKey(ignore: true)
  _$$_VariantCreationReadModelCopyWith<_$_VariantCreationReadModel>
      get copyWith => throw _privateConstructorUsedError;
}
