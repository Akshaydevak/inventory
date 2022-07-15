import 'package:dio/dio.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/responseutils.dart';

import 'model/purchaseinvoice.dart';
import 'package:inventory/model/purchaseorder.dart';

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
    print("sssshamna" + id.toString());
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
    try {
      final response = await client.post(
          "http://invtry-purchase-return.rgcdynamics.org/purchase-return/create-purchase-return",
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

    final response = await client.post(
        "http://invtry-purchase-return.rgcdynamics.org/purchase-return/create-purchase-return",
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
}
