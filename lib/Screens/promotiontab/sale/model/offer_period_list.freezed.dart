// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_period_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferPeriodList _$OfferPeriodListFromJson(Map<String, dynamic> json) {
  return _OfferPeriodList.fromJson(json);
}

/// @nodoc
mixin _$OfferPeriodList {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_code")
  String? get offerPeriodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_code")
  String? get buyMoreCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPeriodListCopyWith<OfferPeriodList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPeriodListCopyWith<$Res> {
  factory $OfferPeriodListCopyWith(
          OfferPeriodList value, $Res Function(OfferPeriodList) then) =
      _$OfferPeriodListCopyWithImpl<$Res, OfferPeriodList>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_period_code") String? offerPeriodCode,
      @JsonKey(name: "buy_more_code") String? buyMoreCode});
}

/// @nodoc
class _$OfferPeriodListCopyWithImpl<$Res, $Val extends OfferPeriodList>
    implements $OfferPeriodListCopyWith<$Res> {
  _$OfferPeriodListCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? offerPeriodCode = freezed,
    Object? buyMoreCode = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodCode: freezed == offerPeriodCode
          ? _value.offerPeriodCode
          : offerPeriodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreCode: freezed == buyMoreCode
          ? _value.buyMoreCode
          : buyMoreCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferPeriodListCopyWith<$Res>
    implements $OfferPeriodListCopyWith<$Res> {
  factory _$$_OfferPeriodListCopyWith(
          _$_OfferPeriodList value, $Res Function(_$_OfferPeriodList) then) =
      __$$_OfferPeriodListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_period_code") String? offerPeriodCode,
      @JsonKey(name: "buy_more_code") String? buyMoreCode});
}

/// @nodoc
class __$$_OfferPeriodListCopyWithImpl<$Res>
    extends _$OfferPeriodListCopyWithImpl<$Res, _$_OfferPeriodList>
    implements _$$_OfferPeriodListCopyWith<$Res> {
  __$$_OfferPeriodListCopyWithImpl(
      _$_OfferPeriodList _value, $Res Function(_$_OfferPeriodList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? title = freezed,
    Object? offerPeriodCode = freezed,
    Object? buyMoreCode = freezed,
  }) {
    return _then(_$_OfferPeriodList(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodCode: freezed == offerPeriodCode
          ? _value.offerPeriodCode
          : offerPeriodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreCode: freezed == buyMoreCode
          ? _value.buyMoreCode
          : buyMoreCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPeriodList implements _OfferPeriodList {
  const _$_OfferPeriodList(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "offer_period_code") this.offerPeriodCode,
      @JsonKey(name: "buy_more_code") this.buyMoreCode});

  factory _$_OfferPeriodList.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPeriodListFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "offer_period_code")
  final String? offerPeriodCode;
  @override
  @JsonKey(name: "buy_more_code")
  final String? buyMoreCode;

  @override
  String toString() {
    return 'OfferPeriodList(id: $id, name: $name, code: $code, title: $title, offerPeriodCode: $offerPeriodCode, buyMoreCode: $buyMoreCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPeriodList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.offerPeriodCode, offerPeriodCode) ||
                other.offerPeriodCode == offerPeriodCode) &&
            (identical(other.buyMoreCode, buyMoreCode) ||
                other.buyMoreCode == buyMoreCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, title, offerPeriodCode, buyMoreCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPeriodListCopyWith<_$_OfferPeriodList> get copyWith =>
      __$$_OfferPeriodListCopyWithImpl<_$_OfferPeriodList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPeriodListToJson(
      this,
    );
  }
}

abstract class _OfferPeriodList implements OfferPeriodList {
  const factory _OfferPeriodList(
          {final int? id,
          final String? name,
          final String? code,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "offer_period_code") final String? offerPeriodCode,
          @JsonKey(name: "buy_more_code") final String? buyMoreCode}) =
      _$_OfferPeriodList;

  factory _OfferPeriodList.fromJson(Map<String, dynamic> json) =
      _$_OfferPeriodList.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "offer_period_code")
  String? get offerPeriodCode;
  @override
  @JsonKey(name: "buy_more_code")
  String? get buyMoreCode;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPeriodListCopyWith<_$_OfferPeriodList> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOfferPeriod _$CreateOfferPeriodFromJson(Map<String, dynamic> json) {
  return _CreateOfferPeriod.fromJson(json);
}

