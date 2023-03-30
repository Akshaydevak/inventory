import 'package:dartz/dartz.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/model/bogo_creation_model.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/coupon/model/crreateCouponModel.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/model/create_model.dart';
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
  Future<Either<Failure, PaginatedResponse<List<CustomerGroupModel>>>> getPromotionCustomerGroupList(String? code,);
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>> getListSegment(String? cod);
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getSaleApplyingName(salesOrderNamePostModel model,String? code);
  Future<Either<Failure, PaginatedResponse<List<SaleLines>>>> getVariantList(PromotionVariantPostModel model,String? code);
  // Future<Either<Failure, OfferGroupType>> getOfferGroupType();
  // Future<Either<Failure, List<ChannelTypeList>>> getChannelTypeOfferList(String val);
  // Future<Either<Failure, ChannelList>> getChannelListOffer();
  Future<Either<Failure, DoubleResponse>> postCreateOfferGroup(CreateOfferGroup model);
  Future<Either<Failure, DoubleResponse>> postPromotionSale(PromotionSaleCreateModel model);
  Future<Either<Failure, DoubleResponse>> postCreatativeVariant(List<ViewAllProductsVariantModel> idList);
  Future<Either<Failure, DoubleResponse>> getPromotionSalePatch(PromotionSaleCreateModel model,int? id);
  Future<Either<Failure, PaginatedResponse<List<OfferGroupList>>>> getOfferGroupList(String? code, {String? type});
  Future<Either<Failure, ReadOfferGroup>> getOfferGroupRead(int orderId);
  Future<Either<Failure, DoubleResponse>> getVariantDeactivate(int type,String ? typeData, List<int?>idList,{bool? isCoupon});
  Future<Either<Failure,List< ChannelListModel>>> getChannelList(String? code);
  Future<Either<Failure, PromotionSaleReadModel>> getPromotionSaleRead(int orderId);
  Future<Either<Failure, DoubleResponse>> patchOfferGroup(OfferGroupData model,int? id);
  Future<Either<Failure, listAllSalesApis>> getListAllSalesApi({String? type});
  Future<Either<Failure, DoubleResponse>> postPromotionImage(
      String? imageNmae, String ImageEncode,
      {String? type});
 //discount

  Future<Either<Failure, PaginatedResponse<List<SaleLines>>>> getVariantGroupCodeList(String? code,{String? customereCode});
  Future<Either<Failure, DoubleResponse>> postCreatePromtionDiscount(PromotionDiscountCreationModel model);
  Future<Either<Failure, PromotionDiscountReadModel>> getPromotionDiscountRead(int id);
  Future<Either<Failure,PaginatedResponse< List<CustomGroupReadModel>>>> getCustomGroupRead();
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getListTypeId(salesOrderNamePostModel model,String? code);
  Future<Either<Failure, DoubleResponse>> getPromotionDiscountPatch(PromotionDiscountCreationModel model,int? id);
  //Buy more*****************************
  Future<Either<Failure, DoubleResponse>> postCreatePromtionBuyMore(PromotionBuyMoreCreationModel model);
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getBuyMoreVerticalList(String? code,);
  Future<Either<Failure, PromotionBuyMoreCreationModel>> getBuyMoreRead(int verticalId);
  Future<Either<Failure, DoubleResponse>> buyMorePromotionSalePatch(PromotionBuyMoreCreationModel model,int? id);
  //BoGO++++++++++++++++++++
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getBogoVerticalList(String? code,);
  Future<Either<Failure, listAllSalesApis>> getListAllBogoApi({String? type});
  Future<Either<Failure, DoubleResponse>> postPromtionBogo(PromotionBogoCreationModel model);
  Future<Either<Failure, PromotionBogoReadModel>> getPromotionBogoRead(int verticalId);
  Future<Either<Failure, DoubleResponse>> bogoPromotionPatch(PromotionBogoCreationModel model,int? id);
  
  //Coupen
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getCouPenVerticalList(String? code,);
  Future<Either<Failure, listAllSalesApis>> getListAllCouponApi({String? type});
  Future<Either<Failure, DoubleResponse>> postCreatePromtionCoupon(PromotionCouponCreationModel model);
  Future<Either<Failure, PromotionCouponCreationModel>> getPromotionCouponRead(int verticalId);
  Future<Either<Failure, DoubleResponse>> couponPromotionPatch(PromotionCouponCreationModel model,int? id);

  //multibuy ***************************************************
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getMultiBuyVerticalList(String? code,);
  Future<Either<Failure, listAllSalesApis>> getListAllMultiBuyApi({String? type});
  Future<Either<Failure, PaginatedResponse<List<MultibuyVariantListModel>>>> getMultiBuyVariantList(PromotionVariantPostModel model,String? code);
  Future<Either<Failure, DoubleResponse>> postCreatePromtionMultiBuy(PromotionMultiBuyCreationModel model);
  Future<Either<Failure, PromotionMultiBuyReadModel>> getPromotionMultiBuyRead(int verticalId);

  Future<Either<Failure, DoubleResponse>> multiBuyPromotionPatch(PromotionMultiBuyCreationModel model,int? id);



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
  Future<Either<Failure, listAllSalesApis>> getListAllSalesApi({String? type }) {
    return repoExecute<listAllSalesApis>(
            () async => remoteDataSource.getListAllSalesApi(type:type));
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
  Future<Either<Failure, DoubleResponse>> getVariantDeactivate(int type, String? typeData, List<int?> idList,{bool? isCoupon}) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource.getVariantDeactivate(type,typeData,idList,isCoupon:isCoupon));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreatativeVariant(List<ViewAllProductsVariantModel> idList) {
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

  @override
  Future<Either<Failure, DoubleResponse>> postCreatePromtionBuyMore(PromotionBuyMoreCreationModel model) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postCreatePromtionBuyMore(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getBuyMoreVerticalList(String? code,{String? customereCode}) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getBuyMoreVerticalList(code));
  }

  @override
  Future<Either<Failure, PromotionBuyMoreCreationModel>> getBuyMoreRead(int verticalId) {
    return repoExecute<PromotionBuyMoreCreationModel>(() async => remoteDataSource.getBuyMoreRead(verticalId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> buyMorePromotionSalePatch(PromotionBuyMoreCreationModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.buyMorePromotionSalePatch(model,id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<  List<CustomGroupReadModel>>>> getCustomGroupRead() {
    return repoExecute< PaginatedResponse< List<CustomGroupReadModel>>>(() async => remoteDataSource.getCustomGroupRead());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<SaleLines>>>> getVariantGroupCodeList(String? code,{String? customereCode}) {
    return repoExecute<PaginatedResponse<List<SaleLines>>>(
            () async => remoteDataSource.getVariantGroupCodeList(code,customereCode:customereCode));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getBogoVerticalList(String? code) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getBogoVerticalList(code));
  }

  @override
  Future<Either<Failure, listAllSalesApis>> getListAllBogoApi({String? type}) {
    return repoExecute<listAllSalesApis>(
            () async => remoteDataSource.getListAllBogoApi(type:type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPromtionBogo(PromotionBogoCreationModel model) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postPromtionBogo(model));
  }

  @override
  Future<Either<Failure, PromotionBogoReadModel>> getPromotionBogoRead(int verticalId) {
    return repoExecute<PromotionBogoReadModel>(() async => remoteDataSource.getPromotionBogoRead(verticalId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> bogoPromotionPatch(PromotionBogoCreationModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.bogoPromotionPatch(model,id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getCouPenVerticalList(String? code) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getCouPenVerticalList(code));
  }

  @override
  Future<Either<Failure, listAllSalesApis>> getListAllCouponApi({String? type}) {
    return repoExecute<listAllSalesApis>(
            () async => remoteDataSource.getListAllCouponApi(type:type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreatePromtionCoupon(PromotionCouponCreationModel model) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postCreatePromtionCoupon(model));
  }

  @override
  Future<Either<Failure, PromotionCouponCreationModel>> getPromotionCouponRead(int verticalId) {
    return repoExecute<PromotionCouponCreationModel>(() async => remoteDataSource.getPromotionCouponRead(verticalId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> couponPromotionPatch(PromotionCouponCreationModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.couponPromotionPatch(model,id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<CustomerGroupModel>>>> getPromotionCustomerGroupList(String? code) {
    print("repo");
    return repoExecute<PaginatedResponse<List<CustomerGroupModel>>>(
            () async => remoteDataSource.getPromotionCustomerGroupList(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OfferPeriodList>>>> getMultiBuyVerticalList(String? code) {
    return repoExecute<PaginatedResponse<List<OfferPeriodList>>>(
            () async => remoteDataSource.getMultiBuyVerticalList(code));
  }

  @override
  Future<Either<Failure, listAllSalesApis>> getListAllMultiBuyApi({String? type}) {
    return repoExecute<listAllSalesApis>(
            () async => remoteDataSource.getListAllMultiBuyApi(type:type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<MultibuyVariantListModel>>>> getMultiBuyVariantList(PromotionVariantPostModel model, String? code) {
    return repoExecute<PaginatedResponse<List<MultibuyVariantListModel>>>(
            () async => remoteDataSource.getMultiBuyVariantList(model,code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreatePromtionMultiBuy(PromotionMultiBuyCreationModel model) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.postCreatePromtionMultiBuy(model));
  }

  @override
  Future<Either<Failure, PromotionMultiBuyReadModel>> getPromotionMultiBuyRead(int verticalId) {
    return repoExecute<PromotionMultiBuyReadModel>(() async => remoteDataSource.getPromotionMultiBuyRead(verticalId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> multiBuyPromotionPatch(PromotionMultiBuyCreationModel model, int? id) {
    return repoExecute<DoubleResponse>(
            () async => remoteDataSource.multiBuyPromotionPatch(model,id));
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