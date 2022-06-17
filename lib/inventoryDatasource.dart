import 'package:dio/dio.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
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
import 'core/uttils/variable.dart';

abstract class LogisticDataSource {
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next,
      {String tab = ""});

  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next);

  Future<PurchaseOrdertype> getPurchaseOrdertype();

  Future<DoubleResponse> postPurchase(PurchaseOrderPost model);
  Future<List<VariantId>> getVariantId([String inventory]);
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
  Future<PurchaseOrderRead> getRequestFormRead(int id);
  Future<DoubleResponse> postRequest(PurchaseOrderPost model);
  Future<PurchaseOrdertype> getRequestFormOrdertype();
  Future<List<OrderedPersonModel>> getOrderedPerson();
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
}

class InventoryDataSourceImpl extends LogisticDataSource {
  Dio client = Dio();

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next,
      {String tab = ""}) async {
    print("aaaaaa");
    String path = "";
    if (tab == "RF") {
      path = "http://65.1.61.201:8111/purchase-order/list-request-form/test";
    } else if (tab == "RFR") {
      path =
          "http://65.1.61.201:8111/purchase-order/list-purchase-order-for-invoice-posting/1";
    } else if (tab == "II") {
      path =
          "http://65.1.61.201:8111/purchase-order/list-purchase-order-for-invoice-posting/test";
    } else {
      path = "http://65.1.61.201:8111/purchase-order/list-purchase-order/test";
    }
    // path = tab == "RF"
    //    ? "http://65.1.61.201:8111/purchase-order/list-request-form/test"
    //    : "http://65.1.61.201:8111/purchase-order/list-purchase-order/test";

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
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next) async {
    print("code1" + next.toString());
    String path =
        "http://65.1.61.201:8111/purchase-order/list-purchase-order/test?code=$next";
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
        response.data['data']['count'].toString());
  }

  @override
  Future<PurchaseOrdertype> getPurchaseOrdertype() async {
    final response = await client.get(
      "http://65.1.61.201:8111/purchase-order/create-purchase-order",
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
  Future<DoubleResponse> postPurchase(PurchaseOrderPost model) async {
    print(
      "post" + postPurchaseurl.toString(),
    );

    final response = await client.post(postPurchaseurl,
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
  Future<List<VariantId>> getVariantId([String? inventory]) async {
    print("repooooosss");
    print("in" + inventory.toString());

    String path = inventory == "" || inventory == null
        ? "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory-and-vendor/test?vcode=test"
        : "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory/$inventory";
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
    List<VariantId> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(VariantId.fromJson(element));
    });
    return items;
  }

  @override
  Future<PurchaseOrderTableModel> getTableDetails(int? id) async {
    String path =
        "http://65.1.61.201:8112/inventory-product/read-variant-for-lpo/$id";
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
      PurchaseOrderTableModel dataa =
          PurchaseOrderTableModel.fromJson(response.data['data']);
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
    print("responseddddd" + response.toString());
    PurchaseOrderTableModel dataa =
        PurchaseOrderTableModel.fromJson(response.data['data']);
    print(dataa);
    return dataa;
  }

  @override
  Future<PurchaseCureentStockQty> getCurrentStock(
      String? id, String? invdendotyId) async {
    String path =
        "http://65.1.61.201:8112/inventory-stock/get-stock-quantity-by-variant/$invdendotyId/$id";
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
      print("error" + e.toString());
    }
    print("path" + path.toString());
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
    print("sssshamna" + id.toString());
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
      print("responsesssssd" + response.toString());
      PurchaseOrderRead dataa =
          PurchaseOrderRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
      return dataa;
    } catch (e) {
      print(e);
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
    print("responsesssssd" + response.toString());
    PurchaseOrderRead dataa = PurchaseOrderRead.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id) async {
    print("sunithi2" + id.toString());
    String path = generalPurchasePatch + id.toString();
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
  Future<DoubleResponse> getPurchaseRecievePatch(
    int? id,
    PurchaseRecievingRead model,
  ) async {
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
    print(
      additionalGeneratedPo,
    );
    try {
      final response = await client.post(
          "http://65.1.61.201:8111/purchase-order/create-additional-system-generated-lpo",
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
    final response = await client.post(
        "http://65.1.61.201:8111/purchase-order/create-additional-system-generated-lpo",
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
  Future<PurchaseOrderRead> getRequestFormRead(int id) async {
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
      print("responsesssssd" + response.toString());
      PurchaseOrderRead dataa =
          PurchaseOrderRead.fromJson(response.data['data']);
      print("rwead" + dataa.toString());
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
    print("responsesssssd" + response.toString());
    PurchaseOrderRead dataa = PurchaseOrderRead.fromJson(response.data['data']);
    print("rwead" + dataa.toString());
    return dataa;
  }

  @override
  Future<DoubleResponse> postRequest(PurchaseOrderPost model) async {
    try {
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
  Future<List<OrderedPersonModel>> getOrderedPerson() async {
    print("orderedPerson3");

    String path =
        "https://api-user-uat.ahlancart.com/user-employee_employeeuser";
    print(path);

    // String path = inventory == "" || inventory == null
    //     ? "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory-and-vendor/test?vcode=test"
    //     : "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory/$inventory";
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
    List<OrderedPersonModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(OrderedPersonModel.fromJson(element));
    });
    return items;
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
    String path = purchaseRecievingPatch + id.toString();
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
}
