import 'package:dio/dio.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
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
import 'package:inventory/commonWidget/appurl.dart';
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
  Future<DoubleResponse> postCustomerIdCreation(CustomerIdCreation2Model model);
  Future<PaginatedResponse<List<salesOrderTypeModel>>>
      getSalesGeneralVertical();
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getSalesSearch(
    String? code,
  );
  Future<PurchaseOrdertype> getSalesOrdertype();
  Future<SalesGeneralReadModel> getSalesGenralRead(int id);
  Future<DoubleResponse> salesGeneralDelete(int? id);
  Future<DoubleResponse> getSalesGeneralPatch(
      SalesGeneralPostModel model, int? id);
  Future<List<ShippingAddressModel>> getShippingId();
  Future<List<CustomerIdCreationModel>> getCustomerId();
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
  Future<DoubleResponse> postImage(String? imageNmae, String ImageEncode);
  Future<PaginatedResponse<List<BrandListModel>>> getlistBrand(String? code);
  Future<BrandReadModel> getBrandRead(int? id);
  Future<DoubleResponse> brandDelete(int? id);
  Future<DoubleResponse> postBrandPatch(BrandCreationtModel model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> searchMaterialList(
      String? code);
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
  Future<DoubleResponse> postCreateCategory(CategoryCreationtModel model);
  Future<CategoryReadModel> getCategoryRead(
    int? id,
  );
  Future<DoubleResponse> postcategoryPatch(
    CategoryCreationtModel model,
    int? id,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getSubCategoryList(
      String? code);
  Future<DoubleResponse> postCreateGroup(
    MaterialCreationtModel model,
  );
  Future<PaginatedResponse<List<BrandListModel>>> getGroupListList(
      String? code);
  Future<MaterialReadModel> getGroupRead(
    int? id,
  );
  Future<DoubleResponse> postGroupPatch(
    MaterialCreationtModel model,
    int? id,
  );
  Future<DoubleResponse> postCreateBaseUom(BaseUomCreationtModel model);
  Future<PaginatedResponse<List<BrandListModel>>> getUomist(String? code);
  Future<BaseUomCreationtModel> getBaseUomRead(
    int? id,
  );
  Future<DoubleResponse> postUomPatch(BaseUomCreationtModel model, int? id);
  Future<PaginatedResponse<List<BrandListModel>>> getItemListList(String? code);
}

class PurchaseSourceImpl extends PurchaseSourceAbstract {
  Dio client = Dio();

  @override
  Future<List<PurchaseInvoice>> getPurchaseInvoice() async {
    String path =
        "http://api-purchase-order-staging.rgcdynamics.org/purchase-order/list-purchase-invoice-for-purchase-return/test";

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
        "http://api-purchase-order-staging.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id");
    try {
      String path =
          "http://api-purchase-order-staging.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id";
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
      PurchaseReturnGeneralRead dataa =
          PurchaseReturnGeneralRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id";
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
    PurchaseReturnGeneralRead dataa =
        PurchaseReturnGeneralRead.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
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
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/list-purchase-return-order/test";
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
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/list-purchase-return-order/test?code=$code";
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
        response.data['data']['count'].toString());
  }

  @override
  Future<ReturnGeneralRead> getGeneralPurchaseReturnRead(int id) async {
    print("sssshamna" + id.toString());
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/read-purchase-return/" +
            id.toString();
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
      ReturnGeneralRead dataa =
          ReturnGeneralRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
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
    print("responsesssssd" + response.toString());
    ReturnGeneralRead dataa = ReturnGeneralRead.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> getGeneralFormPatch(
      ReturnGeneralPatchModel model, int? id) async {
    print("searching" + model.toString());
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/read-purchase-return/" +
            id.toString();
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
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/read-purchase-return/" +
            id.toString();
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
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/read-purchase-return-order-for-invoice/" +
            id.toString();
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
    PurchaseInvoiceReadModel dataa =
        PurchaseInvoiceReadModel.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> invoicePost(
      PurchaseReturnInvoicePostModel model) async {
    print("akkkaaa" + model.toString());
    print(
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice");
    try {
      final response = await client.post(
          "http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice",
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
    final response = await client.post(
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice",
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
        "http://invtry-sales-order-staging.rgcdynamics.org/sales-order/list-sales-order/${Variable.verticalid}?code=$code";
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
        response.data['data']['count'].toString());
  }

  @override
  Future<PurchaseOrdertype> getSalesOrdertype() async {
    print("aaaaa");
    print(salesGeneralOrderType);
    final response = await client.get(
      salesGeneralOrderType,
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
    String path =
        "https://api-rgc-user.hilalcart.com/user-account_login/inventory";
    print(path);

    final response = await client.post(path,
        data: {"user_name": username, "password": password},
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data['message']);
    RegisterModel model = RegisterModel.fromJson(response.data['data']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(response.data['status'] == 'success', model);
  }

  @override
  Future<List<ShippingAddressModel>> getShippingId() async {
    print("token" + Variable.token.toString());
    String path = "https://api-rgc-user.hilalcart.com/user-general_address";

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${Variable.token}'
        },
      ),
    );
    print("Prabhaakaran");
    print("Prabhaakaran" + response.toString());
    //print(response.data['results']);
    List<ShippingAddressModel> items = [];
    print(response.data['data']['customer_user_data']['results']);

    (response.data['data']['customer_user_data']['results'] as List)
        .forEach((element) {
      // print("data");

      items.add(ShippingAddressModel.fromJson(element));
    });
    return items;
  }

  @override
  Future<DoubleResponse> postShippinAddress(
      ShippingAddressCreationModel model) async {
    try {
      final response = await client.post(
          "https://api-rgc-user.hilalcart.com/user-general_addresscreate",
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token ${Variable.token}'
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
        "https://api-rgc-user.hilalcart.com/user-general_addresscreate",
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${Variable.token}'
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
  Future<List<CustomerIdCreationModel>> getCustomerId() async {
    String path =
        "https://api-rgc-user.hilalcart.com/user-customer_customeruser/inventory?business_user=True";

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${Variable.token}'
        },
      ),
    );
    print("Prabhaakaran");
    print("Anagha" + response.toString());
    //print(response.data['results']);
    List<CustomerIdCreationModel> items = [];

    (response.data['data'] as List).forEach((element) {
      // print("data");

      items.add(CustomerIdCreationModel.fromJson(element));
    });
    return items;
  }

  @override
  Future<DoubleResponse> postCustomerIdCreation(
      CustomerIdCreation2Model model) async {
    print("Arathiiii");

    try {
      final response = await client.post(
          "https://api-rgc-user.hilalcart.com/user-customer_customerusersignup/inventory",
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token ${Variable.token}'
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
        "https://api-rgc-user.hilalcart.com/user-customer_customerusersignup/inventory",
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token ${Variable.token}'
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
        "https://api-invtry-sales-return.hilalcart.com/sales-return/list-sales-return-by-inventory/${Variable.verticalid}?code=$code";
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
        response.data['data']['count'].toString());
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
  Future<DoubleResponse> postImage(
      String? imageNmae, String ImageEncode) async {
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
    print(response.data['message']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
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
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-brand";
    else
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-brand?name=$code";
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
      String? code) async {
    print("avavava");
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-material";
    else
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-material?name=$code";
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
    }
    path = url + id.toString();
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
    print("avavava");
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-division";
    else
      path =
          "http://api-inventory-software-staging.rgcdynamics.org/inventory-product/list-division?name=$code";



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
      path = listStaticApi + "?name=$code";
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
    print("filter2"+code.toString());
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listUomGroupApi;
    else
      path = listUomGroupApi + "?name=$code";



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
      {String? type}) async {
    String path = "";
    print("Akshara" + type.toString());

    code = code == null ? "" : code;
    if (type == null||type == "") {
      if (code == "")
        path = listCategoryGroupApi + Variable.divisionId.toString();
      else
        path = listCategoryGroupApi +
            Variable.divisionId.toString() +
            "?name=$code";
    } else if (type == "all") {
      print("entered to All case");
      if (code == "")
        path = listCategoryAllGroupApi;
      else
        path = listCategoryAllGroupApi + "?name=$code";

    }
    print("Searching path"+path.toString());
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
    print("uomGroup response" + response.toString());
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
      String? code) async {
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listSubCategoryGroupApi + Variable.categoryId.toString();
    else
      path = listStaticApi + Variable.categoryId.toString() + "?name=$code";
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
  Future<DoubleResponse> postCreateGroup(MaterialCreationtModel model) async {
    String path = createGroupApi;
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
  Future<PaginatedResponse<List<BrandListModel>>> getGroupListList(
      String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listGroupApi + Variable.categoryId.toString();
    else
      path = listGroupApi + Variable.categoryId.toString() + "?name=$code";
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
  Future<PaginatedResponse<List<BrandListModel>>> getUomist(
      String? code) async {
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = listBaseUomGroupApi + Variable.uomGroupId.toString();
    else
      path =
          listBaseUomGroupApi + Variable.uomGroupId.toString() + "?name=$code";
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
      path = listItemVerticalListApi + "?name=$code";
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
}
