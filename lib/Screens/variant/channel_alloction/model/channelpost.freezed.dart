// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channelpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelPostModel _$ChannelPostModelFromJson(Map<String, dynamic> json) {
  return _ChannelPostModel.fromJson(json);
}

/// @nodoc
class _$ChannelPostModelTearOff {
  const _$ChannelPostModelTearOff();

  _ChannelPostModel call(
      {int? priority,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "selection_type") String? selectionType,
      @JsonKey(name: "channel_type_code") String? channelTypeCode,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "selected_data") List<SelectedData>? selectedData,
      @JsonKey(name: "channel_data") List<ChannelDatas>? channelDatas}) {
    return _ChannelPostModel(
      priority: priority,
      inventoryId: inventoryId,
      selectionType: selectionType,
      channelTypeCode: channelTypeCode,
      channelTypeName: channelTypeName,
      channelTypeId: channelTypeId,
      selectedData: selectedData,
      channelDatas: channelDatas,
    );
  }

  ChannelPostModel fromJson(Map<String, Object> json) {
    return ChannelPostModel.fromJson(json);
  }
}

/// @nodoc
const $ChannelPostModel = _$ChannelPostModelTearOff();

/// @nodoc
mixin _$ChannelPostModel {
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "selection_type")
  String? get selectionType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "selected_data")
  List<SelectedData>? get selectedData => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_data")
  List<ChannelDatas>? get channelDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelPostModelCopyWith<ChannelPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelPostModelCopyWith<$Res> {
  factory $ChannelPostModelCopyWith(
          ChannelPostModel value, $Res Function(ChannelPostModel) then) =
      _$ChannelPostModelCopyWithImpl<$Res>;
  $Res call(
      {int? priority,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "selection_type") String? selectionType,
      @JsonKey(name: "channel_type_code") String? channelTypeCode,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "selected_data") List<SelectedData>? selectedData,
      @JsonKey(name: "channel_data") List<ChannelDatas>? channelDatas});
}

/// @nodoc
class _$ChannelPostModelCopyWithImpl<$Res>
    implements $ChannelPostModelCopyWith<$Res> {
  _$ChannelPostModelCopyWithImpl(this._value, this._then);

  final ChannelPostModel _value;
  // ignore: unused_field
  final $Res Function(ChannelPostModel) _then;

  @override
  $Res call({
    Object? priority = freezed,
    Object? inventoryId = freezed,
    Object? selectionType = freezed,
    Object? channelTypeCode = freezed,
    Object? channelTypeName = freezed,
    Object? channelTypeId = freezed,
    Object? selectedData = freezed,
    Object? channelDatas = freezed,
  }) {
    return _then(_value.copyWith(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectionType: selectionType == freezed
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: channelTypeCode == freezed
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: channelTypeName == freezed
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: channelTypeId == freezed
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedData: selectedData == freezed
          ? _value.selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as List<SelectedData>?,
      channelDatas: channelDatas == freezed
          ? _value.channelDatas
          : channelDatas // ignore: cast_nullable_to_non_nullable
              as List<ChannelDatas>?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelPostModelCopyWith<$Res>
    implements $ChannelPostModelCopyWith<$Res> {
  factory _$ChannelPostModelCopyWith(
          _ChannelPostModel value, $Res Function(_ChannelPostModel) then) =
      __$ChannelPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? priority,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "selection_type") String? selectionType,
      @JsonKey(name: "channel_type_code") String? channelTypeCode,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "selected_data") List<SelectedData>? selectedData,
      @JsonKey(name: "channel_data") List<ChannelDatas>? channelDatas});
}

