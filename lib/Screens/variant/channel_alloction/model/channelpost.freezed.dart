// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channelpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelPostModel _$ChannelPostModelFromJson(Map<String, dynamic> json) {
  return _ChannelPostModel.fromJson(json);
}

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
      _$ChannelPostModelCopyWithImpl<$Res, ChannelPostModel>;
  @useResult
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
class _$ChannelPostModelCopyWithImpl<$Res, $Val extends ChannelPostModel>
    implements $ChannelPostModelCopyWith<$Res> {
  _$ChannelPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectionType: freezed == selectionType
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: freezed == channelTypeName
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedData: freezed == selectedData
          ? _value.selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as List<SelectedData>?,
      channelDatas: freezed == channelDatas
          ? _value.channelDatas
          : channelDatas // ignore: cast_nullable_to_non_nullable
              as List<ChannelDatas>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelPostModelCopyWith<$Res>
    implements $ChannelPostModelCopyWith<$Res> {
  factory _$$_ChannelPostModelCopyWith(
          _$_ChannelPostModel value, $Res Function(_$_ChannelPostModel) then) =
      __$$_ChannelPostModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ChannelPostModelCopyWithImpl<$Res>
    extends _$ChannelPostModelCopyWithImpl<$Res, _$_ChannelPostModel>
    implements _$$_ChannelPostModelCopyWith<$Res> {
  __$$_ChannelPostModelCopyWithImpl(
      _$_ChannelPostModel _value, $Res Function(_$_ChannelPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_ChannelPostModel(
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectionType: freezed == selectionType
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: freezed == channelTypeName
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedData: freezed == selectedData
          ? _value._selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as List<SelectedData>?,
      channelDatas: freezed == channelDatas
          ? _value._channelDatas
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
      @JsonKey(name: "selected_data") final List<SelectedData>? selectedData,
      @JsonKey(name: "channel_data") final List<ChannelDatas>? channelDatas})
      : _selectedData = selectedData,
        _channelDatas = channelDatas;

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
  final List<SelectedData>? _selectedData;
  @override
  @JsonKey(name: "selected_data")
  List<SelectedData>? get selectedData {
    final value = _selectedData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ChannelDatas>? _channelDatas;
  @override
  @JsonKey(name: "channel_data")
  List<ChannelDatas>? get channelDatas {
    final value = _channelDatas;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChannelPostModel(priority: $priority, inventoryId: $inventoryId, selectionType: $selectionType, channelTypeCode: $channelTypeCode, channelTypeName: $channelTypeName, channelTypeId: $channelTypeId, selectedData: $selectedData, channelDatas: $channelDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelPostModel &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.selectionType, selectionType) ||
                other.selectionType == selectionType) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode) &&
            (identical(other.channelTypeName, channelTypeName) ||
                other.channelTypeName == channelTypeName) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            const DeepCollectionEquality()
                .equals(other._selectedData, _selectedData) &&
            const DeepCollectionEquality()
                .equals(other._channelDatas, _channelDatas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      priority,
      inventoryId,
      selectionType,
      channelTypeCode,
      channelTypeName,
      channelTypeId,
      const DeepCollectionEquality().hash(_selectedData),
      const DeepCollectionEquality().hash(_channelDatas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelPostModelCopyWith<_$_ChannelPostModel> get copyWith =>
      __$$_ChannelPostModelCopyWithImpl<_$_ChannelPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelPostModelToJson(
      this,
    );
  }
}

abstract class _ChannelPostModel implements ChannelPostModel {
  const factory _ChannelPostModel(
      {final int? priority,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "selection_type")
          final String? selectionType,
      @JsonKey(name: "channel_type_code")
          final String? channelTypeCode,
      @JsonKey(name: "channel_type_name")
          final String? channelTypeName,
      @JsonKey(name: "channel_type_id")
          final String? channelTypeId,
      @JsonKey(name: "selected_data")
          final List<SelectedData>? selectedData,
      @JsonKey(name: "channel_data")
          final List<ChannelDatas>? channelDatas}) = _$_ChannelPostModel;

  factory _ChannelPostModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelPostModel.fromJson;

  @override
  int? get priority;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "selection_type")
  String? get selectionType;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName;
  @override
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId;
  @override
  @JsonKey(name: "selected_data")
  List<SelectedData>? get selectedData;
  @override
  @JsonKey(name: "channel_data")
  List<ChannelDatas>? get channelDatas;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelPostModelCopyWith<_$_ChannelPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedData _$SelectedDataFromJson(Map<String, dynamic> json) {
  return _SelectedData.fromJson(json);
}

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
      _$SelectedDataCopyWithImpl<$Res, SelectedData>;
  @useResult
  $Res call({int? id, String? code});
}

/// @nodoc
class _$SelectedDataCopyWithImpl<$Res, $Val extends SelectedData>
    implements $SelectedDataCopyWith<$Res> {
  _$SelectedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedDataCopyWith<$Res>
    implements $SelectedDataCopyWith<$Res> {
  factory _$$_SelectedDataCopyWith(
          _$_SelectedData value, $Res Function(_$_SelectedData) then) =
      __$$_SelectedDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? code});
}

/// @nodoc
class __$$_SelectedDataCopyWithImpl<$Res>
    extends _$SelectedDataCopyWithImpl<$Res, _$_SelectedData>
    implements _$$_SelectedDataCopyWith<$Res> {
  __$$_SelectedDataCopyWithImpl(
      _$_SelectedData _value, $Res Function(_$_SelectedData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_SelectedData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
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
        (other.runtimeType == runtimeType &&
            other is _$_SelectedData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedDataCopyWith<_$_SelectedData> get copyWith =>
      __$$_SelectedDataCopyWithImpl<_$_SelectedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedDataToJson(
      this,
    );
  }
}

abstract class _SelectedData implements SelectedData {
  const factory _SelectedData({final int? id, final String? code}) =
      _$_SelectedData;

  factory _SelectedData.fromJson(Map<String, dynamic> json) =
      _$_SelectedData.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedDataCopyWith<_$_SelectedData> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelDatas _$ChannelDatasFromJson(Map<String, dynamic> json) {
  return _ChannelDatas.fromJson(json);
}

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
      _$ChannelDatasCopyWithImpl<$Res, ChannelDatas>;
  @useResult
  $Res call(
      {int? priority,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_stock_type") String? channelStockType});
}

/// @nodoc
class _$ChannelDatasCopyWithImpl<$Res, $Val extends ChannelDatas>
    implements $ChannelDatasCopyWith<$Res> {
  _$ChannelDatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: freezed == channelTypeName
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelDatasCopyWith<$Res>
    implements $ChannelDatasCopyWith<$Res> {
  factory _$$_ChannelDatasCopyWith(
          _$_ChannelDatas value, $Res Function(_$_ChannelDatas) then) =
      __$$_ChannelDatasCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? priority,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_type_name") String? channelTypeName,
      @JsonKey(name: "channel_stock_type") String? channelStockType});
}

/// @nodoc
class __$$_ChannelDatasCopyWithImpl<$Res>
    extends _$ChannelDatasCopyWithImpl<$Res, _$_ChannelDatas>
    implements _$$_ChannelDatasCopyWith<$Res> {
  __$$_ChannelDatasCopyWithImpl(
      _$_ChannelDatas _value, $Res Function(_$_ChannelDatas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = freezed,
    Object? channelId = freezed,
    Object? channelCode = freezed,
    Object? channelName = freezed,
    Object? channelTypeName = freezed,
    Object? channelStockType = freezed,
  }) {
    return _then(_$_ChannelDatas(
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeName: freezed == channelTypeName
          ? _value.channelTypeName
          : channelTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
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
        (other.runtimeType == runtimeType &&
            other is _$_ChannelDatas &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelTypeName, channelTypeName) ||
                other.channelTypeName == channelTypeName) &&
            (identical(other.channelStockType, channelStockType) ||
                other.channelStockType == channelStockType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, priority, channelId, channelCode,
      channelName, channelTypeName, channelStockType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelDatasCopyWith<_$_ChannelDatas> get copyWith =>
      __$$_ChannelDatasCopyWithImpl<_$_ChannelDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelDatasToJson(
      this,
    );
  }
}

abstract class _ChannelDatas implements ChannelDatas {
  const factory _ChannelDatas(
      {final int? priority,
      @JsonKey(name: "channel_id")
          final String? channelId,
      @JsonKey(name: "channel_code")
          final String? channelCode,
      @JsonKey(name: "channel_name")
          final String? channelName,
      @JsonKey(name: "channel_type_name")
          final String? channelTypeName,
      @JsonKey(name: "channel_stock_type")
          final String? channelStockType}) = _$_ChannelDatas;

  factory _ChannelDatas.fromJson(Map<String, dynamic> json) =
      _$_ChannelDatas.fromJson;

  @override
  int? get priority;
  @override
  @JsonKey(name: "channel_id")
  String? get channelId;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName;
  @override
  @JsonKey(name: "channel_type_name")
  String? get channelTypeName;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelDatasCopyWith<_$_ChannelDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
