import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_purchase_receiving/screens/purchase_receiving_receiving_lines.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_purchase_receiving/screens/purchase_receiving_stable_table.dart';
import 'package:inventory/Screens/variant/variantdetails/model/vendormodel.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/printScreen.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/pellete.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/additionalgenerate_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchasegenerating_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievig_read_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievingpatch_cubit.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';


class PurchaseOrderRecievinScreen extends StatefulWidget {
  @override
  _PurchaseOrderRecievinScreenState createState() => _PurchaseOrderRecievinScreenState();
}

class _PurchaseOrderRecievinScreenState extends State<PurchaseOrderRecievinScreen> {
  TextEditingController controller = TextEditingController();
  final GlobalKey<PurchasReturnGeneralGrowableTableState> _myWidgetState = GlobalKey<PurchasReturnGeneralGrowableTableState>();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController recievingCodeController = TextEditingController();
  TextEditingController orederDateController = TextEditingController();
  TextEditingController orederDate2Controller = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController invoiceStausController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController discController = TextEditingController();
  TextEditingController promisedRecieptDate = TextEditingController();
  TextEditingController plannedRecieptDate = TextEditingController();
  TextEditingController receivedController = TextEditingController();
  TextEditingController reason = TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();//
  TextEditingController unitcost1 = TextEditingController(text: "0");
  TextEditingController expiryDate = TextEditingController(text: "0");
  TextEditingController expiryDate2 = TextEditingController(text: "");
  TextEditingController vendorCodeController = TextEditingController();
  TextEditingController recievedClearController = TextEditingController();
  TextEditingController unitCostClearController = TextEditingController();
  TextEditingController excessClearController = TextEditingController();
  TextEditingController discountClearController = TextEditingController();
  TextEditingController focClearController = TextEditingController();

  var expiryDate1Controllers = <TextEditingController>[];
  var expiryDate2tControllers = <TextEditingController>[];
  var expirydateControllerList = <TextEditingController>[];
  var expirydateControllerList2 = <TextEditingController>[];

  int? recievedQty=0;
  bool select=false;

  ScrollController? _scrollController = ScrollController();
  TextEditingController itemsearch = TextEditingController();
  late AutoScrollController scontroller;
  late AutoScrollController verticalController;
  var unitcostAdditionalListControllers = <TextEditingController>[];
  var unitcostReceivingListControllers = <TextEditingController>[];
  int selectedVertical = 0;
  String? inventoryId = "";
  int? receivingId ;
  String? variantId;
  String? supplierRefCode="";
  String? barcode;
  String? vendorCode;
  String? varinatname;
  String? vrefcod;
  String? purchaseUomName;
  double? unitcost=0;
  double? actualCost1;
  double? grandTotal1;
  double? vatableAmount1;
  bool isReceived1=false;
  bool isActive1=false;
  bool isFree1=false;
  bool recievlinequantityCheck=false;
  bool isInvoiced1=false;
  double?foc1=0;
  double?vat1=0;
  double?excess1=0;
  double?discount=0;
  int?stock=0;
  bool  onChange=false;
  bool hasData=false;
  bool variantIdcheck=false;




  PurchaseOrderTableModel? purchaseTable;
  var paginatedList;
  int? veritiaclid = 0;
  List<int?> currentStock = [];
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<PurchaseOrder> result = [];