/// @nodoc
class __$ChannelPostModelCopyWithImpl<$Res>
    extends _$ChannelPostModelCopyWithImpl<$Res>
    implements _$ChannelPostModelCopyWith<$Res> {
  __$ChannelPostModelCopyWithImpl(
      _ChannelPostModel _value, $Res Function(_ChannelPostModel) _then)
      : super(_value, (v) => _then(v as _ChannelPostModel));

  @override
  _ChannelPostModel get _value => super._value as _ChannelPostModel;

  @override
  $Res call({
    Object? priority = freezed,
    Object? inventoryId = freezed,
    Object? selectionType = freezed,
    Object? channelTypeCode = freezed,
    Object? channelTypeName = freezed,
    Object? channelTypeId = freezed,
    Object? selectedData = freezed,
    Object? channelDatas = freezed,
  }) {
    return _then(_ChannelPostModel(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectionType: selectionType == freezed
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: channelTypeCode == freezed
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: channelTypeName == freezed
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: channelTypeId == freezed
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedData: selectedData == freezed
          ? _value.selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as List<SelectedData>?,
      channelDatas: channelDatas == freezed
          ? _value.channelDatas
          : channelDatas // ignore: cast_nullable_to_non_nullable
              as List<ChannelDatas>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelPostModel implements _ChannelPostModel {
  const _$_ChannelPostModel(
      {this.priority,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "selection_type") this.selectionType,
      @JsonKey(name: "channel_type_code") this.channelTypeCode,
      @JsonKey(name: "channel_type_name") this.channelTypeName,
      @JsonKey(name: "channel_type_id") this.channelTypeId,
      @JsonKey(name: "selected_data") this.selectedData,
      @JsonKey(name: "channel_data") this.channelDatas});

  factory _$_ChannelPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelPostModelFromJson(json);

  @override
  final int? priority;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "selection_type")
  final String? selectionType;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;
  @override
  @JsonKey(name: "channel_type_name")
  final String? channelTypeName;
  @override
  @JsonKey(name: "channel_type_id")
  final String? channelTypeId;
  @override
  @JsonKey(name: "selected_data")
  final List<SelectedData>? selectedData;
  @override
  @JsonKey(name: "channel_data")
  final List<ChannelDatas>? channelDatas;

  @override
  String toString() {
    return 'ChannelPostModel(priority: $priority, inventoryId: $inventoryId, selectionType: $selectionType, channelTypeCode: $channelTypeCode, channelTypeName: $channelTypeName, channelTypeId: $channelTypeId, selectedData: $selectedData, channelDatas: $channelDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelPostModel &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.selectionType, selectionType) ||
                const DeepCollectionEquality()
                    .equals(other.selectionType, selectionType)) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.channelTypeCode, channelTypeCode)) &&
            (identical(other.channelTypeName, channelTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.channelTypeName, channelTypeName)) &&
            (identical(other.channelTypeId, channelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.channelTypeId, channelTypeId)) &&
            (identical(other.selectedData, selectedData) ||
                const DeepCollectionEquality()
                    .equals(other.selectedData, selectedData)) &&
            (identical(other.channelDatas, channelDatas) ||
                const DeepCollectionEquality()
                    .equals(other.channelDatas, channelDatas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(selectionType) ^
      const DeepCollectionEquality().hash(channelTypeCode) ^
      const DeepCollectionEquality().hash(channelTypeName) ^
      const DeepCollectionEquality().hash(channelTypeId) ^
      const DeepCollectionEquality().hash(selectedData) ^
      const DeepCollectionEquality().hash(channelDatas);

  @JsonKey(ignore: true)
  @override
  _$ChannelPostModelCopyWith<_ChannelPostModel> get copyWith =>
      __$ChannelPostModelCopyWithImpl<_ChannelPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelPostModelToJson(this);
  }
}

abstract class _ChannelPostModel implements ChannelPostModel {
  const factory _ChannelPostModel(
          {int? priority,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "selection_type") String? selectionType,
          @JsonKey(name: "channel_type_code") String? channelTypeCode,
          @JsonKey(name: "channel_type_name") String? channelTypeName,
          @JsonKey(name: "channel_type_id") String? channelTypeId,
          @JsonKey(name: "selected_data") List<SelectedData>? selectedData,
          @JsonKey(name: "channel_data") List<ChannelDatas>? channelDatas}) =
      _$_ChannelPostModel;

  factory _ChannelPostModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelPostModel.fromJson;

  @override
  int? get priority => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selection_type")
  String? get selectionType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selected_data")
  List<SelectedData>? get selectedData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_data")
  List<ChannelDatas>? get channelDatas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelPostModelCopyWith<_ChannelPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedData _$SelectedDataFromJson(Map<String, dynamic> json) {
  return _SelectedData.fromJson(json);
}

/// @nodoc
class _$SelectedDataTearOff {
  const _$SelectedDataTearOff();

  _SelectedData call({int? id, String? code}) {
    return _SelectedData(
      id: id,
      code: code,
    );
  }

  SelectedData fromJson(Map<String, Object> json) {
    return SelectedData.fromJson(json);
  }
}

/// @nodoc
const $SelectedData = _$SelectedDataTearOff();

/// @nodoc
mixin _$SelectedData {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedDataCopyWith<SelectedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedDataCopyWith<$Res> {
  factory $SelectedDataCopyWith(
          SelectedData value, $Res Function(SelectedData) then) =
      _$SelectedDataCopyWithImpl<$Res>;
  $Res call({int? id, String? code});
}

/// @nodoc
class _$SelectedDataCopyWithImpl<$Res> implements $SelectedDataCopyWith<$Res> {
  _$SelectedDataCopyWithImpl(this._value, this._then);

  final SelectedData _value;
  // ignore: unused_field
  final $Res Function(SelectedData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$SelectedDataCopyWith<$Res>
    implements $SelectedDataCopyWith<$Res> {
  factory _$SelectedDataCopyWith(
          _SelectedData value, $Res Function(_SelectedData) then) =
      __$SelectedDataCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? code});
}

/// @nodoc
class __$SelectedDataCopyWithImpl<$Res> extends _$SelectedDataCopyWithImpl<$Res>
    implements _$SelectedDataCopyWith<$Res> {
  __$SelectedDataCopyWithImpl(
      _SelectedData _value, $Res Function(_SelectedData) _then)
      : super(_value, (v) => _then(v as _SelectedData));

  @override
  _SelectedData get _value => super._value as _SelectedData;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_SelectedData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedData implements _SelectedData {
  const _$_SelectedData({this.id, this.code});

  factory _$_SelectedData.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedDataFromJson(json);

  @override
  final int? id;
  @override
  final String? code;

  @override
  String toString() {
    return 'SelectedData(id: $id, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SelectedDataCopyWith<_SelectedData> get copyWith =>
      __$SelectedDataCopyWithImpl<_SelectedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedDataToJson(this);
  }
}

abstract class _SelectedData implements SelectedData {
  const factory _SelectedData({int? id, String? code}) = _$_SelectedData;

  factory _SelectedData.fromJson(Map<String, dynamic> json) =
      _$_SelectedData.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedDataCopyWith<_SelectedData> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelDatas _$ChannelDatasFromJson(Map<String, dynamic> json) {
  return _ChannelDatas.fromJson(json);
}

/// @nodoc
class _$ChannelDatasTearOff {
  const _$ChannelDatasTearOff();

  _ChannelDatas call(
      {int? priority,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_stock_type") String? channelStockType}) {
    return _ChannelDatas(
      priority: priority,
      channelId: channelId,
      channelCode: channelCode,
      channelName: channelName,
      channelTypeName: channelTypeName,
      channelStockType: channelStockType,
    );
  }

  ChannelDatas fromJson(Map<String, Object> json) {
    return ChannelDatas.fromJson(json);
  }
}

/// @nodoc
const $ChannelDatas = _$ChannelDatasTearOff();

/// @nodoc
mixin _$ChannelDatas {
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_id")
  String? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelDatasCopyWith<ChannelDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDatasCopyWith<$Res> {
  factory $ChannelDatasCopyWith(
          ChannelDatas value, $Res Function(ChannelDatas) then) =
      _$ChannelDatasCopyWithImpl<$Res>;
  $Res call(
      {int? priority,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_stock_type") String? channelStockType});
}

/// @nodoc
class _$ChannelDatasCopyWithImpl<$Res> implements $ChannelDatasCopyWith<$Res> {
  _$ChannelDatasCopyWithImpl(this._value, this._then);

  final ChannelDatas _value;
  // ignore: unused_field
  final $Res Function(ChannelDatas) _then;

  @override
  $Res call({
    Object? priority = freezed,
    Object? channelId = freezed,
    Object? channelCode = freezed,
    Object? channelName = freezed,
    Object? channelTypeName = freezed,
    Object? channelStockType = freezed,
  }) {
    return _then(_value.copyWith(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: channelCode == freezed
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: channelTypeName == freezed
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: channelStockType == freezed
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelDatasCopyWith<$Res>
    implements $ChannelDatasCopyWith<$Res> {
  factory _$ChannelDatasCopyWith(
          _ChannelDatas value, $Res Function(_ChannelDatas) then) =
      __$ChannelDatasCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? priority,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_stock_type") String? channelStockType});
}

/// @nodoc
class __$ChannelDatasCopyWithImpl<$Res> extends _$ChannelDatasCopyWithImpl<$Res>
    implements _$ChannelDatasCopyWith<$Res> {
  __$ChannelDatasCopyWithImpl(
      _ChannelDatas _value, $Res Function(_ChannelDatas) _then)
      : super(_value, (v) => _then(v as _ChannelDatas));

  @override
  _ChannelDatas get _value => super._value as _ChannelDatas;

  @override
  $Res call({
    Object? priority = freezed,
    Object? channelId = freezed,
    Object? channelCode = freezed,
    Object? channelName = freezed,
    Object? channelTypeName = freezed,
    Object? channelStockType = freezed,
  }) {
    return _then(_ChannelDatas(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: channelCode == freezed
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: channelTypeName == freezed
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: channelStockType == freezed
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelDatas implements _ChannelDatas {
  const _$_ChannelDatas(
      {this.priority,
      @JsonKey(name: "channel_id") this.channelId,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_name") this.channelName,
      @JsonKey(name: "channel_type_name") this.channelTypeName,
      @JsonKey(name: "channel_stock_type") this.channelStockType});

  factory _$_ChannelDatas.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelDatasFromJson(json);

  @override
  final int? priority;
  @override
  @JsonKey(name: "channel_id")
  final String? channelId;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @JsonKey(name: "channel_type_name")
  final String? channelTypeName;
  @override
  @JsonKey(name: "channel_stock_type")
  final String? channelStockType;

  @override
  String toString() {
    return 'ChannelDatas(priority: $priority, channelId: $channelId, channelCode: $channelCode, channelName: $channelName, channelTypeName: $channelTypeName, channelStockType: $channelStockType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelDatas &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.channelCode, channelCode) ||
                const DeepCollectionEquality()
                    .equals(other.channelCode, channelCode)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.channelTypeName, channelTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.channelTypeName, channelTypeName)) &&
            (identical(other.channelStockType, channelStockType) ||
                const DeepCollectionEquality()
                    .equals(other.channelStockType, channelStockType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(channelCode) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(channelTypeName) ^
      const DeepCollectionEquality().hash(channelStockType);

  @JsonKey(ignore: true)
  @override
  _$ChannelDatasCopyWith<_ChannelDatas> get copyWith =>
      __$ChannelDatasCopyWithImpl<_ChannelDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelDatasToJson(this);
  }
}

abstract class _ChannelDatas implements ChannelDatas {
  const factory _ChannelDatas(
          {int? priority,
          @JsonKey(name: "channel_id") String? channelId,
          @JsonKey(name: "channel_code") String? channelCode,
          @JsonKey(name: "channel_name") String? channelName,
          @JsonKey(name: "channel_type_name") String? channelTypeName,
          @JsonKey(name: "channel_stock_type") String? channelStockType}) =
      _$_ChannelDatas;

  factory _ChannelDatas.fromJson(Map<String, dynamic> json) =
      _$_ChannelDatas.fromJson;

  @override
  int? get priority => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_id")
  String? get channelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelDatasCopyWith<_ChannelDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
