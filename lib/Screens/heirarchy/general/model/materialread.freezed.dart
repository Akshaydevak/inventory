// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'materialread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaterialReadModel _$MaterialReadModelFromJson(Map<String, dynamic> json) {
  return _MaterialReadModel.fromJson(json);
}

/// @nodoc
class _$MaterialReadModelTearOff {
  const _$MaterialReadModelTearOff();

  _MaterialReadModel call(
      {String? description,
      String? status,
      String? updated,
      String? code,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "search_name") String? searchNmae,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) {
    return _MaterialReadModel(
      description: description,
      status: status,
      updated: updated,
      code: code,
      name: name,
      image: image,
      id: id,
      searchNmae: searchNmae,
      displayName: displayName,
      categoryCode: categoryCode,
      categoryName: categoryName,
      isActive: isActive,
    );
  }

  MaterialReadModel fromJson(Map<String, Object> json) {
    return MaterialReadModel.fromJson(json);
  }
}

/// @nodoc
const $MaterialReadModel = _$MaterialReadModelTearOff();

/// @nodoc
mixin _$MaterialReadModel {
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get updated => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchNmae => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_code")
  String? get categoryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialReadModelCopyWith<MaterialReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReadModelCopyWith<$Res> {
  factory $MaterialReadModelCopyWith(
          MaterialReadModel value, $Res Function(MaterialReadModel) then) =
      _$MaterialReadModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? status,
      String? updated,
      String? code,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "search_name") String? searchNmae,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$MaterialReadModelCopyWithImpl<$Res>
    implements $MaterialReadModelCopyWith<$Res> {
  _$MaterialReadModelCopyWithImpl(this._value, this._then);

  final MaterialReadModel _value;
  // ignore: unused_field
  final $Res Function(MaterialReadModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? status = freezed,
    Object? updated = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? searchNmae = freezed,
    Object? displayName = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      searchNmae: searchNmae == freezed
          ? _value.searchNmae
          : searchNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$MaterialReadModelCopyWith<$Res>
    implements $MaterialReadModelCopyWith<$Res> {
  factory _$MaterialReadModelCopyWith(
          _MaterialReadModel value, $Res Function(_MaterialReadModel) then) =
      __$MaterialReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? status,
      String? updated,
      String? code,
      String? name,
      String? image,
      int? id,
      @JsonKey(name: "search_name") String? searchNmae,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$MaterialReadModelCopyWithImpl<$Res>
    extends _$MaterialReadModelCopyWithImpl<$Res>
    implements _$MaterialReadModelCopyWith<$Res> {
  __$MaterialReadModelCopyWithImpl(
      _MaterialReadModel _value, $Res Function(_MaterialReadModel) _then)
      : super(_value, (v) => _then(v as _MaterialReadModel));

  @override
  _MaterialReadModel get _value => super._value as _MaterialReadModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? status = freezed,
    Object? updated = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? id = freezed,
    Object? searchNmae = freezed,
    Object? displayName = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_MaterialReadModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      searchNmae: searchNmae == freezed
          ? _value.searchNmae
          : searchNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaterialReadModel implements _MaterialReadModel {
  const _$_MaterialReadModel(
      {this.description,
      this.status,
      this.updated,
      this.code,
      this.name,
      this.image,
      this.id,
      @JsonKey(name: "search_name") this.searchNmae,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "category_code") this.categoryCode,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_MaterialReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialReadModelFromJson(json);

  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? updated;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? id;
  @override
  @JsonKey(name: "search_name")
  final String? searchNmae;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "category_code")
  final String? categoryCode;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'MaterialReadModel(description: $description, status: $status, updated: $updated, code: $code, name: $name, image: $image, id: $id, searchNmae: $searchNmae, displayName: $displayName, categoryCode: $categoryCode, categoryName: $categoryName, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaterialReadModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality()
                    .equals(other.updated, updated)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.searchNmae, searchNmae) ||
                const DeepCollectionEquality()
                    .equals(other.searchNmae, searchNmae)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(updated) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(searchNmae) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$MaterialReadModelCopyWith<_MaterialReadModel> get copyWith =>
      __$MaterialReadModelCopyWithImpl<_MaterialReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaterialReadModelToJson(this);
  }
}

abstract class _MaterialReadModel implements MaterialReadModel {
  const factory _MaterialReadModel(
          {String? description,
          String? status,
          String? updated,
          String? code,
          String? name,
          String? image,
          int? id,
          @JsonKey(name: "search_name") String? searchNmae,
          @JsonKey(name: "display_name") String? displayName,
          @JsonKey(name: "category_code") String? categoryCode,
          @JsonKey(name: "category_name") String? categoryName,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive}) =
      _$_MaterialReadModel;

  factory _MaterialReadModel.fromJson(Map<String, dynamic> json) =
      _$_MaterialReadModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get updated => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "search_name")
  String? get searchNmae => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_code")
  String? get categoryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MaterialReadModelCopyWith<_MaterialReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
