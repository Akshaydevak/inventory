import 'package:dartz/dartz.dart';
import 'package:inventory/inventoryDatasource.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/failiure.dart';
import 'package:inventory/widgets/repoExecute.dart';
import 'package:inventory/widgets/responseutils.dart';

import 'model/variantid.dart';

abstract class InventoryRepository {
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getInventorySearch(String? next);
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? next);
  Future<Either<Failure, PurchaseOrdertype>> getPurchaseOrdertype();
  Future<Either<Failure, DoubleResponse>> postPurchase(PurchaseOrderPost model);
  Future<Either<Failure, List<VariantId>>> getVariantId();
  Future<Either<Failure, PurchaseOrderTableModel>> getTableDetails(int? id);
}

class InventoryRepositoryImpl extends InventoryRepository {
  InventoryDataSourceImpl remoteDataSource = InventoryDataSourceImpl();
  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getInventorySearch(String? next) {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getInventorySearch(next));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? next) {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getSearch(next));
  }

  @override
  Future<Either<Failure, PurchaseOrdertype>> getPurchaseOrdertype() {
    return repoExecute<PurchaseOrdertype>(
        () async => remoteDataSource.getPurchaseOrdertype());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPurchase(
      PurchaseOrderPost model) {
    print("Akshay");

    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postPurchase(model));
  }

  @override
  Future<Either<Failure, List<VariantId>>> getVariantId() {
    print("repooooo");
    return repoExecute<List<VariantId>>(
        () async => remoteDataSource.getVariantId());
  }

  @override
  Future<Either<Failure, PurchaseOrderTableModel>> getTableDetails(int? id) {
    return repoExecute<PurchaseOrderTableModel>(
        () async => remoteDataSource.getTableDetails(id));
  }
}
