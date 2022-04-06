import 'package:dio/dio.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/responseutils.dart';

abstract class LogisticDataSource {
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next);

  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(String? next);

  Future<PurchaseOrdertype> getPurchaseOrdertype();

  Future<DoubleResponse> postPurchase(PurchaseOrderPost model);
}

class InventoryDataSourceImpl extends LogisticDataSource {
  Dio client = Dio();

  @override
  Future<PaginatedResponse<List<PurchaseOrder>>> getInventorySearch(
      String? next) async {
    String path =
        "https://api-purchase-order-staging.rgcdynamics.net/purchase-order/list-purchase-order/test";

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
    final response = await client.get("http://192.168.1.8:9000/purchase-order/create-purchase-order",
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
    print(postPurchaseurl,);
    print("++++++++++++++++++++++++++++++");
    final response = await client.post(
      postPurchaseurl,
        data:model.toJson(),
        // {
        //   "purchase_order_type": model.purchaseOrderType,
        //   "inventory_id": model.iventoryId,
        //   "vendor_id": model.vendorId,
        //   "vendor_trn_number": model.vendorTrnNumber,
        //   "vendor_mail_id": model.vendorMailId,
        //   "vendor_address":model.vendorAddress,
        //   "address_1": model.address1,
        //   "address_2": model.address2,
        //   "promised_receipt_date": model.promisedReceiptdate,
        //   "planned_receipt_date": model.plannedRecieptDate,
        //   "note": model.note,
        //   "remarks": model.remarks,
        //   "discount":model.discount,
        //   "foc":model.foc,
        //   "unit_cost":model.unitcost,
        //   "excess_tax":model.excessTax,
        //   "actual_cost": model.actualCost,
        //   "vat":model.vat,
        //   "grand_total": model.grandTotal,
        //   "vatable_amount":model.variableAmount,
        //   "created_by": "cvd",
        //   "order_lines": []
        // }

        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("as");
    print(response);

    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }
}
