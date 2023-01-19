import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/inventoryDatasource.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/failiure.dart';
import 'package:inventory/widgets/repoExecute.dart';
import 'package:inventory/widgets/responseutils.dart';

import 'Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'Screens/inventory_creation_tab/inventory_read_model.dart';
import 'model/variantid.dart';

abstract class InventoryRepository {
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getInventorySearch(String? next, {String? tab});
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? next,
      {String? tab = ""});
  Future<Either<Failure, PurchaseOrdertype>> getPurchaseOrdertype();
  Future<Either<Failure, DoubleResponse>> postPurchase(PurchaseOrderPost model);
  Future<Either<Failure,PaginatedResponse< List<VariantId>>>> getVariantId(
     {String? vendorId, String? inventory = "",String? code});
  Future<Either<Failure, List<Result>>> getVariantCode();
  Future<Either<Failure, PurchaseOrderTableModel>> getTableDetails(int? id);
  Future<Either<Failure, VariantDetailsModel>> getVendorDetails(String? id);
  Future<Either<Failure, PurchaseCureentStockQty>> getCurrentStock(
      String? id, String? invdendotyId);
  Future<Either<Failure, PurchaseOrderRead>> getGeneralPurchaseRead(int id);
  Future<Either<Failure, DoubleResponse>> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id);
  Future<Either<Failure, DoubleResponse>> generalPurchaseDelet(int? id);
  Future<Either<Failure, PurchaseRecievingRead>>
      getGeneralPurchaseRecievingRead(int? id);
  Future<Either<Failure, DoubleResponse>> getPurchaseRecievePatch(
    int? id,
    PurchaseRecievingRead model,
  );
  Future<Either<Failure, DoubleResponse>> generatePost(GenerateMissing model);
  Future<Either<Failure, DoubleResponse>> additionlGeneratePost(
      AdditionalGenerateModel model);
  //requestform******************************************************requestform*********************
  Future<Either<Failure, PurchaseOrderRead>> getRequestFormRead(int? id);
  Future<Either<Failure, DoubleResponse>> postRequest(PurchaseOrderPost model);
  Future<Either<Failure, PurchaseOrdertype>> getRequestFormOrdertype();
  Future<Either<Failure,PaginatedResponse< List<OrderedPersonModel>>>> getOrderedPerson(String ? code);
  Future<Either<Failure, DoubleResponse>> getRequestFormPatch(
      PurchaseOrderPost model, int? id);
  Future<Either<Failure, DoubleResponse>> requestFormDelete(int? id);
  //******************request receiving form***********************
  Future<Either<Failure, PurchaseRecievingRead>> getRequestFormReceivingRead(
      int? id);
  Future<Either<Failure, DoubleResponse>> requestFormReceivingPatch(
    int? id,
    RequestReceivingPatch model,
  );
  Future<Either<Failure, DoubleResponse>> additionlGenerateRequest(
      AdditionalGenerateModel model);

  //****************************inventory tab
  Future<Either<Failure, InventoryRead>> getInventoryRead(int id);
  Future<Either<Failure, DoubleResponse>> postInventory(
      InventoryPostModel model);
  Future<Either<Failure, PaginatedResponse<List<InventoryListModel>>>>
      getInventoryListRead(String code);
  Future<Either<Failure, double>> getUnitcost(int? variantId);
}

