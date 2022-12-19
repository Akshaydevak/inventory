import 'package:dio/dio.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/model/creation_custom_model.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/model/creationmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/images.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';

import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
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
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingpagecreation.dart';
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
import 'package:inventory/Screens/variant/variantdetails/model/vendormodel.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/purchaseordertype/purchaseordertype.dart';
import '../../sales/general/model/sales_general_post.dart';
import 'model/purchaseinvoice.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'model/purchasereturninvoicemodel.dart';

abstract class PurchaseSourceAbstract {
  Future<DoubleResponse> signUp(RegisterModel model);
  Future<DoubleResponse> otpReg(
      String email, String mobile, String key, String cratedCode);
  Future<DoubleResponse> getLogin(
      String username, String password, String empCode);
  Future<List<PurchaseInvoice>> getPurchaseInvoice();
  Future<PurchaseReturnGeneralRead> getGeneralInvoiceRead(int? id);
  Future<DoubleResponse> postGeneral(PurchaseReturnGeneralPost model);
  Future<PaginatedResponse<List<PurchaseOrder>>> getGeneralVertical();
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(
    String? code,
  );
  Future<ReturnGeneralRead> getGeneralPurchaseReturnRead(int id);
  Future<DoubleResponse> getGeneralFormPatch(
      ReturnGeneralPatchModel model, int? id);
  Future<DoubleResponse> returnGeneralDelete(int? id);
  Future<PurchaseInvoiceReadModel> getInvoiceRead(int id);
  Future<DoubleResponse> invoicePost(PurchaseReturnInvoicePostModel model);
  //Sales General Screennnn
  Future<DoubleResponse> postSalesGeneral(SalesGeneralPostModel model);
  Future<DoubleResponse> postShippinAddress(ShippingAddressCreationModel model);
  Future<DoubleResponse> postCustomerIdCreation(CustomerIdCreationUpdateModel model);
  Future<PaginatedResponse<List<salesOrderTypeModel>>>
      getSalesGeneralVertical();
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getSalesSearch(
    String? code,
  );
  Future<PurchaseOrdertype> getSalesOrdertype({String? type});
  Future<SalesGeneralReadModel> getSalesGenralRead(int id);
  Future<DoubleResponse> salesGeneralDelete(int? id);
  Future<DoubleResponse> getSalesGeneralPatch(
      SalesGeneralPostModel model, int? id);
  Future<PaginatedResponse<List<ShippingAddressModel>>> getShippingId(String code,{String ? id});
  Future<PaginatedResponse<List<CustomerIdListModel>>> getCustomerId(String? code);
//Sales invoice screen*******************************
  Future<SalesReturnInvoiceReadModel> getSalesInvoiceRead(int id);
  Future<DoubleResponse> postSalesInvoice(SalesReturnInvoicePostModel model);
//salesreturgeneral
  Future<PaginatedResponse<List<salesOrderTypeModel>>>
      getSalesReturnGeneralVertical();
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getSalesReturnSearch(
    String? code,
  );
  Future<DoubleResponse> postSalesReturnGeneral(
      SalesReturnGeneralPostModel model);
  Future<List<SalesInvoiceCodeModel>> getInvoiceCode();
  Future<SalesReturnGeneralInvoiceReadModel> getSalesReturnGeneralInvoiceRead(
      int? id);
  Future<SalesReturnGeneralPostModel> getSalesReturnGeneralRead(int? id);
  Future<DoubleResponse> salesreturnGeneralDelete(int? id);
  Future<DoubleResponse> postSalesRequestGeneralPatch(
      SalesReturnGeneralPostModel model, int? id);
  //Sales return  invoice read++++++++++
  Future<SalesReturnInvoiceReadModel2> getSalesReturnInvoiceRead(int? id);
  Future<DoubleResponse> postSalesReturnInvoice(
      SalesReturnInvoicePostModel2 model);
  //productmodule****************************
  Future<List<BrandListModel>> getBrandList();
  Future<DoubleResponse> postCreateBrand(BrandCreationtModel model);
  Future<DoubleResponse> postImage(String? imageNmae, String ImageEncode,
      {String type});
  Future<PaginatedResponse<List<BrandListModel>>> getlistBrand(String? code);
  Future<BrandReadModel> getBrandRead(int? id);
  Future<DoubleResponse> brandDelete(int? id);
  Future<DoubleResponse> postBrandPatch(BrandCreationtModel model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> searchMaterialList(
      String? code,{String ? page});
  Future<DoubleResponse> postCreateMaterial(MaterialCreationtModel model);
  Future<MaterialReadModel> getMaterialRead(int? id);
  Future<DoubleResponse> postmaterialPatch(MaterialReadModel model, int? id);
  Future<DoubleResponse> materialDelete(int? id, String type);
  Future<PaginatedResponse<List<BrandListModel>>> getDevisionList(String? code);
  Future<DoubleResponse> postCreateDevision(
      MaterialCreationtModel model, String type);
  Future<DevisionReadModel> getDivisionRead(int? id, String type);
  Future<DoubleResponse> postDivisionPatch(
      DevisionReadModel model, int? id, String type);
  Future<PaginatedResponse<List<BrandListModel>>> getStaticList(String? code);
  Future<DoubleResponse> postCreateUomGroup(
      String description, String name, String shortName);
  Future<PaginatedResponse<List<BrandListModel>>> getUomGroupist(String? code);
  Future<DevisionReadModel> getUomGroupRead(
    int? id,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getCategoryist(String? code,
      {String? type});
  Future<PaginatedResponse<List<BrandListModel>>> getAllCategoryist(String? code);
  Future<DoubleResponse> postCreateCategory(CategoryCreationtModel model);
  Future<CategoryReadModel> getCategoryRead(
    int? id,
  );
  Future<DoubleResponse> postcategoryPatch(
    CategoryCreationtModel model,
    int? id,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getSubCategoryList(
      String? code,{int ? id});
  Future<DoubleResponse> postCreateGroup(
    MaterialCreationtModel model,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getGroupListList(String? code,
      {String? type,int ? id});
  Future<MaterialReadModel> getGroupRead(
    int? id,
  );
  Future<DoubleResponse> postGroupPatch(
    MaterialCreationtModel model,
    int? id,
  );
  Future<DoubleResponse> postCreateBaseUom(BaseUomCreationtModel model);
  Future<PaginatedResponse<List<BrandListModel>>> getUomist(String? code,
      {String? type,int? id});
  Future<BaseUomCreationtModel> getBaseUomRead(
    int? id,
  );
  Future<DoubleResponse> postUomPatch(BaseUomCreationtModel model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getItemListList(String? code);
  Future<DoubleResponse> postCreateItem(ItemCreationModel model);
  Future<ItemReadModel> getItemRead(
    int? id,
  );
  Future<DoubleResponse> postItemPatch(ItemReadModel model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getVariantList(String? code,
      {String? type});
  Future<VariantReadModel> getVariantRead(
    int? id,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getSalesList(String? code,
      {String? type, int? id});
  Future<PaginatedResponse<List<BrandListModel>>> searchVariantList(
      String? code,
      {String? type});
  Future<DoubleResponse> postVariant(VariantPost model, int? id);
  Future<DoubleResponse> patchVariant(VariantPatch model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getVariantCreationList(
      String? code);
  Future<PaginatedResponse<List<BrandListModel>>> getVariantSelectionList(
      String? code, int? item);
  Future<VariantCreationReadModel> getVariantCreationRead(int? id);
  Future<List<VariantCreationRead2Model>> getVariantCreationRead2(String? id);
  Future<PaginatedResponse<List<ChannelTypeModel>>> getChannelTypeList(
      String? code, String type);
  Future<PaginatedResponse<List<ChannelTypeModel>>> getChannelFilterList(
      List<String> code, String id, String option);
  Future<StockReadModel> getStockRead(int? id);
  Future<List<StockTableReadModel>> getStockTableRead(String? code);
  Future<PaginatedResponse<List<StockVerticalReadModel>>> getStockList(
    String? code,
  );
  Future<channelAllocatesRead> getChannelRead(
    int? id,
  );
  Future<DoubleResponse> postSChannelPosts(ChannelPostModel model);
  Future<PaginatedResponse<List<ChanmneStockListModelModel>>>
      getChannelAllocationList(
    int? code,
  );
  Future<ChannelAllocationStockStockReadModel> getChannelStockAllocationRead(
      int? id, int? channelId);
  Future<DoubleResponse> channelStockAllocationPatch(
      ChannelAllocationStockStockReadModel model, int? id);
  Future<PaginatedResponse<List<ChannelListModel>>> getChannelList(
    String? channelType,
    int? id,
  );
  Future<ChannelListModel> getChannelAllocationRead(int? id, int? channelId);
  Future<PaginatedResponse<List<FrameWorkListModel>>> getFrameWorklist(
      String? filter);
  Future<DoubleResponse> channel2StockAllocationPatch(
      ChannelListModel model, int? id);
  Future<DoubleResponse> postCreateFrameWork(VariantFrameWorkPostModel model);
  Future<DoubleResponse> postCreateCostingType(
      String typeName, String description, String createdBy,
      {int? id});
  Future<PaginatedResponse<List<CostingMetodTypePostModel>>> getCostingTypeList(
      String? code);
  Future<DoubleResponse> postPatchCostingType(int? verticalId, String typeName,
      String description, String createdBy, bool? isActive,
      {int? id});
  Future<DoubleResponse> CostingDelete(int? id, {String? type});
  Future<PaginatedResponse<List<CostingCreatePostModel>>> getCostingCreateList(
      String? code);
  Future<DoubleResponse> postPatchpostPatchCostingCreateCostingType(
    int? verticalId,
      int? typeId,
    String typeName,
    String description,
    String createdBy,
    bool? isActive,
  );
  Future<PaginatedResponse<List<PricingGroupListModel>>> getPricingGroupList(
      String? code);
  Future<CostingCreatePostModel> getCostMethodRead(int? id);
  Future<CostingMetodTypePostModel> getCostMethodTypeRead(int? id);
  Future<DoubleResponse> postPricingGroupType(PricingGroupListModel model,
      {int? type});
  Future<DoubleResponse> patchPricingGroupType(
      PricingGroupListModel model, int? id,
      {int? type});
  Future<PricingGroupListModel> getPricingRead(int? id);
  Future<PaginatedResponse<List<PricingTypeListModel>>> getPricingList(
      String? code);
  Future<PricingTypeListModel> getPricingGroupRead(int? id);
  Future<DoubleResponse> patchPricingGroup(PricingTypeListModel model, int? id,
      {int? type});
  Future<DoubleResponse> postPricingGroup(PricingTypeListModel model,
      {int? type});
  Future<List<ListingChnanelTableModel>> getChannelStockTableRead(int? id);
  Future<DoubleResponse> postCosting(
    CostingPageCreationPostModel model,
  );
  Future<CostingPageCreationPostModel> getCostingRead(int? id);
  Future<PurchaseOrdertype> getPricingPgtype();
  Future<DoubleResponse> percentageGp(int? id, String? gpType);
  Future<DoubleResponse> patchCosting(
      CostingPageCreationPostModel model, int? id);
  Future<DoubleResponse> postFrameWorkCreate(VariantFrameworkPostModel model);
  Future<PaginatedResponse<List<AttributeListModel>>> getAttributeList(
    String? code,
  );
  Future<DoubleResponse> postPatchFrameWork(
      VariantFrameWorkPostModel model, int? id);
  Future<DoubleResponse> postCombinationFrameWork(
      {String? itemCode,
      String? variantCode,
      String? uomCode,
        List< dynamic>? variantlist});
  Future<PurchaseOrdertype> getVirtualStiocktype();

  Future<DoubleResponse> postStock(
    StockData model,
  );
  Future<List<LinkedItemListIdModel>> getLinkedItemListRead(
    String? code,
  );
  Future<DoubleResponse> postLinkedItem(LinkedItemPostModel model);
  Future<LinkedItemPostModel> getLinkedItem(
    int? id,
  );
  Future<PaginatedResponse<List<LinkedItemListIdModel>>> getLinkedItemList(
      String? filter);
  Future<DoubleResponse> patchLinkedItem(LinkedItemPostModel model, int? id);
  Future<VariantFrameWorkPostModel> getFrameWorkRead(
    int? id,
  );
  Future<DoubleResponse> getQrCodeRead(int? id);
  Future<PaginatedResponse<List<VendorDetailsModel>>> getVendorDetailList(
    String? code,
  );
  Future<List<VariantReadModel>> getProducedCountry(String ? code);
  Future<List<StateList>> getStateList(String ? code);
  //Custome Page++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Future<DoubleResponse> postCreateCustom(CustomCreationtModel model);
  Future<DoubleResponse> patchCreateCustom(CustomCreationtModel model,int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getCustomVerticalList(String? code,
      );
  Future<ReadCustomModel> getCustomRead(
      int? id,
      );
  Future<ReadCustomModel> getReturnRead(

      );
  //:::::::::::Division Config+++++++++++++++++++++++++
  Future<DoubleResponse> postCreateDivisionConfig(DivisionCreationtModel model);
  Future<PaginatedResponse<List<BrandListModel>>> getDivisionVerticalList(String? code,
      );

  Future<DivisionReadModel> getDivisionConfigRead(
      int? id,
      );
  Future<DoubleResponse> patchDivisionConfig(DivisionCreationtModel model,int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getUomDivisionList(String? code,
      {String? type, int? id});
  Future<PaginatedResponse<List<BrandListModel>>> getGroupList(String? code,
      {String? type, int? id});
  Future<PaginatedResponse<List<BrandListModel>>> getCategoryList(String? code,
      {String? type, int? id});
  Future<CostingPageCreationPostModel> getChannelCostingRead(int? id);
}

class PurchaseSourceImpl extends PurchaseSourceAbstract {
  Dio client = Dio();

  String? token = "";

  @override
  Future<List<PurchaseInvoice>> getPurchaseInvoice() async {
    String path =
        purchaseReturnPurchaseInvoiceidReadApi + Variable.inventory_ID;

    print(path);

    try {
      final response = await client.get(
        path,
        // data:
        // // {"payment_status": "completed", "order_status": "completed"},
        // {
        //
        // },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responseAkshay" + response.toString());
      //print(response.data['results']);
      List<PurchaseInvoice> items = [];
      print("akkk");
      print("nmml" + response.data.toString());

      (response.data['data']['results'] as List).forEach((element) {
        // print("data");

        items.add(PurchaseInvoice.fromJson(element));
        print("items" + items.toString());
      });
      return items;
    } catch (e) {
      print("the error is" + e.toString());
    }

    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responseAkshay" + response.toString());
    //print(response.data['results']);
    List<PurchaseInvoice> items = [];
    print("akkk");
    print("nmml" + response.data.toString());

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(PurchaseInvoice.fromJson(element));
      print("items" + items.toString());
    });
    return items;
  }

  @override
  Future<PurchaseReturnGeneralRead> getGeneralInvoiceRead(int? id) async {
    print("Akshaytttttttt" + id.toString());
    print(
        "https://api-purchase-order-staging.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id");
    try {
      String path =
          "https://api-purchase-order-staging.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id";
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      // print("responsesssssd" + response.toString());
      PurchaseReturnGeneralRead dataa =
          PurchaseReturnGeneralRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }
    String path =
        "https://invtry-purchase-return.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id";
    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("responsesssssd" + response.toString());
    PurchaseReturnGeneralRead dataa =
        PurchaseReturnGeneralRead.fromJson(response.data['data']);
    // print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postGeneral(PurchaseReturnGeneralPost model) async {
    print(purchaseReturnGeneralPost);
    try {
      final response = await client.post(purchaseReturnGeneralPost,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(purchaseReturnGeneralPost,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getGeneralVertical() async {
    String path =
        purchaseReturnGeneralVerticalListApi + Variable.inventory_ID.toString();
    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PurchaseOrder> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PurchaseOrder.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<PurchaseOrder>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? code) async {
    String path =listpurchaseReturnGeneralApi+Variable.inventory_ID.toString()+"?$code";

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PurchaseOrder> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PurchaseOrder.fromJson(element));
    });
    print("dataitemss" + items.toString());
    return PaginatedResponse<List<PurchaseOrder>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']

    );
  }

  @override
  Future<ReturnGeneralRead> getGeneralPurchaseReturnRead(int id) async {
    print("sssshamna" + id.toString());
    String path = purchaseReturnGeneralreadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      // print("responsesssssd" + response.toString());
      ReturnGeneralRead dataa =
          ReturnGeneralRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("responsesssssd" + response.toString());
    ReturnGeneralRead dataa = ReturnGeneralRead.fromJson(response.data['data']);
    // print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> getGeneralFormPatch(
      ReturnGeneralPatchModel model, int? id) async {
    print("searching" + model.toString());
    String path = purchaseReturnGeneralPatchApi + id.toString();
    print("asss" + path.toString());
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> returnGeneralDelete(int? id) async {
    String path = purchaseReturnGeneralPatchApi + id.toString();
    print(path);

    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PurchaseInvoiceReadModel> getInvoiceRead(int id) async {
    String path = purchaseReturnInvoiceRead + id.toString();
    print(path);

    try {
      print(path);
      final response = await client.get(
        path,
        // data:
        // // {"payment_status": "completed", "order_status": "completed"},
        // {
        //
        // },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      PurchaseInvoiceReadModel dataa =
          PurchaseInvoiceReadModel.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("responsesssssd" + response.toString());
    PurchaseInvoiceReadModel dataa =
        PurchaseInvoiceReadModel.fromJson(response.data['data']);
    // print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> invoicePost(
      PurchaseReturnInvoicePostModel model) async {
    print("akkkaaa" + model.toString());
    print(purchaseReturnInvoicelPost);
    try {
      final response = await client.post(purchaseReturnInvoicelPost,
          data: model.toJson(),
          // data: {
          //
          //   "purchase_invoice_id": "test",
          //   "return_order_code":"XDGM4BLUCX",
          //   "inventory_id": "test",
          //   "invoiced_by": "test",
          //   "vendor_id": "test",
          //   "notes": "test",
          //   "remarks": "test",
          //   "unit_cost": 100,
          //   "foc": 100,
          //   "discount": 100,
          //   "grand_total": 100,
          //   "vatable_amount": 100,
          //   "excess_tax": 100,
          //   "actual_cost": 100,
          //   "vat": 100,
          //   "vendor_trn_number": "100",
          //   "purchase_return_order_id": 100,
          //   "invoice_lines":[{
          //     "return_order_line_code":"SZ6VTDTEOH",
          //     "is_invoiced":true,
          //     "purchase_invoice_line_id":"977FWCJCYP",
          //     "variant_id":"gcvd",
          //     "variant_name":"test",
          //     "total_qty":1,
          //     "unit_cost":100,
          //     "is_free":true,
          //     "purchase_uom":"sdmchbd",
          //     "supplier_code":"djhcb",
          //     "barcode":"dchjbdhj",
          //     "grand_total":100,
          //     "vat":100,
          //     "actual_cost":100,
          //     "excess_tax":100,
          //     "vatable_amount":100,
          //     "discount":100,
          //     "foc":100
          //   }]
          // },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("akshayaaa" + e.toString());
    }
    final response = await client.post(purchaseReturnInvoicelPost,
        data: model.toJson(),
        //     data: {
        //
        // "purchase_invoice_id": "test",
        // "return_order_code":"XDGM4BLUCX",
        // "inventory_id": "test",
        // "invoiced_by": "test",
        // "vendor_id": "test",
        // "notes": "test",
        // "remarks": "test",
        // "unit_cost": 100,
        // "foc": 100,
        // "discount": 100,
        // "grand_total": 100,
        // "vatable_amount": 100,
        // "excess_tax": 100,
        // "actual_cost": 100,
        // "vat": 100,
        // "vendor_trn_number": "100",
        // "purchase_return_order_id": 100,
        // "invoice_lines":[{
        // "return_order_line_code":"SZ6VTDTEOH",
        // "is_invoiced":true,
        // "purchase_invoice_line_id":"977FWCJCYP",
        // "variant_id":"gcvd",
        // "variant_name":"test",
        // "total_qty":1,
        // "unit_cost":100,
        // "is_free":true,
        // "purchase_uom":"sdmchbd",
        // "supplier_code":"djhcb",
        // "barcode":"dchjbdhj",
        // "grand_total":100,
        // "vat":100,
        // "actual_cost":100,
        // "excess_tax":100,
        // "vatable_amount":100,
        // "discount":100,
        // "foc":100
        // }]
        // },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postSalesGeneral(model) async {
    print("Salesgeneralpost" + salesGeneralPost.toString());
    try {
      final response = await client.post(salesGeneralPost,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(purchaseReturnGeneralPost,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>>
      getSalesGeneralVertical() async {
    print("baaaat");

    String path = salesGeneralVerticalList + Variable.inventory_ID.toString();
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("akkakkakakakkakak");
    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getSalesSearch(
      String? code) async {
    String path =
        listsalesOederGeneral+"${Variable.verticalid}?$code";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
    });
    print("dataitemss" + items.toString());
    return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']
    );
  }

  @override
  Future<PurchaseOrdertype> getSalesOrdertype({String? type}) async {
    String path = "";
    print("typeeeeeeeeeeeeeeeeeeeeee" + type.toString());
    print(path);
    if (type == "1") {
      path = salesReturnOrderMode;
    } else {
      path = salesGeneralOrderType;
    }

    print("typeeeeeeeeeeeeeeeeeeeeee" + path.toString());

    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("response" + response.toString());
    PurchaseOrdertype ordertype =
        PurchaseOrdertype.fromJson(response.data['data']);
    print(ordertype);
    return ordertype;
  }

  @override
  Future<SalesGeneralReadModel> getSalesGenralRead(int id) async {
    String path = salesGeneralRead + id.toString();
    print(path);

    try {
      print(path);
      final response = await client.get(
        path,
        // data:
        // // {"payment_status": "completed", "order_status": "completed"},
        // {
        //
        // },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      SalesGeneralReadModel dataa =
          SalesGeneralReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    SalesGeneralReadModel dataa =
        SalesGeneralReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> salesGeneralDelete(int? id) async {
    String path = salesGeneralDeleateApi + id.toString();
    print(path);

    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> getSalesGeneralPatch(
      SalesGeneralPostModel model, int? id) async {
    String path = salesGeneralPatchApi + id.toString();
    print(path);
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<SalesReturnInvoiceReadModel> getSalesInvoiceRead(int id) async {
    String path = salesInvoiceReadApi + id.toString();
    print("ppppath" + path.toString());

    try {
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      SalesReturnInvoiceReadModel dataa =
          SalesReturnInvoiceReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("error" + e.toString());
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    SalesReturnInvoiceReadModel dataa =
        SalesReturnInvoiceReadModel.fromJson(response.data['data']);
    print("aksa" + dataa.toString());

    return dataa;
  }

  @override
  Future<DoubleResponse> signUp(RegisterModel model) async {
    String path =
        "https://api-rgc-user.hilalcart.com/user-customer_customerusersignup/inventory";
    print(path);

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> otpReg(
      String email, String mobile, String key, String cratedCode) async {
    String path =
        "https://api-rgc-user.hilalcart.com/user-customer_customerusersignupvarify/inventory";
    print(path);

    final response = await client.post(path,
        data: {
          "email": email,
          "mobile": mobile,
          "key": key,
          "created_code": cratedCode.toString(),
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> getLogin(
      String username, String password, String empCode) async {
    // String path =
    // "https://api-rgc-user.hilalcart.com/user-account_login/inventory";
    String path =
        "https://api-rgc-user.hilalcart.com/user-employee_employeeuserlogin/inventory";
    print(path);

    final response = await client.post(path,
        data: {"email": username, "password": password, "code": empCode},
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("++++++++amnnnannana+++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    RegisterModel dataa = RegisterModel.fromJson(response.data['data']);

    return DoubleResponse(response.data['status'] == 'success', dataa);
    ;
  }

  @override
  Future<PaginatedResponse<List<ShippingAddressModel>>> getShippingId(String? code,{String ? id}) async {
    print("token" + Variable.token.toString());

    UserPreferences().getUser().then((value) {
      token = value.token;
      print("token is here222 exist" + token.toString());
    });
    String path = "";
    code = code == null ? "" : code;

    if (code == "")
      path = shippingListUrl+"?customer_id=$id";
    else
      path = shippingListUrl+"?customer_id=$id && name=$code";
    print(path);

try{
  final response = await client.get(
    path,
    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'token ${token}'
      },
    ),
  );
  print("vp vp vp");
  print("Prabhaakaran" + response.toString());
  //print(response.data['results']);
  List<ShippingAddressModel> items = [];
  print(response.data['data']['customer_user_data']['results']);
  (response.data['data']['results'] as List)
      .forEach((element) {
    // print("data");

    items.add(ShippingAddressModel.fromJson(element));
  });
  return PaginatedResponse<List<ShippingAddressModel>>(
    items,
    response.data['data']['next'],
    response.data['data']['count'].toString(),
    previousUrl: response.data['data']['previous'],
  );
}
catch(e){
  print("the error is$e");
}
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${token}'
        },
      ),
    );
    print("vp vp vp");
    print("Prabhaakaran" + response.toString());
    //print(response.data['results']);
    List<ShippingAddressModel> items = [];
    print(response.data['data']['results']);
    (response.data['data']['results'] as List)
        .forEach((element) {
      // print("data");

      items.add(ShippingAddressModel.fromJson(element));
    });
    return PaginatedResponse<List<ShippingAddressModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<DoubleResponse> postShippinAddress(
      ShippingAddressCreationModel model) async {
    UserPreferences().getUser().then((value) {
      token = value.token;
    });
    String path=shippingCreationUrl;
    print(path);
    print(model);
    try {
      final response = await client.post(
          shippingCreationUrl,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token ${token}'
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(
        "https://api-rgc-user.hilalcart.com/user-general_admin_address/create",
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${token}'
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<CustomerIdListModel>>> getCustomerId(String? code) async {
    // String path =
    //     "https://api-rgc-user.hilalcart.com/user-customer_customeruser/inventory?business_user=True";
    // print(path);

    UserPreferences().getUser().then((value) {
      token = value.token;
    });

    String path = "";
    code = code == null ? "" : code;

    if (code == "")
      path = customIdListUrl;
    else
      path = customIdListUrl+"?$code";
    print("sssssssssssssssssssssss$path");
    try{
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token ${token}'
          },
        ),
      );
      print("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSW");





      List<CustomerIdListModel> items = [];
      print(response.data['data']['results']);
      (response.data['data']['results'] as List)
          .forEach((element) {
        // print("data");

        items.add(CustomerIdListModel.fromJson(element));
      });
      return PaginatedResponse<List<CustomerIdListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
      );
    }
    catch(e){
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${token}'
        },
      ),
    );
    print("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSW");





    List<CustomerIdListModel> items = [];
    print(response.data['data']['results']);
    (response.data['data']['results'] as List)
        .forEach((element) {
      // print("data");

      items.add(CustomerIdListModel.fromJson(element));
    });
    return PaginatedResponse<List<CustomerIdListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<DoubleResponse> postCustomerIdCreation(
      CustomerIdCreationUpdateModel model) async {
    print("Arathiiii");
    String? token;
    UserPreferences().getUser().then((value) {
      token = value.token;
    });
    print("token is here" + token.toString());
    String path=customerCreationApi;
    print(path);
    print(model);

    try {
      final response = await client.post(
          path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token ${token}'
          }));

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(
        path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${token}'
        }));
    print("Akshayyaa");

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postSalesInvoice(
      SalesReturnInvoicePostModel model) async {
    print("invoice" + model.toString());
    print(salesInvoicePostApi);
    List<Postlines> table = [];
    if (model.ivoiceLines?.isNotEmpty == true)
      for (var i = 0; i < model.ivoiceLines!.length; i++)
        table.add(Postlines(
            unitCost: model.ivoiceLines?[i].unitCost ?? 0,
            quantity: model.ivoiceLines?[i].quantity ?? 0,
            warrentyPrice: model.ivoiceLines?[i].warrentyPrice ?? 0,
            excessTax: model.ivoiceLines?[i].excessTax ?? 0,
            vat: model.ivoiceLines?[i].vat ?? 0,
            sellingPrice: model.ivoiceLines?[i].sellingPrice ?? 0,
            totalPrice: model.ivoiceLines?[i].totalPrice ?? 0,
            isInvoiced: model.ivoiceLines?[i].isInvoiced ?? false,
            isActive: model.ivoiceLines?[i].isActive ?? false,
            salesOrderLineCode: model.ivoiceLines?[i].salesOrderLineCode,
            taxableAmoubt: model.ivoiceLines?[i].taxableAmoubt ?? 0));
    try {
      final response = await client.post(
          "https://invtry-sales-order-staging.rgcdynamics.org/sales-invoice/create-sales-invoice",
          data: {
            "sales_order_id": model.salesOrderId,
            "inventory_id": model.inventoryId,
            "invoiced_by": " kj c",
            "notes": model.notes,
            "remarks": model.remarks,
            "assigned_to": model.assignedTo,
            "discount": model.discount,
            "unit_cost": model.unitCost,
            "excess_tax": model.excessTax,
            "taxable_amount": model.taxableAmount,
            "vat": model.vat,
            "selling_price_total": model.sellingPriceTotal,
            "total_price": model.totalPrice,
            "invoice_lines": table
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(
        "https://invtry-sales-order-staging.rgcdynamics.org/sales-invoice/create-sales-invoice",
        data: {
          "sales_order_id": model.salesOrderId,
          "inventory_id": model.inventoryId,
          "invoiced_by": " kj c",
          "notes": model.notes,
          "remarks": model.remarks,
          "assigned_to": model.assignedTo,
          "discount": model.discount,
          "unit_cost": model.unitCost,
          "excess_tax": model.excessTax,
          "taxable_amount": model.taxableAmount,
          "vat": model.vat,
          "selling_price_total": model.sellingPriceTotal,
          "total_price": model.totalPrice,
          "invoice_lines": table
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>>
      getSalesReturnGeneralVertical() async {
    String path = salesReurnVertcalListApi + Variable.inventory_ID.toString();
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("akkakkakakakkakak");
    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getSalesReturnSearch(
      String? code) async {
    String path =
        listsalesReurnApi+"${Variable.verticalid}?code=$code";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
    });
    print("dataitemss" + items.toString());
    return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']
    );
  }

  @override
  Future<DoubleResponse> postSalesReturnGeneral(
      SalesReturnGeneralPostModel model) async {
    print(salesReurnPostApi);
    try {
      final response = await client.post(salesReurnPostApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(salesReurnPostApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<SalesInvoiceCodeModel>> getInvoiceCode() async {
    String path = salesInvoiceCodeApi + Variable.inventory_ID;

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    print("Prabhaakaran");
    print("Prabhaakaran" + response.toString());
    //print(response.data['results']);
    List<SalesInvoiceCodeModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(SalesInvoiceCodeModel.fromJson(element));
    });
    return items;
  }

  @override
  Future<SalesReturnGeneralInvoiceReadModel> getSalesReturnGeneralInvoiceRead(
      int? id) async {
    String path = salesInvoiceRradApi + id.toString();

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      SalesReturnGeneralInvoiceReadModel dataa =
          SalesReturnGeneralInvoiceReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    SalesReturnGeneralInvoiceReadModel dataa =
        SalesReturnGeneralInvoiceReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<SalesReturnGeneralPostModel> getSalesReturnGeneralRead(int? id) async {
    String path = salesReturnInvoiceRradApi + id.toString();

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      SalesReturnGeneralPostModel dataa =
          SalesReturnGeneralPostModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    SalesReturnGeneralPostModel dataa =
        SalesReturnGeneralPostModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> salesreturnGeneralDelete(int? id) async {
    String path = salesReturnInvoiceDeletedApi + id.toString();
    print(path);

    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postSalesRequestGeneralPatch(
      SalesReturnGeneralPostModel model, int? id) async {
    String path = salesReturngeneralPAtchApi + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("+++++++++++");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }catch(e){
      print("the error is here going to be"+e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<SalesReturnInvoiceReadModel2> getSalesReturnInvoiceRead(
      int? id) async {
    String path = salesReturnInvoiceReadApi + id.toString();

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      SalesReturnInvoiceReadModel2 dataa =
          SalesReturnInvoiceReadModel2.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    SalesReturnInvoiceReadModel2 dataa =
        SalesReturnInvoiceReadModel2.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postSalesReturnInvoice(
      SalesReturnInvoicePostModel2 model) async {
    try {
      final response = await client.post(salesReturnInvoicePostApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(salesReturnInvoicePostApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<BrandListModel>> getBrandList() async {
    String path =
        "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-brand";
    print(path);

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    print("Apppapappapa" + response.data['results'].toString());
    List<BrandListModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(BrandListModel.fromJson(element));
    });

    return items;
  }

  @override
  Future<DoubleResponse> postCreateBrand(BrandCreationtModel model) async {
    print(brandCreateApi);
    try {
      final response = await client.post(brandCreateApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(brandCreateApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postImage(String? imageNmae, String ImageEncode,
      {String? type}) async {
    String path = imagePostApi;
    print(path);

    final response = await client.post(path,
        data: {"image_name": imageNmae, "image_encode": ImageEncode},
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data["data"]);

    print("ananan" + type.toString());
    if (type != null || type != "") {
      switch (type) {
        case 'image1':
          print("ist image");
          Variable.img1 = response.data["data"];
          //  print(Variable.img1);
          //   Variable.img?.image1 != response.data["data"];

          break;

        case 'image2':
          print('2st image');
          // Variable.img= ImagesModel(image2: response.data);
          Variable.img2 = response.data["data"];
          break;

        case 'image3':
          print('3st image');
          // Variable.img= ImagesModel(image3: response.data);
          Variable.img3 = response.data["data"];
          break;
        case 'image4':
          print('4st image');
          // Variable.img= ImagesModel(itemCatelog1: response.data);
          Variable.img4 = response.data["data"];
          break;
        case 'image5':
          print('5st image');
          // Variable.img= ImagesModel(itemCatelog2: response.data);
          Variable.img5 = response.data["data"];
          break;
        case 'image6':
          print('6st image');
          // Variable.img= ImagesModel(itemCatelog3: response.data);
          Variable.img6 = response.data["data"];
          break;
        case 'image7':
          print('7st image');
          // Variable.img= ImagesModel(itemCatelog4: response.data);
          Variable.img7 = response.data["data"];
          break;
        case 'image8':
          print('8st image');
          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.img8 = response.data["data"];
          break;
        case '1':
          print('8st image');
          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog1 = response.data["data"];
          break;
        case '2':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog2 = response.data["data"];
          break;
        case '3':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog3 = response.data["data"];
          break;
        case '4':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog4 = response.data["data"];
          break;
        case '5':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog5 = response.data["data"];
          break;
        case '6':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog6 = response.data["data"];
          break;
        case '7':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog7 = response.data["data"];
          break;
        case '8':

          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog8 = response.data["data"];
          break;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getlistBrand(
      String? code) async {
    print("avavava");
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listBrandApi;
    else
      path = listBrandApi + "?$code";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<BrandReadModel> getBrandRead(int? id) async {
    String path = brandReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      BrandReadModel dataa = BrandReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    BrandReadModel dataa = BrandReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> brandDelete(int? id) async {
    String path = brandDeleteApi + id.toString();
    print(path);

    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postBrandPatch(
      BrandCreationtModel model, int? id) async {
    // TODO: implement postBrandPatch
    print("searching" + model.toString());
    String path = brandPatchApi + id.toString();
    print("asss" + path.toString());
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> searchMaterialList(
      String? code,{String ? page}) async {
    print("avavava");
    print(page);
    code = code == null ? "" : code;


      String path;



      if (code == "")
        path = listMaterialGroupApi;
      else
        path = listMaterialGroupApi + "?$code";

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("material"+path.toString());

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],

    );
  }

  @override
  Future<DoubleResponse> postCreateMaterial(
      MaterialCreationtModel model) async {
    print(createMaterialApi);
    try {
      final response = await client.post(createMaterialApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(createMaterialApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<MaterialReadModel> getMaterialRead(int? id) async {
    String path = readMaterialApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      MaterialReadModel dataa =
          MaterialReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    MaterialReadModel dataa = MaterialReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postmaterialPatch(
      MaterialReadModel model, int? id) async {
    // TODO: implement postmaterialPatch
    print("searching" + model.toString());
    String path = patchMaterialApi + id.toString();
    print("asss" + path.toString());
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> materialDelete(int? id, String type) async {
    String url = "";
    String path = "";
    print(path);

    switch (type) {
      case "material":
        {
          url = deleteMaterialApi;
        }
        break;

      case "division":
        {
          url = deleteDivisionApi;
        }

        break;
      case "static":
        {
          url = deleteStaticApi;
        }

        break;
      case "Uom_group":
        {
          url = deleteUomGroupApi;
        }

        break;

      case "Category_Popup":
        {
          url = deleteCategoryGroupApi;
        }

        break;

      case "Group_popup":
        {
          url = deleteGroupApi;
        }

        break;
      case "Uom":
        {
          url = readBaseUomGroupApi;
        }

        break;
      case "item_create":
        {
          url = readItemApi;
        }

        break;
      case "framework_delete":
        {
          url = frameworkDeleteApi;
        }

        break;
    }
    path = url + id.toString();
    print(path);
    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getDevisionList(
      String? code) async {
    print("appuram");
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listDevisionApi;
    else
      path = listDevisionApi + "?$code";

    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    print("appuram" + response.data.toString());

    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
    });
    print("apuuram 5" + items.toString());
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],

    );
  }

  @override
  Future<DoubleResponse> postCreateDevision(
      MaterialCreationtModel model, String type) async {
    String path = "";

    switch (type) {
      case "static":
        {
          path = createStaticApi;
        }
        break;

      case "division":
        {
          path = createDivisionApi;
        }
        break;
    }
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DevisionReadModel> getDivisionRead(int? id, String type) async {
    String path = "";
    String url = "";

    switch (type) {
      case "static":
        {
          url = readStaticApi;
        }
        break;

      case "division":
        {
          url = readDivisionApi;
        }
        break;
    }
    path = url + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      DevisionReadModel dataa =
          DevisionReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    DevisionReadModel dataa = DevisionReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> postDivisionPatch(
      DevisionReadModel model, int? id, String type) async {
    String path = "";
    String url = "";

    switch (type) {
      case "static":
        {
          url = patchStaticApi;
        }
        break;

      case "division":
        {
          url = patchDivisionApi;
        }
        break;
      case "Uom_goup":
        {
          url = patchUomGroupApi;
        }
        break;
    }
    path = url + id.toString();

    print(path);
    print("asss" + path.toString());
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getStaticList(
      String? code) async {
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listStaticApi;
    else
      path = listStaticApi + "?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);

  }

  @override
  Future<DoubleResponse> postCreateUomGroup(
      String description, String name, String shortName) async {
    String path = uomGroupCreateApi;
    print(uomGroupCreateApi);
    try {
      final response = await client.post(path,
          data: {
            "description": description,
            "name": name,
            "short_name": shortName
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: {
          "description": description,
          "name": name,
          "short_name": shortName
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getUomGroupist(
      String? code) async {
    print("filter2" + code.toString());
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listUomGroupApi;
    else
      path = listUomGroupApi + "?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<DevisionReadModel> getUomGroupRead(int? id) async {
    String path = readUomGroupApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      DevisionReadModel dataa =
          DevisionReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.toString());
    DevisionReadModel dataa = DevisionReadModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getCategoryist(String? code,
      {String? type,int ?id}) async {
    print(code);
    print("akakka" + id.toString());
    String path = "";


    code = code == null ? "" : code;
    if (type == null || type == "") {
      if (code == "")
        path = listCategoryGroupApi + id.toString();
      else
        path = listCategoryGroupApi +
            id.toString() +
            "?$code";
    } else if (type == "all") {
      print("entered to All case");
      print(code);
      if (code == "")
        path = listCategoryAllGroupApi;
      else
        path = listCategoryAllGroupApi + "?$code";
    }
    print("Searching path" + path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    print("searching case" + response.data['data']['results'].toString());
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );

  }

  @override
  Future<DoubleResponse> postCreateCategory(
      CategoryCreationtModel model) async {
    String path = createCategoryGroupApi;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<CategoryReadModel> getCategoryRead(int? id) async {
    String path = readCategoryGroupApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      CategoryReadModel dataa =
          CategoryReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("DATATHE HANGING " + response.toString());
    CategoryReadModel dataa = CategoryReadModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> postcategoryPatch(
      CategoryCreationtModel model, int? id) async {
    String path = deleteCategoryGroupApi + id.toString();
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getSubCategoryList(
      String? code,{int? id }) async {
    print("enterdAAAAAAAAAAAAAAA");
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listSubCategoryGroupApi + id.toString();
    else
      path = listSubCategoryGroupApi + id.toString() +"?$code";


    print("the existing path"+path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<DoubleResponse> postCreateGroup(MaterialCreationtModel model) async {
    String path = createGroupApi;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getGroupListList(String? code,
      {String? type,int ? id}) async {
    String path;
    print("ttttppp" + type.toString());

    if (type == "all") {
      code = code == null ? "" : code;

      if (code == "")
        path = listAllGroupApi;
      else
        path = listAllGroupApi + "?$code";
    } else {
      code = code == null ? "" : code;

      if (code == ""){


          path = listGroupApi + id.toString();



          }



      else {


          path = listGroupApi + id.toString() + "?$code";


      }
    }
    print("patheeeeeeeeeeeeeeee"+path.toString());

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<MaterialReadModel> getGroupRead(int? id) async {
    String path = readGroupApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      MaterialReadModel dataa =
          MaterialReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.toString());
    MaterialReadModel dataa = MaterialReadModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> postGroupPatch(
      MaterialCreationtModel model, int? id) async {
    String path = patchGroupApi + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCreateBaseUom(BaseUomCreationtModel model) async {
    // TODO: implement postCreateBaseUom
    print(createBaseUomGroupApi);
    try {
      final response = await client.post(createBaseUomGroupApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(createBaseUomGroupApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getUomist(String? code,
      {String? type,int ? id}) async {
    String path = "";
    if (type == "all") {
      print("all case");
      code = code == null ? "" : code;

      if (code == "")
        path = listBaseAllUomGroupApi;
      else
        path = listBaseAllUomGroupApi + "?$code";
    } else {
      code = code == null ? "" : code;

      if (code == "")
        path = listBaseUomGroupApi + id.toString();
      else
        path = listBaseUomGroupApi +
            id.toString() +
            "?$code";
    }
    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<BaseUomCreationtModel> getBaseUomRead(int? id) async {
    String path = readBaseUomGroupApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      BaseUomCreationtModel dataa =
          BaseUomCreationtModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.toString());
    BaseUomCreationtModel dataa =
        BaseUomCreationtModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> postUomPatch(
      BaseUomCreationtModel model, int? id) async {
    String path = readBaseUomGroupApi + id.toString();
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getItemListList(
      String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listItemVerticalListApi;
    else
      path = listItemVerticalListApi + "?$code";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(path);

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> postCreateItem(ItemCreationModel model) async {
    print(createItemApi);
    try {
      final response = await client.post(createItemApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(createItemApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<ItemReadModel> getItemRead(int? id) async {
    String path = readItemApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("ansaaaa" + response.toString());
      ItemReadModel dataa = ItemReadModel.fromJson(response.data['data']);
      print("ansaaaa" + dataa.toString());
      return dataa;
    } catch (e) {
      print("AnnnnnnnBelk" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.toString());
    ItemReadModel dataa = ItemReadModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> postItemPatch(ItemReadModel model, int? id) async {
    String path = readItemApi + id.toString();
    print(path);
    // try {
    //   final response = await client.patch(path,
    //       data:{
    //
    //         "name":"testingggg_item",
    //
    //         "material_code":"RGC1654000865",
    //
    //         "static_group_code":"RGC1654074258",
    //
    //         "uom_code":"dsw",
    //
    //         "brand_code":"RGC1653999834",
    //
    //         "variant_framework_code":"",
    //
    //         "search_name":"hai",
    //
    //         "display_name":"hai",
    //
    //         "is_active":true,
    //
    //         "description":"hai",
    //
    //         "image1":null,
    //
    //         "image2":null,
    //
    //         "image3":null,
    //
    //         "item_cateloge1":null,
    //
    //         "item_cateloge2":null,
    //
    //         "item_cateloge3":null,
    //
    //         "item_cateloge4":null
    //
    //       },
    //
    //
    //
    //       // data: model.toJson(),
    //       options: Options(headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json',
    //       }));
    //   print("+++++++++++");
    //   print(response);
    //   print(response.data['message']);
    //   if (response.data['status'] == 'failed') {
    //     Variable.errorMessege = response.data['message'];
    //   }
    //   return DoubleResponse(
    //       response.data['status'] == 'success', response.data['message']);
    //
    //
    // } catch (e) {
    //   print("erroe" + e.toString());
    // }
    final response = await client.patch(path,
        data: model.toJson(),
        // data: {
        //   "name": model.name,
        //   "material_code": model.materialCode,
        //   "static_group_code": model.staticGroupCode,
        //   "uom_code": model.uomCode,
        //   "brand_code": model.brandCode,
        //   "variant_framework_code": model.variantFrameWork,
        //   "search_name": model.searchName,
        //   "display_name": model.displayname,
        //   "is_active": model.isActive,
        //   "description": model.description,
        //   "image1": model.image1,
        //   "image2": model.image2,
        //   "image3": model.image3,
        //   "item_cataloge1": model.itemCatelog1,
        //   "item_cataloge2": model.itemCatelog2,
        //   "item_cataloge3": model.itemCatelog3,
        //   "item_cataloge4": model.itemCatelog4
        // },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getVariantList(String? code,
      {String? type}) async {
    print("ethiiiito");
    String path = "";
    code = code == null ? "" : code;

    if (code == "")
      path = listVariantApi + Variable.inventory_ID.toString();
    else
      path = listVariantApi + Variable.inventory_ID.toString() + "?$code";

    print("afffffuu" + path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(response);

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<VariantReadModel> getVariantRead(int? id) async {
    print("welcome to the world" + id.toString());
    String path = readVariantApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("anamika" + response.toString());
      VariantReadModel dataa = VariantReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the error is" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("hANGING DATA" + response.data['data'].toString());
    VariantReadModel dataa = VariantReadModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getSalesList(String? code,
      {String? type, int? id}) async {
    code = code == null ? "" : code;
    String path = "";

    if (code == "")
      path = salesListApi + id.toString();
    else
      path = salesListApi +id.toString() + "?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));



    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> searchVariantList(
      String? code,
      {String? type}) async {
    print(variantSearchListApi);
    code = code == null ? "" : code;
    String path = "";

    path = variantSearchListApi + "?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("reeeet" + response.toString());

    List<BrandListModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("searchController" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<DoubleResponse> postVariant(VariantPost model, int? id) async {
    String path = variantCreatetApi + id.toString();
    print(path);
    print("sasasaassss"+model.inventoryName.toString());
    try {
      final response = await client.post(path,
          // data: model.toJson(),

          data:{

            "inventory_id": model.inventoryId,
            "search_name": model.searchName,
            "weight_uom_id":model.weightUomId,
            "weight":model.weight,
            "inventory_name":model.inventoryName,
            "pos_name": model.posName,
            "shelf_type":model.shelfType,
            "shelf_time":model.shelfTime,
            "display_name": model.displayName,
            "arabic_description": model.arabicDescription,
            "additional_description": model.additionalInfo,
            "sales_uom": model.salesUom,
            "item_catalog": model.itemCatelog,
            "item_image": model.itemImage,
            "purchase_uom": model.purchaseUom,
            "gross_weight": model.grossWeight,
            "net_weight": model.netWeight,
            "unit_cost": model.unitCost,
            "base_price": model.basePrize,
            "landing_cost": model.landingCost,
            "actual_cost": model.actualCost,
            "produced_country": model.producedCountry,
            "safty_stock": model.safetyStock,
            "reorder_point": model.reOrderPoint,
            "reorder_quantity": model.reorderQuantity,
            "sales_block": model.salesBolock,
            "purchase_block": model.purchaseBlock,
            "ratio_to_eccommerce": model.ratioToEcommerce,
            "min_max_ratio": model.minMaxRatio,
            "whole_sale_stock": model.wholeSaleStock,
            "min_sales_order_limit": model.minMaxRatio,
            "max_sales_order_limit": model.maxSalesOrderLimit,
            "min_purchase_order_limit":model.minPurchaseOrderLimit,
            "max_purchase_order_limit": model.maxPurchaseOrderLimit,
            "stock_warning": model.stockWarning,
            "retail_selling_price_percentage": model.retailSellingPricePercentage,
            "wholesale_selling_price_percentage": model.wholeSellingPricePercentage,
            "online_selling_price_percentage": model.onlineSellingPercenage,
            "need_multiple_integration":model.needMultipleIntegration,
            "have_gift_option":model.haveGiftOption,
            "have_wrap_option":model.haveWrapOption,
            "vat": model.vat,
            "excess_tax": model.excessTax,
            "minimum_gp": model.minGap,
            "maximum_gp": model.maxGp,
            "average_gp": model.avgGp,
            "targeted_gp": model.targetedGp,
            "vedio_url": model.vedioUrl,
            "height":model.height,
            "width":model.width,
            "length":model.length,
            "alternative_barcode": model.alternativeBarcode,
            "alternative_qrcode":model.alternativeQrCodeBarcode,
            "vendor_details":model.vendorDetails,
            "var_alternative_rfid":model.varAlternativeRfid,
            "sebling_id":model.seblingId,
            "return_type": model.returnType,
            "return_time": model.returnTime,
            "variant_status": model.variantStatus,
            "is_active": model.isActive,
            "image2": model.image2,
            "image1": model.image1,
            "image3": model.image3,
            "image4": model.image4,
            "image5": model.image5,
            "catalog1": model.catalog1,
            "catalog2": model.catalog2,
            "catalog3": model.catalog3,
            "catalog4": model.catalog4,
            "catalog5": model.catalog5,
            "catalog6": model.catalog6,
            "catalog7": model.catalog7,
            "catalog8": model.catalog8,
            "Ingrediants": model.Ingrediants==null?{"name":"Ingrediants","key_values":[{}]}:model.Ingrediants,
            "important_info": model.importantInfo==null?{"name":"important info","key_values":[{}]}:model.importantInfo,
            "Additional_info": model.additionalInfo==null?{"name":"Additional info","key_values":[{}]}:model.additionalInfo,
            "Nutriants_facts": model.nutriantsFacts==null?{"name":"Nutriants facts","key_values":[{}]}:model.nutriantsFacts,
            "product_details": model.productDetails==null?{"name":"product details","key_values":[{}]}:model.productDetails,
            "usage_direction": model.usageDirection==null?{"name":"usage direction","key_values":[{}]}:model.usageDirection,
            "product_features": model.productFeatures==null?{"name":"product features","key_values":[{}]}:model.productFeatures,
            "product_behaviour": model.productBehavior==null?{"name":"product behaviour","key_values":[{}]}:model.productBehavior,
            "about_the_products": model.aboutProducts==null?{"name":"about the products","key_values":[{}]}:model.aboutProducts,
            "storage": model.storage==null?{"name":"storage","key_values":[{}]}: model.storage,


          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("+++++++++++");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.post(path,
        // data: model.toJson(),

        data:{

        "inventory_id": model.inventoryId,
        "search_name": model.searchName,
        "inventory_name":model.inventoryName,
          "weight":model.weight,
        "pos_name": model.posName,
          "weight_uom_id":model.weightUomId,
        "display_name": model.displayName,
        "arabic_description": model.arabicDescription,
        "additional_description": model.additionalInfo,
        "sales_uom": model.salesUom,
        "item_catalog": model.itemCatelog,
        "item_image": model.itemImage,
        "purchase_uom": model.purchaseUom,
        "gross_weight": model.grossWeight,
        "net_weight": model.netWeight,
        "unit_cost": model.unitCost,
        "base_price": model.basePrize,
        "landing_cost": model.landingCost,
          "need_multiple_integration":model.needMultipleIntegration,
        "actual_cost": model.actualCost,
        "produced_country": model.producedCountry,
        "safty_stock": model.safetyStock,
        "reorder_point": model.reOrderPoint,
        "reorder_quantity": model.reorderQuantity,
        "sales_block": model.salesBolock,
        "purchase_block": model.purchaseBlock,
        "ratio_to_eccommerce": model.ratioToEcommerce,
        "min_max_ratio": model.minMaxRatio,
        "whole_sale_stock": model.wholeSaleStock,
        "min_sales_order_limit": model.minMaxRatio,
        "max_sales_order_limit": model.maxSalesOrderLimit,
        "min_purchase_order_limit":model.minPurchaseOrderLimit,
        "max_purchase_order_limit": model.maxPurchaseOrderLimit,
        "stock_warning": model.stockWarning,
        "retail_selling_price_percentage": model.retailSellingPricePercentage,
        "wholesale_selling_price_percentage": model.wholeSellingPricePercentage,
        "online_selling_price_percentage": model.onlineSellingPercenage,
        "vat": model.vat,
        "excess_tax": model.excessTax,
        "minimum_gp": model.minGap,
        "maximum_gp": model.maxGp,
        "average_gp": model.avgGp,
        "targeted_gp": model.targetedGp,
        "vedio_url": model.vedioUrl,
        "height":model.height,
        "width":model.width,
          "shelf_type":model.shelfType,
          "shelf_time":model.shelfTime,
          "have_gift_option":model.haveGiftOption,
          "have_wrap_option":model.haveWrapOption,
        "length":model.length,
        "alternative_barcode": model.alternativeBarcode,
        "alternative_qrcode":model.alternativeQrCodeBarcode,
        "vendor_details":model.vendorDetails,
        "var_alternative_rfid":model.varAlternativeRfid,
        "sebling_id":model.seblingId,
        "return_type": model.returnType,
        "return_time": model.returnTime,
        "variant_status": model.variantStatus,
        "is_active": model.isActive,
        "image2": model.image2,
        "image3": model.image3,
        "image4": model.image4,
        "image5": model.image5,
        "catalog1": model.catalog1,
        "catalog2": model.catalog2,
        "catalog3": model.catalog3,
        "catalog4": model.catalog4,
        "catalog5": model.catalog5,
        "catalog6": model.catalog6,
        "catalog7": model.catalog7,
        "catalog8": model.catalog8,
        "Ingrediants": model.Ingrediants==null?{"name":"Ingrediants","key_values":[{}]}:model.Ingrediants,
        "important_info": model.importantInfo==null?{"name":"important info","key_values":[{}]}:model.importantInfo,
        "Additional_info": model.additionalInfo==null?{"name":"Additional info","key_values":[{}]}:model.additionalInfo,
        "Nutriants_facts": model.nutriantsFacts==null?{"name":"Nutriants facts","key_values":[{}]}:model.nutriantsFacts,
        "product_details": model.productDetails==null?{"name":"product details","key_values":[{}]}:model.productDetails,
        "usage_direction": model.usageDirection==null?{"name":"usage direction","key_values":[{}]}:model.usageDirection,
        "product_features": model.productFeatures==null?{"name":"product features","key_values":[{}]}:model.productFeatures,
        "product_behaviour": model.productBehavior==null?{"name":"product behaviour","key_values":[{}]}:model.productBehavior,
        "about_the_products": model.aboutProducts==null?{"name":"about the products","key_values":[{}]}:model.aboutProducts,
        "storage": model.storage==null?{"name":"storage","key_values":[{}]}: model.storage,


        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> patchVariant(VariantPatch model, int? id) async {
    String path = variantPatchApi + id.toString();
    print(path);
    print("variant name${model.aboutProducts}");

    final response = await client.post(path,
        // data: model.toJson(),

        data: {

          "variant_name": model.variantName,
          "sales_uom": model.salesUom,
          "purchase_uom": model.purchaseUom,
          "variant_value": model.variantValue,
          "height":model.height,
          "width":model.width,
          "length":model.length,
          "need_multiple_integration":model.needMultipleIntegration,
          "weight":model.weight,
          "weight_uom_id":model.weightUomId,

          "barcode": model.barcode,
          "qrcode": model.qrcode,
          "alternative_barcode": model.alternativeBarcode,
          "alternative_qrcode": model.alternativeQrCodeBarcode,
          "search_name": model.searchName,
          "display_name": model.displayName,
          "description": model.description,
          "arabic_description": model.arabicDescription,
          "additional_description": model.additionalDescription,
          "pos_name": model.posName,
          "gross_weight": model.grossWeight,
          "net_weight": model.netWeight,
          "unit_cost": model.unitCost,
          "landing_cost":model.landingCost,
          "actual_cost":model.actualCost,
          "base_price":model.basePrize,
          "produced_country": model.producedCountry,
          "manufacture_id": 1,
          "manufacture_name": model.manuFacturedName,
          "safty_stock": model.safetyStock,
          "reorder_point":model.reorderQuantity,
          "reorder_quantity": model.reorderQuantity,
          "sales_block": model.salesBolock,
          "purchase_block": model.purchaseBlock,
          "ratio_to_eccommerce": model.ratioToEcommerce,
          "min_max_ratio": model.minMaxRatio,
          "min_sales_order_limit": model.minSalesOrderLimit,
          "max_sales_order_limit": model.maxSalesOrderLimit,
          "whole_sale_stock": model.wholeSaleStock,
          "stock_warning": model.stockWarning,
          "item_catalog": model.itemCatelog,
          "item_image": model.itemImage,
          "is_active": model.isActive,
          "sebling_id": model.sibilingCode,
          "sibling_code": model.sibilingCode,
          "shelf_type":model.shelfType,
          "shelf_time":model.shelfTime,
          "have_gift_option":model.haveGiftOption,
          "have_wrap_option":model.haveWrapOption,


          "retail_selling_price_percentage": model.retailSellingPricePercentage,
          "wholesale_selling_price_percentage": model.wholeSellingPricePercentage,
          "online_selling_price_percentage": model.onlineSellingPercenage,
          "image1": model.image1,
          "image2": model.image2,
          "image3": model.image3,
          "image4": model.image4,
          "image5": model.image5,
          "catalog1": model.catalog1,
          "catalog2": model.catalog2,
          "catalog3":
          model.catalog3, "catalog4": model.catalog4,
          "catalog5": model.catalog5,
          "catalog6": model.catalog6,
          "catalog7":model.catalog7,
          "catalog8":model.catalog8,
          "vedio_url": model.vedioUrl,
          "minimum_gp":model.minGap,
          "maximum_gp":model.maxGp,
          "average_gp": model.avgGp,
          "targeted_gp": model.targetedGp,
          "min_purchase_order_limit":model.minPurchaseOrderLimit,
          "max_purchase_order_limit": model.maxPurchaseOrderLimit,
          "vat": model.vat,
          "excess_tax": model.excessTax,
          "return_type": model.returnType,
          "return_time": model.returnTime,
          "variant_status": model.variantStatus,
          "status": model.status,
          "vendor_details": model.vendorDetails,
          "Ingrediants": model.Ingrediants==null?{"name":"Ingrediants","key_values":[{}]}:model.Ingrediants,
          "important_info": model.importantInfo==null?{"name":"important info","key_values":[{}]}:model.importantInfo,
          "Additional_info": model.additionalInfo==null?{"name":"Additional info","key_values":[{}]}:model.additionalInfo,
          "Nutriants_facts": model.nutriantsFacts==null?{"name":"Nutriants facts","key_values":[{}]}:model.nutriantsFacts,
          "product_details": model.productDetails==null?{"name":"product details","key_values":[{}]}:model.productDetails,
          "usage_direction": model.usageDirection==null?{"name":"usage direction","key_values":[{}]}:model.usageDirection,
          "product_features": model.productFeatures==null?{"name":"product features","key_values":[{}]}:model.productFeatures,
          "product_behaviour": model.productBehavior==null?{"name":"product behaviour","key_values":[{}]}:model.productBehavior,
          "about_the_products": model.aboutProducts==null?{"name":"about the products","key_values":[{}]}:model.aboutProducts,
          "storage": model.storage==null?{"name":"storage","key_values":[{}]}: model.storage,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getVariantCreationList(
      String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = variantCreationListApi;
    else
      path = variantCreationListApi + "?$code";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(path);

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']
    );
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getVariantSelectionList(
      String? code, int? item) async {
    print("avavava");
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = variantCreationSearchListApi +
          Variable.inventory_ID.toString() +
          "/" +
          Variable.variantSearchId.toString();
    else
      path =
          "https://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-division?name=$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<VariantCreationReadModel> getVariantCreationRead(int? id) async {
    String path = variantCreationReadApi + id.toString();
    print("the searchin path"+path.toString());

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      VariantCreationReadModel dataa =
          VariantCreationReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    VariantCreationReadModel dataa =
        VariantCreationReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<List<VariantCreationRead2Model>> getVariantCreationRead2(
      String? id) async {
    String path = variantCreation2ReadApi + id.toString();
    print(path);

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("searching dataaaa" + response.toString());
      List<VariantCreationRead2Model> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(VariantCreationRead2Model.fromJson(element));
        print("itemsAk" + items.toString());
      });

      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("searching dataaaa" + response.toString());
    List<VariantCreationRead2Model> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(VariantCreationRead2Model.fromJson(element));
      print("itemsAk" + items.toString());
    });

    return items;
  }

  @override
  Future<PaginatedResponse<List<ChannelTypeModel>>> getChannelTypeList(
      String? code, String type) async {
    String path = channelTypeReadApi +
        "inventory_id=" +
        Variable.inventory_ID.toString() +
        "&selection_type=" +
        type.toString();
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<ChannelTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChannelTypeModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<ChannelTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<PaginatedResponse<List<ChannelTypeModel>>> getChannelFilterList(
      List<String> code, String id, String option) async {
    String path = channelFilterReadApi;
    print("akshay" + path.toString());
    print("option" + Variable.inventory_ID.toString());
    print("option" + code.toString());
    print("option" + option.toString());

    try {
      final response = await client.post(path,
          data: {
            "channel_code": code,
            "inventory_id": Variable.inventory_ID,
            "selected_option": option,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          }));

      List<ChannelTypeModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(ChannelTypeModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<ChannelTypeModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString());
    } catch (e) {
      print(e);
    }
    final response = await client.post(path,
        data: {
          "channel_code": code,
          "inventory_id": Variable.inventory_ID,
          "selected_option": option,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<ChannelTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChannelTypeModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<ChannelTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<StockReadModel> getStockRead(int? id) async {
    String path = stockReadApi + id.toString();

    try {
      print("akkkuuuuu" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      StockReadModel dataa = StockReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    StockReadModel dataa = StockReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<List<StockTableReadModel>> getStockTableRead(String? code) async {
    String path = stockTableReadApi;

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.post(
        path,
        data: {"code": code, "inventory_id": Variable.inventory_ID},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("Sea the result" + response.toString());

      List<StockTableReadModel> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(StockTableReadModel.fromJson(element));
        print("itemsAk" + items.toString());
      });

      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.post(
      path,
      data: {"code": code, "inventory_id": Variable.inventory_ID},
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("channelList" + response.toString());
    List<StockTableReadModel> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(StockTableReadModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<PaginatedResponse<List<StockVerticalReadModel>>> getStockList(
      String? code) async {
    code = code == null ? "" : code;
    String path = stockVerticalReadApi + code.toString();
    print("spaths" + path.toString());

    // if (code == "")
    //   path = salesListApi + Variable.uomId.toString();
    // else
    //   path = salesListApi + Variable.uomId.toString() + "?name=$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<StockVerticalReadModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(StockVerticalReadModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<StockVerticalReadModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<channelAllocatesRead> getChannelRead(int? id) async {
    String path = stockVerticalListReadApi + id.toString();
    try {
      print("AAAAAAA" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      channelAllocatesRead dataa =
          channelAllocatesRead.fromJson(response.data['common_attr']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the error is" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    channelAllocatesRead dataa =
        channelAllocatesRead.fromJson(response.data['common_attr']);
    print("rwead" + dataa.toString());
    return dataa;

    ;
  }

  @override
  Future<DoubleResponse> postSChannelPosts(ChannelPostModel model) async {
    print("Salesgeneralpost" + channelPostApi.toString());
    // try {
    //   final response = await client.post(channelPostApi,
    //       data: model.toJson(),
    //       options: Options(headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json',
    //       }));
    //   print("");
    //   print(response);
    //   print(response.data['message']);
    //   if (response.data['status'] == 'failed') {
    //     Variable.errorMessege = response.data['message'];
    //   }
    //   return DoubleResponse(
    //       response.data['status'] == 'success', response.data['message']);
    // } catch (e) {
    //   print("errrr" + e.toString());
    // }

    final response = await client.post(channelPostApi,
        // data: model.toJson(),
        data: {
          "inventory_id": model.inventoryId,
          "selection_type": model.selectionType,
          "channel_type_code": model.channelTypeCode,
          "channel_type_name": model.channelTypeName,
          "priority": 1,
          "channel_type_id": model.channelTypeId,
          "selected_data": model.selectedData,
          "channel_data": model.channelDatas
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<ChanmneStockListModelModel>>>
      getChannelAllocationList(int? code) async {
    String path =
        channelReadApi + code.toString() + "/" + Variable.inventory_ID;

    // if (code == "")
    //   path = salesListApi + Variable.uomId.toString();
    // else
    //   path = salesListApi + Variable.uomId.toString() + "?name=$code";

    print("Accccc" + path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<ChanmneStockListModelModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChanmneStockListModelModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<ChanmneStockListModelModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<ChannelAllocationStockStockReadModel> getChannelStockAllocationRead(
      int? id, int? channelId) async {
    String path = channelStockAllocationReadApi + channelId.toString();

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      ChannelAllocationStockStockReadModel dataa =
          ChannelAllocationStockStockReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    ChannelAllocationStockStockReadModel dataa =
        ChannelAllocationStockStockReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> channelStockAllocationPatch(
      ChannelAllocationStockStockReadModel model, int? id) async {
    String path = channelStockAllocationPatchApi + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          // data: {
          //
          //     "virtual_type":"Maximum",
          //     "safety_stock_qty":100,
          //     "stock_warning":true,
          //     "reorder_point":100,
          //     "reorder_quantity":100,
          //     "sales_block":true,
          //     "add_virtual_stock":100,
          //     "channel_status_crucial_point ":100,
          //     "channel_status_medium_point ":150
          //
          //
          // },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("+++++++++++");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print(e);
    }
    final response = await client.patch(path,
        data: model.toJson(),
        // data: {
        //   "virtual_type":model.virtualStock,
        //   "safety_stock_qty":model.safetyStock,
        //   "stock_warning":model.stockWarning,
        //   "reorder_point":model.reOrderPoint,
        //   "reorder_quantity":model.reOrderQuantity,
        //   "sales_block":model.salesblock,
        //   "add_virtual_stock":model.add,
        //   "channel_status_crucial_point ":100,
        //   "channel_status_medium_point ":150
        //
        // },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<ChannelListModel>>> getChannelList(
    String? channelType,
    int? id,
  ) async {
    String path = channelAllocationReadApi +
        id.toString() +
        "/" +
        Variable.inventory_ID.toString() +
        "/" +
        channelType.toString();

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(path);

    List<ChannelListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChannelListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<ChannelListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ChannelListModel> getChannelAllocationRead(
      int? id, int? channelId) async {
    String path = channelAssignReadApi + id.toString();
    try {
      print("AAAAAAA" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      ChannelListModel dataa = ChannelListModel.fromJson(
          response.data["data"]['channel_stock_data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the error is" + e.toString());
    }
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("responsesssssd" + response.toString());
    ChannelListModel dataa =
        ChannelListModel.fromJson(response.data['common_attr']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<PaginatedResponse<List<FrameWorkListModel>>> getFrameWorklist(
      String? filter) async {
    String path = "";
    filter=filter==null?"":filter;
    if (filter == "")
      path = frameWorkListApi ;
    else
      path =
          frameWorkListApi+"$filter";

    try {

      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      List<FrameWorkListModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(FrameWorkListModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<FrameWorkListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("data" + response.data["data"].toString());
    List<FrameWorkListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(FrameWorkListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<FrameWorkListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> channel2StockAllocationPatch(
      ChannelListModel model, int? id) async {
    String path = channelAssignReadApi + id.toString();
    print(path);
    print("the error is here" + model.safetyStockQuantity.toString());

    final response = await client.patch(path,
        // data: model.toJson(),
        data:
            // {
            //   "virtual_type":model.virtualStock??null,
            //   "safety_stock_qty":model.safetyStockQuantity,
            //   "stock_warning":model.stockWarning,
            //   "reorder_point":model.reOrderPoint,
            //   "reorder_quantity":model.reOrderQuantity,
            //   "sales_block":model.salesBlock,
            //   "add_virtual_stock":model.addVirtualStock,
            //   "channel_status_crucial_point":100,
            //   "channel_status_medium_point ":150
            //
            // },
            {
          "virtual_type": model.virtualType,
          "safety_stock_qty": model.safetyStockQuantity,
          "stock_warning": model.stockWarning,
          "reorder_point": model.reOrderPoint,
          "reorder_quantity": model.reOrderQuantity,
          "sales_block": model.salesBlock,
          "add_virtual_stock": model.addVirtualStock,
          "channel_status_crucial_point": model.channelStatusCrucialPoint,
          "channel_status_medium_point": model.channelStatusMediumPoint,
          "purchase_blocked": model.purchaseBlocked,
          "purchase_blocked_qty": model.purchaseBlockQuantity,
          "sales_blocked_qty": model.salesblockQuantity,
          "is_daily_stock_available": model.isDAilyStockAvailable,
          "daily_stock_quantity": model.dailyStockQuantity,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
    ;
  }

  @override
  Future<DoubleResponse> postCreateFrameWork(
      VariantFrameWorkPostModel model) async {
    String path = VariantFrameWorkPost;
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCreateCostingType(
      String typeName, String description, String createdBy,
      {int? id}) async {
    String? path = "";
    if (id == null)
      path = costingTypePostApi;
    else
      path = costingCreateApi;

    print("the costinf Api");
    print(id);
    print(description);
    print(typeName);
    print(path);
    try {
      final response = await client.post(path,
          data: {
            "method_name": typeName,
            "type_name": typeName,
            "description": description,
            "created_by": createdBy,
            "method_type_id": id,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: {
          "method_name": typeName,
          "type_name": typeName,
          "description": description,
          "created_by": createdBy,
          "method_type_id": id,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<CostingMetodTypePostModel>>> getCostingTypeList(
      String? code) async {
    code = code == null ? "" : code;
    String path = "";

    if (code == "")
      path = listcostingMethodApi;
    else
      path = listcostingMethodApi+"?$code";


    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<CostingMetodTypePostModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(CostingMetodTypePostModel.fromJson(element));
      print("thereeeeeeeeeeeeeeeeeeeee" + items.toString());
    });
    return PaginatedResponse<List<CostingMetodTypePostModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postPatchCostingType(int? verticalId, String typeName,
      String description, String createdBy, bool? isActive,
      {int? id}) async {
    String path = costingTypePatchApi + verticalId.toString();

    try {
      final response = await client.patch(path,
          data: {
            "type_name": typeName,
            "description": description,
            "created_by": createdBy,
            "is_active": isActive,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: {
          "type_name": typeName,
          "description": description,
          "created_by": createdBy
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> CostingDelete(int? id, {String? type}) async {
    String url = "";
    String path = "";
    print("Akkkkkk" + type.toString());
    print(path);

    switch (type) {
      case "1":
        {
          url = costingTypePatchApi;
        }
        break;
      case "2":
        {
          url = costingCreateDeleteApi;
        }
        break;
      case "3":
        {
          url = pricingGroupDeleteApi;
        }
        break;
      case "4":
        {
          url = pricingDeleteApi;
        }
        break;
      case "5":
        {
          url = linkedListDeletionApi;
        }
        break;
      case "6":
        {
          url = deleteVariantApi;
        }
        break;
      case "7":
        {
          url = patchCustomApi;
        }
        break;
      case "8":
        {
          url = readDivisionConfig;
        }
        break;
    }
    path = url + id.toString();
    print(path);

    final response = await client.delete(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<CostingCreatePostModel>>> getCostingCreateList(
      String? code) async {
    String path = "";
    code = code == null ? "" : code;


    if (code == "")
      path = listcostingCreationMethodApi;
    else
      path = listcostingCreationMethodApi+"?$code";


    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<CostingCreatePostModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(CostingCreatePostModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<CostingCreatePostModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postPatchpostPatchCostingCreateCostingType(
      int? verticalId,
      int? typeId,
      String typeName,
      String description,
      String createdBy,
      bool? isActive) async {
    String path = costingCreateDeleteApi + verticalId.toString();


    print("details");
    print(typeName);
    print(typeId);
    print(verticalId);
    print(createdBy);
    print(isActive);
    print(path);

    try {
      final response = await client.patch(path,
          data: {
            "method_type_id": typeId,
            "method_name": typeName,
            "description": description,
            "created_by": createdBy,
            "is_active": isActive
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: {
          "method_type_id": verticalId,
          "method_name": typeName,
          "description": description,
          "created_by": createdBy,
          "is_active": isActive
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<PricingGroupListModel>>> getPricingGroupList(
      String? code) async {




    String path = "";
    code = code == null ? "" : code;


    if (code == "")
      path = pricingGroupListApi;
    else
      path = pricingGroupListApi+"?$code";



    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PricingGroupListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PricingGroupListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<PricingGroupListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<CostingCreatePostModel> getCostMethodRead(int? id) async {
    String path = costingMethodReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      CostingCreatePostModel dataa =
          CostingCreatePostModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    CostingCreatePostModel dataa =
        CostingCreatePostModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<CostingMetodTypePostModel> getCostMethodTypeRead(int? id) async {
    String path = costingTypeMethodReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      CostingMetodTypePostModel dataa =
          CostingMetodTypePostModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    CostingMetodTypePostModel dataa =
        CostingMetodTypePostModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postPricingGroupType(PricingGroupListModel model,
      {int? type}) async {
    String? path = "";
    if (type == 1)
      path = pricingGroupCreateApi;
    else
      path = costingCreateApi;

    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> patchPricingGroupType(
      PricingGroupListModel model, int? id,
      {int? type}) async {
    String? path = "";
    if (type == 1)
      path = pricingGroupDeleteApi + id.toString();
    else
      path = costingCreateApi;

    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PricingGroupListModel> getPricingRead(int? id) async {
    String path = pricingGroupReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      PricingGroupListModel dataa =
          PricingGroupListModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    PricingGroupListModel dataa =
        PricingGroupListModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<PaginatedResponse<List<PricingTypeListModel>>> getPricingList(
      String? code) async {


    String path = "";
    code = code == null ? "" : code;


    if (code == "")
      path = pricinglistReadApi;
    else
      path = pricinglistReadApi+"?$code";
    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PricingTypeListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PricingTypeListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<PricingTypeListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PricingTypeListModel> getPricingGroupRead(int? id) async {
    String path = pricingReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("responsesssssd" + response.toString());
      PricingTypeListModel dataa =
          PricingTypeListModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    PricingTypeListModel dataa =
        PricingTypeListModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> patchPricingGroup(PricingTypeListModel model, int? id,
      {int? type}) async {
    String path = pricingDeleteApi + id.toString();
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postPricingGroup(PricingTypeListModel model,
      {int? type}) async {
    print(model);
    String path = pricingPostApi;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<ListingChnanelTableModel>> getChannelStockTableRead(
      int? id) async {
    String path = readChannelStockTableApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<ListingChnanelTableModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(ListingChnanelTableModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<ListingChnanelTableModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ListingChnanelTableModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<DoubleResponse> postCosting(CostingPageCreationPostModel model) async {
    String path = creaetCostingApi;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<CostingPageCreationPostModel> getCostingRead(int? id) async {
    String path = readCostingApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("akshayaaas" + response.data['data']['costing_data'].toString());
      CostingPageCreationPostModel dataa =
          CostingPageCreationPostModel.fromJson(
              response.data['data']['costing_data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the mistake is"+e.toString());
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );


    CostingPageCreationPostModel dataa =
    CostingPageCreationPostModel.fromJson(
        response.data['data']['costing_data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<PurchaseOrdertype> getPricingPgtype() async {
    print("purchase");
    print(pgTypeApi.toString());
    final response = await client.get(
      pgTypeApi,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    print("ayalkaran" + response.toString());

    PurchaseOrdertype ordertype =
        PurchaseOrdertype.fromJson(response.data['data']);
    print(ordertype);
    return ordertype;
  }

  @override
  Future<DoubleResponse> percentageGp(int? id, String? gpType) async {
    String path = pricingPgPercentageApi;
    print("alallal" + id.toString());
    print("alallal" + gpType.toString());
    try {
      print(path);
      final response = await client.post(
        path,
        data: {"channel_stock_id": id, "gp_type": gpType},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("channelStockResponse" + response.toString());
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['data']);
    } catch (e) {
      print("the akku is" + e.toString());
    }

    print(path);
    print("alallal1");
    final response = await client.post(
      path,
      data: {"channel_stock_id": id, "gp_type": gpType},
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("channelStockResponse" + response.toString());
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> patchCosting(
      CostingPageCreationPostModel model, int? id) async {
    String path = patchCostingApi + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postFrameWorkCreate(
      VariantFrameworkPostModel model) async {
    // TODO: implement postmaterialPatch
    print("searching" + model.toString());
    String path = postFrameWorkApi;
    print("asss" + path.toString());
    try {} catch (e) {
      print("erroe" + e.toString());
    }
    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<AttributeListModel>>> getAttributeList(
      String? code) async {
    String path = listAttributeTypeApi;

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<AttributeListModel> items = [];
    print("searching case" + response.data['data']['results'].toString());
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AttributeListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<AttributeListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> postPatchFrameWork(
      VariantFrameWorkPostModel model, int? id) async {
    String path = VariantFrameWorkPatchApi + id.toString();
    print(path);
    print(model);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.patch(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCombinationFrameWork(
      {String? itemCode,
      String? variantCode,
      String? uomCode,
        List< dynamic>? variantlist}) async {
    String path = postCombinationFrameworkPostApi;

    print(path);
    print("i" + itemCode.toString());
    print("v" + variantCode.toString());
    print("u" + uomCode.toString());
    print(Variable.inventory_Name);
    try {
      final response = await client.post(path,
          data: {
            "item_code": itemCode,

            "variant_framework_code": variantCode,
            "inventory_name":Variable.inventory_Name,

            "uom_code": uomCode,


            "inventory_id": Variable.inventory_ID,

            "variant_list": variantlist
            // [[{"key":"color","value":"red"},{"key":"size","value":"large"}],[{"key":"color","value":"yellow"},{"key":"size","value":"small"}]]
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: {
          "item_code": itemCode,

          "variant_framework_code": variantCode,

          "uom_code": uomCode,

          "inventory_id": Variable.inventory_ID,
          "inventory_name":Variable.inventory_Name,

          "variant_list": variantlist
          // [[{"key":"color","value":"red"},{"key":"size","value":"large"}],[{"key":"color","value":"yellow"},{"key":"size","value":"small"}]]
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PurchaseOrdertype> getVirtualStiocktype() async {
    final response = await client.get(
      virtualStockTypeApi,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    print("ayalkaran" + response.toString());

    PurchaseOrdertype ordertype =
        PurchaseOrdertype.fromJson(response.data['data']);
    print(ordertype);
    return ordertype;
  }

  @override
  Future<DoubleResponse> postStock(
    StockData model,
  ) async {
    String path = stockPostkDeleteApi;
    print(path);
    print(model);
    print(model.addVirtualStock);
    // try {
    //   final response = await client.patch(path,
    //       // data: model.toJson(),
    //   data:    {
    //
    //       "inventory_id":"test",
    //
    //       "variant_id":1,
    //
    //       "stock_warning":true,
    //
    //       "safety_stock_qty":10,
    //
    //       "reorder_point":10,
    //
    //       "reorder_quantity":10,
    //
    //       "channel_type_allocation_ratio":"5:5",
    //
    //       "min_max_ratio":"5:5",
    //
    //       "sales_blocked":false,
    //
    //       "maximum_quantity":100,
    //
    //       "minimum_quantity":100,
    //
    //       "add_virtual_stock":100,
    //
    //       "virtual_type":"Maximum",
    //
    //       "purchase_blocked":false
    //
    //       },
    //       options: Options(headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json',
    //       }));
    //   print("+++++++++++");
    //   print(response);
    //   print(response.data['message']);
    //   if (response.data['status'] == 'failed') {
    //     Variable.errorMessege = response.data['message'];
    //   }
    //   return DoubleResponse(
    //       response.data['status'] == 'success', response.data['message']);
    // } catch (e) {
    //   print(e);
    // }
    final response = await client.post(path,
        // data: model.toJson(),
        data: {
          "inventory_id": model.inventoryId,
          "variant_id": model.variantId,
          "stock_warning": model.stockWarning,
          "safety_stock_qty": model.safetyStockQty,
          "reorder_point": model.reOrderPoint,
          "reorder_quantity": model.reOrderQuantity,
          "channel_type_allocation_ratio": model.channelTypeAllocationRatio,
          "min_max_ratio": model.minMaxRatio,
          "sales_blocked": model.salesBlocked,
          "maximum_quantity": model.maximumQuantity,
          "minimum_quantity": model.minimumQuantity,
          "add_virtual_stock": model.addVirtualStock,
          "virtual_type": model.virtualType,
          "purchase_blocked": model.purchaseBlocked
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<LinkedItemListIdModel>> getLinkedItemListRead(
      String? code) async {
    String path = listLinkedItemApi + Variable.variantCode.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<LinkedItemListIdModel> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        items.add(LinkedItemListIdModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print("the error is" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<LinkedItemListIdModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(LinkedItemListIdModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
    ;
  }

  @override
  Future<DoubleResponse> postLinkedItem(LinkedItemPostModel model) async {
    print(createLinkedItemtApi);
    try {
      final response = await client.post(createLinkedItemtApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("Seaaaa the error");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      else {
        Variable.linkedVaue = response.data['data'];

      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(createLinkedItemtApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];}
    else {
      Variable.linkedVaue = response.data['data'];

    }

    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<LinkedItemPostModel> getLinkedItem(int? id) async {
    String path = readLinkedItemtApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      LinkedItemPostModel dataa =
          LinkedItemPostModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the error is" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.data['data'].toString());
    LinkedItemPostModel dataa =
        LinkedItemPostModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<PaginatedResponse<List<LinkedItemListIdModel>>> getLinkedItemList(
      String? filter) async {
    String path = readLinkedItemVerticalApi;
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(path);

    List<LinkedItemListIdModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(LinkedItemListIdModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<LinkedItemListIdModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> patchLinkedItem(
      LinkedItemPostModel model, int? id) async {
    String path = linkedListPatchnApi + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("+++++++++++");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error exist that is" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
     else if (response.data['status'] == 'success') {
       print("the error  cacaccac"+response.data['data']);
      Variable.linkedVaue = response.data['data'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<VariantFrameWorkPostModel> getFrameWorkRead(int? id) async {
    String path = frameWorkReadApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("ansaaaa" + response.toString());
      VariantFrameWorkPostModel dataa =
          VariantFrameWorkPostModel.fromJson(response.data['data']);
      print("ansaaaa" + dataa.toString());
      return dataa;
    } catch (e) {
      print("AnnnnnnnBelk" + e.toString());
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("uomGroup response" + response.toString());
    VariantFrameWorkPostModel dataa =
        VariantFrameWorkPostModel.fromJson(response.data['data']);
    print("uomGroup read" + dataa.toString());
    return dataa;
    ;
  }

  @override
  Future<DoubleResponse> getQrCodeRead(int? id) async {
    String path = generateQrCodeApi + id.toString();
    print(path);
    try {
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("+++++++++++");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['data']);
    } catch (e) {
      print("the error exist that is" + e.toString());
    }

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    else{
      Variable.successMessege=response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<PaginatedResponse<List<VendorDetailsModel>>> getVendorDetailList(
      String? code) async {
    print(""""""""""""""""""+code.toString());
    String path;
    code=code==null?"":code;
    if(code==""){
       path = vendorDetailsApi;
    }
    else{
      path=vendorDetailsApi+"?"+code.toString();
    }
    print(path);


    UserPreferences().getUser().then((value) {
      token = value.token;
      print("token is here222 exist" + token.toString());
    });

    try {
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token $token'
          }));
      print(response);

      List<VendorDetailsModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(VendorDetailsModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<VendorDetailsModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString());
    } catch (e) {
      print("the mistake is"+e.toString());
    }
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        }));
    print(response);

    List<VendorDetailsModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(VendorDetailsModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<VendorDetailsModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<List<VariantReadModel>> getProducedCountry(String? code) async {
    String path ;




    code=code==null?"":code;
    if(code==""){
      path = inventoryBaseUrl+"country-list?value=list";
    }
    else{
      path=inventoryBaseUrl+"state-list?code=$code&value=list";
    }
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<VariantReadModel> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(VariantReadModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<VariantReadModel> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(VariantReadModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<DoubleResponse> postCreateCustom(CustomCreationtModel model) async {
    String path=createCustomApi;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getCustomVerticalList(String? code) async {
    String path = "";
    code = code == null ? "" : code;

    if (code == "")
      path = listCustomApi;
    else
      path = listCustomApi+"?$code";

    print("afffffuu" + path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(response);

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<ReadCustomModel> getCustomRead(int? id) async {
    String path = readCustomApi + id.toString();
    print(path);
    try {

      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      ReadCustomModel dataa =
      ReadCustomModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    ReadCustomModel dataa =
    ReadCustomModel.fromJson(response.data['data']);

    return dataa;
  }

  @override
  Future<ReadCustomModel> getReturnRead() async {
 String   path=createCustomApi;

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    ReadCustomModel dataa =
    ReadCustomModel.fromJson(response.data['data']);

    return dataa;
  }

  @override
  Future<DoubleResponse> patchCreateCustom(CustomCreationtModel model, int? id) async {
    String path=patchCustomApi+id.toString();
    print("updation"+path.toString());
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCreateDivisionConfig(DivisionCreationtModel model) async {
    String path=createDivisionConfig;
    print(path);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getDivisionVerticalList(String? code) async {
    String path = "";
    code = code == null ? "" : code;

    if (code == "")
      path = listDivisionConfig;
    else
      path = listDivisionConfig+"?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print(response);

    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<DivisionReadModel> getDivisionConfigRead(int? id) async {
    String path = readDivisionConfig + id.toString();
    print(path);
    try {

      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );

      DivisionReadModel dataa =
      DivisionReadModel.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    DivisionReadModel dataa =
    DivisionReadModel.fromJson(response.data['data']);

    return dataa;
  }

  @override
  Future<DoubleResponse> patchDivisionConfig(DivisionCreationtModel model, int? id) async {
    String path=readDivisionConfig+id.toString();
    print("updation"+path.toString());
    try {
      final response = await client.patch(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getUomDivisionList(String? code, {String? type, int? id}) async {
    code = code == null ? "" : code;
    String path = "";

    if (code == "")
      path = listUomDivisionConfig ;
    else
      path =listUomDivisionConfig + "?$code";

    print(path);try{
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          }));



      List<BrandListModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(BrandListModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],);
    }
    catch(e){
      print(e);

    }
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));



    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getGroupList(String? code, {String? type, int? id}) async {
    code = code == null ? "" : code;
    String path = "";

    if (code == "")
      path = listGroupConfig;
    else
      path =listGroupConfig + "?$code";

    print(path);
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));



    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getCategoryList(String? code, {String? type, int? id}) async {
    code = code == null ? "" : code;
    String path = "";

    if (code == "")
      path = listCategoryDivisionConfig ;
    else
      path =listCategoryDivisionConfig + "?$code";

    print(path);try{
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          }));



      List<BrandListModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(BrandListModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<BrandListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],);
    }
    catch(e){
      print(e);

    }
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));



    List<BrandListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<List<StateList>> getStateList(String? code) async {



    String  path=inventoryBaseUrl+"state-list?code=$code&value=list";

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<StateList> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(StateList.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<StateList> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(StateList.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<CostingPageCreationPostModel> getChannelCostingRead(int? id) async {
    String path = readCostingApi + id.toString();
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("akshayaaas" + response.data['data']['costing_data'].toString());
      CostingPageCreationPostModel dataa =
      CostingPageCreationPostModel.fromJson(
          response.data['data']['costing_data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("the datasa error is"+e.toString());
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("brand response" + response.toString());
    CostingPageCreationPostModel dataa =
    CostingPageCreationPostModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<PaginatedResponse<List<BrandListModel>>> getAllCategoryist(String? code) async {
    String path="";
    code = code == null ? "" : code;



      if (code == "")
        path = listCategoryAllGroupApi;
      else
        path = listCategoryAllGroupApi + "?$code";

    print("Searching path" + path.toString());
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<BrandListModel> items = [];
    print("searching case" + response.data['data']['results'].toString());
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BrandListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<BrandListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }
}
