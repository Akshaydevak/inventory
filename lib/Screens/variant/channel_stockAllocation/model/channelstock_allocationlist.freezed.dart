// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channelstock_allocationlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChanmneStockListModelModel _$ChanmneStockListModelModelFromJson(
    Map<String, dynamic> json) {
  return _ChanmneStockListModelModel.fromJson(json);
}

/// @nodoc
mixin _$ChanmneStockListModelModel {
  int? get id => throw _privateConstructorUsedError;
  List<String>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypecode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_name")
  String? get channeltypeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChanmneStockListModelModelCopyWith<ChanmneStockListModelModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChanmneStockListModelModelCopyWith<$Res> {
  factory $ChanmneStockListModelModelCopyWith(ChanmneStockListModelModel value,
          $Res Function(ChanmneStockListModelModel) then) =
      _$ChanmneStockListModelModelCopyWithImpl<$Res,
          ChanmneStockListModelModel>;
  @useResult
  $Res call(
      {int? id,
      List<String>? values,
      @JsonKey(name: "channel_type_code") String? channelTypecode,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "channel_type_name") String? channeltypeName});
}

/// @nodoc
class _$ChanmneStockListModelModelCopyWithImpl<$Res,
        $Val extends ChanmneStockListModelModel>
    implements $ChanmneStockListModelModelCopyWith<$Res> {
  _$ChanmneStockListModelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? values = freezed,
    Object? channelTypecode = freezed,
    Object? channelTypeId = freezed,
    Object? channeltypeName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      channelTypecode: freezed == channelTypecode
          ? _value.channelTypecode
          : channelTypecode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      channeltypeName: freezed == channeltypeName
          ? _value.channeltypeName
          : channeltypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChanmneStockListModelModelCopyWith<$Res>
    implements $ChanmneStockListModelModelCopyWith<$Res> {
  factory _$$_ChanmneStockListModelModelCopyWith(
          _$_ChanmneStockListModelModel value,
          $Res Function(_$_ChanmneStockListModelModel) then) =
      __$$_ChanmneStockListModelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<String>? values,
      @JsonKey(name: "channel_type_code") String? channelTypecode,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "channel_type_name") String? channeltypeName});
}

/// @nodoc
class __$$_ChanmneStockListModelModelCopyWithImpl<$Res>
    extends _$ChanmneStockListModelModelCopyWithImpl<$Res,
        _$_ChanmneStockListModelModel>
    implements _$$_ChanmneStockListModelModelCopyWith<$Res> {
  __$$_ChanmneStockListModelModelCopyWithImpl(
      _$_ChanmneStockListModelModel _value,
      $Res Function(_$_ChanmneStockListModelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? values = freezed,
    Object? channelTypecode = freezed,
    Object? channelTypeId = freezed,
    Object? channeltypeName = freezed,
  }) {
    return _then(_$_ChanmneStockListModelModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      channelTypecode: freezed == channelTypecode
          ? _value.channelTypecode
          : channelTypecode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      channeltypeName: freezed == channeltypeName
          ? _value.channeltypeName
          : channeltypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChanmneStockListModelModel implements _ChanmneStockListModelModel {
  const _$_ChanmneStockListModelModel(
      {this.id,
      final List<String>? values,
      @JsonKey(name: "channel_type_code") this.channelTypecode,
      @JsonKey(name: "channel_type_id") this.channelTypeId,
      @JsonKey(name: "channel_type_name") this.channeltypeName})
      : _values = values;

  factory _$_ChanmneStockListModelModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChanmneStockListModelModelFromJson(json);

  @override
  final int? id;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypecode;
  @override
  @JsonKey(name: "channel_type_id")
  final String? channelTypeId;
  @override
  @JsonKey(name: "channel_type_name")
  final String? channeltypeName;

  @override
  String toString() {
    return 'ChanmneStockListModelModel(id: $id, values: $values, channelTypecode: $channelTypecode, channelTypeId: $channelTypeId, channeltypeName: $channeltypeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChanmneStockListModelModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.channelTypecode, channelTypecode) ||
                other.channelTypecode == channelTypecode) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            (identical(other.channeltypeName, channeltypeName) ||
                other.channeltypeName == channeltypeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_values),
      channelTypecode,
      channelTypeId,
      channeltypeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChanmneStockListModelModelCopyWith<_$_ChanmneStockListModelModel>
      get copyWith => __$$_ChanmneStockListModelModelCopyWithImpl<
          _$_ChanmneStockListModelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChanmneStockListModelModelToJson(
      this,
    );
  }
}

abstract class _ChanmneStockListModelModel
    implements ChanmneStockListModelModel {
  const factory _ChanmneStockListModelModel(
          {final int? id,
          final List<String>? values,
          @JsonKey(name: "channel_type_code") final String? channelTypecode,
          @JsonKey(name: "channel_type_id") final String? channelTypeId,
          @JsonKey(name: "channel_type_name") final String? channeltypeName}) =
      _$_ChanmneStockListModelModel;

  factory _ChanmneStockListModelModel.fromJson(Map<String, dynamic> json) =
      _$_ChanmneStockListModelModel.fromJson;

  @override
  int? get id;
  @override
  List<String>? get values;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypecode;
  @override
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId;
  @override
  @JsonKey(name: "channel_type_name")
  String? get channeltypeName;
  @override
  @JsonKey(ignore: true)
  _$$_ChanmneStockListModelModelCopyWith<_$_ChanmneStockListModelModel>
      get copyWith => throw _privateConstructorUsedError;
}
