import 'package:dartz/dartz.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';

import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/Screens/sales/general/model/salesgeneralread.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/Screens/sales/invoice/model/invoice_read.dart';
import 'package:inventory/Screens/sales/invoice/model/invoicepostmodel.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoicepost.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoiceread.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturninvoiceread.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/channelpost.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/typemodel.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_read.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';
import 'package:inventory/Screens/variant/general/model/variant_read_model.dart';
import 'package:inventory/Screens/variant/stock/models/stock_read.dart';
import 'package:inventory/Screens/variant/stock/models/stocktableread.dart';
import 'package:inventory/Screens/variant/stock/models/stockverticallist.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpatch.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/failiure.dart';
import 'package:inventory/widgets/repoExecute.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:inventory/model/purchaseorder.dart';
import '../../../models/purchaseordertype/purchaseordertype.dart';
import '../../sales/general/model/sales_general_post.dart';
import '../../variant/channel_costing_allocation/model/costingpagecreation.dart';
import 'datasource.dart';
import 'model/purchaseinvoice.dart';

abstract class PurchaseReturnRepoAbstract {
  Future<Either<Failure, DoubleResponse>> signUp(RegisterModel model);
  Future<Either<Failure, DoubleResponse>> getLogin(
      String username, String password, String empCode);
  Future<Either<Failure, DoubleResponse>> otpReg(
      String email, String mobile, String key, String cratedCode);
  Future<Either<Failure, List<PurchaseInvoice>>> getPurchaseInvoice();
  Future<Either<Failure, PurchaseReturnGeneralRead>> getGeneralInvoiceRead(
      int? id);
  Future<Either<Failure, DoubleResponse>> postGeneral(
      PurchaseReturnGeneralPost model);
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getGeneralVertical();
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
    String? code,
  );
  Future<Either<Failure, ReturnGeneralRead>> getGeneralPurchaseReturnRead(
      int id);
  Future<Either<Failure, DoubleResponse>> getGeneralFormPatch(
      ReturnGeneralPatchModel model, int? id);
  Future<Either<Failure, DoubleResponse>> returnGeneralDelete(int? id);

  Future<Either<Failure, PurchaseInvoiceReadModel>> getInvoiceRead(int id);
  Future<Either<Failure, DoubleResponse>> invoicePost(
      PurchaseReturnInvoicePostModel model);
  //Sales general tab scrennn*********************
  Future<Either<Failure, DoubleResponse>> postSalesGeneral(
      SalesGeneralPostModel model);
  Future<Either<Failure, DoubleResponse>> postCustomerIdCreation(
      CustomerIdCreation2Model model);
  Future<Either<Failure, DoubleResponse>> postShippinAddress(
      ShippingAddressCreationModel model);
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesGeneralVertical();
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesSearch(
    String? code,
  );
  Future<Either<Failure, PurchaseOrdertype>> getSalesOrdertype({String? type});
  Future<Either<Failure, SalesGeneralReadModel>> getSalesGenralRead(int id);
  Future<Either<Failure, DoubleResponse>> salesGeneralDelete(int? id);
  Future<Either<Failure, DoubleResponse>> getSalesGeneralPatch(
      SalesGeneralPostModel model, int? id);
  Future<Either<Failure, List<ShippingAddressModel>>> getShippingId();
  Future<Either<Failure, List<CustomerIdCreationModel>>> getCustomerId();
//sales invoice tab*******************************
  Future<Either<Failure, SalesReturnInvoiceReadModel>> getSalesInvoiceRead(
      int id);
  Future<Either<Failure, DoubleResponse>> postSalesInvoice(
      SalesReturnInvoicePostModel model);
