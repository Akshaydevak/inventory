// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'typemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelTypeModel _$ChannelTypeModelFromJson(Map<String, dynamic> json) {
  return _ChannelTypeModel.fromJson(json);
}

/// @nodoc
class _$ChannelTypeModelTearOff {
  const _$ChannelTypeModelTearOff();

  _ChannelTypeModel call(
      {int? id, String? code, String? name, Barcode? barcode}) {
    return _ChannelTypeModel(
      id: id,
      code: code,
      name: name,
      barcode: barcode,
    );
  }

  ChannelTypeModel fromJson(Map<String, Object> json) {
    return ChannelTypeModel.fromJson(json);
  }
}

/// @nodoc
const $ChannelTypeModel = _$ChannelTypeModelTearOff();

/// @nodoc
mixin _$ChannelTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelTypeModelCopyWith<ChannelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelTypeModelCopyWith<$Res> {
  factory $ChannelTypeModelCopyWith(
          ChannelTypeModel value, $Res Function(ChannelTypeModel) then) =
      _$ChannelTypeModelCopyWithImpl<$Res>;
  $Res call({int? id, String? code, String? name, Barcode? barcode});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$ChannelTypeModelCopyWithImpl<$Res>
    implements $ChannelTypeModelCopyWith<$Res> {
  _$ChannelTypeModelCopyWithImpl(this._value, this._then);

  final ChannelTypeModel _value;
  // ignore: unused_field
  final $Res Function(ChannelTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ));
  }

  @override
  $BarcodeCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value));
    });
  }
}

/// @nodoc
abstract class _$ChannelTypeModelCopyWith<$Res>
    implements $ChannelTypeModelCopyWith<$Res> {
  factory _$ChannelTypeModelCopyWith(
          _ChannelTypeModel value, $Res Function(_ChannelTypeModel) then) =
      __$ChannelTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? code, String? name, Barcode? barcode});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$ChannelTypeModelCopyWithImpl<$Res>
    extends _$ChannelTypeModelCopyWithImpl<$Res>
    implements _$ChannelTypeModelCopyWith<$Res> {
  __$ChannelTypeModelCopyWithImpl(
      _ChannelTypeModel _value, $Res Function(_ChannelTypeModel) _then)
      : super(_value, (v) => _then(v as _ChannelTypeModel));

  @override
  _ChannelTypeModel get _value => super._value as _ChannelTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_ChannelTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelTypeModel implements _ChannelTypeModel {
  const _$_ChannelTypeModel({this.id, this.code, this.name, this.barcode});

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
  String toString() {
    return 'ChannelTypeModel(id: $id, code: $code, name: $name, barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelTypeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality().equals(other.barcode, barcode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(barcode);

  @JsonKey(ignore: true)
  @override
  _$ChannelTypeModelCopyWith<_ChannelTypeModel> get copyWith =>
      __$ChannelTypeModelCopyWithImpl<_ChannelTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelTypeModelToJson(this);
  }
}

abstract class _ChannelTypeModel implements ChannelTypeModel {
  const factory _ChannelTypeModel(
      {int? id,
      String? code,
      String? name,
      Barcode? barcode}) = _$_ChannelTypeModel;

  factory _ChannelTypeModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelTypeModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  Barcode? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelTypeModelCopyWith<_ChannelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
