import 'package:dio/dio.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
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
  Future<PurchaseCureentStockQty> getCurrentStock(int? id);
  Future<PurchaseOrderRead> getGeneralPurchaseRead(int id);
  Future<DoubleResponse> getGeneralPurchasePatch(PurchaseOrderPost model,int? id);
}

class InventoryDataSourceImpl extends LogisticDataSource {
  Dio client = Dio();

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next) async {
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
    });
    return PaginatedResponse<List<PurchaseOrder>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next) async {
    String path =
        "https://api-purchase-order-staging.rgcdynamics.net/purchase-order/list-purchase-order/test?code=$next";
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<PurchaseOrder> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PurchaseOrder.fromJson(element));
    });
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
    print("responseddddd" + response.toString());
    PurchaseOrderTableModel dataa =
        PurchaseOrderTableModel.fromJson(response.data['data']);
    print(dataa);
    return dataa;
  }

  @override
  Future<PurchaseCureentStockQty> getCurrentStock(int? id) async {
    String path =
        "http://65.1.61.201:8112/inventory-stock/get-stock-quantity-by-variant/test001/test";
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
      PurchaseOrderPost model,int? id) async {
    print("sunithi2"+id.toString());
String path=generalPurchasePatch+id.toString();
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
}
