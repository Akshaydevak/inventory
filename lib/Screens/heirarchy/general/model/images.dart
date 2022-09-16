import 'package:freezed_annotation/freezed_annotation.dart';
part 'images.g.dart';
part 'images.freezed.dart';

@freezed
class ImagesModel with _$ImagesModel {
  const factory ImagesModel({


    final int? image1,
    final int? image2,
    final int? image3,
    final int? itemCatelog1,
    final int? itemCatelog2,
    final int? itemCatelog3,
    final int? itemCatelog4,
    final int? itemCatelog5,

  }) = _ImagesModel;
  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}
