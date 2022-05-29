import 'package:dio/dio.dart';
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

import 'core/uttils/variable.dart';

abstract class LogisticDataSource {
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next);

  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next);

  Future<PurchaseOrdertype> getPurchaseOrdertype();

  Future<DoubleResponse> postPurchase(PurchaseOrderPost model);
  Future<List<VariantId>> getVariantId();
  Future<PurchaseOrderTableModel> getTableDetails(int id);
  Future<PurchaseCureentStockQty> getCurrentStock(
      int? id, String? invdendotyId);
  Future<PurchaseOrderRead> getGeneralPurchaseRead(int id);
  Future<DoubleResponse> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id);
  Future<DoubleResponse> generalPurchaseDelet(int id);
  Future<PurchaseRecievingRead> getGeneralPurchaseRecievingRead(int? id);
  Future<DoubleResponse> getPurchaseRecievePatch(
      int? id, PurchaseRecievingRead model);
  Future<DoubleResponse> generatePost(GenerateMissing model);
  Future<DoubleResponse> additionlGeneratePost(AdditionalGenerateModel model);
}

class InventoryDataSourceImpl extends LogisticDataSource {
  Dio client = Dio();

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next) async {
    print("aaaaaa");
    String path =
        "http://65.1.61.201:8111/purchase-order/list-purchase-order/test";

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
    print("code1"+next.toString());
    String path =
        "http://65.1.61.201:8111/purchase-order/list-purchase-order/test?code=$next";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PurchaseOrder> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PurchaseOrder.fromJson(element));
    });
    print("items"+items.toString());
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
  Future<List<VariantId>> getVariantId() async {
    print("repooooosss");

    String path =
        "http://65.1.61.201:8112/inventory-product/list-variant-by-inventory-and-vendor/test?vcode=test";
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
      print("eee"+e.toString());
    }
    print("ask"+path.toString());
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
      int? id, String? invdendotyId) async {
    String path =
        "http://65.1.61.201:8112/inventory-stock/get-stock-quantity-by-variant/$invdendotyId/test";
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
  Future<DoubleResponse> additionlGeneratePost(AdditionalGenerateModel model) async {
    print(
     additionalGeneratedPo,
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
}