class InventoryRepositoryImpl extends InventoryRepository {
  InventoryDataSourceImpl remoteDataSource = InventoryDataSourceImpl();
  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getInventorySearch(String? next, {String? tab = ""}) {
    print("aaaaaa");

    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getInventorySearch(next, tab: tab));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? next,
      {String? tab = ""}) {
    print("code1" + next.toString());
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getSearch(next, tab: tab));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getPurchaseOrdertype() {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getPurchaseOrdertype());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPurchase(
      PurchaseOrderPost model) {
    print("Akshaytttttttttttt");

    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPurchase(model));
  }

  @override
  Future<Either<Failure,PaginatedResponse< List<VariantId>>>> getVariantId(
      {String? vendorId, String? inventory = "",String? code}) {


    return repoExecute<PaginatedResponse<List<VariantId>>>(() async => remoteDataSource
        .getVariantId(code:code,vendorId: vendorId, inventory: inventory));
  }

  @override
  Future<Either<Failure, PurchaseOrderTableModel>> getTableDetails(int? id) {
    print("ennnnteeerred");
    return repoExecute<PurchaseOrderTableModel>(
        () async => remoteDataSource.getTableDetails(id));
  }

  @override
  Future<Either<Failure, PurchaseCureentStockQty>> getCurrentStock(
      String? id, String? invdendotyId) {
    return repoExecute<PurchaseCureentStockQty>(
        () async => remoteDataSource.getCurrentStock(id, invdendotyId));
  }

  @override
  Future<Either<Failure, PurchaseOrderRead>> getGeneralPurchaseRead(int id) {
    print("Anvar");
    return repoExecute<PurchaseOrderRead>(
        () async => remoteDataSource.getGeneralPurchaseRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getGeneralPurchasePatch(
      PurchaseOrderPost model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.getGeneralPurchasePatch(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> generalPurchaseDelet(int? id) {
    print("id,,,,,,," + id.toString());
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.generalPurchaseDelet(id));
  }

  @override
  Future<Either<Failure, PurchaseRecievingRead>>
      getGeneralPurchaseRecievingRead(int? id) {
    print("akakakka");
    return repoExecute<PurchaseRecievingRead>(
        () async => remoteDataSource.getGeneralPurchaseRecievingRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getPurchaseRecievePatch(
      int? id, PurchaseRecievingRead model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.getPurchaseRecievePatch(
              id,
              model,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> generatePost(GenerateMissing model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.generatePost(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> additionlGeneratePost(
      AdditionalGenerateModel model) {
    print("welcome");
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.additionlGeneratePost(model));
  }

  @override
  Future<Either<Failure, PurchaseOrderRead>> getRequestFormRead(int? id) {
    print("idddidd1" + id.toString());
    return repoExecute<PurchaseOrderRead>(
        () async => remoteDataSource.getRequestFormRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postRequest(PurchaseOrderPost model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postRequest(model));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getRequestFormOrdertype() {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getRequestFormOrdertype());
  }

  @override
  Future<Either<Failure,PaginatedResponse< List<OrderedPersonModel>>>> getOrderedPerson( String? code) {
    print("orderedPerson");
    return repoExecute<PaginatedResponse<List<OrderedPersonModel>>>(
        () async => remoteDataSource.getOrderedPerson(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getRequestFormPatch(
      PurchaseOrderPost model, int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.getRequestFormPatch(model, id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> requestFormDelete(int? id) {
    print("id,,,,,,," + id.toString());
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.requestFormDelete(id));
  }

  @override
  Future<Either<Failure, PurchaseRecievingRead>> getRequestFormReceivingRead(
    int? id,
  ) {
    return repoExecute<PurchaseRecievingRead>(
        () async => remoteDataSource.getRequestFormReceivingRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> requestFormReceivingPatch(
      int? id, RequestReceivingPatch model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.requestFormReceivingPatch(
              id,
              model,
            ));
  }

  @override
  Future<Either<Failure, DoubleResponse>> additionlGenerateRequest(
      AdditionalGenerateModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.additionlGenerateRequest(model));
  }

  @override
  Future<Either<Failure, InventoryRead>> getInventoryRead(int id) {
    return repoExecute<InventoryRead>(
        () async => remoteDataSource.getInventoryRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postInventory(
      InventoryPostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postInventory(model));
  }

  @override
  Future<Either<Failure, List<Result>>> getVariantCode() {
    return repoExecute<List<Result>>(
        () async => remoteDataSource.getVariantCode());
  }

  @override
  Future<Either<Failure, VariantDetailsModel>> getVendorDetails(String? id) {
    return repoExecute<VariantDetailsModel>(
        () async => remoteDataSource.getVendorDetails(id));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<InventoryListModel>>>>
      getInventoryListRead(String code) {
    return repoExecute<PaginatedResponse<List<InventoryListModel>>>(
        () async => remoteDataSource.getInventoryListRead(code));
  }

  @override
  Future<Either<Failure, double>> getUnitcost(int? variantId) {
    return repoExecute<double>(
        () async => remoteDataSource.getUnitcost(variantId));
  }
}
