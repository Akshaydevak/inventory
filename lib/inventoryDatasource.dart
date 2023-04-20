import 'package:dio/dio.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

import 'Screens/inventory_creation_tab/inventory_read_model.dart';
import 'commonWidget/sharedpreference.dart';
import 'core/uttils/variable.dart';

abstract class LogisticDataSource {
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next,
      {String? tab = ""});

  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next,
      {String? tab = ""});

  Future<PurchaseOrdertype> getPurchaseOrdertype();

  Future<DoubleResponse> postPurchase(PurchaseOrderPost model);
  Future<PaginatedResponse<List<VariantId>>> getVariantId(
      {String? vendorId, String? inventory = ""});
  Future<List<Result>> getVariantCode();
  Future<PurchaseOrderTableModel> getTableDetails(int id);
  Future<VariantDetailsModel> getVendorDetails(String? id);
  Future<PurchaseCureentStockQty> getCurrentStock(
      String? id, String? invdendotyId);
  Future<PurchaseOrderRead> getGeneralPurchaseRead(int id);
  Future<DoubleResponse> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id);
  Future<DoubleResponse> generalPurchaseDelet(int id);
  Future<PurchaseRecievingRead> getGeneralPurchaseRecievingRead(int? id);
  Future<DoubleResponse> getPurchaseRecievePatch(
      int? id, PurchaseRecievingRead model);
  Future<DoubleResponse> generatePost(GenerateMissing model);
  Future<DoubleResponse> additionlGeneratePost(AdditionalGenerateModel model);

  //requestform**************************************requestform
  Future<PurchaseOrderRead> getRequestFormRead(int? id);
  Future<DoubleResponse> postRequest(PurchaseOrderPost model);
  Future<PurchaseOrdertype> getRequestFormOrdertype();
  Future<PaginatedResponse<List<OrderedPersonModel>>> getOrderedPerson(String ? code);
  Future<DoubleResponse> getRequestFormPatch(PurchaseOrderPost model, int? id);
  Future<DoubleResponse> requestFormDelete(int id);
  //************requestFormreceiving********************
  Future<PurchaseRecievingRead> getRequestFormReceivingRead(int? id);
  Future<DoubleResponse> requestFormReceivingPatch(
      int? id, RequestReceivingPatch model);
  Future<DoubleResponse> additionlGenerateRequest(
      AdditionalGenerateModel model);
  //inventory**************************************inventorygetInventoryRead

  Future<InventoryRead> getInventoryRead(int id);
  Future<DoubleResponse> postInventory(InventoryPostModel model);
  Future<PaginatedResponse<List<InventoryListModel>>> getInventoryListRead(
    String? code,
  );
  Future<double> getUnitcost(int? variantId);
}

