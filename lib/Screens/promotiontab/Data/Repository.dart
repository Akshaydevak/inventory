import 'package:dartz/dartz.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/failiure.dart';
import 'package:inventory/widgets/responseutils.dart';

import '../../../widgets/repoExecute.dart';
import 'DataSource.dart';

abstract class InventoryPromotionRepository{
  // Future<Either<Failure, DoubleResponse>> postImageDiscount(String? imageNmae, String ImageEncode, {String? type});
  Future<Either<Failure, DoubleResponse>> postCreateOfferPeriod(CreateOfferPeriod model);
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getOfferPeriodList(String? code, {String? type});
  Future<Either<Failure, ReadOfferPeriod>> getOfferPeriodRead(int orderId);
  Future<Either<Failure, DoubleResponse>> patchOfferPeriod(ReadOfferPeriod model,int? id);
  Future<Either<Failure, DoubleResponse>> deleteOfferPeriod(int? id,{String? type});
  Future<Either<Failure, ReadOfferPeriod>> getOfferGroupTypeTo();
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getPromotionSaleVerticalListt(String? code,);
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getPromotionDiscountVerticalList(String? code,);
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getListSegment(String? cod);
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getSaleApplyingName(salesOrderNamePostModel model,String? code);
  Future<Either<Failure, PaginatedResponse<List<SaleLines>>>> getVariantList(PromotionVariantPostModel model,String? code);
  // Future<Either<Failure, OfferGroupType>> getOfferGroupType();
  // Future<Either<Failure, List<ChannelTypeList>>> getChannelTypeOfferList(String val);
  // Future<Either<Failure, ChannelList>> getChannelListOffer();
  Future<Either<Failure, DoubleResponse>> postCreateOfferGroup(CreateOfferGroup model);
  Future<Either<Failure, DoubleResponse>> postPromotionSale(PromotionSaleCreateModel model);
  Future<Either<Failure, DoubleResponse>> postCreatativeVariant(List<VariantModel> idList);
  Future<Either<Failure, DoubleResponse>> getPromotionSalePatch(PromotionSaleCreateModel model,int? id);
  Future<Either<Failure, PaginatedResponse<List<OfferGroupList>>>> getOfferGroupList(String? code, {String? type});
  Future<Either<Failure, ReadOfferGroup>> getOfferGroupRead(int orderId);
  Future<Either<Failure, List<VariantModel>>> getVariantDeactivate(int type,String ? typeData, List<int?>idList);
  Future<Either<Failure,List< ChannelListModel>>> getChannelList(String? code);
  Future<Either<Failure, PromotionSaleReadModel>> getPromotionSaleRead(int orderId);
  Future<Either<Failure, DoubleResponse>> patchOfferGroup(OfferGroupData model,int? id);
  Future<Either<Failure, listAllSalesApis>> getListAllSalesApi();
  Future<Either<Failure, DoubleResponse>> postPromotionImage(
      String? imageNmae, String ImageEncode,
      {String? type});
 //discount


  Future<Either<Failure, DoubleResponse>> postCreatePromtionDiscount(PromotionDiscountCreationModel model);
  Future<Either<Failure, PromotionDiscountReadModel>> getPromotionDiscountRead(int id);
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getListTypeId(salesOrderNamePostModel model,String? code);
  Future<Either<Failure, DoubleResponse>> getPromotionDiscountPatch(PromotionDiscountCreationModel model,int? id);
}
class InventoryPromoRepoIml extends InventoryPromotionRepository{

  final PromotionDatasourse remoteDataSource = PromotionDatasourseImpl();
  InventoryPromoRepoIml();

