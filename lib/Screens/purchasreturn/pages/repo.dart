import 'package:dartz/dartz.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/failiure.dart';
import 'package:inventory/widgets/repoExecute.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'datasource.dart';
import 'model/purchaseinvoice.dart';

abstract class PurchaseReturnRepoAbstract {
  Future<Either<Failure, List<PurchaseInvoice>>> getPurchaseInvoice();
  Future<Either<Failure, PurchaseReturnGeneralRead>> getGeneralInvoiceRead(
      int? id);
  Future<Either<Failure, DoubleResponse>> postGeneral(
      PurchaseReturnGeneralPost model);
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getGeneralVertical();
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
    String? code,
  );
  Future<Either<Failure, ReturnGeneralRead>> getGeneralPurchaseReturnRead(
      int id);
  Future<Either<Failure, DoubleResponse>> getGeneralFormPatch(
      ReturnGeneralRead model, int? id);
  Future<Either<Failure, DoubleResponse>> returnGeneralDelete(int? id);

  Future<Either<Failure, PurchaseInvoiceReadModel>> getInvoiceRead(int id);
  Future<Either<Failure, DoubleResponse>> invoicePost(
      PurchaseReturnInvoicePostModel model);
}

class PurchaseReturnImpl extends PurchaseReturnRepoAbstract {
  PurchaseSourceImpl remoteDataSource = PurchaseSourceImpl();

  @override
  Future<Either<Failure, List<PurchaseInvoice>>> getPurchaseInvoice() {
    return repoExecute<List<PurchaseInvoice>>(
        () async => remoteDataSource.getPurchaseInvoice());
  }

  @override
  Future<Either<Failure, PurchaseReturnGeneralRead>> getGeneralInvoiceRead(
      int? id) {
    return repoExecute<PurchaseReturnGeneralRead>(
        () async => remoteDataSource.getGeneralInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postGeneral(
      PurchaseReturnGeneralPost model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.postGeneral(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>>
      getGeneralVertical() {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getGeneralVertical());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<PurchaseOrder>>>> getSearch(
      String? code) {
    return repoExecute<PaginatedResponse<List<PurchaseOrder>>>(
        () async => remoteDataSource.getSearch(
              code,
            ));
  }

  @override
  Future<Either<Failure, ReturnGeneralRead>> getGeneralPurchaseReturnRead(
      int id) {
    return repoExecute<ReturnGeneralRead>(
        () async => remoteDataSource.getGeneralPurchaseReturnRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getGeneralFormPatch(
      ReturnGeneralRead model, int? id) {
    return repoExecute<DoubleResponse>(() async => remoteDataSource
        .getGeneralFormPatch(model, id)); // TODO: implement getGeneralFormPatch
  }

  @override
  Future<Either<Failure, DoubleResponse>> returnGeneralDelete(int? id) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.returnGeneralDelete(id));
  }

  @override
  Future<Either<Failure, PurchaseInvoiceReadModel>> getInvoiceRead(int id) {
    return repoExecute<PurchaseInvoiceReadModel>(
        () async => remoteDataSource.getInvoiceRead(id));
  }

  @override
  Future<Either<Failure, DoubleResponse>> invoicePost(
      PurchaseReturnInvoicePostModel model) {
    return repoExecute<DoubleResponse>(
        () async => remoteDataSource.invoicePost(model));
  }
}
