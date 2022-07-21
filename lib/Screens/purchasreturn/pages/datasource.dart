import 'package:dio/dio.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/responseutils.dart';

import 'model/purchaseinvoice.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'model/purchasereturninvoicemodel.dart';

abstract class PurchaseSourceAbstract {
  Future<List<PurchaseInvoice>> getPurchaseInvoice();
  Future<PurchaseReturnGeneralRead> getGeneralInvoiceRead(int? id);
  Future<DoubleResponse> postGeneral(PurchaseReturnGeneralPost model);
  Future<PaginatedResponse<List<PurchaseOrder>>> getGeneralVertical();
  Future<PaginatedResponse<List<PurchaseOrder>>> getSearch(
    String? code,
  );
  Future<ReturnGeneralRead> getGeneralPurchaseReturnRead(int id);
  Future<DoubleResponse> getGeneralFormPatch(ReturnGeneralRead model, int? id);
  Future<DoubleResponse> returnGeneralDelete(int? id);
  Future<PurchaseInvoiceReadModel> getInvoiceRead(int id);
  Future<DoubleResponse> invoicePost(PurchaseReturnInvoicePostModel model);
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
    print("http://api-purchase-order-staging.rgcdynamics.org/purchase-order/read-purchase-invoice-for-purchase-return/$id");
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
   print( purchaseReturnGeneralPost);
    try {
      final response = await client.post(purchaseReturnGeneralPost,
          data: model.toJson(),
          // data: {
          //   "order_type": model.orderType,
          //   "inventory_id": model.inventoryId,
          //   "purchase_invoice_id": model.purchaseInvoiceId,
          //   "vendor_code": model.vendorCode,
          //   "vendor_address": model.vendorAddress,
          //   "vendor_trn_number": model.vendorTrnNumber,
          //   "vendor_mail_id": model.vendorMailId,
          //   "note": "test",
          //   "remarks": "test",
          //   "unit_cost": 100,
          //   "excess_tax": 100,
          //   "actual_cost": 100,
          //   "vat": 100,
          //   "grand_total": 100,
          //   "vatable_amount": 100.0,
          //   "foc": 100.0,
          //   "discount": 100,
          //   "created_by": "test",
          //   "order_lines":model.lines
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
    } catch (e) {
      print("errrr" + e.toString());
    }

    final response = await client.post(purchaseReturnGeneralPost,
        data: model.toJson(),
        // data: {
        //   "order_type": model.orderType,
        //   "inventory_id": model.inventoryId,
        //   "purchase_invoice_id": model.purchaseInvoiceId,
        //   "vendor_code": model.vendorCode,
        //   "vendor_address": model.vendorAddress,
        //   "vendor_trn_number": model.vendorTrnNumber,
        //   "vendor_mail_id": model.vendorMailId,
        //   "note": "test",
        //   "remarks": "test",
        //   "unit_cost": 100,
        //   "excess_tax": 100,
        //   "actual_cost": 100,
        //   "vat": 100,
        //   "grand_total": 100,
        //   "vatable_amount": 100.0,
        //   "foc": 100.0,
        //   "discount": 100,
        //   "created_by": "test",
        //   "order_lines":model.lines
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
      ReturnGeneralRead model, int? id) async {
    String path =
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/read-purchase-return/" +
            id.toString();
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
  Future<DoubleResponse> invoicePost(PurchaseReturnInvoicePostModel model) async {
    print("akkkaaa"+model.toString());
    print("http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice");
    try{
      final response = await client.post("http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice",
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
    }catch(e){
      print("akshayaaa"+e.toString());
    }
    final response = await client.post("http://invtry-purchase-return.rgcdynamics.org/purchase-return-invoice/create-purchase-return-invoice",
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
}