/// @nodoc
mixin _$CreateOfferPeriod {
  @JsonKey(name: "from_date")
  String? get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to_date")
  String? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "from_time")
  String? get fromTime => throw _privateConstructorUsedError;
  @JsonKey(name: "to_time")
  String? get toTime => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOfferPeriodCopyWith<CreateOfferPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOfferPeriodCopyWith<$Res> {
  factory $CreateOfferPeriodCopyWith(
          CreateOfferPeriod value, $Res Function(CreateOfferPeriod) then) =
      _$CreateOfferPeriodCopyWithImpl<$Res, CreateOfferPeriod>;
  @useResult
  $Res call(
      {@JsonKey(name: "from_date") String? fromDate,
      @JsonKey(name: "to_date") String? toDate,
      @JsonKey(name: "from_time") String? fromTime,
      @JsonKey(name: "to_time") String? toTime,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class _$CreateOfferPeriodCopyWithImpl<$Res, $Val extends CreateOfferPeriod>
    implements $CreateOfferPeriodCopyWith<$Res> {
  _$CreateOfferPeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOfferPeriodCopyWith<$Res>
    implements $CreateOfferPeriodCopyWith<$Res> {
  factory _$$_CreateOfferPeriodCopyWith(_$_CreateOfferPeriod value,
          $Res Function(_$_CreateOfferPeriod) then) =
      __$$_CreateOfferPeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "from_date") String? fromDate,
      @JsonKey(name: "to_date") String? toDate,
      @JsonKey(name: "from_time") String? fromTime,
      @JsonKey(name: "to_time") String? toTime,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class __$$_CreateOfferPeriodCopyWithImpl<$Res>
    extends _$CreateOfferPeriodCopyWithImpl<$Res, _$_CreateOfferPeriod>
    implements _$$_CreateOfferPeriodCopyWith<$Res> {
  __$$_CreateOfferPeriodCopyWithImpl(
      _$_CreateOfferPeriod _value, $Res Function(_$_CreateOfferPeriod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_CreateOfferPeriod(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOfferPeriod implements _CreateOfferPeriod {
  const _$_CreateOfferPeriod(
      {@JsonKey(name: "from_date") this.fromDate,
      @JsonKey(name: "to_date") this.toDate,
      @JsonKey(name: "from_time") this.fromTime,
      @JsonKey(name: "to_time") this.toTime,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "created_by") this.createdBy});

  factory _$_CreateOfferPeriod.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOfferPeriodFromJson(json);

  @override
  @JsonKey(name: "from_date")
  final String? fromDate;
  @override
  @JsonKey(name: "to_date")
  final String? toDate;
  @override
  @JsonKey(name: "from_time")
  final String? fromTime;
  @override
  @JsonKey(name: "to_time")
  final String? toTime;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;

  @override
  String toString() {
    return 'CreateOfferPeriod(fromDate: $fromDate, toDate: $toDate, fromTime: $fromTime, toTime: $toTime, title: $title, description: $description, isActive: $isActive, notes: $notes, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOfferPeriod &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, fromTime,
      toTime, title, description, isActive, notes, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOfferPeriodCopyWith<_$_CreateOfferPeriod> get copyWith =>
      __$$_CreateOfferPeriodCopyWithImpl<_$_CreateOfferPeriod>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOfferPeriodToJson(
      this,
    );
  }
}

abstract class _CreateOfferPeriod implements CreateOfferPeriod {
  const factory _CreateOfferPeriod(
          {@JsonKey(name: "from_date") final String? fromDate,
          @JsonKey(name: "to_date") final String? toDate,
          @JsonKey(name: "from_time") final String? fromTime,
          @JsonKey(name: "to_time") final String? toTime,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "created_by") final String? createdBy}) =
      _$_CreateOfferPeriod;

  factory _CreateOfferPeriod.fromJson(Map<String, dynamic> json) =
      _$_CreateOfferPeriod.fromJson;

  @override
  @JsonKey(name: "from_date")
  String? get fromDate;
  @override
  @JsonKey(name: "to_date")
  String? get toDate;
  @override
  @JsonKey(name: "from_time")
  String? get fromTime;
  @override
  @JsonKey(name: "to_time")
  String? get toTime;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOfferPeriodCopyWith<_$_CreateOfferPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadOfferPeriod _$ReadOfferPeriodFromJson(Map<String, dynamic> json) {
  return _ReadOfferPeriod.fromJson(json);
}

/// @nodoc
mixin _$ReadOfferPeriod {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "from_time")
  String? get fromTime => throw _privateConstructorUsedError;
  @JsonKey(name: "to_time")
  String? get toTime => throw _privateConstructorUsedError;
  @JsonKey(name: "from_date")
  String? get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to_date")
  String? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_code")
  String? get offerPeriodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadOfferPeriodCopyWith<ReadOfferPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadOfferPeriodCopyWith<$Res> {
  factory $ReadOfferPeriodCopyWith(
          ReadOfferPeriod value, $Res Function(ReadOfferPeriod) then) =
      _$ReadOfferPeriodCopyWithImpl<$Res, ReadOfferPeriod>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "from_time") String? fromTime,
      @JsonKey(name: "to_time") String? toTime,
      @JsonKey(name: "from_date") String? fromDate,
      @JsonKey(name: "to_date") String? toDate,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_period_code") String? offerPeriodCode,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "offer_applied_to_type") List<String>? offerAppliedTo});
}

/// @nodoc
class _$ReadOfferPeriodCopyWithImpl<$Res, $Val extends ReadOfferPeriod>
    implements $ReadOfferPeriodCopyWith<$Res> {
  _$ReadOfferPeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? title = freezed,
    Object? offerPeriodCode = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? offerAppliedTo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodCode: freezed == offerPeriodCode
          ? _value.offerPeriodCode
          : offerPeriodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value.offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadOfferPeriodCopyWith<$Res>
    implements $ReadOfferPeriodCopyWith<$Res> {
  factory _$$_ReadOfferPeriodCopyWith(
          _$_ReadOfferPeriod value, $Res Function(_$_ReadOfferPeriod) then) =
      __$$_ReadOfferPeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "from_time") String? fromTime,
      @JsonKey(name: "to_time") String? toTime,
      @JsonKey(name: "from_date") String? fromDate,
      @JsonKey(name: "to_date") String? toDate,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_period_code") String? offerPeriodCode,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "offer_applied_to_type") List<String>? offerAppliedTo});
}

/// @nodoc
class __$$_ReadOfferPeriodCopyWithImpl<$Res>
    extends _$ReadOfferPeriodCopyWithImpl<$Res, _$_ReadOfferPeriod>
    implements _$$_ReadOfferPeriodCopyWith<$Res> {
  __$$_ReadOfferPeriodCopyWithImpl(
      _$_ReadOfferPeriod _value, $Res Function(_$_ReadOfferPeriod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? title = freezed,
    Object? offerPeriodCode = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? offerAppliedTo = freezed,
  }) {
    return _then(_$_ReadOfferPeriod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodCode: freezed == offerPeriodCode
          ? _value.offerPeriodCode
          : offerPeriodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedTo: freezed == offerAppliedTo
          ? _value._offerAppliedTo
          : offerAppliedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadOfferPeriod implements _ReadOfferPeriod {
  const _$_ReadOfferPeriod(
      {this.id,
      @JsonKey(name: "from_time")
          this.fromTime,
      @JsonKey(name: "to_time")
          this.toTime,
      @JsonKey(name: "from_date")
          this.fromDate,
      @JsonKey(name: "to_date")
          this.toDate,
      @JsonKey(name: "title")
          this.title,
      @JsonKey(name: "offer_period_code")
          this.offerPeriodCode,
      @JsonKey(name: "description")
          this.description,
      @JsonKey(name: "is_active")
          this.isActive,
      @JsonKey(name: "notes")
          this.notes,
      @JsonKey(name: "created_at")
          this.createdAt,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "offer_applied_to_type")
          final List<String>? offerAppliedTo})
      : _offerAppliedTo = offerAppliedTo;

  factory _$_ReadOfferPeriod.fromJson(Map<String, dynamic> json) =>
      _$$_ReadOfferPeriodFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "from_time")
  final String? fromTime;
  @override
  @JsonKey(name: "to_time")
  final String? toTime;
  @override
  @JsonKey(name: "from_date")
  final String? fromDate;
  @override
  @JsonKey(name: "to_date")
  final String? toDate;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "offer_period_code")
  final String? offerPeriodCode;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  final List<String>? _offerAppliedTo;
  @override
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedTo {
    final value = _offerAppliedTo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReadOfferPeriod(id: $id, fromTime: $fromTime, toTime: $toTime, fromDate: $fromDate, toDate: $toDate, title: $title, offerPeriodCode: $offerPeriodCode, description: $description, isActive: $isActive, notes: $notes, createdAt: $createdAt, createdBy: $createdBy, offerAppliedTo: $offerAppliedTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadOfferPeriod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.offerPeriodCode, offerPeriodCode) ||
                other.offerPeriodCode == offerPeriodCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality()
                .equals(other._offerAppliedTo, _offerAppliedTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromTime,
      toTime,
      fromDate,
      toDate,
      title,
      offerPeriodCode,
      description,
      isActive,
      notes,
      createdAt,
      createdBy,
      const DeepCollectionEquality().hash(_offerAppliedTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadOfferPeriodCopyWith<_$_ReadOfferPeriod> get copyWith =>
      __$$_ReadOfferPeriodCopyWithImpl<_$_ReadOfferPeriod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadOfferPeriodToJson(
      this,
    );
  }
}

abstract class _ReadOfferPeriod implements ReadOfferPeriod {
  const factory _ReadOfferPeriod(
      {final int? id,
      @JsonKey(name: "from_time")
          final String? fromTime,
      @JsonKey(name: "to_time")
          final String? toTime,
      @JsonKey(name: "from_date")
          final String? fromDate,
      @JsonKey(name: "to_date")
          final String? toDate,
      @JsonKey(name: "title")
          final String? title,
      @JsonKey(name: "offer_period_code")
          final String? offerPeriodCode,
      @JsonKey(name: "description")
          final String? description,
      @JsonKey(name: "is_active")
          final bool? isActive,
      @JsonKey(name: "notes")
          final String? notes,
      @JsonKey(name: "created_at")
          final String? createdAt,
      @JsonKey(name: "created_by")
          final String? createdBy,
      @JsonKey(name: "offer_applied_to_type")
          final List<String>? offerAppliedTo}) = _$_ReadOfferPeriod;

  factory _ReadOfferPeriod.fromJson(Map<String, dynamic> json) =
      _$_ReadOfferPeriod.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "from_time")
  String? get fromTime;
  @override
  @JsonKey(name: "to_time")
  String? get toTime;
  @override
  @JsonKey(name: "from_date")
  String? get fromDate;
  @override
  @JsonKey(name: "to_date")
  String? get toDate;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "offer_period_code")
  String? get offerPeriodCode;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedTo;
  @override
  @JsonKey(ignore: true)
  _$$_ReadOfferPeriodCopyWith<_$_ReadOfferPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferGroupList _$OfferGroupListFromJson(Map<String, dynamic> json) {
  return _OfferGroupList.fromJson(json);
}

/// @nodoc
mixin _$OfferGroupList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferGroupListCopyWith<OfferGroupList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferGroupListCopyWith<$Res> {
  factory $OfferGroupListCopyWith(
          OfferGroupList value, $Res Function(OfferGroupList) then) =
      _$OfferGroupListCopyWithImpl<$Res, OfferGroupList>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_group_code") String? offerGroupCode});
}

/// @nodoc
class _$OfferGroupListCopyWithImpl<$Res, $Val extends OfferGroupList>
    implements $OfferGroupListCopyWith<$Res> {
  _$OfferGroupListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? offerGroupCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferGroupListCopyWith<$Res>
    implements $OfferGroupListCopyWith<$Res> {
  factory _$$_OfferGroupListCopyWith(
          _$_OfferGroupList value, $Res Function(_$_OfferGroupList) then) =
      __$$_OfferGroupListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "offer_group_code") String? offerGroupCode});
}

/// @nodoc
class __$$_OfferGroupListCopyWithImpl<$Res>
    extends _$OfferGroupListCopyWithImpl<$Res, _$_OfferGroupList>
    implements _$$_OfferGroupListCopyWith<$Res> {
  __$$_OfferGroupListCopyWithImpl(
      _$_OfferGroupList _value, $Res Function(_$_OfferGroupList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? offerGroupCode = freezed,
  }) {
    return _then(_$_OfferGroupList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferGroupList implements _OfferGroupList {
  const _$_OfferGroupList(
      {this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "offer_group_code") this.offerGroupCode});

  factory _$_OfferGroupList.fromJson(Map<String, dynamic> json) =>
      _$$_OfferGroupListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "offer_group_code")
  final String? offerGroupCode;

  @override
  String toString() {
    return 'OfferGroupList(id: $id, title: $title, offerGroupCode: $offerGroupCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferGroupList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.offerGroupCode, offerGroupCode) ||
                other.offerGroupCode == offerGroupCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, offerGroupCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferGroupListCopyWith<_$_OfferGroupList> get copyWith =>
      __$$_OfferGroupListCopyWithImpl<_$_OfferGroupList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferGroupListToJson(
      this,
    );
  }
}

abstract class _OfferGroupList implements OfferGroupList {
  const factory _OfferGroupList(
          {final int? id,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "offer_group_code") final String? offerGroupCode}) =
      _$_OfferGroupList;

  factory _OfferGroupList.fromJson(Map<String, dynamic> json) =
      _$_OfferGroupList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode;
  @override
  @JsonKey(ignore: true)
  _$$_OfferGroupListCopyWith<_$_OfferGroupList> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOfferGroup _$CreateOfferGroupFromJson(Map<String, dynamic> json) {
  return _CreateOfferGroup.fromJson(json);
}

/// @nodoc
mixin _$CreateOfferGroup {
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOfferGroupCopyWith<CreateOfferGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOfferGroupCopyWith<$Res> {
  factory $CreateOfferGroupCopyWith(
          CreateOfferGroup value, $Res Function(CreateOfferGroup) then) =
      _$CreateOfferGroupCopyWithImpl<$Res, CreateOfferGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "offer_applied_to_type") String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") String? offerAppliedToId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_applied_to_code") String? offerAppliedToCode,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$CreateOfferGroupCopyWithImpl<$Res, $Val extends CreateOfferGroup>
    implements $CreateOfferGroupCopyWith<$Res> {
  _$CreateOfferGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerAppliedToType = freezed,
    Object? offerAppliedToId = freezed,
    Object? image = freezed,
    Object? offerAppliedToCode = freezed,
    Object? title = freezed,
    Object? inventoryId = freezed,
    Object? description = freezed,
    Object? createdBy = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOfferGroupCopyWith<$Res>
    implements $CreateOfferGroupCopyWith<$Res> {
  factory _$$_CreateOfferGroupCopyWith(
          _$_CreateOfferGroup value, $Res Function(_$_CreateOfferGroup) then) =
      __$$_CreateOfferGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "offer_applied_to_type") String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") String? offerAppliedToId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_applied_to_code") String? offerAppliedToCode,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$_CreateOfferGroupCopyWithImpl<$Res>
    extends _$CreateOfferGroupCopyWithImpl<$Res, _$_CreateOfferGroup>
    implements _$$_CreateOfferGroupCopyWith<$Res> {
  __$$_CreateOfferGroupCopyWithImpl(
      _$_CreateOfferGroup _value, $Res Function(_$_CreateOfferGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerAppliedToType = freezed,
    Object? offerAppliedToId = freezed,
    Object? image = freezed,
    Object? offerAppliedToCode = freezed,
    Object? title = freezed,
    Object? inventoryId = freezed,
    Object? description = freezed,
    Object? createdBy = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CreateOfferGroup(
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOfferGroup implements _CreateOfferGroup {
  const _$_CreateOfferGroup(
      {@JsonKey(name: "offer_applied_to_type") this.offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") this.offerAppliedToId,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "offer_applied_to_code") this.offerAppliedToCode,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "is_active") this.isActive});

  factory _$_CreateOfferGroup.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOfferGroupFromJson(json);

  @override
  @JsonKey(name: "offer_applied_to_type")
  final String? offerAppliedToType;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final String? offerAppliedToId;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'CreateOfferGroup(offerAppliedToType: $offerAppliedToType, offerAppliedToId: $offerAppliedToId, image: $image, offerAppliedToCode: $offerAppliedToCode, title: $title, inventoryId: $inventoryId, description: $description, createdBy: $createdBy, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOfferGroup &&
            (identical(other.offerAppliedToType, offerAppliedToType) ||
                other.offerAppliedToType == offerAppliedToType) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      offerAppliedToType,
      offerAppliedToId,
      image,
      offerAppliedToCode,
      title,
      inventoryId,
      description,
      createdBy,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOfferGroupCopyWith<_$_CreateOfferGroup> get copyWith =>
      __$$_CreateOfferGroupCopyWithImpl<_$_CreateOfferGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOfferGroupToJson(
      this,
    );
  }
}

abstract class _CreateOfferGroup implements CreateOfferGroup {
  const factory _CreateOfferGroup(
      {@JsonKey(name: "offer_applied_to_type") final String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "is_active") final bool? isActive}) = _$_CreateOfferGroup;

  factory _CreateOfferGroup.fromJson(Map<String, dynamic> json) =
      _$_CreateOfferGroup.fromJson;

  @override
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType;
  @override
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOfferGroupCopyWith<_$_CreateOfferGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferGroupData _$OfferGroupDataFromJson(Map<String, dynamic> json) {
  return _OfferGroupData.fromJson(json);
}

/// @nodoc
mixin _$OfferGroupData {
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferGroupDataCopyWith<OfferGroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferGroupDataCopyWith<$Res> {
  factory $OfferGroupDataCopyWith(
          OfferGroupData value, $Res Function(OfferGroupData) then) =
      _$OfferGroupDataCopyWithImpl<$Res, OfferGroupData>;
  @useResult
  $Res call(
      {@JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "offer_applied_to_type") String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") String? offerAppliedToId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_applied_to_code") String? offerAppliedToCode,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class _$OfferGroupDataCopyWithImpl<$Res, $Val extends OfferGroupData>
    implements $OfferGroupDataCopyWith<$Res> {
  _$OfferGroupDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerGroupCode = freezed,
    Object? offerAppliedToType = freezed,
    Object? offerAppliedToId = freezed,
    Object? image = freezed,
    Object? offerAppliedToCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferGroupDataCopyWith<$Res>
    implements $OfferGroupDataCopyWith<$Res> {
  factory _$$_OfferGroupDataCopyWith(
          _$_OfferGroupData value, $Res Function(_$_OfferGroupData) then) =
      __$$_OfferGroupDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "offer_applied_to_type") String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") String? offerAppliedToId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_applied_to_code") String? offerAppliedToCode,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class __$$_OfferGroupDataCopyWithImpl<$Res>
    extends _$OfferGroupDataCopyWithImpl<$Res, _$_OfferGroupData>
    implements _$$_OfferGroupDataCopyWith<$Res> {
  __$$_OfferGroupDataCopyWithImpl(
      _$_OfferGroupData _value, $Res Function(_$_OfferGroupData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerGroupCode = freezed,
    Object? offerAppliedToType = freezed,
    Object? offerAppliedToId = freezed,
    Object? image = freezed,
    Object? offerAppliedToCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_OfferGroupData(
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToId: freezed == offerAppliedToId
          ? _value.offerAppliedToId
          : offerAppliedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferGroupData implements _OfferGroupData {
  const _$_OfferGroupData(
      {@JsonKey(name: "offer_group_code") this.offerGroupCode,
      @JsonKey(name: "offer_applied_to_type") this.offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id") this.offerAppliedToId,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "offer_applied_to_code") this.offerAppliedToCode,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "created_by") this.createdBy});

  factory _$_OfferGroupData.fromJson(Map<String, dynamic> json) =>
      _$$_OfferGroupDataFromJson(json);

  @override
  @JsonKey(name: "offer_group_code")
  final String? offerGroupCode;
  @override
  @JsonKey(name: "offer_applied_to_type")
  final String? offerAppliedToType;
  @override
  @JsonKey(name: "offer_applied_to_id")
  final String? offerAppliedToId;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;

  @override
  String toString() {
    return 'OfferGroupData(offerGroupCode: $offerGroupCode, offerAppliedToType: $offerAppliedToType, offerAppliedToId: $offerAppliedToId, image: $image, offerAppliedToCode: $offerAppliedToCode, title: $title, description: $description, isActive: $isActive, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferGroupData &&
            (identical(other.offerGroupCode, offerGroupCode) ||
                other.offerGroupCode == offerGroupCode) &&
            (identical(other.offerAppliedToType, offerAppliedToType) ||
                other.offerAppliedToType == offerAppliedToType) &&
            (identical(other.offerAppliedToId, offerAppliedToId) ||
                other.offerAppliedToId == offerAppliedToId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      offerGroupCode,
      offerAppliedToType,
      offerAppliedToId,
      image,
      offerAppliedToCode,
      title,
      description,
      isActive,
      createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferGroupDataCopyWith<_$_OfferGroupData> get copyWith =>
      __$$_OfferGroupDataCopyWithImpl<_$_OfferGroupData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferGroupDataToJson(
      this,
    );
  }
}

abstract class _OfferGroupData implements OfferGroupData {
  const factory _OfferGroupData(
      {@JsonKey(name: "offer_group_code")
          final String? offerGroupCode,
      @JsonKey(name: "offer_applied_to_type")
          final String? offerAppliedToType,
      @JsonKey(name: "offer_applied_to_id")
          final String? offerAppliedToId,
      @JsonKey(name: "image")
          final String? image,
      @JsonKey(name: "offer_applied_to_code")
          final String? offerAppliedToCode,
      @JsonKey(name: "title")
          final String? title,
      @JsonKey(name: "description")
          final String? description,
      @JsonKey(name: "is_active")
          final bool? isActive,
      @JsonKey(name: "created_by")
          final String? createdBy}) = _$_OfferGroupData;

  factory _OfferGroupData.fromJson(Map<String, dynamic> json) =
      _$_OfferGroupData.fromJson;

  @override
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode;
  @override
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType;
  @override
  @JsonKey(name: "offer_applied_to_id")
  String? get offerAppliedToId;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_OfferGroupDataCopyWith<_$_OfferGroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadOfferGroup _$ReadOfferGroupFromJson(Map<String, dynamic> json) {
  return _ReadOfferGroup.fromJson(json);
}

/// @nodoc
mixin _$ReadOfferGroup {
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedToType => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_data")
  OfferGroupData? get offerGroupData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadOfferGroupCopyWith<ReadOfferGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadOfferGroupCopyWith<$Res> {
  factory $ReadOfferGroupCopyWith(
          ReadOfferGroup value, $Res Function(ReadOfferGroup) then) =
      _$ReadOfferGroupCopyWithImpl<$Res, ReadOfferGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "offer_applied_to_type") List<String>? offerAppliedToType,
      @JsonKey(name: "offer_group_data") OfferGroupData? offerGroupData});

  $OfferGroupDataCopyWith<$Res>? get offerGroupData;
}

/// @nodoc
class _$ReadOfferGroupCopyWithImpl<$Res, $Val extends ReadOfferGroup>
    implements $ReadOfferGroupCopyWith<$Res> {
  _$ReadOfferGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerAppliedToType = freezed,
    Object? offerGroupData = freezed,
  }) {
    return _then(_value.copyWith(
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      offerGroupData: freezed == offerGroupData
          ? _value.offerGroupData
          : offerGroupData // ignore: cast_nullable_to_non_nullable
              as OfferGroupData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferGroupDataCopyWith<$Res>? get offerGroupData {
    if (_value.offerGroupData == null) {
      return null;
    }

    return $OfferGroupDataCopyWith<$Res>(_value.offerGroupData!, (value) {
      return _then(_value.copyWith(offerGroupData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReadOfferGroupCopyWith<$Res>
    implements $ReadOfferGroupCopyWith<$Res> {
  factory _$$_ReadOfferGroupCopyWith(
          _$_ReadOfferGroup value, $Res Function(_$_ReadOfferGroup) then) =
      __$$_ReadOfferGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "offer_applied_to_type") List<String>? offerAppliedToType,
      @JsonKey(name: "offer_group_data") OfferGroupData? offerGroupData});

  @override
  $OfferGroupDataCopyWith<$Res>? get offerGroupData;
}

/// @nodoc
class __$$_ReadOfferGroupCopyWithImpl<$Res>
    extends _$ReadOfferGroupCopyWithImpl<$Res, _$_ReadOfferGroup>
    implements _$$_ReadOfferGroupCopyWith<$Res> {
  __$$_ReadOfferGroupCopyWithImpl(
      _$_ReadOfferGroup _value, $Res Function(_$_ReadOfferGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerAppliedToType = freezed,
    Object? offerGroupData = freezed,
  }) {
    return _then(_$_ReadOfferGroup(
      offerAppliedToType: freezed == offerAppliedToType
          ? _value._offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      offerGroupData: freezed == offerGroupData
          ? _value.offerGroupData
          : offerGroupData // ignore: cast_nullable_to_non_nullable
              as OfferGroupData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadOfferGroup implements _ReadOfferGroup {
  const _$_ReadOfferGroup(
      {@JsonKey(name: "offer_applied_to_type")
          final List<String>? offerAppliedToType,
      @JsonKey(name: "offer_group_data")
          this.offerGroupData})
      : _offerAppliedToType = offerAppliedToType;

  factory _$_ReadOfferGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ReadOfferGroupFromJson(json);

  final List<String>? _offerAppliedToType;
  @override
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedToType {
    final value = _offerAppliedToType;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_group_data")
  final OfferGroupData? offerGroupData;

  @override
  String toString() {
    return 'ReadOfferGroup(offerAppliedToType: $offerAppliedToType, offerGroupData: $offerGroupData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadOfferGroup &&
            const DeepCollectionEquality()
                .equals(other._offerAppliedToType, _offerAppliedToType) &&
            (identical(other.offerGroupData, offerGroupData) ||
                other.offerGroupData == offerGroupData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_offerAppliedToType), offerGroupData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadOfferGroupCopyWith<_$_ReadOfferGroup> get copyWith =>
      __$$_ReadOfferGroupCopyWithImpl<_$_ReadOfferGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadOfferGroupToJson(
      this,
    );
  }
}

abstract class _ReadOfferGroup implements ReadOfferGroup {
  const factory _ReadOfferGroup(
      {@JsonKey(name: "offer_applied_to_type")
          final List<String>? offerAppliedToType,
      @JsonKey(name: "offer_group_data")
          final OfferGroupData? offerGroupData}) = _$_ReadOfferGroup;

  factory _ReadOfferGroup.fromJson(Map<String, dynamic> json) =
      _$_ReadOfferGroup.fromJson;

  @override
  @JsonKey(name: "offer_applied_to_type")
  List<String>? get offerAppliedToType;
  @override
  @JsonKey(name: "offer_group_data")
  OfferGroupData? get offerGroupData;
  @override
  @JsonKey(ignore: true)
  _$$_ReadOfferGroupCopyWith<_$_ReadOfferGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

listAllSalesApis _$listAllSalesApisFromJson(Map<String, dynamic> json) {
  return _listAllSalesApis.fromJson(json);
}

/// @nodoc
mixin _$listAllSalesApis {
  @JsonKey(name: "sale_applying_on")
  List<String>? get saleApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  List<String>? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_applying_to")
  List<String>? get saleApplyingTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $listAllSalesApisCopyWith<listAllSalesApis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $listAllSalesApisCopyWith<$Res> {
  factory $listAllSalesApisCopyWith(
          listAllSalesApis value, $Res Function(listAllSalesApis) then) =
      _$listAllSalesApisCopyWithImpl<$Res, listAllSalesApis>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_applying_on") List<String>? saleApplyingOn,
      @JsonKey(name: "based_on") List<String>? basedOn,
      @JsonKey(name: "sale_applying_to") List<String>? saleApplyingTo});
}

/// @nodoc
class _$listAllSalesApisCopyWithImpl<$Res, $Val extends listAllSalesApis>
    implements $listAllSalesApisCopyWith<$Res> {
  _$listAllSalesApisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleApplyingOn = freezed,
    Object? basedOn = freezed,
    Object? saleApplyingTo = freezed,
  }) {
    return _then(_value.copyWith(
      saleApplyingOn: freezed == saleApplyingOn
          ? _value.saleApplyingOn
          : saleApplyingOn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      saleApplyingTo: freezed == saleApplyingTo
          ? _value.saleApplyingTo
          : saleApplyingTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_listAllSalesApisCopyWith<$Res>
    implements $listAllSalesApisCopyWith<$Res> {
  factory _$$_listAllSalesApisCopyWith(
          _$_listAllSalesApis value, $Res Function(_$_listAllSalesApis) then) =
      __$$_listAllSalesApisCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_applying_on") List<String>? saleApplyingOn,
      @JsonKey(name: "based_on") List<String>? basedOn,
      @JsonKey(name: "sale_applying_to") List<String>? saleApplyingTo});
}

/// @nodoc
class __$$_listAllSalesApisCopyWithImpl<$Res>
    extends _$listAllSalesApisCopyWithImpl<$Res, _$_listAllSalesApis>
    implements _$$_listAllSalesApisCopyWith<$Res> {
  __$$_listAllSalesApisCopyWithImpl(
      _$_listAllSalesApis _value, $Res Function(_$_listAllSalesApis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleApplyingOn = freezed,
    Object? basedOn = freezed,
    Object? saleApplyingTo = freezed,
  }) {
    return _then(_$_listAllSalesApis(
      saleApplyingOn: freezed == saleApplyingOn
          ? _value._saleApplyingOn
          : saleApplyingOn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      basedOn: freezed == basedOn
          ? _value._basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      saleApplyingTo: freezed == saleApplyingTo
          ? _value._saleApplyingTo
          : saleApplyingTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_listAllSalesApis implements _listAllSalesApis {
  const _$_listAllSalesApis(
      {@JsonKey(name: "sale_applying_on") final List<String>? saleApplyingOn,
      @JsonKey(name: "based_on") final List<String>? basedOn,
      @JsonKey(name: "sale_applying_to") final List<String>? saleApplyingTo})
      : _saleApplyingOn = saleApplyingOn,
        _basedOn = basedOn,
        _saleApplyingTo = saleApplyingTo;

  factory _$_listAllSalesApis.fromJson(Map<String, dynamic> json) =>
      _$$_listAllSalesApisFromJson(json);

  final List<String>? _saleApplyingOn;
  @override
  @JsonKey(name: "sale_applying_on")
  List<String>? get saleApplyingOn {
    final value = _saleApplyingOn;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _basedOn;
  @override
  @JsonKey(name: "based_on")
  List<String>? get basedOn {
    final value = _basedOn;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _saleApplyingTo;
  @override
  @JsonKey(name: "sale_applying_to")
  List<String>? get saleApplyingTo {
    final value = _saleApplyingTo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'listAllSalesApis(saleApplyingOn: $saleApplyingOn, basedOn: $basedOn, saleApplyingTo: $saleApplyingTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_listAllSalesApis &&
            const DeepCollectionEquality()
                .equals(other._saleApplyingOn, _saleApplyingOn) &&
            const DeepCollectionEquality().equals(other._basedOn, _basedOn) &&
            const DeepCollectionEquality()
                .equals(other._saleApplyingTo, _saleApplyingTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_saleApplyingOn),
      const DeepCollectionEquality().hash(_basedOn),
      const DeepCollectionEquality().hash(_saleApplyingTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_listAllSalesApisCopyWith<_$_listAllSalesApis> get copyWith =>
      __$$_listAllSalesApisCopyWithImpl<_$_listAllSalesApis>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_listAllSalesApisToJson(
      this,
    );
  }
}

abstract class _listAllSalesApis implements listAllSalesApis {
  const factory _listAllSalesApis(
      {@JsonKey(name: "sale_applying_on")
          final List<String>? saleApplyingOn,
      @JsonKey(name: "based_on")
          final List<String>? basedOn,
      @JsonKey(name: "sale_applying_to")
          final List<String>? saleApplyingTo}) = _$_listAllSalesApis;

  factory _listAllSalesApis.fromJson(Map<String, dynamic> json) =
      _$_listAllSalesApis.fromJson;

  @override
  @JsonKey(name: "sale_applying_on")
  List<String>? get saleApplyingOn;
  @override
  @JsonKey(name: "based_on")
  List<String>? get basedOn;
  @override
  @JsonKey(name: "sale_applying_to")
  List<String>? get saleApplyingTo;
  @override
  @JsonKey(ignore: true)
  _$$_listAllSalesApisCopyWith<_$_listAllSalesApis> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionSaleCreateModel _$PromotionSaleCreateModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionSaleCreateModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionSaleCreateModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  int? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place")
  String? get salesApplyingPlace => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_count")
  int? get maximumCount => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_id")
  int? get salesApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place_code")
  String? get salesApplyingPlaceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place_name")
  String? get salesApplyingPlaceName => throw _privateConstructorUsedError;
  @JsonKey(name: "available_customer_groups")
  String? get availableCustomerGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on")
  String? get salesApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_name")
  String? get salesApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_code")
  String? get salesApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_or_price")
  int? get discountPercentageOrPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin_based", defaultValue: false)
  bool? get isAdminBased => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_lines")
  List<SaleLines>? get saleLines => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionSaleCreateModelCopyWith<PromotionSaleCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionSaleCreateModelCopyWith<$Res> {
  factory $PromotionSaleCreateModelCopyWith(PromotionSaleCreateModel value,
          $Res Function(PromotionSaleCreateModel) then) =
      _$PromotionSaleCreateModelCopyWithImpl<$Res, PromotionSaleCreateModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? image,
      @JsonKey(name: "offer_applied_to_type")
          String? offerAppliedToType,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "total_price")
          int? totalPrice,
      @JsonKey(name: "offer_group")
          int? offerGroupId,
      @JsonKey(name: "sales_applying_place")
          String? salesApplyingPlace,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "sales_applying_on_id")
          int? salesApplyingOnId,
      @JsonKey(name: "sales_applying_place_code")
          String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          String? salesApplyingPlaceName,
      @JsonKey(name: "available_customer_groups")
          String? availableCustomerGroup,
      @JsonKey(name: "sales_applying_on")
          String? salesApplyingOn,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "sales_applying_on_name")
          String? salesApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "sales_applying_on_code")
          String? salesApplyingOnCode,
      @JsonKey(name: "discount_percentage_or_price")
          int? discountPercentageOrPrice,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "sale_lines")
          List<SaleLines>? saleLines,
      List<Segment>? segments});
}

/// @nodoc
class _$PromotionSaleCreateModelCopyWithImpl<$Res,
        $Val extends PromotionSaleCreateModel>
    implements $PromotionSaleCreateModelCopyWith<$Res> {
  _$PromotionSaleCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? offerAppliedToType = freezed,
    Object? offerPeriodId = freezed,
    Object? totalPrice = freezed,
    Object? offerGroupId = freezed,
    Object? salesApplyingPlace = freezed,
    Object? maximumCount = freezed,
    Object? salesApplyingOnId = freezed,
    Object? salesApplyingPlaceCode = freezed,
    Object? salesApplyingPlaceName = freezed,
    Object? availableCustomerGroup = freezed,
    Object? salesApplyingOn = freezed,
    Object? offerAppliedToCode = freezed,
    Object? salesApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? salesApplyingOnCode = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? isAvailableForAll = freezed,
    Object? isAdminBased = freezed,
    Object? isActive = freezed,
    Object? basedOn = freezed,
    Object? inventoryId = freezed,
    Object? saleLines = freezed,
    Object? segments = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingPlace: freezed == salesApplyingPlace
          ? _value.salesApplyingPlace
          : salesApplyingPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOnId: freezed == salesApplyingOnId
          ? _value.salesApplyingOnId
          : salesApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingPlaceCode: freezed == salesApplyingPlaceCode
          ? _value.salesApplyingPlaceCode
          : salesApplyingPlaceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceName: freezed == salesApplyingPlaceName
          ? _value.salesApplyingPlaceName
          : salesApplyingPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroup: freezed == availableCustomerGroup
          ? _value.availableCustomerGroup
          : availableCustomerGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOn: freezed == salesApplyingOn
          ? _value.salesApplyingOn
          : salesApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnName: freezed == salesApplyingOnName
          ? _value.salesApplyingOnName
          : salesApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnCode: freezed == salesApplyingOnCode
          ? _value.salesApplyingOnCode
          : salesApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdminBased: freezed == isAdminBased
          ? _value.isAdminBased
          : isAdminBased // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleLines: freezed == saleLines
          ? _value.saleLines
          : saleLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLines>?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionSaleCreateModelCopyWith<$Res>
    implements $PromotionSaleCreateModelCopyWith<$Res> {
  factory _$$_PromotionSaleCreateModelCopyWith(
          _$_PromotionSaleCreateModel value,
          $Res Function(_$_PromotionSaleCreateModel) then) =
      __$$_PromotionSaleCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? image,
      @JsonKey(name: "offer_applied_to_type")
          String? offerAppliedToType,
      @JsonKey(name: "offer_period_id")
          int? offerPeriodId,
      @JsonKey(name: "total_price")
          int? totalPrice,
      @JsonKey(name: "offer_group")
          int? offerGroupId,
      @JsonKey(name: "sales_applying_place")
          String? salesApplyingPlace,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "sales_applying_on_id")
          int? salesApplyingOnId,
      @JsonKey(name: "sales_applying_place_code")
          String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          String? salesApplyingPlaceName,
      @JsonKey(name: "available_customer_groups")
          String? availableCustomerGroup,
      @JsonKey(name: "sales_applying_on")
          String? salesApplyingOn,
      @JsonKey(name: "offer_applied_to_code")
          String? offerAppliedToCode,
      @JsonKey(name: "sales_applying_on_name")
          String? salesApplyingOnName,
      @JsonKey(name: "created_by")
          String? createdBy,
      @JsonKey(name: "sales_applying_on_code")
          String? salesApplyingOnCode,
      @JsonKey(name: "discount_percentage_or_price")
          int? discountPercentageOrPrice,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "sale_lines")
          List<SaleLines>? saleLines,
      List<Segment>? segments});
}

/// @nodoc
class __$$_PromotionSaleCreateModelCopyWithImpl<$Res>
    extends _$PromotionSaleCreateModelCopyWithImpl<$Res,
        _$_PromotionSaleCreateModel>
    implements _$$_PromotionSaleCreateModelCopyWith<$Res> {
  __$$_PromotionSaleCreateModelCopyWithImpl(_$_PromotionSaleCreateModel _value,
      $Res Function(_$_PromotionSaleCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? offerAppliedToType = freezed,
    Object? offerPeriodId = freezed,
    Object? totalPrice = freezed,
    Object? offerGroupId = freezed,
    Object? salesApplyingPlace = freezed,
    Object? maximumCount = freezed,
    Object? salesApplyingOnId = freezed,
    Object? salesApplyingPlaceCode = freezed,
    Object? salesApplyingPlaceName = freezed,
    Object? availableCustomerGroup = freezed,
    Object? salesApplyingOn = freezed,
    Object? offerAppliedToCode = freezed,
    Object? salesApplyingOnName = freezed,
    Object? createdBy = freezed,
    Object? salesApplyingOnCode = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? isAvailableForAll = freezed,
    Object? isAdminBased = freezed,
    Object? isActive = freezed,
    Object? basedOn = freezed,
    Object? inventoryId = freezed,
    Object? saleLines = freezed,
    Object? segments = freezed,
  }) {
    return _then(_$_PromotionSaleCreateModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToType: freezed == offerAppliedToType
          ? _value.offerAppliedToType
          : offerAppliedToType // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPeriodId: freezed == offerPeriodId
          ? _value.offerPeriodId
          : offerPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingPlace: freezed == salesApplyingPlace
          ? _value.salesApplyingPlace
          : salesApplyingPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOnId: freezed == salesApplyingOnId
          ? _value.salesApplyingOnId
          : salesApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingPlaceCode: freezed == salesApplyingPlaceCode
          ? _value.salesApplyingPlaceCode
          : salesApplyingPlaceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceName: freezed == salesApplyingPlaceName
          ? _value.salesApplyingPlaceName
          : salesApplyingPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCustomerGroup: freezed == availableCustomerGroup
          ? _value.availableCustomerGroup
          : availableCustomerGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOn: freezed == salesApplyingOn
          ? _value.salesApplyingOn
          : salesApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      offerAppliedToCode: freezed == offerAppliedToCode
          ? _value.offerAppliedToCode
          : offerAppliedToCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnName: freezed == salesApplyingOnName
          ? _value.salesApplyingOnName
          : salesApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnCode: freezed == salesApplyingOnCode
          ? _value.salesApplyingOnCode
          : salesApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdminBased: freezed == isAdminBased
          ? _value.isAdminBased
          : isAdminBased // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleLines: freezed == saleLines
          ? _value._saleLines
          : saleLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLines>?,
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionSaleCreateModel implements _PromotionSaleCreateModel {
  const _$_PromotionSaleCreateModel(
      {this.name,
      this.description,
      this.image,
      @JsonKey(name: "offer_applied_to_type")
          this.offerAppliedToType,
      @JsonKey(name: "offer_period_id")
          this.offerPeriodId,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "offer_group")
          this.offerGroupId,
      @JsonKey(name: "sales_applying_place")
          this.salesApplyingPlace,
      @JsonKey(name: "maximum_count")
          this.maximumCount,
      @JsonKey(name: "sales_applying_on_id")
          this.salesApplyingOnId,
      @JsonKey(name: "sales_applying_place_code")
          this.salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          this.salesApplyingPlaceName,
      @JsonKey(name: "available_customer_groups")
          this.availableCustomerGroup,
      @JsonKey(name: "sales_applying_on")
          this.salesApplyingOn,
      @JsonKey(name: "offer_applied_to_code")
          this.offerAppliedToCode,
      @JsonKey(name: "sales_applying_on_name")
          this.salesApplyingOnName,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "sales_applying_on_code")
          this.salesApplyingOnCode,
      @JsonKey(name: "discount_percentage_or_price")
          this.discountPercentageOrPrice,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          this.isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "sale_lines")
          final List<SaleLines>? saleLines,
      final List<Segment>? segments})
      : _saleLines = saleLines,
        _segments = segments;

  factory _$_PromotionSaleCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionSaleCreateModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  @JsonKey(name: "offer_applied_to_type")
  final String? offerAppliedToType;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPeriodId;
  @override
  @JsonKey(name: "total_price")
  final int? totalPrice;
  @override
  @JsonKey(name: "offer_group")
  final int? offerGroupId;
  @override
  @JsonKey(name: "sales_applying_place")
  final String? salesApplyingPlace;
  @override
  @JsonKey(name: "maximum_count")
  final int? maximumCount;
  @override
  @JsonKey(name: "sales_applying_on_id")
  final int? salesApplyingOnId;
  @override
  @JsonKey(name: "sales_applying_place_code")
  final String? salesApplyingPlaceCode;
  @override
  @JsonKey(name: "sales_applying_place_name")
  final String? salesApplyingPlaceName;
  @override
  @JsonKey(name: "available_customer_groups")
  final String? availableCustomerGroup;
  @override
  @JsonKey(name: "sales_applying_on")
  final String? salesApplyingOn;
  @override
  @JsonKey(name: "offer_applied_to_code")
  final String? offerAppliedToCode;
  @override
  @JsonKey(name: "sales_applying_on_name")
  final String? salesApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "sales_applying_on_code")
  final String? salesApplyingOnCode;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  final int? discountPercentageOrPrice;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableForAll;
  @override
  @JsonKey(name: "is_admin_based", defaultValue: false)
  final bool? isAdminBased;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  final List<SaleLines>? _saleLines;
  @override
  @JsonKey(name: "sale_lines")
  List<SaleLines>? get saleLines {
    final value = _saleLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionSaleCreateModel(name: $name, description: $description, image: $image, offerAppliedToType: $offerAppliedToType, offerPeriodId: $offerPeriodId, totalPrice: $totalPrice, offerGroupId: $offerGroupId, salesApplyingPlace: $salesApplyingPlace, maximumCount: $maximumCount, salesApplyingOnId: $salesApplyingOnId, salesApplyingPlaceCode: $salesApplyingPlaceCode, salesApplyingPlaceName: $salesApplyingPlaceName, availableCustomerGroup: $availableCustomerGroup, salesApplyingOn: $salesApplyingOn, offerAppliedToCode: $offerAppliedToCode, salesApplyingOnName: $salesApplyingOnName, createdBy: $createdBy, salesApplyingOnCode: $salesApplyingOnCode, discountPercentageOrPrice: $discountPercentageOrPrice, isAvailableForAll: $isAvailableForAll, isAdminBased: $isAdminBased, isActive: $isActive, basedOn: $basedOn, inventoryId: $inventoryId, saleLines: $saleLines, segments: $segments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionSaleCreateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.offerAppliedToType, offerAppliedToType) ||
                other.offerAppliedToType == offerAppliedToType) &&
            (identical(other.offerPeriodId, offerPeriodId) ||
                other.offerPeriodId == offerPeriodId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.salesApplyingPlace, salesApplyingPlace) ||
                other.salesApplyingPlace == salesApplyingPlace) &&
            (identical(other.maximumCount, maximumCount) ||
                other.maximumCount == maximumCount) &&
            (identical(other.salesApplyingOnId, salesApplyingOnId) ||
                other.salesApplyingOnId == salesApplyingOnId) &&
            (identical(other.salesApplyingPlaceCode, salesApplyingPlaceCode) ||
                other.salesApplyingPlaceCode == salesApplyingPlaceCode) &&
            (identical(other.salesApplyingPlaceName, salesApplyingPlaceName) ||
                other.salesApplyingPlaceName == salesApplyingPlaceName) &&
            (identical(other.availableCustomerGroup, availableCustomerGroup) ||
                other.availableCustomerGroup == availableCustomerGroup) &&
            (identical(other.salesApplyingOn, salesApplyingOn) ||
                other.salesApplyingOn == salesApplyingOn) &&
            (identical(other.offerAppliedToCode, offerAppliedToCode) ||
                other.offerAppliedToCode == offerAppliedToCode) &&
            (identical(other.salesApplyingOnName, salesApplyingOnName) ||
                other.salesApplyingOnName == salesApplyingOnName) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.salesApplyingOnCode, salesApplyingOnCode) ||
                other.salesApplyingOnCode == salesApplyingOnCode) &&
            (identical(other.discountPercentageOrPrice,
                    discountPercentageOrPrice) ||
                other.discountPercentageOrPrice == discountPercentageOrPrice) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll) &&
            (identical(other.isAdminBased, isAdminBased) ||
                other.isAdminBased == isAdminBased) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            const DeepCollectionEquality()
                .equals(other._saleLines, _saleLines) &&
            const DeepCollectionEquality().equals(other._segments, _segments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        description,
        image,
        offerAppliedToType,
        offerPeriodId,
        totalPrice,
        offerGroupId,
        salesApplyingPlace,
        maximumCount,
        salesApplyingOnId,
        salesApplyingPlaceCode,
        salesApplyingPlaceName,
        availableCustomerGroup,
        salesApplyingOn,
        offerAppliedToCode,
        salesApplyingOnName,
        createdBy,
        salesApplyingOnCode,
        discountPercentageOrPrice,
        isAvailableForAll,
        isAdminBased,
        isActive,
        basedOn,
        inventoryId,
        const DeepCollectionEquality().hash(_saleLines),
        const DeepCollectionEquality().hash(_segments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionSaleCreateModelCopyWith<_$_PromotionSaleCreateModel>
      get copyWith => __$$_PromotionSaleCreateModelCopyWithImpl<
          _$_PromotionSaleCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionSaleCreateModelToJson(
      this,
    );
  }
}

abstract class _PromotionSaleCreateModel implements PromotionSaleCreateModel {
  const factory _PromotionSaleCreateModel(
      {final String? name,
      final String? description,
      final String? image,
      @JsonKey(name: "offer_applied_to_type")
          final String? offerAppliedToType,
      @JsonKey(name: "offer_period_id")
          final int? offerPeriodId,
      @JsonKey(name: "total_price")
          final int? totalPrice,
      @JsonKey(name: "offer_group")
          final int? offerGroupId,
      @JsonKey(name: "sales_applying_place")
          final String? salesApplyingPlace,
      @JsonKey(name: "maximum_count")
          final int? maximumCount,
      @JsonKey(name: "sales_applying_on_id")
          final int? salesApplyingOnId,
      @JsonKey(name: "sales_applying_place_code")
          final String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          final String? salesApplyingPlaceName,
      @JsonKey(name: "available_customer_groups")
          final String? availableCustomerGroup,
      @JsonKey(name: "sales_applying_on")
          final String? salesApplyingOn,
      @JsonKey(name: "offer_applied_to_code")
          final String? offerAppliedToCode,
      @JsonKey(name: "sales_applying_on_name")
          final String? salesApplyingOnName,
      @JsonKey(name: "created_by")
          final String? createdBy,
      @JsonKey(name: "sales_applying_on_code")
          final String? salesApplyingOnCode,
      @JsonKey(name: "discount_percentage_or_price")
          final int? discountPercentageOrPrice,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          final bool? isAvailableForAll,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          final bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "based_on")
          final String? basedOn,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "sale_lines")
          final List<SaleLines>? saleLines,
      final List<Segment>? segments}) = _$_PromotionSaleCreateModel;

  factory _PromotionSaleCreateModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionSaleCreateModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(name: "offer_applied_to_type")
  String? get offerAppliedToType;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPeriodId;
  @override
  @JsonKey(name: "total_price")
  int? get totalPrice;
  @override
  @JsonKey(name: "offer_group")
  int? get offerGroupId;
  @override
  @JsonKey(name: "sales_applying_place")
  String? get salesApplyingPlace;
  @override
  @JsonKey(name: "maximum_count")
  int? get maximumCount;
  @override
  @JsonKey(name: "sales_applying_on_id")
  int? get salesApplyingOnId;
  @override
  @JsonKey(name: "sales_applying_place_code")
  String? get salesApplyingPlaceCode;
  @override
  @JsonKey(name: "sales_applying_place_name")
  String? get salesApplyingPlaceName;
  @override
  @JsonKey(name: "available_customer_groups")
  String? get availableCustomerGroup;
  @override
  @JsonKey(name: "sales_applying_on")
  String? get salesApplyingOn;
  @override
  @JsonKey(name: "offer_applied_to_code")
  String? get offerAppliedToCode;
  @override
  @JsonKey(name: "sales_applying_on_name")
  String? get salesApplyingOnName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "sales_applying_on_code")
  String? get salesApplyingOnCode;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  int? get discountPercentageOrPrice;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll;
  @override
  @JsonKey(name: "is_admin_based", defaultValue: false)
  bool? get isAdminBased;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "sale_lines")
  List<SaleLines>? get saleLines;
  @override
  List<Segment>? get segments;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionSaleCreateModelCopyWith<_$_PromotionSaleCreateModel>
      get copyWith => throw _privateConstructorUsedError;
}

SaleLines _$SaleLinesFromJson(Map<String, dynamic> json) {
  return _SaleLines.fromJson(json);
}

/// @nodoc
mixin _$SaleLines {
  int? get id => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_name")
  String? get offerName => throw _privateConstructorUsedError;
  @JsonKey(name: "type_data")
  String? get typeData => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleLinesCopyWith<SaleLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleLinesCopyWith<$Res> {
  factory $SaleLinesCopyWith(SaleLines value, $Res Function(SaleLines) then) =
      _$SaleLinesCopyWithImpl<$Res, SaleLines>;
  @useResult
  $Res call(
      {int? id,
      Barcode? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "offer_name") String? offerName,
      @JsonKey(name: "type_data") String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$SaleLinesCopyWithImpl<$Res, $Val extends SaleLines>
    implements $SaleLinesCopyWith<$Res> {
  _$SaleLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? offerGroupCode = freezed,
    Object? offerName = freezed,
    Object? typeData = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_SaleLinesCopyWith<$Res> implements $SaleLinesCopyWith<$Res> {
  factory _$$_SaleLinesCopyWith(
          _$_SaleLines value, $Res Function(_$_SaleLines) then) =
      __$$_SaleLinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Barcode? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "offer_name") String? offerName,
      @JsonKey(name: "type_data") String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$_SaleLinesCopyWithImpl<$Res>
    extends _$SaleLinesCopyWithImpl<$Res, _$_SaleLines>
    implements _$$_SaleLinesCopyWith<$Res> {
  __$$_SaleLinesCopyWithImpl(
      _$_SaleLines _value, $Res Function(_$_SaleLines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? offerGroupCode = freezed,
    Object? offerName = freezed,
    Object? typeData = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_SaleLines(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleLines implements _SaleLines {
  const _$_SaleLines(
      {this.id,
      this.barcode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "offer_group_code") this.offerGroupCode,
      @JsonKey(name: "offer_name") this.offerName,
      @JsonKey(name: "type_data") this.typeData,
      @JsonKey(name: "updateCheck", defaultValue: false) this.updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_SaleLines.fromJson(Map<String, dynamic> json) =>
      _$$_SaleLinesFromJson(json);

  @override
  final int? id;
  @override
  final Barcode? barcode;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "offer_group_code")
  final String? offerGroupCode;
  @override
  @JsonKey(name: "offer_name")
  final String? offerName;
  @override
  @JsonKey(name: "type_data")
  final String? typeData;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'SaleLines(id: $id, barcode: $barcode, variantId: $variantId, variantCode: $variantCode, variantName: $variantName, offerGroupCode: $offerGroupCode, offerName: $offerName, typeData: $typeData, updateCheck: $updateCheck, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleLines &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.offerGroupCode, offerGroupCode) ||
                other.offerGroupCode == offerGroupCode) &&
            (identical(other.offerName, offerName) ||
                other.offerName == offerName) &&
            (identical(other.typeData, typeData) ||
                other.typeData == typeData) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      barcode,
      variantId,
      variantCode,
      variantName,
      offerGroupCode,
      offerName,
      typeData,
      updateCheck,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleLinesCopyWith<_$_SaleLines> get copyWith =>
      __$$_SaleLinesCopyWithImpl<_$_SaleLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleLinesToJson(
      this,
    );
  }
}

abstract class _SaleLines implements SaleLines {
  const factory _SaleLines(
      {final int? id,
      final Barcode? barcode,
      @JsonKey(name: "variant_id")
          final int? variantId,
      @JsonKey(name: "variant_code")
          final String? variantCode,
      @JsonKey(name: "variant_name")
          final String? variantName,
      @JsonKey(name: "offer_group_code")
          final String? offerGroupCode,
      @JsonKey(name: "offer_name")
          final String? offerName,
      @JsonKey(name: "type_data")
          final String? typeData,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_SaleLines;

  factory _SaleLines.fromJson(Map<String, dynamic> json) =
      _$_SaleLines.fromJson;

  @override
  int? get id;
  @override
  Barcode? get barcode;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode;
  @override
  @JsonKey(name: "offer_name")
  String? get offerName;
  @override
  @JsonKey(name: "type_data")
  String? get typeData;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_SaleLinesCopyWith<_$_SaleLines> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionSaleReadModel _$PromotionSaleReadModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionSaleReadModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionSaleReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get test => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_code")
  String? get saleCode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place_code")
  String? get salesApplyingPlaceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place_name")
  String? get salesApplyingPlaceName => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place_id")
  int? get salesApplyingPlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on")
  String? get salesApplyingOn => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_name")
  String? get salesApplyingOnName => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_place")
  String? get salesApplyingPlace => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_id")
  int? get salesApplyingOnId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_period_id")
  int? get offerPriodId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_applying_on_code")
  String? get salesApplyingOnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_count")
  int? get maximumCount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll => throw _privateConstructorUsedError;
  @JsonKey(name: "override_priority", defaultValue: false)
  bool? get overridePriority => throw _privateConstructorUsedError;
  @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
  bool? get isApplyingToAllProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin_based", defaultValue: false)
  bool? get isAdminBased => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  List<Segment>? get segments => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_line")
  List<SaleLines>? get saleLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionSaleReadModelCopyWith<PromotionSaleReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionSaleReadModelCopyWith<$Res> {
  factory $PromotionSaleReadModelCopyWith(PromotionSaleReadModel value,
          $Res Function(PromotionSaleReadModel) then) =
      _$PromotionSaleReadModelCopyWithImpl<$Res, PromotionSaleReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? test,
      Barcode? barcode,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "discount_percentage_or_price")
          double? discountPercentage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "sale_code")
          String? saleCode,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "sales_applying_place_code")
          String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          String? salesApplyingPlaceName,
      @JsonKey(name: "sales_applying_place_id")
          int? salesApplyingPlaceId,
      @JsonKey(name: "sales_applying_on")
          String? salesApplyingOn,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "sales_applying_on_name")
          String? salesApplyingOnName,
      @JsonKey(name: "sales_applying_place")
          String? salesApplyingPlace,
      @JsonKey(name: "sales_applying_on_id")
          int? salesApplyingOnId,
      @JsonKey(name: "offer_period_id")
          int? offerPriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "sales_applying_on_code")
          String? salesApplyingOnCode,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "override_priority", defaultValue: false)
          bool? overridePriority,
      @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
          bool? isApplyingToAllProducts,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      List<Segment>? segments,
      @JsonKey(name: "sale_line")
          List<SaleLines>? saleLines});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$PromotionSaleReadModelCopyWithImpl<$Res,
        $Val extends PromotionSaleReadModel>
    implements $PromotionSaleReadModelCopyWith<$Res> {
  _$PromotionSaleReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? test = freezed,
    Object? barcode = freezed,
    Object? totalPrice = freezed,
    Object? discountPercentage = freezed,
    Object? inventoryId = freezed,
    Object? saleCode = freezed,
    Object? createdAt = freezed,
    Object? salesApplyingPlaceCode = freezed,
    Object? salesApplyingPlaceName = freezed,
    Object? salesApplyingPlaceId = freezed,
    Object? salesApplyingOn = freezed,
    Object? basedOn = freezed,
    Object? salesApplyingOnName = freezed,
    Object? salesApplyingPlace = freezed,
    Object? salesApplyingOnId = freezed,
    Object? offerPriodId = freezed,
    Object? offerGroupId = freezed,
    Object? salesApplyingOnCode = freezed,
    Object? maximumCount = freezed,
    Object? isAvailableForAll = freezed,
    Object? overridePriority = freezed,
    Object? isApplyingToAllProducts = freezed,
    Object? isAdminBased = freezed,
    Object? isActive = freezed,
    Object? segments = freezed,
    Object? saleLines = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleCode: freezed == saleCode
          ? _value.saleCode
          : saleCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceCode: freezed == salesApplyingPlaceCode
          ? _value.salesApplyingPlaceCode
          : salesApplyingPlaceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceName: freezed == salesApplyingPlaceName
          ? _value.salesApplyingPlaceName
          : salesApplyingPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceId: freezed == salesApplyingPlaceId
          ? _value.salesApplyingPlaceId
          : salesApplyingPlaceId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOn: freezed == salesApplyingOn
          ? _value.salesApplyingOn
          : salesApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnName: freezed == salesApplyingOnName
          ? _value.salesApplyingOnName
          : salesApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlace: freezed == salesApplyingPlace
          ? _value.salesApplyingPlace
          : salesApplyingPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnId: freezed == salesApplyingOnId
          ? _value.salesApplyingOnId
          : salesApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPriodId: freezed == offerPriodId
          ? _value.offerPriodId
          : offerPriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOnCode: freezed == salesApplyingOnCode
          ? _value.salesApplyingOnCode
          : salesApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      overridePriority: freezed == overridePriority
          ? _value.overridePriority
          : overridePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApplyingToAllProducts: freezed == isApplyingToAllProducts
          ? _value.isApplyingToAllProducts
          : isApplyingToAllProducts // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdminBased: freezed == isAdminBased
          ? _value.isAdminBased
          : isAdminBased // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      saleLines: freezed == saleLines
          ? _value.saleLines
          : saleLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLines>?,
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
abstract class _$$_PromotionSaleReadModelCopyWith<$Res>
    implements $PromotionSaleReadModelCopyWith<$Res> {
  factory _$$_PromotionSaleReadModelCopyWith(_$_PromotionSaleReadModel value,
          $Res Function(_$_PromotionSaleReadModel) then) =
      __$$_PromotionSaleReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? test,
      Barcode? barcode,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "discount_percentage_or_price")
          double? discountPercentage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "sale_code")
          String? saleCode,
      @JsonKey(name: "created_at")
          String? createdAt,
      @JsonKey(name: "sales_applying_place_code")
          String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          String? salesApplyingPlaceName,
      @JsonKey(name: "sales_applying_place_id")
          int? salesApplyingPlaceId,
      @JsonKey(name: "sales_applying_on")
          String? salesApplyingOn,
      @JsonKey(name: "based_on")
          String? basedOn,
      @JsonKey(name: "sales_applying_on_name")
          String? salesApplyingOnName,
      @JsonKey(name: "sales_applying_place")
          String? salesApplyingPlace,
      @JsonKey(name: "sales_applying_on_id")
          int? salesApplyingOnId,
      @JsonKey(name: "offer_period_id")
          int? offerPriodId,
      @JsonKey(name: "offer_group_id")
          int? offerGroupId,
      @JsonKey(name: "sales_applying_on_code")
          String? salesApplyingOnCode,
      @JsonKey(name: "maximum_count")
          int? maximumCount,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          bool? isAvailableForAll,
      @JsonKey(name: "override_priority", defaultValue: false)
          bool? overridePriority,
      @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
          bool? isApplyingToAllProducts,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      List<Segment>? segments,
      @JsonKey(name: "sale_line")
          List<SaleLines>? saleLines});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$_PromotionSaleReadModelCopyWithImpl<$Res>
    extends _$PromotionSaleReadModelCopyWithImpl<$Res,
        _$_PromotionSaleReadModel>
    implements _$$_PromotionSaleReadModelCopyWith<$Res> {
  __$$_PromotionSaleReadModelCopyWithImpl(_$_PromotionSaleReadModel _value,
      $Res Function(_$_PromotionSaleReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? test = freezed,
    Object? barcode = freezed,
    Object? totalPrice = freezed,
    Object? discountPercentage = freezed,
    Object? inventoryId = freezed,
    Object? saleCode = freezed,
    Object? createdAt = freezed,
    Object? salesApplyingPlaceCode = freezed,
    Object? salesApplyingPlaceName = freezed,
    Object? salesApplyingPlaceId = freezed,
    Object? salesApplyingOn = freezed,
    Object? basedOn = freezed,
    Object? salesApplyingOnName = freezed,
    Object? salesApplyingPlace = freezed,
    Object? salesApplyingOnId = freezed,
    Object? offerPriodId = freezed,
    Object? offerGroupId = freezed,
    Object? salesApplyingOnCode = freezed,
    Object? maximumCount = freezed,
    Object? isAvailableForAll = freezed,
    Object? overridePriority = freezed,
    Object? isApplyingToAllProducts = freezed,
    Object? isAdminBased = freezed,
    Object? isActive = freezed,
    Object? segments = freezed,
    Object? saleLines = freezed,
  }) {
    return _then(_$_PromotionSaleReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleCode: freezed == saleCode
          ? _value.saleCode
          : saleCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceCode: freezed == salesApplyingPlaceCode
          ? _value.salesApplyingPlaceCode
          : salesApplyingPlaceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceName: freezed == salesApplyingPlaceName
          ? _value.salesApplyingPlaceName
          : salesApplyingPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlaceId: freezed == salesApplyingPlaceId
          ? _value.salesApplyingPlaceId
          : salesApplyingPlaceId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOn: freezed == salesApplyingOn
          ? _value.salesApplyingOn
          : salesApplyingOn // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnName: freezed == salesApplyingOnName
          ? _value.salesApplyingOnName
          : salesApplyingOnName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingPlace: freezed == salesApplyingPlace
          ? _value.salesApplyingPlace
          : salesApplyingPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      salesApplyingOnId: freezed == salesApplyingOnId
          ? _value.salesApplyingOnId
          : salesApplyingOnId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPriodId: freezed == offerPriodId
          ? _value.offerPriodId
          : offerPriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesApplyingOnCode: freezed == salesApplyingOnCode
          ? _value.salesApplyingOnCode
          : salesApplyingOnCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumCount: freezed == maximumCount
          ? _value.maximumCount
          : maximumCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isAvailableForAll: freezed == isAvailableForAll
          ? _value.isAvailableForAll
          : isAvailableForAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      overridePriority: freezed == overridePriority
          ? _value.overridePriority
          : overridePriority // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApplyingToAllProducts: freezed == isApplyingToAllProducts
          ? _value.isApplyingToAllProducts
          : isApplyingToAllProducts // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdminBased: freezed == isAdminBased
          ? _value.isAdminBased
          : isAdminBased // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      segments: freezed == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>?,
      saleLines: freezed == saleLines
          ? _value._saleLines
          : saleLines // ignore: cast_nullable_to_non_nullable
              as List<SaleLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionSaleReadModel implements _PromotionSaleReadModel {
  const _$_PromotionSaleReadModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.test,
      this.barcode,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "discount_percentage_or_price")
          this.discountPercentage,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "sale_code")
          this.saleCode,
      @JsonKey(name: "created_at")
          this.createdAt,
      @JsonKey(name: "sales_applying_place_code")
          this.salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          this.salesApplyingPlaceName,
      @JsonKey(name: "sales_applying_place_id")
          this.salesApplyingPlaceId,
      @JsonKey(name: "sales_applying_on")
          this.salesApplyingOn,
      @JsonKey(name: "based_on")
          this.basedOn,
      @JsonKey(name: "sales_applying_on_name")
          this.salesApplyingOnName,
      @JsonKey(name: "sales_applying_place")
          this.salesApplyingPlace,
      @JsonKey(name: "sales_applying_on_id")
          this.salesApplyingOnId,
      @JsonKey(name: "offer_period_id")
          this.offerPriodId,
      @JsonKey(name: "offer_group_id")
          this.offerGroupId,
      @JsonKey(name: "sales_applying_on_code")
          this.salesApplyingOnCode,
      @JsonKey(name: "maximum_count")
          this.maximumCount,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          this.isAvailableForAll,
      @JsonKey(name: "override_priority", defaultValue: false)
          this.overridePriority,
      @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
          this.isApplyingToAllProducts,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          this.isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      final List<Segment>? segments,
      @JsonKey(name: "sale_line")
          final List<SaleLines>? saleLines})
      : _segments = segments,
        _saleLines = saleLines;

  factory _$_PromotionSaleReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionSaleReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? test;
  @override
  final Barcode? barcode;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  final double? discountPercentage;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "sale_code")
  final String? saleCode;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "sales_applying_place_code")
  final String? salesApplyingPlaceCode;
  @override
  @JsonKey(name: "sales_applying_place_name")
  final String? salesApplyingPlaceName;
  @override
  @JsonKey(name: "sales_applying_place_id")
  final int? salesApplyingPlaceId;
  @override
  @JsonKey(name: "sales_applying_on")
  final String? salesApplyingOn;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "sales_applying_on_name")
  final String? salesApplyingOnName;
  @override
  @JsonKey(name: "sales_applying_place")
  final String? salesApplyingPlace;
  @override
  @JsonKey(name: "sales_applying_on_id")
  final int? salesApplyingOnId;
  @override
  @JsonKey(name: "offer_period_id")
  final int? offerPriodId;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "sales_applying_on_code")
  final String? salesApplyingOnCode;
  @override
  @JsonKey(name: "maximum_count")
  final int? maximumCount;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  final bool? isAvailableForAll;
  @override
  @JsonKey(name: "override_priority", defaultValue: false)
  final bool? overridePriority;
  @override
  @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
  final bool? isApplyingToAllProducts;
  @override
  @JsonKey(name: "is_admin_based", defaultValue: false)
  final bool? isAdminBased;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  final List<Segment>? _segments;
  @override
  List<Segment>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SaleLines>? _saleLines;
  @override
  @JsonKey(name: "sale_line")
  List<SaleLines>? get saleLines {
    final value = _saleLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionSaleReadModel(id: $id, name: $name, description: $description, image: $image, test: $test, barcode: $barcode, totalPrice: $totalPrice, discountPercentage: $discountPercentage, inventoryId: $inventoryId, saleCode: $saleCode, createdAt: $createdAt, salesApplyingPlaceCode: $salesApplyingPlaceCode, salesApplyingPlaceName: $salesApplyingPlaceName, salesApplyingPlaceId: $salesApplyingPlaceId, salesApplyingOn: $salesApplyingOn, basedOn: $basedOn, salesApplyingOnName: $salesApplyingOnName, salesApplyingPlace: $salesApplyingPlace, salesApplyingOnId: $salesApplyingOnId, offerPriodId: $offerPriodId, offerGroupId: $offerGroupId, salesApplyingOnCode: $salesApplyingOnCode, maximumCount: $maximumCount, isAvailableForAll: $isAvailableForAll, overridePriority: $overridePriority, isApplyingToAllProducts: $isApplyingToAllProducts, isAdminBased: $isAdminBased, isActive: $isActive, segments: $segments, saleLines: $saleLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionSaleReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.saleCode, saleCode) ||
                other.saleCode == saleCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.salesApplyingPlaceCode, salesApplyingPlaceCode) ||
                other.salesApplyingPlaceCode == salesApplyingPlaceCode) &&
            (identical(other.salesApplyingPlaceName, salesApplyingPlaceName) ||
                other.salesApplyingPlaceName == salesApplyingPlaceName) &&
            (identical(other.salesApplyingPlaceId, salesApplyingPlaceId) ||
                other.salesApplyingPlaceId == salesApplyingPlaceId) &&
            (identical(other.salesApplyingOn, salesApplyingOn) ||
                other.salesApplyingOn == salesApplyingOn) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.salesApplyingOnName, salesApplyingOnName) ||
                other.salesApplyingOnName == salesApplyingOnName) &&
            (identical(other.salesApplyingPlace, salesApplyingPlace) ||
                other.salesApplyingPlace == salesApplyingPlace) &&
            (identical(other.salesApplyingOnId, salesApplyingOnId) ||
                other.salesApplyingOnId == salesApplyingOnId) &&
            (identical(other.offerPriodId, offerPriodId) ||
                other.offerPriodId == offerPriodId) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.salesApplyingOnCode, salesApplyingOnCode) ||
                other.salesApplyingOnCode == salesApplyingOnCode) &&
            (identical(other.maximumCount, maximumCount) ||
                other.maximumCount == maximumCount) &&
            (identical(other.isAvailableForAll, isAvailableForAll) ||
                other.isAvailableForAll == isAvailableForAll) &&
            (identical(other.overridePriority, overridePriority) ||
                other.overridePriority == overridePriority) &&
            (identical(
                    other.isApplyingToAllProducts, isApplyingToAllProducts) ||
                other.isApplyingToAllProducts == isApplyingToAllProducts) &&
            (identical(other.isAdminBased, isAdminBased) ||
                other.isAdminBased == isAdminBased) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality()
                .equals(other._saleLines, _saleLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        image,
        test,
        barcode,
        totalPrice,
        discountPercentage,
        inventoryId,
        saleCode,
        createdAt,
        salesApplyingPlaceCode,
        salesApplyingPlaceName,
        salesApplyingPlaceId,
        salesApplyingOn,
        basedOn,
        salesApplyingOnName,
        salesApplyingPlace,
        salesApplyingOnId,
        offerPriodId,
        offerGroupId,
        salesApplyingOnCode,
        maximumCount,
        isAvailableForAll,
        overridePriority,
        isApplyingToAllProducts,
        isAdminBased,
        isActive,
        const DeepCollectionEquality().hash(_segments),
        const DeepCollectionEquality().hash(_saleLines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionSaleReadModelCopyWith<_$_PromotionSaleReadModel> get copyWith =>
      __$$_PromotionSaleReadModelCopyWithImpl<_$_PromotionSaleReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionSaleReadModelToJson(
      this,
    );
  }
}

abstract class _PromotionSaleReadModel implements PromotionSaleReadModel {
  const factory _PromotionSaleReadModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final String? test,
      final Barcode? barcode,
      @JsonKey(name: "total_price")
          final double? totalPrice,
      @JsonKey(name: "discount_percentage_or_price")
          final double? discountPercentage,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "sale_code")
          final String? saleCode,
      @JsonKey(name: "created_at")
          final String? createdAt,
      @JsonKey(name: "sales_applying_place_code")
          final String? salesApplyingPlaceCode,
      @JsonKey(name: "sales_applying_place_name")
          final String? salesApplyingPlaceName,
      @JsonKey(name: "sales_applying_place_id")
          final int? salesApplyingPlaceId,
      @JsonKey(name: "sales_applying_on")
          final String? salesApplyingOn,
      @JsonKey(name: "based_on")
          final String? basedOn,
      @JsonKey(name: "sales_applying_on_name")
          final String? salesApplyingOnName,
      @JsonKey(name: "sales_applying_place")
          final String? salesApplyingPlace,
      @JsonKey(name: "sales_applying_on_id")
          final int? salesApplyingOnId,
      @JsonKey(name: "offer_period_id")
          final int? offerPriodId,
      @JsonKey(name: "offer_group_id")
          final int? offerGroupId,
      @JsonKey(name: "sales_applying_on_code")
          final String? salesApplyingOnCode,
      @JsonKey(name: "maximum_count")
          final int? maximumCount,
      @JsonKey(name: "is_available_for_all", defaultValue: false)
          final bool? isAvailableForAll,
      @JsonKey(name: "override_priority", defaultValue: false)
          final bool? overridePriority,
      @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
          final bool? isApplyingToAllProducts,
      @JsonKey(name: "is_admin_based", defaultValue: false)
          final bool? isAdminBased,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      final List<Segment>? segments,
      @JsonKey(name: "sale_line")
          final List<SaleLines>? saleLines}) = _$_PromotionSaleReadModel;

  factory _PromotionSaleReadModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionSaleReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get test;
  @override
  Barcode? get barcode;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentage;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "sale_code")
  String? get saleCode;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "sales_applying_place_code")
  String? get salesApplyingPlaceCode;
  @override
  @JsonKey(name: "sales_applying_place_name")
  String? get salesApplyingPlaceName;
  @override
  @JsonKey(name: "sales_applying_place_id")
  int? get salesApplyingPlaceId;
  @override
  @JsonKey(name: "sales_applying_on")
  String? get salesApplyingOn;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "sales_applying_on_name")
  String? get salesApplyingOnName;
  @override
  @JsonKey(name: "sales_applying_place")
  String? get salesApplyingPlace;
  @override
  @JsonKey(name: "sales_applying_on_id")
  int? get salesApplyingOnId;
  @override
  @JsonKey(name: "offer_period_id")
  int? get offerPriodId;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "sales_applying_on_code")
  String? get salesApplyingOnCode;
  @override
  @JsonKey(name: "maximum_count")
  int? get maximumCount;
  @override
  @JsonKey(name: "is_available_for_all", defaultValue: false)
  bool? get isAvailableForAll;
  @override
  @JsonKey(name: "override_priority", defaultValue: false)
  bool? get overridePriority;
  @override
  @JsonKey(name: "is_applying_to_all_products", defaultValue: false)
  bool? get isApplyingToAllProducts;
  @override
  @JsonKey(name: "is_admin_based", defaultValue: false)
  bool? get isAdminBased;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  List<Segment>? get segments;
  @override
  @JsonKey(name: "sale_line")
  List<SaleLines>? get saleLines;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionSaleReadModelCopyWith<_$_PromotionSaleReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Barcode _$BarcodeFromJson(Map<String, dynamic> json) {
  return _Barcode.fromJson(json);
}

/// @nodoc
mixin _$Barcode {
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "file_name")
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarcodeCopyWith<Barcode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCopyWith<$Res> {
  factory $BarcodeCopyWith(Barcode value, $Res Function(Barcode) then) =
      _$BarcodeCopyWithImpl<$Res, Barcode>;
  @useResult
  $Res call(
      {@JsonKey(name: "barcode_number") String? barcodeNumber,
      @JsonKey(name: "file_name") String? fileName});
}

/// @nodoc
class _$BarcodeCopyWithImpl<$Res, $Val extends Barcode>
    implements $BarcodeCopyWith<$Res> {
  _$BarcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeNumber = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BarcodeCopyWith<$Res> implements $BarcodeCopyWith<$Res> {
  factory _$$_BarcodeCopyWith(
          _$_Barcode value, $Res Function(_$_Barcode) then) =
      __$$_BarcodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "barcode_number") String? barcodeNumber,
      @JsonKey(name: "file_name") String? fileName});
}

/// @nodoc
class __$$_BarcodeCopyWithImpl<$Res>
    extends _$BarcodeCopyWithImpl<$Res, _$_Barcode>
    implements _$$_BarcodeCopyWith<$Res> {
  __$$_BarcodeCopyWithImpl(_$_Barcode _value, $Res Function(_$_Barcode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeNumber = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_$_Barcode(
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Barcode implements _Barcode {
  const _$_Barcode(
      {@JsonKey(name: "barcode_number") this.barcodeNumber,
      @JsonKey(name: "file_name") this.fileName});

  factory _$_Barcode.fromJson(Map<String, dynamic> json) =>
      _$$_BarcodeFromJson(json);

  @override
  @JsonKey(name: "barcode_number")
  final String? barcodeNumber;
  @override
  @JsonKey(name: "file_name")
  final String? fileName;

  @override
  String toString() {
    return 'Barcode(barcodeNumber: $barcodeNumber, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Barcode &&
            (identical(other.barcodeNumber, barcodeNumber) ||
                other.barcodeNumber == barcodeNumber) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, barcodeNumber, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      __$$_BarcodeCopyWithImpl<_$_Barcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarcodeToJson(
      this,
    );
  }
}

abstract class _Barcode implements Barcode {
  const factory _Barcode(
      {@JsonKey(name: "barcode_number") final String? barcodeNumber,
      @JsonKey(name: "file_name") final String? fileName}) = _$_Barcode;

  factory _Barcode.fromJson(Map<String, dynamic> json) = _$_Barcode.fromJson;

  @override
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber;
  @override
  @JsonKey(name: "file_name")
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelListModel _$ChannelListModelFromJson(Map<String, dynamic> json) {
  return _ChannelListModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelListModelCopyWith<ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelListModelCopyWith<$Res> {
  factory $ChannelListModelCopyWith(
          ChannelListModel value, $Res Function(ChannelListModel) then) =
      _$ChannelListModelCopyWithImpl<$Res, ChannelListModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: "channel_code") String? channelCode});
}

/// @nodoc
class _$ChannelListModelCopyWithImpl<$Res, $Val extends ChannelListModel>
    implements $ChannelListModelCopyWith<$Res> {
  _$ChannelListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? channelCode = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelListModelCopyWith<$Res>
    implements $ChannelListModelCopyWith<$Res> {
  factory _$$_ChannelListModelCopyWith(
          _$_ChannelListModel value, $Res Function(_$_ChannelListModel) then) =
      __$$_ChannelListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: "channel_code") String? channelCode});
}

/// @nodoc
class __$$_ChannelListModelCopyWithImpl<$Res>
    extends _$ChannelListModelCopyWithImpl<$Res, _$_ChannelListModel>
    implements _$$_ChannelListModelCopyWith<$Res> {
  __$$_ChannelListModelCopyWithImpl(
      _$_ChannelListModel _value, $Res Function(_$_ChannelListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? channelCode = freezed,
  }) {
    return _then(_$_ChannelListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelListModel implements _ChannelListModel {
  const _$_ChannelListModel(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: "channel_code") this.channelCode});

  factory _$_ChannelListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;

  @override
  String toString() {
    return 'ChannelListModel(id: $id, name: $name, description: $description, channelCode: $channelCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, channelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      __$$_ChannelListModelCopyWithImpl<_$_ChannelListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelListModelToJson(
      this,
    );
  }
}

abstract class _ChannelListModel implements ChannelListModel {
  const factory _ChannelListModel(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: "channel_code") final String? channelCode}) =
      _$_ChannelListModel;

  factory _ChannelListModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelListModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Segment _$SegmentFromJson(Map<String, dynamic> json) {
  return _Segment.fromJson(json);
}

/// @nodoc
mixin _$Segment {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_code")
  String? get segmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_name")
  String? get segmentName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SegmentCopyWith<Segment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentCopyWith<$Res> {
  factory $SegmentCopyWith(Segment value, $Res Function(Segment) then) =
      _$SegmentCopyWithImpl<$Res, Segment>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "segment_name") String? segmentName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class _$SegmentCopyWithImpl<$Res, $Val extends Segment>
    implements $SegmentCopyWith<$Res> {
  _$SegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? segmentCode = freezed,
    Object? segmentName = freezed,
    Object? isActive = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentName: freezed == segmentName
          ? _value.segmentName
          : segmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: freezed == updatecheck
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SegmentCopyWith<$Res> implements $SegmentCopyWith<$Res> {
  factory _$$_SegmentCopyWith(
          _$_Segment value, $Res Function(_$_Segment) then) =
      __$$_SegmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "segment_name") String? segmentName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class __$$_SegmentCopyWithImpl<$Res>
    extends _$SegmentCopyWithImpl<$Res, _$_Segment>
    implements _$$_SegmentCopyWith<$Res> {
  __$$_SegmentCopyWithImpl(_$_Segment _value, $Res Function(_$_Segment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? segmentCode = freezed,
    Object? segmentName = freezed,
    Object? isActive = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_$_Segment(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentName: freezed == segmentName
          ? _value.segmentName
          : segmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: freezed == updatecheck
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Segment implements _Segment {
  const _$_Segment(
      {this.id,
      @JsonKey(name: "segment_code") this.segmentCode,
      @JsonKey(name: "segment_name") this.segmentName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "updatecheck", defaultValue: false) this.updatecheck});

  factory _$_Segment.fromJson(Map<String, dynamic> json) =>
      _$$_SegmentFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "segment_code")
  final String? segmentCode;
  @override
  @JsonKey(name: "segment_name")
  final String? segmentName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  final bool? updatecheck;

  @override
  String toString() {
    return 'Segment(id: $id, segmentCode: $segmentCode, segmentName: $segmentName, isActive: $isActive, updatecheck: $updatecheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Segment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.segmentCode, segmentCode) ||
                other.segmentCode == segmentCode) &&
            (identical(other.segmentName, segmentName) ||
                other.segmentName == segmentName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatecheck, updatecheck) ||
                other.updatecheck == updatecheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, segmentCode, segmentName, isActive, updatecheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SegmentCopyWith<_$_Segment> get copyWith =>
      __$$_SegmentCopyWithImpl<_$_Segment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SegmentToJson(
      this,
    );
  }
}

abstract class _Segment implements Segment {
  const factory _Segment(
      {final int? id,
      @JsonKey(name: "segment_code")
          final String? segmentCode,
      @JsonKey(name: "segment_name")
          final String? segmentName,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "updatecheck", defaultValue: false)
          final bool? updatecheck}) = _$_Segment;

  factory _Segment.fromJson(Map<String, dynamic> json) = _$_Segment.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "segment_code")
  String? get segmentCode;
  @override
  @JsonKey(name: "segment_name")
  String? get segmentName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck;
  @override
  @JsonKey(ignore: true)
  _$$_SegmentCopyWith<_$_Segment> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionVariantModel _$PromotionVariantModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionVariantModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionVariantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Barcode? get barCode => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_code")
  String? get segmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActve => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionVariantModelCopyWith<PromotionVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionVariantModelCopyWith<$Res> {
  factory $PromotionVariantModelCopyWith(PromotionVariantModel value,
          $Res Function(PromotionVariantModel) then) =
      _$PromotionVariantModelCopyWithImpl<$Res, PromotionVariantModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      Barcode? barCode,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActve,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck});

  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class _$PromotionVariantModelCopyWithImpl<$Res,
        $Val extends PromotionVariantModel>
    implements $PromotionVariantModelCopyWith<$Res> {
  _$PromotionVariantModelCopyWithImpl(this._value, this._then);

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
    Object? barCode = freezed,
    Object? segmentCode = freezed,
    Object? isActve = freezed,
    Object? updateCheck = freezed,
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
      barCode: freezed == barCode
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActve: freezed == isActve
          ? _value.isActve
          : isActve // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarcodeCopyWith<$Res>? get barCode {
    if (_value.barCode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barCode!, (value) {
      return _then(_value.copyWith(barCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PromotionVariantModelCopyWith<$Res>
    implements $PromotionVariantModelCopyWith<$Res> {
  factory _$$_PromotionVariantModelCopyWith(_$_PromotionVariantModel value,
          $Res Function(_$_PromotionVariantModel) then) =
      __$$_PromotionVariantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      Barcode? barCode,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActve,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck});

  @override
  $BarcodeCopyWith<$Res>? get barCode;
}

/// @nodoc
class __$$_PromotionVariantModelCopyWithImpl<$Res>
    extends _$PromotionVariantModelCopyWithImpl<$Res, _$_PromotionVariantModel>
    implements _$$_PromotionVariantModelCopyWith<$Res> {
  __$$_PromotionVariantModelCopyWithImpl(_$_PromotionVariantModel _value,
      $Res Function(_$_PromotionVariantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? barCode = freezed,
    Object? segmentCode = freezed,
    Object? isActve = freezed,
    Object? updateCheck = freezed,
  }) {
    return _then(_$_PromotionVariantModel(
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
      barCode: freezed == barCode
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActve: freezed == isActve
          ? _value.isActve
          : isActve // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionVariantModel implements _PromotionVariantModel {
  const _$_PromotionVariantModel(
      {this.id,
      this.code,
      this.name,
      this.barCode,
      @JsonKey(name: "segment_code") this.segmentCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActve,
      @JsonKey(name: "updateCheck", defaultValue: false) this.updateCheck});

  factory _$_PromotionVariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionVariantModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final Barcode? barCode;
  @override
  @JsonKey(name: "segment_code")
  final String? segmentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActve;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;

  @override
  String toString() {
    return 'PromotionVariantModel(id: $id, code: $code, name: $name, barCode: $barCode, segmentCode: $segmentCode, isActve: $isActve, updateCheck: $updateCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionVariantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barCode, barCode) || other.barCode == barCode) &&
            (identical(other.segmentCode, segmentCode) ||
                other.segmentCode == segmentCode) &&
            (identical(other.isActve, isActve) || other.isActve == isActve) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, name, barCode, segmentCode, isActve, updateCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionVariantModelCopyWith<_$_PromotionVariantModel> get copyWith =>
      __$$_PromotionVariantModelCopyWithImpl<_$_PromotionVariantModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionVariantModelToJson(
      this,
    );
  }
}

abstract class _PromotionVariantModel implements PromotionVariantModel {
  const factory _PromotionVariantModel(
      {final int? id,
      final String? code,
      final String? name,
      final Barcode? barCode,
      @JsonKey(name: "segment_code")
          final String? segmentCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActve,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck}) = _$_PromotionVariantModel;

  factory _PromotionVariantModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionVariantModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  Barcode? get barCode;
  @override
  @JsonKey(name: "segment_code")
  String? get segmentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActve;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionVariantModelCopyWith<_$_PromotionVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionVariantPostModel _$PromotionVariantPostModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionVariantPostModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionVariantPostModel {
  @JsonKey(name: "applying_type")
  String? get applyinType => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_list")
  List<String>? get segmentList => throw _privateConstructorUsedError;
  @JsonKey(name: "search_element")
  String? get searchElement => throw _privateConstructorUsedError;
  @JsonKey(name: "applying_type_code")
  String? get applyingTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionVariantPostModelCopyWith<PromotionVariantPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionVariantPostModelCopyWith<$Res> {
  factory $PromotionVariantPostModelCopyWith(PromotionVariantPostModel value,
          $Res Function(PromotionVariantPostModel) then) =
      _$PromotionVariantPostModelCopyWithImpl<$Res, PromotionVariantPostModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "applying_type") String? applyinType,
      @JsonKey(name: "segment_list") List<String>? segmentList,
      @JsonKey(name: "search_element") String? searchElement,
      @JsonKey(name: "applying_type_code") String? applyingTypeCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class _$PromotionVariantPostModelCopyWithImpl<$Res,
        $Val extends PromotionVariantPostModel>
    implements $PromotionVariantPostModelCopyWith<$Res> {
  _$PromotionVariantPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyinType = freezed,
    Object? segmentList = freezed,
    Object? searchElement = freezed,
    Object? applyingTypeCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_value.copyWith(
      applyinType: freezed == applyinType
          ? _value.applyinType
          : applyinType // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentList: freezed == segmentList
          ? _value.segmentList
          : segmentList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchElement: freezed == searchElement
          ? _value.searchElement
          : searchElement // ignore: cast_nullable_to_non_nullable
              as String?,
      applyingTypeCode: freezed == applyingTypeCode
          ? _value.applyingTypeCode
          : applyingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionVariantPostModelCopyWith<$Res>
    implements $PromotionVariantPostModelCopyWith<$Res> {
  factory _$$_PromotionVariantPostModelCopyWith(
          _$_PromotionVariantPostModel value,
          $Res Function(_$_PromotionVariantPostModel) then) =
      __$$_PromotionVariantPostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "applying_type") String? applyinType,
      @JsonKey(name: "segment_list") List<String>? segmentList,
      @JsonKey(name: "search_element") String? searchElement,
      @JsonKey(name: "applying_type_code") String? applyingTypeCode,
      @JsonKey(name: "inventory_id") String? inventoryId});
}

/// @nodoc
class __$$_PromotionVariantPostModelCopyWithImpl<$Res>
    extends _$PromotionVariantPostModelCopyWithImpl<$Res,
        _$_PromotionVariantPostModel>
    implements _$$_PromotionVariantPostModelCopyWith<$Res> {
  __$$_PromotionVariantPostModelCopyWithImpl(
      _$_PromotionVariantPostModel _value,
      $Res Function(_$_PromotionVariantPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyinType = freezed,
    Object? segmentList = freezed,
    Object? searchElement = freezed,
    Object? applyingTypeCode = freezed,
    Object? inventoryId = freezed,
  }) {
    return _then(_$_PromotionVariantPostModel(
      applyinType: freezed == applyinType
          ? _value.applyinType
          : applyinType // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentList: freezed == segmentList
          ? _value._segmentList
          : segmentList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchElement: freezed == searchElement
          ? _value.searchElement
          : searchElement // ignore: cast_nullable_to_non_nullable
              as String?,
      applyingTypeCode: freezed == applyingTypeCode
          ? _value.applyingTypeCode
          : applyingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionVariantPostModel implements _PromotionVariantPostModel {
  const _$_PromotionVariantPostModel(
      {@JsonKey(name: "applying_type") this.applyinType,
      @JsonKey(name: "segment_list") final List<String>? segmentList,
      @JsonKey(name: "search_element") this.searchElement,
      @JsonKey(name: "applying_type_code") this.applyingTypeCode,
      @JsonKey(name: "inventory_id") this.inventoryId})
      : _segmentList = segmentList;

  factory _$_PromotionVariantPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionVariantPostModelFromJson(json);

  @override
  @JsonKey(name: "applying_type")
  final String? applyinType;
  final List<String>? _segmentList;
  @override
  @JsonKey(name: "segment_list")
  List<String>? get segmentList {
    final value = _segmentList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "search_element")
  final String? searchElement;
  @override
  @JsonKey(name: "applying_type_code")
  final String? applyingTypeCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;

  @override
  String toString() {
    return 'PromotionVariantPostModel(applyinType: $applyinType, segmentList: $segmentList, searchElement: $searchElement, applyingTypeCode: $applyingTypeCode, inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionVariantPostModel &&
            (identical(other.applyinType, applyinType) ||
                other.applyinType == applyinType) &&
            const DeepCollectionEquality()
                .equals(other._segmentList, _segmentList) &&
            (identical(other.searchElement, searchElement) ||
                other.searchElement == searchElement) &&
            (identical(other.applyingTypeCode, applyingTypeCode) ||
                other.applyingTypeCode == applyingTypeCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      applyinType,
      const DeepCollectionEquality().hash(_segmentList),
      searchElement,
      applyingTypeCode,
      inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionVariantPostModelCopyWith<_$_PromotionVariantPostModel>
      get copyWith => __$$_PromotionVariantPostModelCopyWithImpl<
          _$_PromotionVariantPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionVariantPostModelToJson(
      this,
    );
  }
}

abstract class _PromotionVariantPostModel implements PromotionVariantPostModel {
  const factory _PromotionVariantPostModel(
          {@JsonKey(name: "applying_type") final String? applyinType,
          @JsonKey(name: "segment_list") final List<String>? segmentList,
          @JsonKey(name: "search_element") final String? searchElement,
          @JsonKey(name: "applying_type_code") final String? applyingTypeCode,
          @JsonKey(name: "inventory_id") final String? inventoryId}) =
      _$_PromotionVariantPostModel;

  factory _PromotionVariantPostModel.fromJson(Map<String, dynamic> json) =
      _$_PromotionVariantPostModel.fromJson;

  @override
  @JsonKey(name: "applying_type")
  String? get applyinType;
  @override
  @JsonKey(name: "segment_list")
  List<String>? get segmentList;
  @override
  @JsonKey(name: "search_element")
  String? get searchElement;
  @override
  @JsonKey(name: "applying_type_code")
  String? get applyingTypeCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionVariantPostModelCopyWith<_$_PromotionVariantPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_id")
  int? get buyMoreId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_line_code")
  String? get buyMoreLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_name")
  String? get offerName => throw _privateConstructorUsedError;
  @JsonKey(name: "type_data")
  String? get typeData => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {int? id,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "buy_more_id") int? buyMoreId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "buy_more_line_code") String? buyMoreLineCode,
      @JsonKey(name: "offer_name") String? offerName,
      @JsonKey(name: "type_data") String? typeData,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? buyMoreId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? offerGroupCode = freezed,
    Object? buyMoreLineCode = freezed,
    Object? offerName = freezed,
    Object? typeData = freezed,
    Object? updatedAt = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      buyMoreId: freezed == buyMoreId
          ? _value.buyMoreId
          : buyMoreId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreLineCode: freezed == buyMoreLineCode
          ? _value.buyMoreLineCode
          : buyMoreLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantModelCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$_VariantModelCopyWith(
          _$_VariantModel value, $Res Function(_$_VariantModel) then) =
      __$$_VariantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "buy_more_id") int? buyMoreId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "offer_group_code") String? offerGroupCode,
      @JsonKey(name: "buy_more_line_code") String? buyMoreLineCode,
      @JsonKey(name: "offer_name") String? offerName,
      @JsonKey(name: "type_data") String? typeData,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_VariantModelCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$_VariantModel>
    implements _$$_VariantModelCopyWith<$Res> {
  __$$_VariantModelCopyWithImpl(
      _$_VariantModel _value, $Res Function(_$_VariantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? buyMoreId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? offerGroupCode = freezed,
    Object? buyMoreLineCode = freezed,
    Object? offerName = freezed,
    Object? typeData = freezed,
    Object? updatedAt = freezed,
    Object? updateCheck = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_VariantModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      buyMoreId: freezed == buyMoreId
          ? _value.buyMoreId
          : buyMoreId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupCode: freezed == offerGroupCode
          ? _value.offerGroupCode
          : offerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      buyMoreLineCode: freezed == buyMoreLineCode
          ? _value.buyMoreLineCode
          : buyMoreLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeData: freezed == typeData
          ? _value.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantModel implements _VariantModel {
  const _$_VariantModel(
      {this.id,
      this.barcode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "buy_more_id") this.buyMoreId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "offer_group_code") this.offerGroupCode,
      @JsonKey(name: "buy_more_line_code") this.buyMoreLineCode,
      @JsonKey(name: "offer_name") this.offerName,
      @JsonKey(name: "type_data") this.typeData,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "updateCheck", defaultValue: false) this.updateCheck,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_VariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantModelFromJson(json);

  @override
  final int? id;
  @override
  final String? barcode;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "buy_more_id")
  final int? buyMoreId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "offer_group_code")
  final String? offerGroupCode;
  @override
  @JsonKey(name: "buy_more_line_code")
  final String? buyMoreLineCode;
  @override
  @JsonKey(name: "offer_name")
  final String? offerName;
  @override
  @JsonKey(name: "type_data")
  final String? typeData;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'VariantModel(id: $id, barcode: $barcode, variantId: $variantId, buyMoreId: $buyMoreId, variantCode: $variantCode, variantName: $variantName, offerGroupCode: $offerGroupCode, buyMoreLineCode: $buyMoreLineCode, offerName: $offerName, typeData: $typeData, updatedAt: $updatedAt, updateCheck: $updateCheck, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.buyMoreId, buyMoreId) ||
                other.buyMoreId == buyMoreId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.offerGroupCode, offerGroupCode) ||
                other.offerGroupCode == offerGroupCode) &&
            (identical(other.buyMoreLineCode, buyMoreLineCode) ||
                other.buyMoreLineCode == buyMoreLineCode) &&
            (identical(other.offerName, offerName) ||
                other.offerName == offerName) &&
            (identical(other.typeData, typeData) ||
                other.typeData == typeData) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      barcode,
      variantId,
      buyMoreId,
      variantCode,
      variantName,
      offerGroupCode,
      buyMoreLineCode,
      offerName,
      typeData,
      updatedAt,
      updateCheck,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      __$$_VariantModelCopyWithImpl<_$_VariantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantModelToJson(
      this,
    );
  }
}

abstract class _VariantModel implements VariantModel {
  const factory _VariantModel(
      {final int? id,
      final String? barcode,
      @JsonKey(name: "variant_id")
          final int? variantId,
      @JsonKey(name: "buy_more_id")
          final int? buyMoreId,
      @JsonKey(name: "variant_code")
          final String? variantCode,
      @JsonKey(name: "variant_name")
          final String? variantName,
      @JsonKey(name: "offer_group_code")
          final String? offerGroupCode,
      @JsonKey(name: "buy_more_line_code")
          final String? buyMoreLineCode,
      @JsonKey(name: "offer_name")
          final String? offerName,
      @JsonKey(name: "type_data")
          final String? typeData,
      @JsonKey(name: "updated_at")
          final String? updatedAt,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive}) = _$_VariantModel;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$_VariantModel.fromJson;

  @override
  int? get id;
  @override
  String? get barcode;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "buy_more_id")
  int? get buyMoreId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "offer_group_code")
  String? get offerGroupCode;
  @override
  @JsonKey(name: "buy_more_line_code")
  String? get buyMoreLineCode;
  @override
  @JsonKey(name: "offer_name")
  String? get offerName;
  @override
  @JsonKey(name: "type_data")
  String? get typeData;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