//salesReturn general
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesReturnGeneralVertical();
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesReturnSearch(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postSalesReturnGeneral(
      SalesReturnGeneralPostModel model);
  Future<Either<Failure, List<SalesInvoiceCodeModel>>> getInvoiceCode();
  Future<Either<Failure, SalesReturnGeneralInvoiceReadModel>>
      getSalesReturnGeneralInvoiceRead(int? id);
  Future<Either<Failure, SalesReturnGeneralPostModel>>
      getSalesReturnGeneralRead(int? id);
  Future<Either<Failure, DoubleResponse>> salesreturnGeneralDelete(int? id);
  Future<Either<Failure, DoubleResponse>> postSalesRequestGeneralPatch(
      SalesReturnGeneralPostModel model, int? id);
  //Sales return  invoice+++++++++++++++++++++++
  Future<Either<Failure, SalesReturnInvoiceReadModel2>>
      getSalesReturnInvoiceRead(int? id);
  Future<Either<Failure, DoubleResponse>> postSalesReturnInvoice(
      SalesReturnInvoicePostModel2 model);

  //product module heirarchy*********************************

  Future<Either<Failure, List<BrandListModel>>> getBrandList();
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getlistBrand(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postCreateBrand(
      BrandCreationtModel model);
  Future<Either<Failure, DoubleResponse>> postImage(
      String? imageNmae, String ImageEncode,
      {String? type});
  Future<Either<Failure, BrandReadModel>> getBrandRead(int? id);
  Future<Either<Failure, DoubleResponse>> brandDelete(int? id);
  Future<Either<Failure, DoubleResponse>> postBrandPatch(
      BrandCreationtModel model, int? id);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      searchMaterialList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postCreateMaterial(
      MaterialCreationtModel model);
  Future<Either<Failure, MaterialReadModel>> getMaterialRead(int? id);
  Future<Either<Failure, DoubleResponse>> postmaterialPatch(
      MaterialReadModel model, int? id);
  Future<Either<Failure, DoubleResponse>> materialDelete(
      int? id, String type); //devision:::::::::::::::
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getDevisionList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postCreateDevision(
      MaterialCreationtModel model, String type);
  Future<Either<Failure, DevisionReadModel>> getDivisionRead(
      int? id, String type);
  Future<Either<Failure, DoubleResponse>> postDivisionPatch(
      DevisionReadModel model, int? id, String type);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getStaticList(String? code);
  Future<Either<Failure, DoubleResponse>> postCreateUomGroup(
      String description, String name, String shortName);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getUomGroupist(String? code);
  Future<Either<Failure, DevisionReadModel>> getUomGroupRead(
    int? id,
  );
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getCategoryist(String? code, {String? type});
  Future<Either<Failure, DoubleResponse>> postCreateCategory(
      CategoryCreationtModel model);
  Future<Either<Failure, CategoryReadModel>> getCategoryRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postcategoryPatch(
      CategoryCreationtModel model, int? id);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getSubCategoryList(String? code);
  Future<Either<Failure, DoubleResponse>> postCreateGroup(
      MaterialCreationtModel model);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getGroupListList(String? code, {String? type});
  Future<Either<Failure, MaterialReadModel>> getGroupRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postGroupPatch(
      MaterialCreationtModel model, int? id);
  Future<Either<Failure, DoubleResponse>> postCreateBaseUom(
      BaseUomCreationtModel model);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getUomist(
      String? code,
      {String? type});
  Future<Either<Failure, BaseUomCreationtModel>> getBaseUomRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postUomPatch(
      BaseUomCreationtModel model, int? id);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getItemListList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postCreateItem(
      ItemCreationModel model);
  Future<Either<Failure, ItemReadModel>> getItemRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postItemPatch(
      ItemReadModel model, int? id);
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantList(String? code, {String? type});
  Future<Either<Failure, VariantReadModel>> getVariantRead(
    int? id,
  );
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getSalesList(
      String? code,
      {String? type,
      int? id});
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      searchVariantList(String? code, {String? type, int? id});
  Future<Either<Failure, DoubleResponse>> postVariant(
      VariantPost model, int? id);
  Future<Either<Failure, DoubleResponse>> patchVariant(
      VariantPatch model, int? id);
  //variantcreation++++++++++++++++++++++++++++++++++++
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantCreationList(
    String? code,
  );
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantSelectionList(String? code, int item);
  Future<Either<Failure, VariantCreationReadModel>> getVariantCreationRead(
      int? id);
  Future<Either<Failure, List<VariantCreationRead2Model>>>
      getVariantCreationRead2(String? id);
  //channelAllocation
  Future<Either<Failure, PaginatedResponse<List<ChannelTypeModel>>>>
      getChannelTypeList(String? code, String type);
  Future<Either<Failure, PaginatedResponse<List<ChannelTypeModel>>>>
      getChannelFilterList(List<String> code, String id, String option);
  Future<Either<Failure, StockReadModel>> getStockRead(int? id);
  Future<Either<Failure, List<StockTableReadModel>>> getStockTableRead(
      String? code);
  Future<Either<Failure, PaginatedResponse<List<StockVerticalReadModel>>>>
      getStockList(String? code);
  Future<Either<Failure, channelAllocatesRead>> getChannelRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postSChannelPosts(
      ChannelPostModel model);
  Future<Either<Failure, PaginatedResponse<List<ChanmneStockListModelModel>>>>
      getChannelAllocationList(int? code);
  Future<Either<Failure, ChannelAllocationStockStockReadModel>>
      getChannelStockAllocationRead(int? id, int? channelId);
  Future<Either<Failure, DoubleResponse>> channelStockAllocationPatch(
      ChannelAllocationStockStockReadModel model, int? id);
  Future<Either<Failure, PaginatedResponse<List<ChannelListModel>>>>
      getChannelList(
    String? channelType,
    int? id,
  );
  Future<Either<Failure, ChannelListModel>> getChannelAllocationRead(
      int? id, int? channelId);
  Future<Either<Failure, PaginatedResponse<List<FrameWorkListModel>>>>
      getFrameWorklist(String? filter);
  Future<Either<Failure, DoubleResponse>> channel2StockAllocationPatch(
      ChannelListModel model, int? id);
  Future<Either<Failure, DoubleResponse>> postCreateFrameWork(
      VariantFrameWorkPostModel model);
  Future<Either<Failure, DoubleResponse>> postPatchFrameWork(
      VariantFrameWorkPostModel model, int? id);
  //costing
  Future<Either<Failure, DoubleResponse>> postCreateCostingType(
      String typeName, String description, String createdBy,
      {int? id});
  Future<Either<Failure, PaginatedResponse<List<CostingMetodTypePostModel>>>>
      getCostingTypeList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postPatchCostingType(int? verticalId,
      String typeName, String description, String createdBy, bool? isActive,
      {int? id});
  Future<Either<Failure, DoubleResponse>> CostingDelete(int? id,
      {String? type});
  Future<Either<Failure, PaginatedResponse<List<CostingCreatePostModel>>>>
      getCostingCreateList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postPatchCostingCreate(
    int? verticalId,
    String typeName,
    String description,
    String createdBy,
    bool? isActive,
  );
  Future<Either<Failure, PaginatedResponse<List<PricingGroupListModel>>>>
      getPricingGroupList(
    String? code,
  );
  Future<Either<Failure, CostingCreatePostModel>> getCostMethodRead(int? id);
  Future<Either<Failure, CostingMetodTypePostModel>> getCostMethodTypeRead(
      int? id);
  Future<Either<Failure, DoubleResponse>> postPricingGroupType(
      PricingGroupListModel model,
      {int? type});
  Future<Either<Failure, DoubleResponse>> patchPricingGroupType(
      PricingGroupListModel model, int? id,
      {int? type});
  Future<Either<Failure, PricingGroupListModel>> getPricingRead(int? id);
  Future<Either<Failure, PaginatedResponse<List<PricingTypeListModel>>>>
      getPricingList(
    String? code,
  );
  Future<Either<Failure, PricingTypeListModel>> getPricingGroupRead(int? id);
  Future<Either<Failure, DoubleResponse>> patchPricingGroup(
    PricingTypeListModel model,
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> postPricingGroup(
    PricingTypeListModel model,
  );
  Future<Either<Failure, List<ListingChnanelTableModel>>>
      getChannelStockTableRead(int? id);
  Future<Either<Failure, DoubleResponse>> postCosting(
    CostingPageCreationPostModel model,
  );
  Future<Either<Failure, CostingPageCreationPostModel>> getCostingRead(int? id);
  Future<Either<Failure, PurchaseOrdertype>> getPricingPgtype();
  Future<Either<Failure, DoubleResponse>> percentageGp(int? id, String? gpType);
  Future<Either<Failure, DoubleResponse>> patchCosting(
      CostingPageCreationPostModel model, int? id);
  Future<Either<Failure, DoubleResponse>> postFrameWorkCreate(
      VariantFrameworkPostModel model);
  Future<Either<Failure, PaginatedResponse<List<AttributeListModel>>>>
      getAttributeList(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postCombinationFrameWork(
      {String? itemCode,
      String? variantCode,
      String? uomCode,
      List<List<Map<String, dynamic>>>? variantlist});
  Future<Either<Failure, PurchaseOrdertype>> getVirtualStiocktype();
  Future<Either<Failure, DoubleResponse>> postStock(StockData model);
  Future<Either<Failure, List<LinkedItemListIdModel>>> getLinkedItemListRead(
    String? code,
  );
  Future<Either<Failure, DoubleResponse>> postLinkedItem(
      LinkedItemPostModel model);
  Future<Either<Failure, DoubleResponse>> patchLinkedItem(
      LinkedItemPostModel model, int? id);
  Future<Either<Failure, LinkedItemPostModel>> getLinkedItem(
    int? id,
  );
  Future<Either<Failure, PaginatedResponse<List<LinkedItemListIdModel>>>>
      getLinkedItemList(
    String? filter,
  );

  Future<Either<Failure, VariantFrameWorkPostModel>> getFrameWorkRead(
    int? id,
  );
  Future<Either<Failure, DoubleResponse>> getQrCodeRead(int? id);
}

class PurchaseReturnImpl extends PurchaseReturnRepoAbstract {
  PurchaseSourceImpl remoteDataSource = PurchaseSourceImpl();
  @override
  Future<Either<Failure, List<PurchaseInvoice>>> getPurchaseInvoice() {
    return repoExecute<List<PurchaseInvoice>>(
        () async => remoteDataSource.getPurchaseInvoice());
  }

  @override
  Future<Either<Failure, PurchaseReturnGeneralRead>> getGeneralInvoiceRead(
      int? id) {
    return repoExecute<PurchaseReturnGeneralRead>(
        () async => remoteDataSource.getGeneralInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postGeneral(
      PurchaseReturnGeneralPost model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postGeneral(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getGeneralVertical() {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getGeneralVertical());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? code) {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getSearch(
              code,
            ));
  }

  @override
  Future<Either<Failure, ReturnGeneralRead>> getGeneralPurchaseReturnRead(
      int id) {
    return repoExecute<ReturnGeneralRead>(
        () async => remoteDataSource.getGeneralPurchaseReturnRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getGeneralFormPatch(
      ReturnGeneralPatchModel model, int? id) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource
        .getGeneralFormPatch(model, id)); // TODO: implement getGeneralFormPatch
  }

  @override
  Future<Either<Failure, DoubleResponse>> returnGeneralDelete(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.returnGeneralDelete(id));
  }

  @override
  Future<Either<Failure, PurchaseInvoiceReadModel>> getInvoiceRead(int id) {
    return repoExecute<PurchaseInvoiceReadModel>(
        () async => remoteDataSource.getInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> invoicePost(
      PurchaseReturnInvoicePostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.invoicePost(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesGeneral(
      SalesGeneralPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSalesGeneral(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesGeneralVertical() {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
        () async => remoteDataSource.getSalesGeneralVertical());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesSearch(String? code) {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
        () async => remoteDataSource.getSalesSearch(
              code,
            ));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getSalesOrdertype({String? type}) {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getSalesOrdertype(type: type));
  }

  @override
  Future<Either<Failure, SalesGeneralReadModel>> getSalesGenralRead(int id) {
    return repoExecute<SalesGeneralReadModel>(
        () async => remoteDataSource.getSalesGenralRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> salesGeneralDelete(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.salesGeneralDelete(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getSalesGeneralPatch(
      SalesGeneralPostModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.getSalesGeneralPatch(model, id));
  }

  @override
  Future<Either<Failure, SalesReturnInvoiceReadModel>> getSalesInvoiceRead(
      int id) {
    return repoExecute<SalesReturnInvoiceReadModel>(
        () async => remoteDataSource.getSalesInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> signUp(RegisterModel model) {
    return repoExecute<DoubleResponse>(
      () async => remoteDataSource.signUp(model),
    );
    ;
  }

  @override
  Future<Either<Failure, DoubleResponse>> otpReg(
      String email, String mobile, String key, String cratedCode) {
    return repoExecute<DoubleResponse>(
      () async => remoteDataSource.otpReg(email, mobile, key, cratedCode),
    );
  }

  @override
  Future<Either<Failure, DoubleResponse>> getLogin(
      String username, String password, String empCode) {
    return repoExecute<DoubleResponse>(
      () async => remoteDataSource.getLogin(username, password, empCode),
    );
  }

  @override
  Future<Either<Failure, List<ShippingAddressModel>>> getShippingId() {
    return repoExecute<List<ShippingAddressModel>>(
        () async => remoteDataSource.getShippingId());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postShippinAddress(
      ShippingAddressCreationModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postShippinAddress(model));
  }

  @override
  Future<Either<Failure, List<CustomerIdCreationModel>>> getCustomerId() {
    return repoExecute<List<CustomerIdCreationModel>>(
        () async => remoteDataSource.getCustomerId());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCustomerIdCreation(
      CustomerIdCreation2Model model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCustomerIdCreation(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesInvoice(
      SalesReturnInvoicePostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSalesInvoice(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesReturnGeneralVertical() {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
        () async => remoteDataSource.getSalesReturnGeneralVertical());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<salesOrderTypeModel>>>>
      getSalesReturnSearch(String? code) {
    return repoExecute<PaginatedResponse<List<salesOrderTypeModel>>>(
        () async => remoteDataSource.getSalesReturnSearch(
              code,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesReturnGeneral(
      SalesReturnGeneralPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSalesReturnGeneral(model));
  }

  @override
  Future<Either<Failure, List<SalesInvoiceCodeModel>>> getInvoiceCode() {
    return repoExecute<List<SalesInvoiceCodeModel>>(
        () async => remoteDataSource.getInvoiceCode());
  }

  @override
  Future<Either<Failure, SalesReturnGeneralInvoiceReadModel>>
      getSalesReturnGeneralInvoiceRead(int? id) {
    return repoExecute<SalesReturnGeneralInvoiceReadModel>(
        () async => remoteDataSource.getSalesReturnGeneralInvoiceRead(id));
  }

  @override
  Future<Either<Failure, SalesReturnGeneralPostModel>>
      getSalesReturnGeneralRead(int? id) {
    return repoExecute<SalesReturnGeneralPostModel>(
        () async => remoteDataSource.getSalesReturnGeneralRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> salesreturnGeneralDelete(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.salesreturnGeneralDelete(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesRequestGeneralPatch(
      SalesReturnGeneralPostModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSalesRequestGeneralPatch(model, id));
  }

  @override
  Future<Either<Failure, SalesReturnInvoiceReadModel2>>
      getSalesReturnInvoiceRead(int? id) {
    return repoExecute<SalesReturnInvoiceReadModel2>(
        () async => remoteDataSource.getSalesReturnInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesReturnInvoice(
      SalesReturnInvoicePostModel2 model) {
    // TODO: implement postSalesReturnInvoice
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSalesReturnInvoice(model));
  }

  @override
  Future<Either<Failure, List<BrandListModel>>> getBrandList() {
    return repoExecute<List<BrandListModel>>(
        () async => remoteDataSource.getBrandList());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateBrand(
      BrandCreationtModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateBrand(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postImage(
      String? imageNmae, String ImageEncode,
      {String? type}) {
    return repoExecute<DoubleResponse>(
      () async =>
          remoteDataSource.postImage(imageNmae, ImageEncode, type: type),
    );
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getlistBrand(
      String? code) {
    print("avavava");
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getlistBrand(code));
  }

  @override
  Future<Either<Failure, BrandReadModel>> getBrandRead(int? id) {
    return repoExecute<BrandReadModel>(
        () async => remoteDataSource.getBrandRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> brandDelete(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.brandDelete(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postBrandPatch(
      BrandCreationtModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postBrandPatch(model, id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      searchMaterialList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.searchMaterialList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateMaterial(
      MaterialCreationtModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateMaterial(model));
  }

  @override
  Future<Either<Failure, MaterialReadModel>> getMaterialRead(int? id) {
    // TODO: implement getMaterialRead
    return repoExecute<MaterialReadModel>(
        () async => remoteDataSource.getMaterialRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postmaterialPatch(
      MaterialReadModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postmaterialPatch(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> materialDelete(int? id, String type) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.materialDelete(id, type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getDevisionList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getDevisionList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateDevision(
      MaterialCreationtModel model, String type) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateDevision(model, type));
  }

  @override
  Future<Either<Failure, DevisionReadModel>> getDivisionRead(
      int? id, String type) {
    // TODO: implement getDivisionRead
    return repoExecute<DevisionReadModel>(
        () async => remoteDataSource.getDivisionRead(id, type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postDivisionPatch(
      DevisionReadModel model, int? id, String type) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postDivisionPatch(model, id, type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getStaticList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getStaticList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateUomGroup(
      String description, String name, String shortName) {
    return repoExecute<DoubleResponse>(() async =>
        remoteDataSource.postCreateUomGroup(description, name, shortName));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getUomGroupist(String? code) {
    print("filter2" + code.toString());
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getUomGroupist(code));
  }

  @override
  Future<Either<Failure, DevisionReadModel>> getUomGroupRead(int? id) {
    return repoExecute<DevisionReadModel>(
        () async => remoteDataSource.getUomGroupRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getCategoryist(String? code, {String? type}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getCategoryist(code, type: type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateCategory(
      CategoryCreationtModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateCategory(model));
  }

  @override
  Future<Either<Failure, CategoryReadModel>> getCategoryRead(int? id) {
    return repoExecute<CategoryReadModel>(
        () async => remoteDataSource.getCategoryRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postcategoryPatch(
      CategoryCreationtModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postcategoryPatch(model, id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getSubCategoryList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getSubCategoryList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateGroup(
      MaterialCreationtModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateGroup(
              model,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getGroupListList(String? code, {String? type}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getGroupListList(code, type: type));
  }

  @override
  Future<Either<Failure, MaterialReadModel>> getGroupRead(int? id) {
    return repoExecute<MaterialReadModel>(
        () async => remoteDataSource.getGroupRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postGroupPatch(
      MaterialCreationtModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postGroupPatch(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateBaseUom(
      BaseUomCreationtModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateBaseUom(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getUomist(
      String? code,
      {String? type}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getUomist(code, type: type));
  }

  @override
  Future<Either<Failure, BaseUomCreationtModel>> getBaseUomRead(int? id) {
    return repoExecute<BaseUomCreationtModel>(
        () async => remoteDataSource.getBaseUomRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postUomPatch(
      BaseUomCreationtModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postUomPatch(
              model,
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getItemListList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getItemListList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateItem(
      ItemCreationModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateItem(model));
  }

  @override
  Future<Either<Failure, ItemReadModel>> getItemRead(int? id) {
    return repoExecute<ItemReadModel>(() async => remoteDataSource.getItemRead(
          id,
        ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postItemPatch(
      ItemReadModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postItemPatch(
              model,
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantList(String? code, {String? type}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getVariantList(code, type: type));
  }

  @override
  Future<Either<Failure, VariantReadModel>> getVariantRead(int? id) {
    return repoExecute<VariantReadModel>(
        () async => remoteDataSource.getVariantRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>> getSalesList(
      String? code,
      {String? type,
      int? id}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getSalesList(code, type: type, id: id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      searchVariantList(String? code, {String? type, int? id}) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.searchVariantList(code, type: type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postVariant(
      VariantPost model, int? id) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource.postVariant(
          model,
          id,
        ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchVariant(
      VariantPatch model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.patchVariant(
              model,
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantCreationList(String? code) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getVariantCreationList(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<BrandListModel>>>>
      getVariantSelectionList(String? code, int item) {
    return repoExecute<PaginatedResponse<List<BrandListModel>>>(
        () async => remoteDataSource.getVariantSelectionList(code, item));
  }

  @override
  Future<Either<Failure, VariantCreationReadModel>> getVariantCreationRead(
      int? id) {
    return repoExecute<VariantCreationReadModel>(
        () async => remoteDataSource.getVariantCreationRead(id));
  }

  @override
  Future<Either<Failure, List<VariantCreationRead2Model>>>
      getVariantCreationRead2(String? id) {
    return repoExecute<List<VariantCreationRead2Model>>(
        () async => remoteDataSource.getVariantCreationRead2(id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ChannelTypeModel>>>>
      getChannelTypeList(String? code, String type) {
    return repoExecute<PaginatedResponse<List<ChannelTypeModel>>>(
        () async => remoteDataSource.getChannelTypeList(code, type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ChannelTypeModel>>>>
      getChannelFilterList(List<String> code, String id, String option) {
    return repoExecute<PaginatedResponse<List<ChannelTypeModel>>>(
        () async => remoteDataSource.getChannelFilterList(code, id, option));
  }

  @override
  Future<Either<Failure, StockReadModel>> getStockRead(int? id) {
    return repoExecute<StockReadModel>(
        () async => remoteDataSource.getStockRead(id));
  }

  @override
  Future<Either<Failure, List<StockTableReadModel>>> getStockTableRead(
      String? code) {
    return repoExecute<List<StockTableReadModel>>(
        () async => remoteDataSource.getStockTableRead(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<StockVerticalReadModel>>>>
      getStockList(String? code) {
    return repoExecute<PaginatedResponse<List<StockVerticalReadModel>>>(
        () async => remoteDataSource.getStockList(code));
  }

  @override
  Future<Either<Failure, channelAllocatesRead>> getChannelRead(int? id) {
    return repoExecute<channelAllocatesRead>(
        () async => remoteDataSource.getChannelRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSChannelPosts(
      ChannelPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postSChannelPosts(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ChanmneStockListModelModel>>>>
      getChannelAllocationList(int? code) {
    return repoExecute<PaginatedResponse<List<ChanmneStockListModelModel>>>(
        () async => remoteDataSource.getChannelAllocationList(code));
  }

  @override
  Future<Either<Failure, ChannelAllocationStockStockReadModel>>
      getChannelStockAllocationRead(int? id, int? channelId) {
    return repoExecute<ChannelAllocationStockStockReadModel>(() async =>
        remoteDataSource.getChannelStockAllocationRead(id, channelId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> channelStockAllocationPatch(
      ChannelAllocationStockStockReadModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.channelStockAllocationPatch(model, id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ChannelListModel>>>>
      getChannelList(
    String? channelType,
    int? id,
  ) {
    return repoExecute<PaginatedResponse<List<ChannelListModel>>>(
        () async => remoteDataSource.getChannelList(channelType, id));
  }

  @override
  Future<Either<Failure, ChannelListModel>> getChannelAllocationRead(
      int? id, int? channelId) {
    return repoExecute<ChannelListModel>(
        () async => remoteDataSource.getChannelAllocationRead(id, channelId));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<FrameWorkListModel>>>>
      getFrameWorklist(String? filter) {
    return repoExecute<PaginatedResponse<List<FrameWorkListModel>>>(
        () async => remoteDataSource.getFrameWorklist(filter));
  }

  @override
  Future<Either<Failure, DoubleResponse>> channel2StockAllocationPatch(
      ChannelListModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.channel2StockAllocationPatch(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateFrameWork(
    VariantFrameWorkPostModel model,
  ) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postCreateFrameWork(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateCostingType(
      String typeName, String description, String createdBy,
      {int? id}) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource
        .postCreateCostingType(typeName, description, createdBy, id: id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<CostingMetodTypePostModel>>>>
      getCostingTypeList(String? code) {
    return repoExecute<PaginatedResponse<List<CostingMetodTypePostModel>>>(
        () async => remoteDataSource.getCostingTypeList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPatchCostingType(int? verticalId,
      String typeName, String description, String createdBy, bool? isActive,
      {int? id}) {
    return repoExecute<DoubleResponse>(() async =>
        remoteDataSource.postPatchCostingType(
            verticalId, typeName, description, createdBy, isActive,
            id: id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> CostingDelete(int? id,
      {String? type}) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.CostingDelete(id, type: type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<CostingCreatePostModel>>>>
      getCostingCreateList(String? code) {
    return repoExecute<PaginatedResponse<List<CostingCreatePostModel>>>(
        () async => remoteDataSource.getCostingCreateList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPatchCostingCreate(
      int? verticalId,
      String typeName,
      String description,
      String createdBy,
      bool? isActive) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPatchpostPatchCostingCreateCostingType(
              verticalId,
              typeName,
              description,
              createdBy,
              isActive,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PricingGroupListModel>>>>
      getPricingGroupList(String? code) {
    return repoExecute<PaginatedResponse<List<PricingGroupListModel>>>(
        () async => remoteDataSource.getPricingGroupList(code));
  }

  @override
  Future<Either<Failure, CostingCreatePostModel>> getCostMethodRead(int? id) {
    return repoExecute<CostingCreatePostModel>(
        () async => remoteDataSource.getCostMethodRead(id));
  }

  @override
  Future<Either<Failure, CostingMetodTypePostModel>> getCostMethodTypeRead(
      int? id) {
    return repoExecute<CostingMetodTypePostModel>(
        () async => remoteDataSource.getCostMethodTypeRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPricingGroupType(
      PricingGroupListModel model,
      {int? type}) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPricingGroupType(model, type: type));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchPricingGroupType(
      PricingGroupListModel model, int? id,
      {int? type}) {
    return repoExecute<DoubleResponse>(() async =>
        remoteDataSource.patchPricingGroupType(model, id, type: type));
  }

  @override
  Future<Either<Failure, PricingGroupListModel>> getPricingRead(int? id) {
    return repoExecute<PricingGroupListModel>(
        () async => remoteDataSource.getPricingRead(id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PricingTypeListModel>>>>
      getPricingList(String? code) {
    return repoExecute<PaginatedResponse<List<PricingTypeListModel>>>(
        () async => remoteDataSource.getPricingList(code));
  }

  @override
  Future<Either<Failure, PricingTypeListModel>> getPricingGroupRead(int? id) {
    return repoExecute<PricingTypeListModel>(
        () async => remoteDataSource.getPricingGroupRead(id));
    ;
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchPricingGroup(
      PricingTypeListModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.patchPricingGroup(
              model,
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPricingGroup(
      PricingTypeListModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPricingGroup(
              model,
            ));
  }

  @override
  Future<Either<Failure, List<ListingChnanelTableModel>>>
      getChannelStockTableRead(int? id) {
    return repoExecute<List<ListingChnanelTableModel>>(
        () async => remoteDataSource.getChannelStockTableRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCosting(
      CostingPageCreationPostModel model) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource.postCosting(
          model,
        ));
  }

  @override
  Future<Either<Failure, CostingPageCreationPostModel>> getCostingRead(
      int? id) {
    return repoExecute<CostingPageCreationPostModel>(
        () async => remoteDataSource.getCostingRead(id));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getPricingPgtype() {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getPricingPgtype());
  }

  @override
  Future<Either<Failure, DoubleResponse>> percentageGp(
      int? id, String? gpType) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.percentageGp(id, gpType));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchCosting(
      CostingPageCreationPostModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.patchCosting(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postFrameWorkCreate(
      VariantFrameworkPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postFrameWorkCreate(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<AttributeListModel>>>>
      getAttributeList(String? code) {
    return repoExecute<PaginatedResponse<List<AttributeListModel>>>(
        () async => remoteDataSource.getAttributeList(
              code,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPatchFrameWork(
      VariantFrameWorkPostModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPatchFrameWork(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCombinationFrameWork(
      {String? itemCode,
      String? variantCode,
      String? uomCode,
      List<List<Map<String, dynamic>>>? variantlist}) {
    return repoExecute<DoubleResponse>(() async =>
        remoteDataSource.postCombinationFrameWork(
            itemCode: itemCode,
            variantCode: variantCode,
            uomCode: uomCode,
            variantlist: variantlist));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getVirtualStiocktype() {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getVirtualStiocktype());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postStock(StockData model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postStock(model));
  }

  @override
  Future<Either<Failure, List<LinkedItemListIdModel>>> getLinkedItemListRead(
      String? code) {
    return repoExecute<List<LinkedItemListIdModel>>(
        () async => remoteDataSource.getLinkedItemListRead(
              code,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postLinkedItem(
      LinkedItemPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postLinkedItem(model));
  }

  @override
  Future<Either<Failure, LinkedItemPostModel>> getLinkedItem(int? id) {
    return repoExecute<LinkedItemPostModel>(
        () async => remoteDataSource.getLinkedItem(
              id,
            ));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<LinkedItemListIdModel>>>>
      getLinkedItemList(String? filter) {
    return repoExecute<PaginatedResponse<List<LinkedItemListIdModel>>>(
        () async => remoteDataSource.getLinkedItemList(filter));
  }

  @override
  Future<Either<Failure, DoubleResponse>> patchLinkedItem(
      LinkedItemPostModel model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.patchLinkedItem(
              model,
              id,
            ));
  }

  @override
  Future<Either<Failure, VariantFrameWorkPostModel>> getFrameWorkRead(int? id) {
    return repoExecute<VariantFrameWorkPostModel>(
        () async => remoteDataSource.getFrameWorkRead(
              id,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getQrCodeRead(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.getQrCodeRead(
              id,
            ));
  }
}