  List<RecievingLines> recievingLisnes = [];
  List<RecievingLines> additionalVariants = [];
  NavigationProvider vm = NavigationProvider();
  bool stockCheck=false;
  double grands = 0;
  double focValue = 0;
  double VatableValue = 0;
  double excessTax = 0;
  double vatValue = 0;
  double actualValue = 0;
  double excessTAxValue = 0;
  double vatableValue = 0;
  double unitcost2 = 0;
  String? purchaseUom;
  double discountValue = 0;
  bool updateCheck=false;
  bool updateCheck1=false;
  tableAssign(List<RecievingLines> table1) {
    recievingLisnes = List.from(table1);
    setState(() {
      addition();
    });
  }
  addition() {
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    print("enterd");
    print("+==" + recievingLisnes.toString());
    for (var i = 0; i < recievingLisnes.length; i++) {
      if (recievingLisnes.isNotEmpty == true ) {
        if (recievingLisnes[i].isActive == true && recievingLisnes[i].updateCheck == false) {
          var unicost1= recievingLisnes[i].unitCost??0;
          var vatValue1= recievingLisnes[i].vat??0;
          var grands1= recievingLisnes[i].grandTotal??0;
          var actualValue1= recievingLisnes[i].actualCost??0;
          var discountValue1= recievingLisnes[i].discount??0;
          var focValue1= recievingLisnes[i].foc??0;
          var VatableValue1= recievingLisnes[i].vatableAmount??0;
          var excessTAxValue1= recievingLisnes[i].excessTax??0;
          unitcost = double.parse(
              (unitcost! + unicost1).toStringAsFixed(2));

          grands = double.parse(
              (grands + grands1).toStringAsFixed(2));
          actualValue = double.parse(
              (actualValue + actualValue1).toStringAsFixed(
                  2));
          vatValue = double.parse(
              (vatValue + vatValue1).toStringAsFixed(2));
          discountValue = double.parse(
              (discountValue + discountValue1).toStringAsFixed(
                  2));
          focValue = double.parse(
              (focValue + focValue1).toStringAsFixed(2));

          VatableValue = double.parse(
              (VatableValue + VatableValue1)
                  .toStringAsFixed(2));
          print("excessTaxvalue" + recievingLisnes.toString());
          excessTAxValue = double.parse(
              (excessTAxValue +excessTAxValue1).toStringAsFixed(
                  2));
        }
      }
    }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    grandTotalController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    setState(() {

    });

  }
  valueAddingTextEdingController(){
    if(additionalVariants.isNotEmpty){
      for(var i=0;i<additionalVariants.length;i++){
        var unitcost = new TextEditingController(text:additionalVariants [i].unitCost.toString()??"");
        unitcostAdditionalListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }  valueAddingRecievingTextEdingController(){
    if(recievingLisnes.isNotEmpty){
      for(var i=0;i<recievingLisnes.length;i++){
        var unitcost = new TextEditingController(text:recievingLisnes [i].unitCost.toString()??"");
        unitcostReceivingListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }
  vatableAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount){
    vatableAmount1 =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
  }
  vatableFocAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount,double? foc ){
    vatableAmount1=double.parse(((((qty!*unitCost!)-(foc!*unitCost!))+excessTax!)-discount!).toStringAsFixed(2));
  }
  actualAndgrandTotal(double? vatableAmount,double? vat){

    actualCost1 = double.parse((vatableAmount! +
        ((vatableAmount *
            vat!) /
            100)).toStringAsFixed(2));
    grandTotal1=actualCost1;

  }
  clear(){


    variantId="";
    varinatname="";
    unitCostCheck.text="";
    barcode="";
    recievedClearController.clear();
    unitCostClearController.clear();
    excessClearController.clear();
    discountClearController.clear();
    focClearController.clear();
    expiryDate.clear();
    expiryDate2.clear();
    purchaseUomName="";
    supplierRefCode="";
    recievedQty=0;
    excess1=0;
    isReceived1=false;
    discount=0;
    foc1=0;
    unitcost=0;
    vatableAmount1=0;
    vat1=0;
    grandTotal1=0;
    actualCost1=0;
    isActive1=false;
    isFree1=false;
    isInvoiced1=false;
    stock=0;




  }
  String supplierRefCodeFinding(List<VendorDetails>? vendorDetailList,String vendoor){
    String  vendorRefCode="";

    if(vendorDetailList?.isNotEmpty==true){



      for(var i=0;i<vendorDetailList!.length;i++){
        if(vendorDetailList[i].vendorCode==vendoor){
          vendorRefCode=vendorDetailList[i].vendorRefCode??"";
        }

      }
    }
    return vendorRefCode;

  }

  Future _getCurrentUser() async {
    if(recievingLisnes.isNotEmpty) {
      for (var i = 0; i < recievingLisnes.length; i++) {
        print("variantaaaaaa" + recievingLisnes[i].variantId.toString());
        var b = await context
            .read<PurchaseStockCubit>()
            .getCurrentStock(
            Variable.inventory_ID, recievingLisnes[i].variantId);
        print("baseLineSEdit" + b.toString());
      }
      setState(() {
        hasData = true;
      });
    }
  }


  @override
  void initState() {
    context.read<InventorysearchCubit>().getInventorySearch("code");

    int verticalScrollIndex = 0;
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    verticalController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    super.initState();
  }
  assignCall(){
    context.read<InventorysearchCubit>().getInventorySearch("code");
    // context.read<PurchasegeneratingCubit>().generatePost(model!);

  }

  @override
  Widget build(BuildContext context) {
    vm = Provider.of<NavigationProvider>(context);
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => PurchaserecievigReadCubit()
            // ..getGeneralPurchaseRecievingRead(Variable.verticalid),
          ),
          BlocProvider(
            create: (context) => AdditionalgenerateCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaserecievingpatchCubit(),
          ),


        ],
        child: Builder(builder: (context) {
          return Builder(builder: (context) {

            return MultiBlocListener(
              listeners: [
                 BlocListener<PurchaserecievigReadCubit,
                    PurchaserecievigReadState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          print("the purchase" + data.toString());
                          stockCheck=false;
                          // setState(() {
                          print("dataSSSSSSSSSSSSSS" + data.toString());
                          data.receivingLines != null
                              ? recievingLisnes =List.from( data.receivingLines ?? [])
                              : recievingLisnes = [];
                          valueAddingRecievingTextEdingController();
                          if(recievingLisnes.isNotEmpty)
                            for(var i=0;i<recievingLisnes.length;i++){
                              var date = new TextEditingController(text:recievingLisnes[i]?.expiryDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(recievingLisnes[i]?.expiryDate??"")));
                              expirydateControllerList2.add(date);

                            }
                          // print("reading case"+expirydateControllerList2.length.toString());
                          print("recievelines" + recievingLisnes.toString());
                          print("recievelines" +
                              vm.recievingLisnes.length.toString());
                          orderCodeController.text = data.orderCode ?? "";
                          focController.text = data.foc.toString() ?? "";
                          recievingCodeController.text = data.receivingCode ?? "";
                          vendorCode = data.vendorId ?? "";
                          receivingId=data.id;
                          orederDateController.text = data.orderCreatedDate ?? "";
                          orederDate2Controller=TextEditingController(text: data.orderCreatedDate==null?"": DateFormat('dd-MM-yyyy').format(DateTime.parse(data.orderCreatedDate ??"")));
                          orderStatusController.text = data.orderStatus ?? "";

                          invoiceStausController.text = data.invoiceStatus ?? "";
                          paymentStatusController.text = data.paymentStatus ?? "";
                          receivedController.text = data.receivingStatus ?? "";
                          vendorCodeController.text = data.vendorId ?? "";
                          if(data?.grandTotal==null||data?.grandTotal=="null"){
                            grandTotalController.text =='';
                          }
                          else{
                            setState(() {
                              grandTotalController.text = data?.grandTotal.toString()??"";
                            });
                          }
                          if(data?.vat==null||data?.vat=="null"){
                            vatController.text =='';
                          }
                          else{
                            setState(() {
                              vatController.text = data?.vat.toString()??"";
                            });
                          }

                          if( data?.vatableAmount==null|| data?.vatableAmount=="null"){
                            vatableAmountController.text =='';
                          }
                          else{
                            setState(() {
                              vatableAmountController.text =  data?.vatableAmount.toString()??"";
                            });
                          }
                          if( data?.excessTax==null|| data?.excessTax=="null"){
                            excessTaxController.text =='';
                          }
                          else{

                            excessTaxController.text =  data?.excessTax.toString()??"";

                          }
                          if( data?.unitCost==null|| data?.unitCost=="null"){
                            unitCostController.text =='';
                          }
                          else{
                            setState(() {
                              unitCostController.text =  data?.unitCost.toString()??"";
                            });
                          }
                          if( data?.actualCost==null|| data?.actualCost=="null"){
                            actualCostController.text =='';
                          }
                          else{
                            setState(() {
                              actualCostController.text =  data?.actualCost.toString()??"";
                            });
                          }
                          if(data?.discount==null|| data?.discount=="null"){
                            discountController.text=='';
                          }
                          else{
                            setState(() {
                              discountController.text =  data?.discount.toString()??"";
                            });
                          }
                          inventoryId = data.inventoryId ?? "";
                          remarksController.text=data.remarks ?? "";
                          noteController.text=data.note ?? "";
                          _getCurrentUser();

                          setState(() {});
                          print("recievingLisnes" + recievingLisnes.toString());
                        });
                  },
                ),
                // BlocListener<PurchasegeneratingCubit, PurchasegeneratingState>(
                //   listener: (context, state) {
                //     print("postssssssss" + state.toString());
                //     state.maybeWhen(orElse: () {
                //       // context.
                //       context.showSnackBarError("Loadingg");
                //     }, error: () {
                //       context.showSnackBarError(Variable.errorMessege);
                //     }, success: (data) {
                //       if (data.data1) {
                //         print("Rijinaaaaaa");
                //         context.showSnackBarSuccess(data.data2);
                //         context.read<InventorysearchCubit>().getInventorySearch("code");
                //         context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
                //         setState(() {
                //
                //         });
                //
                //
                //
                //       }
                //       else {
                //         context.showSnackBarError(data.data2);
                //         print(data.data1);
                //       }
                //       ;
                //     });
                //   },
                // ),
                BlocListener<PurchaserecievingpatchCubit,
                    PurchaserecievingpatchState>(
                  listener: (context, state) {
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        clear();

                        context.read<InventorysearchCubit>().getInventorySearch(
                            "code");

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<AdditionalgenerateCubit, AdditionalgenerateState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        clear();

                        context.showSnackBarSuccess(data.data2);
                        context.read<InventorysearchCubit>().getInventorySearch(
                            "code");
                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


                BlocListener<PurchaseStockCubit, PurchaseStockState>(
                  listener: (context, state) {
                    print("state++++++++++++++++++++++++++++++++");

                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          setState(() {
                            if(stockCheck==false){
                              currentStock.add(0);
                            }
                            else if(recievlinequantityCheck){
                              currentStock[Variable.tableindex]=0;

                            }

                            else{
                              if(Variable.tableedit==false){
                                print("findinf");
                                stock=0;
                                setState(() {

                                });
                              }
                              else if(Variable.tableedit==true){
                                additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(currentStock:0   );
                                // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty;

                              }

                            }

                          });

                        },
                        success: (data) {
                          print("Akshayaaaaa" + data.toString());
                          purchaseCurrentStock = data;
                          var stockQty = purchaseCurrentStock?.StockQty??0;

                          if(stockCheck==false){
                            currentStock.add(stockQty??0);
                          }
                          else if(recievlinequantityCheck){
                            currentStock[Variable.tableindex]=stockQty;

                          }

                          else{
                            if(Variable.tableedit==false){
                              print("findinf");
                              stock=stockQty;
                              setState(() {

                              });
                            }
                            else if(Variable.tableedit==true){
                              additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(currentStock:purchaseCurrentStock?.StockQty   );
                              // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty;

                            }

                          }
                          print("currentStocksss$currentStock");
                          print("lllll" + currentStock.length.toString());

                        });
                  },
                ),
                BlocListener<TableDetailsCubitDartCubit, TableDetailsCubitDartState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          purchaseTable = data;
                          setState(() {
                            if(Variable.tableedit==true) {
                              var vendorDetailList=purchaseTable?.vendorDetails;
                              print(vendorDetailList);
                              String supplierRefCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");
                              additionalVariants[Variable.tableindex] =
                                  additionalVariants[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",unitCost:purchaseTable?.unitCost,vat:purchaseTable?.vat,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"", supplierCode:supplierRefCode  );
                              unitcostAdditionalListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );
                              var qty = additionalVariants[Variable.tableindex].requestedQty;
                              var vat = additionalVariants[Variable.tableindex].vat;
                              var foc = additionalVariants[Variable.tableindex].foc;
                              var excess = additionalVariants[Variable.tableindex].excessTax;
                              var unitcost = additionalVariants[Variable.tableindex].unitCost;
                              var Vdiscount = additionalVariants[Variable.tableindex].discount;
                              if(qty==0 || unitcost==0){
                                print("ssssssssss");
                                print(qty);
                                print(unitcost);
                                additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0,);
                                setState(() {

                                });

                              }else {
                                double Vamount;

                                if(foc==0 ||foc=="") {
                                  Vamount =
                                      double.parse( (((unitcost! *
                                          qty!) +
                                          excess!) -
                                          Vdiscount!)
                                          .toStringAsFixed(2));
                                }else{
                                  Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                }
                                double vactualCost =double.parse( (Vamount! +
                                    ((Vamount! *
                                        vat!) /
                                        100)).toStringAsFixed(2));
                                double Vgrnadtotal = double.parse((Vamount! +
                                    ((Vamount! *
                                        vat!) /
                                        100)).toStringAsFixed(2));
                                additionalVariants[Variable.tableindex] =
                                    additionalVariants[Variable.tableindex]
                                        .copyWith(
                                        actualCost: vactualCost,
                                        grandTotal: Vgrnadtotal,
                                        vatableAmount: Vamount,
                                        excessTax: excess);
                                setState(() {});
                              }
                              setState(() {

                              });



                            }
                            else if( variantIdcheck==true){
                              var vendorDetailList=purchaseTable?.vendorDetails;
                              print(vendorDetailList);
                              String supplierRefCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");
                              recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",vat:purchaseTable?.vat,unitCost:purchaseTable?.unitCost,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"", supplierCode: supplierRefCode  );
                              unitcostReceivingListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );

                              var qty = recievingLisnes[Variable.tableindex].requestedQty;
                              var vat = recievingLisnes[Variable.tableindex].vat;
                              var foc = recievingLisnes[Variable.tableindex].foc;
                              var excess = recievingLisnes[Variable.tableindex].excessTax;


                              var unitcost = recievingLisnes[Variable.tableindex].unitCost;
                              print("unitcost" + unitcost.toString());
                              var Vdiscount = recievingLisnes[Variable.tableindex].discount;
                              if(qty==0 || unitcost==0){
                                recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                setState(() {

                                });

                              }else {
                                double Vamount;

                                if(foc==0 ||foc=="") {
                                  Vamount =
                                      double.parse( (((unitcost! *
                                          qty!) +
                                          excess!) -
                                          Vdiscount!)
                                          .toStringAsFixed(2));
                                }else{
                                  Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                }
                                double vactualCost =double.parse( (Vamount! +
                                    ((Vamount! *
                                        vat!) /
                                        100)).toStringAsFixed(2));
                                double Vgrnadtotal = double.parse((Vamount! +
                                    ((Vamount! *
                                        vat!) /
                                        100)).toStringAsFixed(2));
                                recievingLisnes[Variable.tableindex] =
                                    recievingLisnes[Variable.tableindex]
                                        .copyWith(
                                        actualCost: vactualCost,
                                        grandTotal: Vgrnadtotal,
                                        vatableAmount: Vamount,
                                        excessTax: excess);
                                setState(() {});
                              }
                              setState(() {

                              });
                            }
                            else{
                              varinatname = purchaseTable?.name??"";
                              unitcost = purchaseTable?.unitCost;
                              vat1 = purchaseTable?.vat;
                              unitCostCheck.text = purchaseTable?.unitCost.toString()??"";
                              String supplierRefrenceCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");

                              supplierRefCode=supplierRefrenceCode;

                              print("unitttt"+unitcost.toString());
                              unitcost1.text=purchaseTable?.unitCost.toString()??"";
                              // // vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                              // print(
                              //     "vm.totalUnitcost" + vm.totalUnitcost.toString());
                              //
                              purchaseUomName = purchaseTable?.purchaseUomName??"";
                              vrefcod = purchaseTable?.code??"";
                              // vid = purchaseTable?.id;
                              // purchaseTable?.excessTax != null
                              //     ? eTax = purchaseTable?.excessTax
                              //     : eTax = 0;
                              //
                              barcode =
                                  purchaseTable?.barCode?.barcodeNumber.toString()??"";
                              if(unitcost==0 ||recievedQty==0){
                                actualCost1=0;
                                vatableAmount1=0;
                                grandTotal1=0;
                              }
                              else{
                                if(foc1==0 ||foc1==""){
                                  vatableAmountCalculation(unitcost,recievedQty,excess1,discount);

                                  actualAndgrandTotal(vatableAmount1,vat1);



                                }
                                else{

                                  vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);

                                  actualAndgrandTotal(vatableAmount1,vat1);

                                }

                              }
                            }

                            //

                          }
                          );
                        });
                  },
                ),

              ],
              child: BlocConsumer<InventorysearchCubit, InventorysearchState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {

                        paginatedList=list;
                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){ veritiaclid=result[0].id;
                          selectedVertical=0;
                          context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
                          Variable.verticalid=result[0].id;
                          print("Variable.ak"+Variable.verticalid.toString());
                          }
                          else{
                            clear();
                          }

                        });
                      });
                },
                builder: (context, state) {

                  return Scaffold(
                    body: IntrinsicHeight(

                      // width: 788,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            VerticalList(selectedVertical: selectedVertical,
                              itemsearch: itemsearch,ontap: (int index){
                                setState(() {
                                  print("taped");

                                  select=false;
                                  variantIdcheck=false;
                                  expirydateControllerList2.clear();
                                  selectedVertical=index;
                                  clear();

                                  supplierRefCode="";
                                  currentStock.clear();
                                  recievingLisnes.clear();
                                  unitcostReceivingListControllers.clear();

                                  additionalVariants.clear();

                                  // print("expirydateControllerList2"+expirydateControllerList2.toString());
                                  expiryDate2tControllers.clear();
                                  veritiaclid = result[index].id;
                                  // Variable.verticalid=result[index].id;
                                  context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
                                });
                              },result: result,
                              child:                    tablePagination(
                                    () => context
                                    .read<InventorysearchCubit>()
                                    .refresh(),
                                back: paginatedList?.previousUrl == null
                                    ? null
                                    : () {
                                  context
                                      .read<InventorysearchCubit>()
                                      .previuosslotSectionPageList();
                                },
                                next:paginatedList?.nextPageUrl == null
                                    ? null
                                    : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<InventorysearchCubit>()
                                      .nextslotSectionPageList("");
                                },
                              ),
                            ),

                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          child: SingleChildScrollView(

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.end,
                                                            children: [
                                                              TextButtonLarge(
                                                                text: "PREVIEW",
                                                                onPress: () async {
                                                                  print("Akshay");
                                                                  InventoryListModel model=InventoryListModel();
                                                                  UserPreferences userPref = UserPreferences();
                                                                  await userPref.getInventoryList().then((user) {
                                                                    print("entereeeeeeeeeeeeeeeeeeed");
                                                                    print(user.name);
                                                                    if (user.isInventoryExist == true) {
                                                                      model=user;
                                                                      print("existing");
                                                                      print(model.email);
                                                                      // prefs.setString('token', user?.token ?? "");
                                                                    } else {
                                                                    }
                                                                  });
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) =>
                                                                        PrintScreen(table:recievingLisnes,
                                                                          note: noteController.text,
                                                                          orderCode:orderCodeController.text ,
                                                                          orderDate:orederDate2Controller .text,
                                                                          vat: double.tryParse( vatController.text),
                                                                          actualCost:double.tryParse( actualCostController.text),
                                                                          variableAmount:double.tryParse( vatableAmountController.text) ,
                                                                          discount:double.tryParse( discountController.text) ,
                                                                          unitCost:double.tryParse( unitCostController.text) ,
                                                                          excisetax:double.tryParse( excessTaxController.text) ,
                                                                          remarks: remarksController.text ,
                                                                          model: model,
                                                                          pageName: "PURCHASE RECEIVING",
                                                                        )),
                                                                  );
                                                                },
                                                              ),
                                                            ]



                                                        ),
                                                        PurchaseReceivingStabletable(
                                                          actualCostController: actualCostController,
                                                          discountController: discountController,
                                                          excessController: excessTaxController,
                                                          focController: focController,
                                                          grandtotalController: grandTotalController,
                                                          invoiceStatusController: invoiceStausController,
                                                          noteController: noteController,
                                                          orderCodeController: orderCodeController,
                                                          orderedDateController: orederDate2Controller,
                                                          ordereStatusController: orderStatusController,
                                                          paymentStatusController: paymentStatusController,
                                                          receivingCodeController: recievingCodeController,
                                                          remarksController: remarksController,
                                                          vatableAmountController: vatableAmountController,
                                                          unitCostController: unitCostController,
                                                          vatController: vatController,
                                                          receivingStatusController:receivedController ,
                                                        ),
                                                        SizedBox(
                                                          height: height * .10,
                                                        ),

                                                        TextWidget(
                                                            text: "Receiving Lines"),

                                                        SizedBox(
                                                          height: height * .010,
                                                        ),
                                                        // ScrollableTable(),
                                                        PurchasReturnGeneralGrowableTable(
                                                          updateCheck: (){},
                                                          select:select,
                                                          updation: (){},
                                                          key:_myWidgetState,
                                                          vendorCode: vendorCodeController.text,
                                                        ),





                                                        Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                          children: [
                                                            TextButtonLarge(
                                                              onPress: () {
                                                                print("recievdelines"+recievingLisnes.toString());
                                                                List<RecievingLines>recieve=[];
                                                                List<OrderLiness> orderLinses = [];
                                                                bool popupCheck=false;
                                                                for(var i=0;i<recievingLisnes.length;i++){
                                                                  if(recievingLisnes[i].isReceived==false){
                                                                    popupCheck=true;
                                                                    orderLinses.add(OrderLiness(orderLineId:recievingLisnes[i]?.purchaseOrderLineId,receivinglineId:recievingLisnes[i].id));
                                                                    setState(() {

                                                                    });
                                                                  }
                                                                }
                                                                print("visss"+orderLinses.toString());
                                                                GenerateMissing model=GenerateMissing(
                                                                    receivinglineId: receivingId,
                                                                    note: noteController.text??"",
                                                                    inventoryId:inventoryId ??"",
                                                                    vendorMailId: Variable.email,
                                                                    vendorAddress: Variable.vendorAddress,
                                                                    createdBy: Variable.created_by,
                                                                    orderLinses: orderLinses







                                                                );
                                                                setState(() {

                                                                });
                                                                if(popupCheck==true)
                                                                  showDailogPopUp(
                                                                      context,
                                                                      WarrantyDetailsPopUp(
                                                                          remarks: remarksController,
                                                                          promised:promisedRecieptDate,
                                                                          plannded:plannedRecieptDate,
                                                                          model:model,
                                                                          assign:assignCall
                                                                        // warranty: widget.warranty,
                                                                        // changeActive: onChangeActive,
                                                                        // changeAdditionalWarranty: onChangeAdditionalWarranty,
                                                                        // changeExtendedWarranty: onChangeExtendedWarranty,
                                                                      ));
                                                                else{
                                                                  context.showSnackBarError("Is Received is true in all");

                                                                }

                                                                // model = model.copyWith(actualCost: 100);
                                                                // print("vishnu"+model.toString());



                                                              },
                                                              icon: Icons.check,
                                                              // iconColor: Colors.white,
                                                              text: "GENERATE ORDER",


                                                            ),
                                                          ],
                                                        ),


                                                        SizedBox(
                                                          height: height * .10,
                                                        ),
                                                        TextWidget(
                                                            text: "Additional Variants"),
                                                        SizedBox(height: height*.01,),

                                                        CustomScrollBar    (
                                                            controller: verticalController,

                                                            childs: Container(
                                                              alignment:
                                                              Alignment.topRight,

                                                              child:
                                                              SingleChildScrollView(
                                                                  controller: verticalController,
                                                                  physics: ScrollPhysics(),
                                                                  scrollDirection:
                                                                  Axis.horizontal,

                                                                  child:     Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [

                                                                      Container(
                                                                        width:2200,

                                                                        child: customTable(

                                                                          tableWidth: .5,
                                                                          childrens: [
                                                                            TableRow(

                                                                                children: [
                                                                                  tableHeadtext(
                                                                                    'Sl.No',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white,
                                                                                  ),

                                                                                  tableHeadtext(
                                                                                    'Variant Id',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Variant Name',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  // tableHeadtext('description', size: 10, color: null),

                                                                                  tableHeadtext(
                                                                                    'Supplier Ref Code',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Barcode',
                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Current Qty',

                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Purchase UOM',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Received Qty',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Is Received',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Unit Cost',

                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Excess Tax',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Discount',

                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),

                                                                                  tableHeadtext(
                                                                                    'FOC',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),

                                                                                  tableHeadtext(
                                                                                    'Vatable Amount',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'VAT',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),

                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Actual Cost',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Grand Total',
                                                                                    size: 13,
                                                                                    center: true,
                                                                                    padding: EdgeInsets.only(bottom:height*.0198),
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Is Invoiced',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Expiry Date',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Is Free',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    'Is Active',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  tableHeadtext(
                                                                                    '',

                                                                                    size: 13,
                                                                                    // color: Palette.containerDarknew,
                                                                                    // textColor: Palette.white
                                                                                  ),
                                                                                  // if (widget.onAddNew) textPadding(''),
                                                                                ]),
                                                                            if (additionalVariants != null)...[
                                                                              for(var i=0;i<additionalVariants.length;i++)
                                                                                TableRow(
                                                                                    decoration: BoxDecoration(
                                                                                        color: Pellet.tableRowColor,
                                                                                        shape: BoxShape.rectangle,
                                                                                        border:  Border(
                                                                                            left: BorderSide(

                                                                                                color: Color(0xff3E4F5B).withOpacity(.1),
                                                                                                width: .4,
                                                                                                style: BorderStyle.solid),
                                                                                            bottom: BorderSide(

                                                                                                color:   Color(0xff3E4F5B).withOpacity(.1),
                                                                                                style: BorderStyle.solid),
                                                                                            right: BorderSide(
                                                                                                color:   Color(0xff3E4F5B).withOpacity(.1),
                                                                                                width: .4,

                                                                                                style: BorderStyle.solid))),
                                                                                    children: [
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),

                                                                                      ),
                                                                                      TableCell(
                                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                          child:  VariantIdTAble(
                                                                                            text:additionalVariants[i].variantId.toString(),
                                                                                            onTap: (){
                                                                                              showDailogPopUp(
                                                                                                context,
                                                                                                TableConfigurePopup(
                                                                                                  vendorId: vendorCodeController.text,
                                                                                                  type: "variantTabalePopup",
                                                                                                  valueSelect: (VariantId? va) {
                                                                                                    updateCheck1=true;

                                                                                                    additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                                    setState(() {

                                                                                                    });
                                                                                                    additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                                                                    setState(() {
                                                                                                      var  variant=
                                                                                                          va?.code;
                                                                                                      int? id = va!.id;
                                                                                                      Variable.tableindex =i;
                                                                                                      Variable.tableedit=true;
                                                                                                      variantIdcheck=false;
                                                                                                      recievlinequantityCheck=false;
                                                                                                      stockCheck=true;


                                                                                                      onChange = true;
                                                                                                      context
                                                                                                          .read<
                                                                                                          TableDetailsCubitDartCubit>()
                                                                                                          .getTableDetails(
                                                                                                          id);
                                                                                                      context
                                                                                                          .read<PurchaseStockCubit>()
                                                                                                          .getCurrentStock("", variant);

                                                                                                      // orderType = va!;
                                                                                                    });
                                                                                                  },
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          )
                                                                                        //
                                                                                        // PopUpCall(
                                                                                        //     vendorId: vendorCodeController.text,
                                                                                        //
                                                                                        //   type: "cost-method-list",
                                                                                        //   value: additionalVariants[i].variantId,
                                                                                        //   onSelection:
                                                                                        //       (VariantId? va) {
                                                                                        //         updateCheck1=true;
                                                                                        //
                                                                                        //         additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                        //         setState(() {
                                                                                        //
                                                                                        //         });
                                                                                        //     additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                                                        //     setState(() {
                                                                                        //       var  variant=
                                                                                        //           va?.code;
                                                                                        //       int? id = va!.id;
                                                                                        //       Variable.tableindex =i;
                                                                                        //       Variable.tableedit=true;
                                                                                        //       variantIdcheck=false;
                                                                                        //       recievlinequantityCheck=false;
                                                                                        //       stockCheck=true;
                                                                                        //
                                                                                        //
                                                                                        //       onChange = true;
                                                                                        //       context
                                                                                        //           .read<
                                                                                        //           TableDetailsCubitDartCubit>()
                                                                                        //           .getTableDetails(
                                                                                        //           id);
                                                                                        //       context
                                                                                        //           .read<PurchaseStockCubit>()
                                                                                        //           .getCurrentStock("", variant);
                                                                                        //
                                                                                        //       // orderType = va!;
                                                                                        //     });
                                                                                        //   },
                                                                                        //
                                                                                        //   // restricted: true,
                                                                                        // ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].variantName ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].supplierCode ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].barcode ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].currentStock.toString() ?? "",

                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(
                                                                                            additionalVariants[i].purchaseUom.toString() ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          initialCheck:true,
                                                                                          last: additionalVariants[i].requestedQty.toString() ?? "",
                                                                                          integerOnly: true,
                                                                                          onChanged: (va) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {
                                                                                            });
                                                                                            print(va);
                                                                                            if (va == "") {
                                                                                              print("entered");
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                            } else {
                                                                                              var qty = int.tryParse(va);
                                                                                              var dis = additionalVariants[i].discount;
                                                                                              var excess = additionalVariants[i].excessTax;
                                                                                              var unitcost = additionalVariants[i].unitCost;
                                                                                              var vat = additionalVariants[i].vat;
                                                                                              var foc = additionalVariants[i].foc;
                                                                                              if (qty == 0 || unitcost == 0) {
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                              }else {
                                                                                                var Vamount;
                                                                                                var vactualCost;
                                                                                                if(foc==0 || foc==""){
                                                                                                  Vamount  =double.parse( (((unitcost! *
                                                                                                      qty!) +
                                                                                                      excess!) -
                                                                                                      dis!)
                                                                                                      .toStringAsFixed(2));
                                                                                                  if(vat==0 ||vat==""){
                                                                                                    vactualCost=Vamount;
                                                                                                  }
                                                                                                  else{

                                                                                                    vactualCost  =double.parse( (Vamount! +
                                                                                                        ((Vamount! *
                                                                                                            vat!) /
                                                                                                            100)).toString(2));
                                                                                                  }


                                                                                                  additionalVariants[i] =
                                                                                                      additionalVariants[i]
                                                                                                          .copyWith(
                                                                                                          vatableAmount: Vamount,
                                                                                                          actualCost: vactualCost,
                                                                                                          grandTotal: vactualCost,
                                                                                                          requestedQty: qty);
                                                                                                }
                                                                                                else{

                                                                                                  double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                                  double vactualCost =double.parse( (Vamount! +
                                                                                                      ((Vamount! *
                                                                                                          vat!) /
                                                                                                          100)).toStringAsFixed(2));

                                                                                                  additionalVariants[i] =
                                                                                                      additionalVariants[i]
                                                                                                          .copyWith(
                                                                                                          vatableAmount: Vamount,
                                                                                                          actualCost: vactualCost,
                                                                                                          grandTotal: vactualCost,
                                                                                                          requestedQty: qty);
                                                                                                }


                                                                                              }}

                                                                                            setState(() {});
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                          valueChanger: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                                                          onSelection
                                                                                              : (bool? value) {
                                                                                            bool? isRecieved = additionalVariants[i].isReceived;
                                                                                            setState(() {
                                                                                              updateCheck1=true;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                              setState(() {

                                                                                              });
                                                                                              isRecieved = !isRecieved!;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                                                              print(additionalVariants);
                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          controller: unitcostAdditionalListControllers[i],
                                                                                          // initialCheck:true,
                                                                                          // last: additionalVariants[i].unitCost.toString() ?? "",
                                                                                          onChanged: (va) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {

                                                                                            });
                                                                                            double? unitcost;
                                                                                            if (va == "") {
                                                                                              print("entered");
                                                                                              unitcost = 0;
                                                                                              print("disc" + unitcost.toString());
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                            }
                                                                                            unitcost = double.tryParse(va);


                                                                                            var qty = additionalVariants[i].requestedQty;

                                                                                            var excess = additionalVariants[i].excessTax;

                                                                                            var disc = additionalVariants[i].discount;
                                                                                            var foc=additionalVariants[i].foc;

                                                                                            var vat = additionalVariants[i].vat;

                                                                                            if (qty == 0 || qty == null) {


                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                              setState(() {});
                                                                                            } else {
                                                                                              if(foc==0 || foc=="") {
                                                                                                double Vamount = double.parse((((unitcost! *
                                                                                                    qty!) +
                                                                                                    excess!) -
                                                                                                    disc!)
                                                                                                    .toStringAsFixed(2));


                                                                                                double vactualCost =double.parse( (Vamount! +
                                                                                                    ((Vamount! *
                                                                                                        vat!) /
                                                                                                        100)).toStringAsFixed(2));
                                                                                                additionalVariants[i] =
                                                                                                    additionalVariants[i]
                                                                                                        .copyWith(
                                                                                                        vatableAmount: Vamount,
                                                                                                        actualCost: vactualCost,
                                                                                                        grandTotal: vactualCost,
                                                                                                        unitCost: unitcost);
                                                                                                setState(() {});
                                                                                              }else{
                                                                                                double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                double vactualCost =double.parse( (Vamount! +
                                                                                                    ((Vamount! *
                                                                                                        vat!) /
                                                                                                        100)).toStringAsFixed(2));
                                                                                                additionalVariants[i] =
                                                                                                    additionalVariants[i]
                                                                                                        .copyWith(
                                                                                                        vatableAmount: Vamount,
                                                                                                        actualCost: vactualCost,
                                                                                                        grandTotal: vactualCost,
                                                                                                        unitCost: unitcost);
                                                                                                setState(() {});


                                                                                              }
                                                                                            }
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          initialCheck:true,
                                                                                          last: additionalVariants[i].excessTax.toString() ?? "",
                                                                                          onChanged: (va) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {

                                                                                            });
                                                                                            double? excess;
                                                                                            if (va == "") {
                                                                                              excess = 0;
                                                                                              setState(() {});
                                                                                            } else {
                                                                                              excess = double.tryParse(va);
                                                                                              setState(() {});
                                                                                            }

                                                                                            var qty = additionalVariants[i].requestedQty;
                                                                                            var vat = additionalVariants[i].vat;
                                                                                            var foc = additionalVariants[i].foc;

                                                                                            print("excess" + excess.toString());
                                                                                            var unitcost = additionalVariants[i].unitCost;

                                                                                            var Vdiscount = additionalVariants[i].discount;
                                                                                            if(qty==0 || unitcost==0){
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                                                              setState(() {

                                                                                              });

                                                                                            }else {
                                                                                              double Vamount;

                                                                                              if(foc==0 ||foc=="") {
                                                                                                Vamount =
                                                                                                    double.parse( (((unitcost! *
                                                                                                        qty!) +
                                                                                                        excess!) -
                                                                                                        Vdiscount!)
                                                                                                        .toStringAsFixed(2));
                                                                                              }else{
                                                                                                Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                                                                              }
                                                                                              double vactualCost = double.parse((Vamount! +
                                                                                                  ((Vamount! *
                                                                                                      vat!) /
                                                                                                      100)).toStringAsFixed(2));
                                                                                              double Vgrnadtotal =double.parse( (Vamount! +
                                                                                                  ((Vamount! *
                                                                                                      vat!) /
                                                                                                      100)).toStringAsFixed(2));
                                                                                              additionalVariants[i] =
                                                                                                  additionalVariants[i]
                                                                                                      .copyWith(
                                                                                                      actualCost: vactualCost,
                                                                                                      grandTotal: Vgrnadtotal,
                                                                                                      vatableAmount: Vamount,
                                                                                                      excessTax: excess);
                                                                                              setState(() {});
                                                                                            } },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          initialCheck:true,
                                                                                          last: additionalVariants[i].discount.toString() ?? "",
                                                                                          onChanged: (va) {
                                                                                            updateCheck1=true;
                                                                                            double? disc;
                                                                                            if (va ==
                                                                                                "") {
                                                                                              print(
                                                                                                  "entered");
                                                                                              disc =
                                                                                              0;
                                                                                              print(
                                                                                                  "disc" +
                                                                                                      disc
                                                                                                          .toString());
                                                                                            } else {
                                                                                              disc =
                                                                                                  double
                                                                                                      .tryParse(
                                                                                                      va);
                                                                                              print(
                                                                                                  "disc1" +
                                                                                                      disc
                                                                                                          .toString());
                                                                                            }

                                                                                            var qty = additionalVariants[i]
                                                                                                .requestedQty;
                                                                                            print(
                                                                                                "qty" +
                                                                                                    qty
                                                                                                        .toString());
                                                                                            var excess = additionalVariants[i]
                                                                                                .excessTax;
                                                                                            print(
                                                                                                "excess" +
                                                                                                    excess
                                                                                                        .toString());
                                                                                            var unitcost = additionalVariants[i]
                                                                                                .unitCost;
                                                                                            print(
                                                                                                "unitcost" +
                                                                                                    unitcost
                                                                                                        .toString());
                                                                                            var vat = additionalVariants[i].vat;
                                                                                            var foc = additionalVariants[i]
                                                                                                .foc;

                                                                                            print(
                                                                                                "vat" +
                                                                                                    vat
                                                                                                        .toString());
                                                                                            if (unitcost ==
                                                                                                0 ||
                                                                                                qty ==
                                                                                                    0) {
                                                                                              additionalVariants[i] =
                                                                                                  additionalVariants[i]
                                                                                                      .copyWith(
                                                                                                      vatableAmount: 0,
                                                                                                      actualCost: 0,
                                                                                                      grandTotal: 0,
                                                                                                      discount: disc);
                                                                                            }

                                                                                            else {
                                                                                              if(foc==0 ||foc=="") {
                                                                                                double Vamount =double.parse( (((unitcost! *
                                                                                                    qty!) +
                                                                                                    excess!) -
                                                                                                    disc!)
                                                                                                    .toStringAsFixed(2));


                                                                                                double vactualCost =double.parse(( (Vamount! +
                                                                                                    ((Vamount! *
                                                                                                        vat!) /
                                                                                                        100)).toStringAsFixed(2)));
                                                                                                print(
                                                                                                    "vactualCost" +
                                                                                                        vactualCost
                                                                                                            .toString());
                                                                                                additionalVariants[i] =
                                                                                                    additionalVariants[i]
                                                                                                        .copyWith(
                                                                                                        vatableAmount: Vamount,
                                                                                                        actualCost: vactualCost,
                                                                                                        grandTotal: vactualCost,
                                                                                                        discount: disc);
                                                                                                setState(() {});
                                                                                              }
                                                                                              else{
                                                                                                double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                double vactualCost = double .parse((Vamount! +
                                                                                                    ((Vamount! *
                                                                                                        vat!) /
                                                                                                        100)).toStringAsFixed(2));
                                                                                                additionalVariants[i] =
                                                                                                    additionalVariants[i]
                                                                                                        .copyWith(
                                                                                                        vatableAmount: Vamount,
                                                                                                        actualCost: vactualCost,
                                                                                                        grandTotal: vactualCost,
                                                                                                        discount: disc);
                                                                                                setState(() {});

                                                                                              }
                                                                                            }

                                                                                          }
                                                                                          ,

                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          initialCheck:true,
                                                                                          last: additionalVariants[i].foc.toString() ?? "",
                                                                                          onChanged: (va) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {

                                                                                            });
                                                                                            double? foc;
                                                                                            if (va == "") {
                                                                                              foc=0;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(foc: 0);
                                                                                            } else {
                                                                                              foc  = double.tryParse(va);
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(foc: foc);
                                                                                            }
                                                                                            var qty = additionalVariants[i].requestedQty;
                                                                                            var vat = additionalVariants[i].vat;
                                                                                            print("qty" + qty.toString());
                                                                                            var excess = additionalVariants[i].excessTax;
                                                                                            print("excess" + excess.toString());
                                                                                            var disc = additionalVariants[i].discount;
                                                                                            var unitcost=additionalVariants[i].unitCost;
                                                                                            if (qty == 0 || unitcost == 0) {
                                                                                              print("checking case");

                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, foc: foc);
                                                                                              setState(() {});
                                                                                            }
                                                                                            else{
                                                                                              double Vamount;
                                                                                              if(foc==0 ||foc==""){
                                                                                                Vamount = double.parse((((unitcost! *
                                                                                                    qty!) +
                                                                                                    excess!) -
                                                                                                    disc!)
                                                                                                    .toStringAsFixed(2));
                                                                                                setState(() {

                                                                                                });

                                                                                              }else{
                                                                                                Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                setState(() {

                                                                                                });

                                                                                              }
                                                                                              double vactualCost = double.parse((Vamount! +
                                                                                                  ((Vamount! *
                                                                                                      vat!) /
                                                                                                      100)).toStringAsFixed(2));
                                                                                              additionalVariants[i] =
                                                                                                  additionalVariants[i]
                                                                                                      .copyWith(
                                                                                                    vatableAmount: Vamount,
                                                                                                    actualCost: vactualCost,
                                                                                                    grandTotal: vactualCost,
                                                                                                  );
                                                                                              setState(() {});


                                                                                            }

                                                                                            print(additionalVariants);
                                                                                          },
                                                                                        ),
                                                                                      ),


                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].vatableAmount.toString() ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].vat.toString() ?? "", fontSize: 12, fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      // TableCell(
                                                                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                      //   child: UnderLinedInput(
                                                                                      //     initialCheck:true,
                                                                                      //     last: additionalVariants[i].vat.toString() ?? "",
                                                                                      //     onChanged: (va) {
                                                                                      //       updateCheck1=true;
                                                                                      //       additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                      //       setState(() {
                                                                                      //
                                                                                      //       });
                                                                                      //       if (va == "") {
                                                                                      //         print("sss");
                                                                                      //         var vatableAmount = additionalVariants[i].vatableAmount;
                                                                                      //         additionalVariants[i] = additionalVariants[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                                      //         setState(() {});
                                                                                      //       } else {
                                                                                      //         var vat = double.tryParse(va);
                                                                                      //         var Vamount = additionalVariants[i].vatableAmount;
                                                                                      //         print("qty" + Vamount.toString());
                                                                                      //         var excess = additionalVariants[i].excessTax;
                                                                                      //         print("excess" + excess.toString());
                                                                                      //         var unitcost = additionalVariants[i].unitCost;
                                                                                      //         var qty = additionalVariants[i].receivedQty;
                                                                                      //         var foc = additionalVariants[i].foc;
                                                                                      //         var dis = additionalVariants[i].discount;
                                                                                      //         print("unitcost" + unitcost.toString());
                                                                                      //         if(unitcost==0 || qty==0){
                                                                                      //           additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                                                                      //
                                                                                      //         }else{
                                                                                      //           if(foc==0 || foc=="") {
                                                                                      //             double Vamount = double.parse((((unitcost! *
                                                                                      //                 qty!) +
                                                                                      //                 excess!) -
                                                                                      //                 dis!)
                                                                                      //                 .toStringAsFixed(2));
                                                                                      //             double vactualCost =double.parse( (Vamount! +
                                                                                      //                 ((Vamount! *
                                                                                      //                     vat!) /
                                                                                      //                     100)).toStringAsFixed(2));
                                                                                      //             double Vgrnadtotal =double.parse( (Vamount! +
                                                                                      //                 ((Vamount! *
                                                                                      //                     vat!) /
                                                                                      //                     100)).toStringAsFixed(2));
                                                                                      //             additionalVariants[i] =
                                                                                      //                 additionalVariants[i]
                                                                                      //                     .copyWith(
                                                                                      //                     vatableAmount: Vamount,
                                                                                      //                     actualCost: vactualCost,
                                                                                      //                     grandTotal: Vgrnadtotal,
                                                                                      //                     vat: vat);
                                                                                      //             setState(() {});
                                                                                      //           }
                                                                                      //           else{
                                                                                      //             double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                      //
                                                                                      //             double vactualCost =double.parse ((Vamount! +
                                                                                      //                 ((Vamount! *
                                                                                      //                     vat!) /
                                                                                      //                     100)).toStringAsFixed(2));
                                                                                      //             double Vgrnadtotal =double.parse( (Vamount! +
                                                                                      //                 ((Vamount! *
                                                                                      //                     vat!) /
                                                                                      //                     100)).toStringAsFixed(2));
                                                                                      //             additionalVariants[i] =
                                                                                      //                 additionalVariants[i]
                                                                                      //                     .copyWith(
                                                                                      //                     vatableAmount: Vamount,
                                                                                      //                     actualCost: vactualCost,
                                                                                      //                     grandTotal: Vgrnadtotal,
                                                                                      //                     vat: vat);
                                                                                      //             setState(() {
                                                                                      //
                                                                                      //             });
                                                                                      //           }
                                                                                      //         }}
                                                                                      //     },
                                                                                      //   ),
                                                                                      // ),


                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].actualCost.toString() ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(additionalVariants[i].grandTotal.toString() ?? "",
                                                                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                          valueChanger: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                                                          onSelection: (bool? value) {
                                                                                            setState(() {});
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: Tabledate(

                                                                                            format:DateFormat('dd-MM-yyyy'),
                                                                                            controller: expiryDate2tControllers[i],
                                                                                            label: "Promised receipt date",
                                                                                            onSuffixIconPressed: (){
                                                                                              setState(() {


                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck:additionalVariants[i].expiryDate!=null ||additionalVariants[i].updateCheck==true? true:false,expiryDate: null);
                                                                                                expiryDate2tControllers[i]=TextEditingController(text: "");
                                                                                              });


                                                                                            },

                                                                                            onSaved: (newValue) {
                                                                                              updateCheck1=true;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);

                                                                                              expiryDate2tControllers[i]=TextEditingController(text:DateFormat('dd-MM-yyyy').format(newValue!));

                                                                                              additionalVariants[i] =
                                                                                                  additionalVariants[i]
                                                                                                      .copyWith(
                                                                                                      expiryDate:newValue
                                                                                                          ?.toIso8601String()
                                                                                                          .split("T")[0] ??
                                                                                                          "" );
                                                                                              setState(() {
                                                                                              });
                                                                                            },
                                                                                            enable: true),
                                                                                      ),


                                                                                      TableCell(
                                                                                        child: CheckedBoxs(
                                                                                          valueChanger: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                                                          onSelection: (bool? value) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {

                                                                                            });
                                                                                            bool? isFree = additionalVariants[i].isFree;
                                                                                            setState(() {
                                                                                              isFree = !isFree!;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(isFree: isFree);
                                                                                              print(additionalVariants);
                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),

                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                          valueChanger: additionalVariants[i].isActive == null ? false : additionalVariants[i].isActive,
                                                                                          onSelection: (bool? value) {
                                                                                            updateCheck1=true;
                                                                                            additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            setState(() {

                                                                                            });
                                                                                            bool? isActive = additionalVariants[i].isActive;
                                                                                            setState(() {
                                                                                              isActive = !isActive!;
                                                                                              additionalVariants[i] = additionalVariants[i].copyWith(isActive: isActive);
                                                                                              print(additionalVariants);
                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                          child:          TableTextButton(

                                                                                            onPress: () {
                                                                                              print("akshay");
                                                                                              if(additionalVariants[i].isActive==false||additionalVariants[i].isReceived==false) {
                                                                                                context
                                                                                                    .showSnackBarError(
                                                                                                    "please check isActive and isRecieved fields");
                                                                                              }

                                                                                              else{
                                                                                                additionalVariants[i]=additionalVariants[i].copyWith(updateCheck: false);
                                                                                                setState(() {

                                                                                                });

                                                                                              }



                                                                                            },
                                                                                            label: updateCheck==true?"update":"",
                                                                                          ))



                                                                                    ]
                                                                                ),
                                                                            ],


                                                                            TableRow(
                                                                              decoration: BoxDecoration(
                                                                                  color: Pellet.tableRowColor,
                                                                                  shape: BoxShape.rectangle,
                                                                                  border:  Border(
                                                                                      left: BorderSide(

                                                                                          color: Color(0xff3E4F5B).withOpacity(.1),
                                                                                          width: .4,
                                                                                          style: BorderStyle.solid),
                                                                                      bottom: BorderSide(

                                                                                          color:   Color(0xff3E4F5B).withOpacity(.1),
                                                                                          style: BorderStyle.solid),
                                                                                      right: BorderSide(
                                                                                          color:   Color(0xff3E4F5B).withOpacity(.1),
                                                                                          width: .4,

                                                                                          style: BorderStyle.solid))),
                                                                              children: [
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding((1).toString(),
                                                                                      // fontSize: 12,
                                                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                VariantIdTAble(
                                                                                  text:variantId.toString(),
                                                                                  onTap: (){
                                                                                    showDailogPopUp(
                                                                                      context,
                                                                                      TableConfigurePopup(
                                                                                        vendorId: vendorCodeController.text,
                                                                                        type: "variantTabalePopup",
                                                                                        valueSelect: (VariantId? va) {
                                                                                          print(va!.id
                                                                                              .toString());
                                                                                          print("code" +
                                                                                              va!.code
                                                                                                  .toString());

                                                                                          setState(() {
                                                                                            stockCheck=true;
                                                                                            variantId =
                                                                                                va?.code;
                                                                                            int? id = va!.id;
                                                                                            print("is is"+id.toString());
                                                                                            Variable.tableedit=false;
                                                                                            variantIdcheck=false;
                                                                                            recievlinequantityCheck=false;
                                                                                            stockCheck=true;

                                                                                            // onChange = true;
                                                                                            context
                                                                                                .read<
                                                                                                TableDetailsCubitDartCubit>()
                                                                                                .getTableDetails(
                                                                                                id);
                                                                                            setState(() {

                                                                                            });
                                                                                            context
                                                                                                .read<PurchaseStockCubit>()
                                                                                                .getCurrentStock(Variable.inventory_ID, variantId);

                                                                                            // orderType = va!;
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                                // PopUpCall(
                                                                                //     vendorId: vendorCodeController.text,
                                                                                //   // label: "purchase UOM",
                                                                                //   type:
                                                                                //   "cost-method-list",
                                                                                //   value: variantId,
                                                                                //   onSelection:
                                                                                //       (VariantId? va) {
                                                                                //     print(va!.id
                                                                                //         .toString());
                                                                                //     print("code" +
                                                                                //         va!.code
                                                                                //             .toString());
                                                                                //
                                                                                //     setState(() {
                                                                                //       stockCheck=true;
                                                                                //       variantId =
                                                                                //           va?.code;
                                                                                //       int? id = va!.id;
                                                                                //       print("is is"+id.toString());
                                                                                //       Variable.tableedit=false;
                                                                                //       variantIdcheck=false;
                                                                                //       recievlinequantityCheck=false;
                                                                                //       stockCheck=true;
                                                                                //
                                                                                //       // onChange = true;
                                                                                //       context
                                                                                //           .read<
                                                                                //           TableDetailsCubitDartCubit>()
                                                                                //           .getTableDetails(
                                                                                //           id);
                                                                                //       setState(() {
                                                                                //
                                                                                //       });
                                                                                //       context
                                                                                //           .read<PurchaseStockCubit>()
                                                                                //           .getCurrentStock(Variable.inventory_ID, variantId);
                                                                                //
                                                                                //       // orderType = va!;
                                                                                //     });
                                                                                //   },
                                                                                //
                                                                                //   // restricted: true,
                                                                                // ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(varinatname??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(supplierRefCode.toString()??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(barcode??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(stock.toString()??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(purchaseUomName??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    controller:recievedClearController,
                                                                                    integerOnly: true,

                                                                                    // last:"",
                                                                                    onChanged: (p0) {
                                                                                      if (p0 == '') {
                                                                                        setState(() {
                                                                                          recievedQty=0;
                                                                                          vatableAmount1=0;
                                                                                          grandTotal1 = 0;
                                                                                          actualCost1 = 0;
                                                                                        });
                                                                                      } else {
                                                                                        setState(() {
                                                                                          recievedQty = int
                                                                                              .tryParse(
                                                                                              p0);
                                                                                        });

                                                                                        setState(() {
                                                                                          if(unitcost==0){
                                                                                            vatableAmount1=0;
                                                                                            grandTotal1 = 0;
                                                                                            actualCost1 = 0;


                                                                                          }
                                                                                          else{
                                                                                            if(foc1==0 ||foc1==""){
                                                                                              vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                              // vatableAmount1 = (((unitcost! *
                                                                                              //     recievedQty!) +
                                                                                              //     excess1!) -
                                                                                              //     discount!)
                                                                                              //     .toDouble();
                                                                                              actualAndgrandTotal(vatableAmount1,vat1);
                                                                                              // actualCost1 = double.parse((vatableAmount1! +
                                                                                              //     ((vatableAmount1! *
                                                                                              //         vat1!) /
                                                                                              //         100)).toStringAsFixed(2));
                                                                                              // grandTotal1 =double.parse( (vatableAmount1! +
                                                                                              //     ((vatableAmount1! *
                                                                                              //         vat1!) /
                                                                                              //         100)).toStringAsFixed(2));



                                                                                            }
                                                                                            else{
                                                                                              vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                              actualAndgrandTotal(vatableAmount1,vat1);
                                                                                            }

                                                                                          }

                                                                                        }
                                                                                        );
                                                                                      }
                                                                                      // print(Qty);
                                                                                    },
                                                                                    enable: true,
                                                                                    onComplete: () {
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: CheckedBoxs(
                                                                                    valueChanger: isReceived1,
                                                                                    onSelection: (bool? value) {
                                                                                      setState(() {
                                                                                        isReceived1 = !isReceived1!;
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    controller:unitCostCheck,
                                                                                    onChanged: (p0) {
                                                                                      if (p0 == '')
                                                                                        setState(() {
                                                                                          unitcost = 0;
                                                                                        });
                                                                                      else {
                                                                                        setState(() {
                                                                                          unitcost = double
                                                                                              .tryParse(
                                                                                              p0);
                                                                                        });
                                                                                      }

                                                                                      if(unitcost==0 ||recievedQty==0){
                                                                                        actualCost1=0;
                                                                                        vatableAmount1=0;
                                                                                        grandTotal1=0;
                                                                                      }
                                                                                      else{
                                                                                        if(foc1==0 ||foc1==""){
                                                                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);
                                                                                        }
                                                                                        else{
                                                                                          vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);
                                                                                        }
                                                                                      }
                                                                                    },
                                                                                    enable: true,
                                                                                    onComplete: () {
                                                                                      setState(() {});

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    controller:excessClearController,


                                                                                    onChanged: (p0) {
                                                                                      if (p0 == '')
                                                                                        setState(() {
                                                                                          excess1 = 0;
                                                                                        });
                                                                                      else {
                                                                                        setState(() {
                                                                                          excess1 = double
                                                                                              .tryParse(
                                                                                              p0);
                                                                                        });
                                                                                      }

                                                                                      if(unitcost==0 ||recievedQty==0){
                                                                                        actualCost1=0;
                                                                                        vatableAmount1=0;
                                                                                        grandTotal1=0;
                                                                                      }
                                                                                      else{
                                                                                        if(foc1==0 ||foc1==""){
                                                                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);

                                                                                        }
                                                                                        else{
                                                                                          vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);

                                                                                        }

                                                                                      }


                                                                                      setState(() {});
                                                                                      // print(Qty);
                                                                                    },
                                                                                    enable: true,
                                                                                    onComplete: () {
                                                                                      setState(() {});

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    controller:discountClearController,


                                                                                    onChanged: (p0) {
                                                                                      if (p0 == '')
                                                                                        setState(() {
                                                                                          discount = 0;
                                                                                        });
                                                                                      else {
                                                                                        setState(() {
                                                                                          discount = double
                                                                                              .tryParse(
                                                                                              p0);
                                                                                        });
                                                                                      }

                                                                                      if(unitcost==0 ||recievedQty==0){
                                                                                        actualCost1=0;
                                                                                        vatableAmount1=0;
                                                                                        grandTotal1=0;
                                                                                      }
                                                                                      else{
                                                                                        if(foc1==0 ||foc1==""){
                                                                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);

                                                                                          actualAndgrandTotal(vatableAmount1,vat1);



                                                                                        }
                                                                                        else{
                                                                                          vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);

                                                                                          actualAndgrandTotal(vatableAmount1,vat1);

                                                                                        }

                                                                                      }


                                                                                      setState(() {});
                                                                                      // print(Qty);
                                                                                    },
                                                                                    enable: true,
                                                                                    onComplete: () {
                                                                                      setState(() {});

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    controller:focClearController,
                                                                                    onChanged: (p0) {
                                                                                      if (p0 == '')
                                                                                        setState(() {
                                                                                          foc1 = 0;
                                                                                        });
                                                                                      else {
                                                                                        setState(() {
                                                                                          foc1 = double
                                                                                              .tryParse(
                                                                                              p0);
                                                                                        });
                                                                                      }
                                                                                      if(unitcost==0 ||recievedQty==0){
                                                                                        actualCost1=0;
                                                                                        vatableAmount1=0;
                                                                                        grandTotal1=0;
                                                                                      }
                                                                                      else{
                                                                                        if(foc1==0 ||foc1==""){
                                                                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);
                                                                                        }
                                                                                        else{
                                                                                          vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                          actualAndgrandTotal(vatableAmount1,vat1);
                                                                                        }
                                                                                      }
                                                                                      // print(Qty);
                                                                                    },
                                                                                    enable: true,
                                                                                    onComplete: () {
                                                                                    },
                                                                                  ),
                                                                                ),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(vatableAmount1?.toString()??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(vat1?.toString()??"",
                                                                                      fontWeight: FontWeight.w500),
                                                                                ),
                                                                                // TableCell(
                                                                                //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                //   child: UnderLinedInput(
                                                                                //
                                                                                //
                                                                                //     onChanged: (p0) {
                                                                                //       if (p0 == '')
                                                                                //         setState(() {
                                                                                //           vat1 = 0;
                                                                                //         });
                                                                                //       else {
                                                                                //         setState(() {
                                                                                //           vat1 = double
                                                                                //               .tryParse(
                                                                                //               p0);
                                                                                //         });
                                                                                //       }
                                                                                //
                                                                                //       if(unitcost==0 ||recievedQty==0){
                                                                                //         actualCost1=0;
                                                                                //         vatableAmount1=0;
                                                                                //         grandTotal1=0;
                                                                                //       }
                                                                                //       else{
                                                                                //         if(foc1==0 ||foc1==""){
                                                                                //           vatableAmount1 = double.parse((((unitcost! *
                                                                                //               recievedQty!) +
                                                                                //               excess1!) -
                                                                                //               discount!)
                                                                                //               .toStringAsFixed(2));
                                                                                //           actualCost1 = double.parse((vatableAmount1! +
                                                                                //               ((vatableAmount1! *
                                                                                //                   vat1!) /
                                                                                //                   100)).toStringAsFixed(2));
                                                                                //           grandTotal1 =double.parse( (vatableAmount1! +
                                                                                //               ((vatableAmount1! *
                                                                                //                   vat1!) /
                                                                                //                   100)).toStringAsFixed(2));
                                                                                //
                                                                                //
                                                                                //
                                                                                //         }
                                                                                //         else{
                                                                                //
                                                                                //           vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                //           actualCost1 = (vatableAmount1! +
                                                                                //               ((vatableAmount1! *
                                                                                //                   vat1!) /
                                                                                //                   100));
                                                                                //           grandTotal1 = (vatableAmount1! +
                                                                                //               ((vatableAmount1! *
                                                                                //                   vat1!) /
                                                                                //                   100));
                                                                                //
                                                                                //         }
                                                                                //
                                                                                //       }
                                                                                //
                                                                                //
                                                                                //       setState(() {});
                                                                                //       // print(Qty);
                                                                                //     },
                                                                                //     enable: true,
                                                                                //     onComplete: () {
                                                                                //       setState(() {});
                                                                                //
                                                                                //       setState(() {});
                                                                                //     },
                                                                                //   ),
                                                                                // ),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(actualCost1.toString()??"",
                                                                                      // fontSize: 12,
                                                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      alighnment: Alignment.topRight),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(grandTotal1?.toString()??"",
                                                                                      fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: CheckedBoxs(
                                                                                    valueChanger : isInvoiced1,
                                                                                    onSelection: (bool? value) {
                                                                                      setState(() {
                                                                                        // isInvoiced1 = !isInvoiced1!;
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child:Tabledate(
                                                                                      format:DateFormat('dd-MM-yyyy'),
                                                                                      controller:expiryDate2,
                                                                                      // initialValue:
                                                                                      //     DateTime.parse(fromDate!),
                                                                                      label: "Promised Receipt date",
                                                                                      onSuffixIconPressed: (){
                                                                                        setState(() {
                                                                                          expiryDate2.clear();
                                                                                        });


                                                                                      },

                                                                                      onSaved: (newValue) {
                                                                                        expiryDate2.text= newValue==null?"":  DateFormat('dd-MM-yyyy').format(newValue!);

                                                                                        expiryDate.text = newValue
                                                                                            ?.toIso8601String()
                                                                                            .split("T")[0] ??
                                                                                            "";
                                                                                        print("promised_receipt_date.text"+expiryDate.text.toString());
                                                                                        setState(() {

                                                                                        });
                                                                                      },
                                                                                      enable: true),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: CheckedBoxs(

                                                                                    valueChanger: isFree1,
                                                                                    onSelection: (bool? value) {

                                                                                      setState(() {
                                                                                        isFree1 = !isFree1!;

                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: CheckedBoxs(
                                                                                    // color:Color(0xff3E4F5B) ,

                                                                                    valueChanger:  isActive1,
                                                                                    onSelection: (bool? value ) {

                                                                                      setState(() {
                                                                                        isActive1 = !isActive1!;


                                                                                      });
                                                                                    },

                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child:
                                                                                  TableTextButton(

                                                                                    onPress: () {
                                                                                      setState(() {
                                                                                        if(isReceived1==false||isActive1==false){
                                                                                          context.showSnackBarError(
                                                                                              "isreceived and isActive always true in this");
                                                                                        }
                                                                                        else if(vat1==0||recievedQty==0||unitcost==0||variantId=="" ){
                                                                                          context.showSnackBarError(
                                                                                              "please fill all the details");
                                                                                        }
                                                                                        else if(expiryDate.text==""||expiryDate.text==null){
                                                                                          context.showSnackBarError(
                                                                                              "please select expiry text");
                                                                                        }
                                                                                        else if( foc1!>recievedQty!){
                                                                                          context.showSnackBarError("foc always less than received qty");
                                                                                        }

                                                                                        else{
                                                                                          additionalVariants.add(RecievingLines(
                                                                                              variantId: variantId??"",
                                                                                              currentStock: stock,
                                                                                              supplierCode: supplierRefCode,
                                                                                              variantName: varinatname??"",
                                                                                              barcode: barcode??"",
                                                                                              purchaseUom: purchaseUomName??"",
                                                                                              requestedQty: recievedQty,
                                                                                              isReceived: isReceived1,
                                                                                              discount: discount,
                                                                                              foc: foc1,
                                                                                              unitCost: unitcost,
                                                                                              vatableAmount: vatableAmount1,vat: vat1,
                                                                                              excessTax: excess1,
                                                                                              actualCost: actualCost1,
                                                                                              grandTotal: grandTotal1,
                                                                                              isInvoiced: isInvoiced1,
                                                                                              isFree: isFree1,
                                                                                              isActive:isActive1,
                                                                                              expiryDate: expiryDate.text



                                                                                          ));
                                                                                          print("expiryDate.text"+expiryDate.text.toString());
                                                                                          var expirydate1 = new TextEditingController(text: expiryDate2.text??"");
                                                                                          expiryDate2tControllers.add(expirydate1);
                                                                                          print("additionalVariants"+additionalVariants.toString());
                                                                                          unitcostAdditionalListControllers.clear();
                                                                                          valueAddingTextEdingController();



                                                                                          clear();

                                                                                        }


                                                                                      });







                                                                                    },


                                                                                    label:"Save",

                                                                                  ),
                                                                                ),


                                                                              ],

                                                                            ),

                                                                          ]
                                                                          , widths: {
                                                                          0: FlexColumnWidth(1.5),
                                                                          1: FlexColumnWidth(3),
                                                                          2: FlexColumnWidth(3),
                                                                          3: FlexColumnWidth(4),
                                                                          4: FlexColumnWidth(3),
                                                                          5: FlexColumnWidth(3),
                                                                          6: FlexColumnWidth(3),
                                                                          7: FlexColumnWidth(3),
                                                                          8: FlexColumnWidth(3),
                                                                          9: FlexColumnWidth(3),
                                                                          10: FlexColumnWidth(3),
                                                                          11: FlexColumnWidth(3),
                                                                          12: FlexColumnWidth(3),
                                                                          13: FlexColumnWidth(4),
                                                                          14: FlexColumnWidth(3),
                                                                          15: FlexColumnWidth(3),
                                                                          16: FlexColumnWidth(3),
                                                                          17: FlexColumnWidth(2.5),
                                                                          18: FlexColumnWidth(4),
                                                                          19: FlexColumnWidth(2.5),
                                                                          20: FlexColumnWidth(2.5),
                                                                          21: FlexColumnWidth(3),



                                                                        },),
                                                                      ),

                                                                    ],
                                                                  )

                                                              ),
                                                            )),

                                                        Container(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.end,
                                                            children: [
                                                              TextButtonLarge(


                                                                onPress: () {

                                                                  List<RecievingLines>additionalVariants1=[];
                                                                  for(var i=0;i<additionalVariants.length;i++){
                                                                    if(additionalVariants[i].isReceived==true &&additionalVariants[i].isActive==true){
                                                                      additionalVariants1.add(additionalVariants[i]);
                                                                    }
                                                                  }

                                                                  AdditionalGenerateModel model=AdditionalGenerateModel(
                                                                    receivingId: receivingId,
                                                                    createdBy: Variable.created_by,
                                                                    purchaseOrderId:Variable.verticalid,
                                                                    orderLines: additionalVariants1,
                                                                  );
                                                                  print("avan"+model.toString());
                                                                  context.read<AdditionalgenerateCubit>().additionlGeneratePost(model!);
                                                                },
                                                                icon: Icons.check,
                                                                // iconColor: Colors.white,
                                                                text: "GENERATE ORDER",

                                                                // height: 30,
                                                                // width: 152,
                                                                // labelcolor: Colors.white,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: height/30,),
                                                        SaveUpdateResponsiveButton(label: "SAVE",
                                                          isDelete: true,

                                                          saveFunction: (){

                                                            print("akkkakkaa");
                                                            if(recievingLisnes.isNotEmpty==true  && currentStock.isNotEmpty==true){
                                                              for(var i=0;i<recievingLisnes.length;i++){

                                                                recievingLisnes[i]= recievingLisnes[i].copyWith(currentStock: currentStock[i]);
                                                                setState(() {

                                                                });
                                                              }
                                                            }


                                                            PurchaseRecievingRead model = PurchaseRecievingRead(
                                                                orderCode: orderCodeController.text ?? "",
                                                                receivingCode: recievingCodeController.text ?? "",
                                                                orderCreatedDate: orederDateController.text ?? "",
                                                                orderStatus:
                                                                orderStatusController
                                                                    .text ??
                                                                    "",
                                                                invoiceStatus:
                                                                invoiceStausController
                                                                    .text ??
                                                                    "",
                                                                foc: double.tryParse(
                                                                    focController.text ?? ""),

                                                                discount: double.tryParse(discountController.text ?? ""),
                                                                unitCost: int.tryParse(unitCostController.text ?? ""),
                                                                vatableAmount: double.tryParse(vatableAmountController.text ?? ""),
                                                                excessTax: double.tryParse(excessTaxController.text ?? ""),
                                                                vat: double.tryParse(vatController.text ?? ""),
                                                                actualCost: double.tryParse(actualCostController.text ?? ""),
                                                                grandTotal: double.tryParse(grandTotalController.text ?? ""),
                                                                inventoryId: inventoryId ?? "",
                                                                note: noteController.text ?? "",
                                                                receivedBy: Variable.username,
                                                                remarks: remarksController.text ?? "",
                                                                receivingLines: recievingLisnes);
                                                            context
                                                                .read<
                                                                PurchaserecievingpatchCubit>()
                                                                .getPurchaseRecievePatch(
                                                                receivingId,
                                                                model);

                                                          },
                                                          discardFunction: (){

                                                          },

                                                        ),
                                                        // CustomDivider(),
                                                        // Row(
                                                        //   mainAxisAlignment:
                                                        //   MainAxisAlignment.end,
                                                        //   children: [
                                                        //     Buttons(
                                                        //       onApply: () {
                                                        //         print("akkkakkaa");
                                                        //         if(recievingLisnes.isNotEmpty==true){
                                                        //           for(var i=0;i<recievingLisnes.length-1;i++){
                                                        //             print("ssssssssss"+ currentStock[i].toString());
                                                        //             recievingLisnes[i]= recievingLisnes[i].copyWith(currentStock: currentStock[i]);
                                                        //             setState(() {
                                                        //
                                                        //             });
                                                        //           }
                                                        //         }
                                                        //
                                                        //
                                                        //         PurchaseRecievingRead model = PurchaseRecievingRead(
                                                        //             orderCode: orderCodeController.text ?? "",
                                                        //             receivingCode: recievingCodeController.text ?? "",
                                                        //             orderCreatedDate: orederDateController.text ?? "",
                                                        //             orderStatus:
                                                        //             orderStatusController
                                                        //                 .text ??
                                                        //                 "",
                                                        //             invoiceStatus:
                                                        //             invoiceStausController
                                                        //                 .text ??
                                                        //                 "",
                                                        //             foc: double.tryParse(
                                                        //                 focController.text ?? ""),
                                                        //
                                                        //             discount: double.tryParse(discountController.text ?? ""),
                                                        //             unitCost: int.tryParse(unitCostController.text ?? ""),
                                                        //             vatableAmount: double.tryParse(vatableAmountController.text ?? ""),
                                                        //             excessTax: double.tryParse(excessTaxController.text ?? ""),
                                                        //             vat: double.tryParse(vatController.text ?? ""),
                                                        //             actualCost: double.tryParse(actualCostController.text ?? ""),
                                                        //             grandTotal: double.tryParse(grandTotalController.text ?? ""),
                                                        //             inventoryId: inventoryId ?? "",
                                                        //             note: noteController.text ?? "",
                                                        //             receivedBy: Variable.username,
                                                        //             remarks: remarksController.text ?? "",
                                                        //             receivingLines: recievingLisnes);
                                                        //         context
                                                        //             .read<
                                                        //             PurchaserecievingpatchCubit>()
                                                        //             .getPurchaseRecievePatch(
                                                        //             receivingId,
                                                        //             model);
                                                        //       },
                                                        //       icon: Icons.check,
                                                        //       iconColor: Colors.white,
                                                        //       text: "SAVE",
                                                        //       // clr: Color(0xff53A9F9),
                                                        //       height: 32,
                                                        //       width: 90,
                                                        //       labelcolor: Colors.white,
                                                        //     ),
                                                        //   ],
                                                        // ),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  );
                },
              ),
            );
          });
        }),
      ),
    );
  }
}