  // @override
  // Future<Either<Failure, DoubleResponse>> postImageDiscount(String? imageNmae, String ImageEncode, {String? type}) {
  //   return repoExecute<DoubleResponse>(
  //         () async =>
  //         remoteDataSource.postImageDiscount(imageNmae, ImageEncode, type: type),
  //   );
  // }
  @override
  Future<Either<Failure, DoubleResponse>> postCreateOfferPeriod(
      CreateOfferPeriod model) {return repoExecute<DoubleResponse>(
          () async => remoteDataSource.postCreateOfferPeriod(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getOfferPeriodList(String? code, {String? type}) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getOfferPeriodList(code, type: type));
  }
  //
  @override
  Future<Either<Failure, ReadOfferPeriod>> getOfferPeriodRead(int orderId) {
    return repoExecute<ReadOfferPeriod>(() async => remoteDataSource.getOfferPeriodRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> deleteOfferPeriod(
      int? id,{String? type }) {return repoExecute<DoubleResponse>(
          () async => remoteDataSource.deleteOfferPeriod(id,type:type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchOfferPeriod(
      ReadOfferPeriod model,int? id) {return repoExecute<DoubleResponse>(
          () async => remoteDataSource.patchOfferPeriod(model,id));
  }
  //
  // @override
  // Future<Either<Failure, OfferGroupType>> getOfferGroupType() {
  //   return repoExecute<OfferGroupType>(
  //           () async => remoteDataSource.getOfferGroupType());
  // }
  //
  // @override
  // Future<Either<Failure, List<ChannelTypeList>>> getChannelTypeOfferList(String val) {
  //   return repoExecute<List<ChannelTypeList>>(
  //           () async => remoteDataSource.getChannelTypeOfferList(val));
  // }
  // @override
  // Future<Either<Failure, ChannelList>> getChannelListOffer() {
  //   return repoExecute<ChannelList>(
  //           () async => remoteDataSource.getChannelListOffer());
  // }
  //
  @override
  Future<Either<Failure, DoubleResponse>> postCreateOfferGroup(
      CreateOfferGroup model) {return repoExecute<DoubleResponse>(
          () async => remoteDataSource.postCreateOfferGroup(model));
  }
  //
  @override
  Future<Either<Failure, PaginatedResponse<List<OfferGroupList>>>> getOfferGroupList(String? code, {String? type}) {
    return repoExecute<PaginatedResponse<List<OfferGroupList>>>(
            () async => remoteDataSource.getOfferGroupList(code, type: type));
  }

  @override
  Future<Either<Failure, ReadOfferPeriod>> getOfferGroupTypeTo() {
    return repoExecute<ReadOfferPeriod>(
            () async => remoteDataSource.getOfferGroupTypeTo());
  }
  //
  @override
  Future<Either<Failure, ReadOfferGroup>> getOfferGroupRead(int orderId) {
    return repoExecute<ReadOfferGroup>(() async => remoteDataSource.getOfferGroupRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchOfferGroup(
      OfferGroupData model,int? id) {return repoExecute<DoubleResponse>(
          () async => remoteDataSource.patchOfferGroup(model,id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getPromotionSaleVerticalListt(String? code) {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
            () async => remoteDataSource.getPromotionSaleVerticalListt(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPromotionSale(PromotionSaleCreateModel model) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postPromotionSale(model));
  }

  @override
  Future<Either<Failure, listAllSalesApis>> getListAllSalesApi() {
    return repoExecute<listAllSalesApis>(
            () async => remoteDataSource.getListAllSalesApi());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getListSegment(String? code) {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
            () async => remoteDataSource.getListSegment(code,));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getSaleApplyingName(salesOrderNamePostModel model, String? code) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getSaleApplyingName(model,code));
  }

  @override
  Future<Either<Failure, PromotionSaleReadModel>> getPromotionSaleRead(int orderId) {
    return repoExecute<PromotionSaleReadModel>(() async => remoteDataSource.getPromotionSaleRead(orderId));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<SaleLines>>>> getVariantList(PromotionVariantPostModel model, String? code) {
    return repoExecute<PaginatedResponse<List<SaleLines>>>(
            () async => remoteDataSource.getVariantList(model,code));
  }

  @override
  Future<Either<Failure, List<ChannelListModel>>> getChannelList(String? code) {
    return repoExecute<List<ChannelListModel>>(() async => remoteDataSource.getChannelList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getPromotionSalePatch(PromotionSaleCreateModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.getPromotionSalePatch(model,id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPromotionImage(String? imageNmae, String ImageEncode, {String? type}) {
    return repoExecute<DoubleResponse>(
            () async =>
            remoteDataSource.postPromotionImage(imageNmae, ImageEncode, type: type));
  }

  @override
  Future<Either<Failure, List<VariantModel>>> getVariantDeactivate(int type, String? typeData, List<int?> idList) {
    return repoExecute<List<VariantModel>>(() async => remoteDataSource.getVariantDeactivate(type,typeData,idList));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreatativeVariant(List<VariantModel> idList) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postCreatativeVariant(idList));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getPromotionDiscountVerticalList(String? code) {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
            () async => remoteDataSource.getPromotionDiscountVerticalList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreatePromtionDiscount(PromotionDiscountCreationModel model) {
   return repoExecute<DoubleResponse>(
    () async => remoteDataSource.postCreatePromtionDiscount(model));
  }

  @override
  Future<Either<Failure, PromotionDiscountReadModel>> getPromotionDiscountRead(int id) {
    return repoExecute<PromotionDiscountReadModel>(() async => remoteDataSource.getPromotionDiscountRead(id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getListTypeId(salesOrderNamePostModel model, String? code) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getListTypeId(model,code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getPromotionDiscountPatch(PromotionDiscountCreationModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.getPromotionDiscountPatch(model,id));
  }
  //
  // @override
  // Future<Either<Failure, DoubleResponse>> deleteOfferGroup(
  //     int? id) {return repoExecute<DoubleResponse>(
  //         () async => remoteDataSource.deleteOfferGroup(id));
  // }
  //
  // @override
  // Future<Either<Failure, DiscountReadType>> getDiscountType() {
  //   return repoExecute<DiscountReadType>(
  //           () async => remoteDataSource.getDiscountType());
  // }
  // @override
  // Future<Either<Failure, PaginatedResponse<List<TypeAppliyingList>>>> getCatagoryList(String? code, {String? type}) {
  //   return repoExecute<PaginatedResponse<List<TypeAppliyingList>>>(
  //           () async => remoteDataSource.getCatagoryList(code, type: type));
  // }
  //
  // @override
  // Future<Either<Failure, DoubleResponse>> postVariantRead(
  //     VariantPostRead model) {return repoExecute<DoubleResponse>(
  //         () async => remoteDataSource.postVariantRead(model));
  // }
  //
  // @override
  // Future<Either<Failure, PaginatedResponse<List<SegmentList>>>> getSegmentList(String? code, {String? type}) {
  //   return repoExecute<PaginatedResponse<List<SegmentList>>>(
  //           () async => remoteDataSource.getSegmentList(code, type: type));
  // }
  // @override
  // Future<Either<Failure, DoubleResponse>> postSegment(
  //     SegmentPost model) {return repoExecute<DoubleResponse>(
  //         () async => remoteDataSource.postSegment(model));
  // }
  //
  // @override
  // Future<Either<Failure, DoubleResponse>> postCreateDiscount(
  //     CreateDiscount model) {return repoExecute<DoubleResponse>(
  //         () async => remoteDataSource.postCreateDiscount(model));
  // }
}