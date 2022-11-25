// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'typemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelTypeModel _$ChannelTypeModelFromJson(Map<String, dynamic> json) {
  return _ChannelTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelTypeModelCopyWith<ChannelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelTypeModelCopyWith<$Res> {
  factory $ChannelTypeModelCopyWith(
          ChannelTypeModel value, $Res Function(ChannelTypeModel) then) =
      _$ChannelTypeModelCopyWithImpl<$Res, ChannelTypeModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      Barcode? barcode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$ChannelTypeModelCopyWithImpl<$Res, $Val extends ChannelTypeModel>
    implements $ChannelTypeModelCopyWith<$Res> {
  _$ChannelTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
    Object? isActive = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarcodeCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChannelTypeModelCopyWith<$Res>
    implements $ChannelTypeModelCopyWith<$Res> {
  factory _$$_ChannelTypeModelCopyWith(
          _$_ChannelTypeModel value, $Res Function(_$_ChannelTypeModel) then) =
      __$$_ChannelTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      Barcode? barcode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$_ChannelTypeModelCopyWithImpl<$Res>
    extends _$ChannelTypeModelCopyWithImpl<$Res, _$_ChannelTypeModel>
    implements _$$_ChannelTypeModelCopyWith<$Res> {
  __$$_ChannelTypeModelCopyWithImpl(
      _$_ChannelTypeModel _value, $Res Function(_$_ChannelTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ChannelTypeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelTypeModel implements _ChannelTypeModel {
  const _$_ChannelTypeModel(
      {this.id,
      this.code,
      this.name,
      this.barcode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ChannelTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final Barcode? barcode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'ChannelTypeModel(id: $id, code: $code, name: $name, barcode: $barcode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, name, barcode, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelTypeModelCopyWith<_$_ChannelTypeModel> get copyWith =>
      __$$_ChannelTypeModelCopyWithImpl<_$_ChannelTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelTypeModelToJson(
      this,
    );
  }
}

abstract class _ChannelTypeModel implements ChannelTypeModel {
  const factory _ChannelTypeModel(
      {final int? id,
      final String? code,
      final String? name,
      final Barcode? barcode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_ChannelTypeModel;

  factory _ChannelTypeModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  Barcode? get barcode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelTypeModelCopyWith<_$_ChannelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