class InventoryDataSourceImpl extends LogisticDataSource {
  Dio client = Dio();
  String? token = "";

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next,
      {String? tab = ""}) async {
    print("aaaaaa");
    print(tab);
    String path = "";
    if (tab == "RF") {
      // path = "http://65.1.61.201:8111/purchase-order/list-request-form/${Variable.inventory_ID}";

      path = requestVerticalList + Variable.inventory_ID;
    } else if (tab == "RFR") {
      path =
          "http://65.1.61.201:8111/purchase-order/list-purchase-order-for-invoice-posting/${Variable.inventory_ID}";
    } else if (tab == "II") {
      path =
          // "http://65.1.61.201:8111/purchase-order/list-purchase-order-for-invoice-posting/${Variable.inventory_ID}";
          invoiceVerticalList + Variable.inventory_ID;
    } else {
      // path = "http://65.1.61.201:8111/purchase-order/list-purchase-order/${Variable.inventory_ID}";
      path = generalVerticalList + Variable.inventory_ID;
    }
    // path = tab == "RF"
    //    ? "http://65.1.61.201:8111/purchase-order/list-request-form/test"
    //    : "http://65.1.61.201:8111/purchase-order/list-purchase-order/test";
    print("SSSSSchecikngSSSSSSSSSSSSS"+path.toString());

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
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next,
      {String? tab = ""}) async {
    print("code1" + next.toString());
    String path = "";
    if (tab == "RF") {
      path = purchaseOrderLiveBaseUrl +
          "purchase-order/list-request-form/${Variable.inventory_ID}?$next";
    } else if (tab == "RFR") {
      path = purchaseOrderLiveBaseUrl +
          "purchase-order/list-purchase-order-for-invoice-posting/${Variable.inventory_ID}";
    } else if (tab == "II") {
      path = purchaseOrderLiveBaseUrl +
          "purchase-order/list-purchase-order-for-invoice-posting/${Variable.inventory_ID}?$next";
    } else {
      path = purchaseOrderLiveBaseUrl +
          "purchase-order/list-purchase-order/${Variable.inventory_ID}?$next";
    }
    print("urlof Search");
    print(path);

    print(path);
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
        previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PurchaseOrdertype> getPurchaseOrdertype() async {
    print("purchase");
    print(purchaseOrderType.toString());
    final response = await client.get(
      purchaseOrderType,
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

    PurchaseOrdertype ordertype =
        PurchaseOrdertype.fromJson(response.data['data']);
    print(ordertype);
    return ordertype;
  }

  @override
  Future<DoubleResponse> postPurchase(PurchaseOrderPost model) async {
    print(
      "post" + postPurchaseurl.toString(),
    );
    try {
      final response = await client.post(postPurchaseurl,
          data: model.toJson(),
          // data:{
          //
          //
          //
          //     "purchase_order_type": "National purchase",
          //
          //     "inventory_id": "test",
          //
          //     "vendor_id": "aksk",
          //
          //     "vendor_trn_number":"dgcvd",
          //
          //     "vendor_mail_id":"dcv@gmail.com",
          //
          //     "vendor_address":"gvc",
          //
          //     "address_1": "djncdks",
          //
          //     "address_2": "dlkncsd",
          //
          //     "promised_receipt_date": "2022-09-17",
          //
          //     "planned_receipt_date": "2022-02-18",
          //
          //     "note": "jhcdh",
          //
          //     "remarks": "cbdjcd",
          //
          //     "discount":null,
          //
          //     "foc":100,
          //
          //     "unit_cost": 98,
          //
          //     "excess_tax": 90,
          //
          //     "actual_cost": 98,
          //
          //     "vat": 98,
          //
          //     "grand_total": 89,
          //
          //     "vatable_amount": 98,
          //
          //     "created_by": "cvd",
          //
          //     "order_lines":[{"supplier_code":"hvd","variant_id":"gcvd","variant_name":"","barcode":"dcvd","purchase_uom":"cvd", "foc":100,"discount":100,
          //
          //       "requested_qty":100,"minimum_qty":100,"maximum_qty":100,"unit_cost":100,"grand_total":100,
          //
          //       "vatable_amount":100,"excess_tax":100,"actual_cost":100,"vat":100 }]
          //
          //   },

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
      print(e);
    }

    final response = await client.post(postPurchaseurl,
        data: model.toJson(),
        // data:{
        //
        //
        //
        //   "purchase_order_type": "National purchase",
        //
        //   "inventory_id": "",
        //
        //   "vendor_id": "aksk",
        //
        //   "vendor_trn_number":"dgcvd",
        //
        //   "vendor_mail_id":"dcv@gmail.com",
        //
        //   "vendor_address":"gvc",
        //
        //   "address_1": "djncdks",
        //
        //   "address_2": "dlkncsd",
        //
        //   "promised_receipt_date": "2022-09-17",
        //
        //   "planned_receipt_date": "2022-02-18",
        //
        //   "note": "jhcdh",
        //
        //   "remarks": "cbdjcd",
        //
        //   "discount":null,
        //
        //   "foc":100,
        //
        //   "unit_cost": 98,
        //
        //   "excess_tax": 90,
        //
        //   "actual_cost": 98,
        //
        //   "vat": 98,
        //
        //   "grand_total": 89,
        //
        //   "vatable_amount": 98,
        //
        //   "created_by": "cvd",
        //
        //   "order_lines":[{"supplier_code":"hvd","variant_id":"gcvd","variant_name":"","barcode":"dcvd","purchase_uom":"cvd", "foc":100,"discount":100,
        //
        //     "requested_qty":100,"minimum_qty":100,"maximum_qty":100,"unit_cost":100,"grand_total":100,
        //
        //     "vatable_amount":100,"excess_tax":100,"actual_cost":100,"vat":100 }]
        //
        // },
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
  Future<PaginatedResponse<List<VariantId>>> getVariantId(
      {String? vendorId, String? inventory = "",String ? code}) async {


    String path = inventory == "" || inventory == null
        ?code==null? inventoryLiveBaseUrl +
            "inventory-product/list-variant-by-inventory-and-vendor/${Variable.inventory_ID}?vcode=$vendorId":inventoryLiveBaseUrl +"inventory-product/list-variant-by-inventory-and-vendor/${Variable.inventory_ID}?vcode=$vendorId"+"&&"+code.toString()
        :code==null? inventoryLiveBaseUrl +
            "inventory-product/list-variant-by-inventory/$inventory":inventoryLiveBaseUrl +"inventory-product/list-variant-by-inventory/$inventory"+"?"+code.toString();

    // try{
    //   print("aaanananana");
    print(path);
    print("aaammamam");

    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<VariantId> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(VariantId.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<VariantId>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );


    // }catch(e){print("Akshaya2"+e.toString());}
    //   final response = await client.get(
    //     path,
    //     // data:
    //     // // {"payment_status": "completed", "order_status": "completed"},
    //     // {
    //     //
    //     // },
    //     options: Options(
    //       headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json'
    //       },
    //     ),
    //   );
    //   print("response" + response.toString());
    //   //print(response.data['results']);
    //   List<VariantId> items = [];
    //
    //   (response.data['data']['results'] as List).forEach((element) {
    //     // print("data");
    //
    //     items.add(VariantId.fromJson(element));
    //   });
    //   return items;
  }

  @override
  Future<PurchaseOrderTableModel> getTableDetails(int? id) async {
    String path =
        inventoryLiveBaseUrl + "inventory-product/read-variant-for-lpo/$id";
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
      print("searching response" + response.toString());
      PurchaseOrderTableModel dataa =
          PurchaseOrderTableModel.fromJson(response.data['data']);
      print(dataa);
      return dataa;
    } catch (e) {
      print("searchinfg error is here" + e.toString());
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
    print("creationItem" + response.toString());
    PurchaseOrderTableModel dataa =
        PurchaseOrderTableModel.fromJson(response.data['data']);
    print(dataa);
    return dataa;
  }

  @override
  Future<PurchaseCureentStockQty> getCurrentStock(
      String? id, String? invdendotyId) async {
    print("Avalkkayi");
    String path = inventoryLiveBaseUrl +
        "inventory-stock/get-stock-quantity-by-variant/"+invdendotyId.toString()+"/"+Variable.inventory_ID.toString();
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
      print("responsessssssssssssssssssssssssss" + response.toString());
      PurchaseCureentStockQty dataa =
          PurchaseCureentStockQty.fromJson(response.data['data']);
      print(dataa);
      return dataa;
    } catch (e) {
      print("mistake" + e.toString());
    }
    print("corntStock" + path.toString());
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
    PurchaseCureentStockQty dataa =
        PurchaseCureentStockQty.fromJson(response.data['data']);
    print(dataa);
    return dataa;
    ;
  }

  @override
  Future<PurchaseOrderRead> getGeneralPurchaseRead(int id) async {

    try {
      String path = generalPurchaseRead + id.toString();
      print("ppppath" + path.toString());
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

      PurchaseOrderRead dataa =
          PurchaseOrderRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
    }
    String path = generalPurchaseRead + id.toString();
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
    // print("responsesssssd" + response.toString());
    PurchaseOrderRead dataa = PurchaseOrderRead.fromJson(response.data['data']);
    // print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id) async {
    print("sunithi2" + id.toString());
    String path = generalPurchasePatch + id.toString();
    print(path);
    try {
      final response = await client.patch(path,
          // data: model.toJson(),
          data: {
            "purchase_order_type": model.purchaseOrderType,
            "promised_receipt_date": model.promisedReceiptdate,
            "vendor_id": model.vendorId,
            "vendor_trn_number": model.vendorTrnNumber,
            "vendor_address": model.vendorAddress,
            "vendor_mail_id": "",
            "planned_receipt_date": model.plannedRecieptDate,
            "address_1": model.address1,
            "address_2": model.address2,
            "note": model.note,
            "remarks": model.remarks,
            "unit_cost": model.unitcost,
            "excess_tax": model.excessTax,
            "actual_cost": model.actualCost,
            "vat": model.vat,
            "foc": model.foc,
            "discount": model.discount,
            "grand_total": model.grandTotal,
            "vatable_amount": model.variableAmount,
            "edited_by": model.edited_by,
            "order_lines": model.orderLines,
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
      print(e.toString());
    }
    final response = await client.patch(path,
        // data: model.toJson(),
        data: {
          "purchase_order_type": model.purchaseOrderType,
          "promised_receipt_date": model.promisedReceiptdate,
          "vendor_id": model.vendorId,
          "vendor_trn_number": model.vendorTrnNumber,
          "vendor_address": model.vendorAddress,
          "vendor_mail_id": model.vendorMailId,
          "planned_receipt_date": model.plannedRecieptDate,
          "address_1": model.address1,
          "address_2": model.address2,
          "note": model.note,
          "remarks": model.remarks,
          "unit_cost": model.unitcost,
          "excess_tax": model.excessTax,
          "actual_cost": model.actualCost,
          "vat": model.vat,
          "foc": model.foc,
          "discount": model.discount,
          "grand_total": model.grandTotal,
          "vatable_amount": model.variableAmount,
          "edited_by": model.edited_by,
          "order_lines": model.orderLines,
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
  Future<DoubleResponse> generalPurchaseDelet(int? id) async {
    String path = generalPurchaseRead + id.toString();
    print(path);
    print("path");
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
  Future<PurchaseRecievingRead> getGeneralPurchaseRecievingRead(int? id) async {
    try {
      print("akakakka");
      String path = purchaseRecievingRead + id.toString();
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
      // print("responsesssssd" + response.toString());
      PurchaseRecievingRead dataa =
          PurchaseRecievingRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("errorr" + e.toString());
      print("akakakka");
      String path = purchaseRecievingRead + id.toString();
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
      // print("responsesssssd" + response.toString());
      PurchaseRecievingRead dataa =
          PurchaseRecievingRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    }
  }

  @override
  Future<DoubleResponse> getPurchaseRecievePatch(
    int? id,
    PurchaseRecievingRead model,
  ) async {
    print("sunithi2" + id.toString());
    String path = purchaseRecievingReceivingPatch + id.toString();
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
  Future<DoubleResponse> generatePost(GenerateMissing model) async {
    print(
      "post" + generatedPo.toString(),
    );

    final response = await client.post(generatedPo,
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
  Future<DoubleResponse> additionlGeneratePost(
      AdditionalGenerateModel model) async {
    print("welcome");

    String path = additionalGeneratedPo;
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
      print("error is here" + e.toString());
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

// request form screen ####################################request form screeen***************
  @override
  Future<PurchaseOrderRead> getRequestFormRead(int? id) async {
    print("idddidd1" + id.toString());
    print("sssshamna" + id.toString());
    try {
      String path = requestFormRead + id.toString();
      print("ppppath" + path.toString());
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
      // print("responsesssssd" + response.toString());
      PurchaseOrderRead dataa =
          PurchaseOrderRead.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("error" + e.toString());
    }
    String path = generalPurchaseRead + id.toString();
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
    PurchaseOrderRead dataa = PurchaseOrderRead.fromJson(response.data['data']);
    // print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postRequest(PurchaseOrderPost model) async {
    print(
      "post" + requestFormCreate.toString(),
    );
    try {
      final response = await client.post(requestFormCreate,
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
    print(
      "post" + requestFormCreate.toString(),
    );

    final response = await client.post(requestFormCreate,
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
  Future<PurchaseOrdertype> getRequestFormOrdertype() async {
    print(requestFormOrderType);
    final response = await client.get(
      requestFormOrderType,
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
  Future<PaginatedResponse<List<OrderedPersonModel>>> getOrderedPerson(String ? code) async {
    print("orderedPerson3");
    print("token" + Variable.token.toString());
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = requestFormOderPerson;
    else
      path = requestFormOderPerson + "?$code";
    UserPreferences().getUser().then((value) {
      token = value.token;
      print("token is here222 exist" + token.toString());
    });



    print(path);

    // String path = inventory == "" || inventory == null
    //     ? "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory-and-vendor/test?vcode=test"
    //     : "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory/$inventory";
    print(path);
    try{
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
            'Accept': 'application/json',
            'Authorization': 'token ${token}'
          },
        ),
      );
      print("response" + response.toString());
      //print(response.data['results']);
      List<OrderedPersonModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(OrderedPersonModel.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return PaginatedResponse<List<OrderedPersonModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
      );

    }catch(e){
      print("e"+e.toString());
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
          'Accept': 'application/json',
          'Authorization': 'token ${token}'
        },
      ),
    );
    print("response" + response.toString());
    //print(response.data['results']);
    List<OrderedPersonModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OrderedPersonModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<OrderedPersonModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );



  }

  @override
  Future<DoubleResponse> getRequestFormPatch(
      PurchaseOrderPost model, int? id) async {
    String path = requestFormPatch + id.toString();
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
  Future<DoubleResponse> requestFormDelete(int? id) async {
    String path = requestFormPatch + id.toString();
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
  Future<PurchaseRecievingRead> getRequestFormReceivingRead(int? id) async {
    try {
      print("akakakka");
      String path = rqstReceivingRead + id.toString();
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
      PurchaseRecievingRead dataa =
          PurchaseRecievingRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("errorr" + e.toString());
      print("akakakka");
      String path = purchaseRecievingRead + id.toString();
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
      PurchaseRecievingRead dataa =
          PurchaseRecievingRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    }
  }

  @override
  Future<DoubleResponse> requestFormReceivingPatch(
      int? id, RequestReceivingPatch model) async {
    print("sunithi2" + id.toString());
    String path = rqstReceivingPatch + id.toString();
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
  Future<DoubleResponse> additionlGenerateRequest(
      AdditionalGenerateModel model) async {
    print("welcome");
    print(
      additionalGeneratedRequest,
    );
    try {
      final response = await client.post(additionalGeneratedRequest,
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
      print("error is here" + e.toString());
    }
    final response = await client.post(additionalGeneratedRequest,
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
  Future<InventoryRead> getInventoryRead(int id) async {
    try {
      String path = invoiceRead + id.toString();
      print("ppppath" + path.toString());
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

      InventoryRead dataa = InventoryRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print("error" + e.toString());
    }
    String path = invoiceRead + id.toString();
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
    InventoryRead dataa = InventoryRead.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postInventory(model) async {
    print(
      invoicePost.toString(),
    );

   try{
     final response = await client.post(invoicePost,
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
   catch(e){
     print(e);
   }
    final response = await client.post(invoicePost,
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
  Future<List<Result>> getVariantCode() async {
    print("vendorcode always");
    try {
      String path = vendorCodeUrl;

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
      print("response" + response.toString());
      //print(response.data['results']);
      List<Result> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        // print("data");

        items.add(Result.fromJson(element));
      });
      return items;
    } catch (e) {
      print("errorCalculation" + e.toString());
    }
    String path = vendorCodeUrl;

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
    List<Result> items = [];
    print("akkk");
    print("nmml" + response.data);

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(Result.fromJson(element));
      print("items" + items.toString());
    });
    return items;
  }

  @override
  Future<VariantDetailsModel> getVendorDetails(String? id) async {
    String path =
        "https://api-newpartner-uat.ahlancart.com/new_partner/vendor-partner/list?partner_code=$id";
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
      print("response" + response.toString());
      VariantDetailsModel dataa =
          VariantDetailsModel.fromJson(response.data['data']);
      print(dataa);
      return dataa;
    } catch (e) {
      print("eee" + e.toString());
    }
    print("ask" + path.toString());
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
    VariantDetailsModel dataa =
        VariantDetailsModel.fromJson(response.data['data']);
    print(dataa);
    return dataa;
  }

  @override
  Future<PaginatedResponse<List<InventoryListModel>>> getInventoryListRead(
      String? code) async {
    print("here arrived");
    print(code);
    String path = organizationLiveApiApi+code.toString();
    try {
      print("THE INVENTORYLIST PATH" + path.toString());
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
      List<InventoryListModel> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        // print("data");

        items.add(InventoryListModel.fromJson(element));
      });

      return PaginatedResponse<List<InventoryListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString());
    } catch (e) {
      print("the mistake is+" + e.toString());
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
    List<InventoryListModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(InventoryListModel.fromJson(element));
    });

    return PaginatedResponse<List<InventoryListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<double> getUnitcost(int? variantId) async {
    String path = unicostGetApi + variantId.toString();
    // try {
    //
    //   print("ppppath" + path.toString());
    //   print(path);
    //   final response = await client.get(
    //     path,
    //     // data:
    //     // // {"payment_status": "completed", "order_status": "completed"},
    //     // {
    //     //
    //     // },
    //     options: Options(
    //       headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json'
    //       },
    //     ),
    //   );
    //   print("responsesssssd" + response.toString());
    //   double dataa =response.data['data']['unit_cost'];
    //   // Data.fromJson(response.data['data']);
    //   // print("responsessssaaaaaaasd $dataa");
    //
    //   return dataa;
    // } catch (e) {
    //   print("error" + e.toString());
    // }


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

    double dataa =response.data['data']['unit_cost'];
    print("responses DATA ssssd" + dataa.toString());
    Variable.unitCostCosting=dataa;

    return dataa;
  }
}
