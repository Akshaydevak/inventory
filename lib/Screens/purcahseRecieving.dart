import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/pellete.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
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
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'Dashboard.dart';

class PurchaseRecievinScreen extends StatefulWidget {
  @override
  _PurchaseRecievinScreenState createState() => _PurchaseRecievinScreenState();
}

class _PurchaseRecievinScreenState extends State<PurchaseRecievinScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController recievingCodeController = TextEditingController();
  TextEditingController orederDateController = TextEditingController();
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
  TextEditingController reason = TextEditingController();
  TextEditingController unitcost1 = TextEditingController(text: "0");
  TextEditingController expiryDate = TextEditingController(text: "0");

  int? recievedQty=0;

  ScrollController? _scrollController = ScrollController();
  TextEditingController itemsearch = TextEditingController();
  late AutoScrollController scontroller;
  late AutoScrollController verticalController;
  int selectedVertical = 0;
  String? inventoryId = "";
  int? receivingId ;
  String? variantId;
  String? barcode;
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
  bool isInvoiced1=false;
  double?foc1=0;
  double?vat1=0;
  double?excess1=0;
  double?discount=0;
  int?stock=0;




  PurchaseOrderTableModel? purchaseTable;

  int? veritiaclid = 0;
  List<int?> currentStock = [];
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<PurchaseOrder> result = [];
  List<OrderLiness> orderLinses = [];
  List<RecievingLines> recievingLisnes = [];
  List<RecievingLines> additionalVariants = [];
  NavigationProvider vm = NavigationProvider();
  bool stockCheck=false;

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

  @override
  Widget build(BuildContext context) {
    vm = Provider.of<NavigationProvider>(context);
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PurchaserecievigReadCubit()
              ..getGeneralPurchaseRecievingRead(Variable.verticalid),
          ),
          // BlocProvider(
          //   create: (context) => AdditionalgenerateCubit(),
          // ),
          BlocProvider(
            create: (context) => PurchaserecievingpatchCubit(),
          ),

        ],
        child: Builder(builder: (context) {
          return Builder(builder: (context) {
            // context
            //     .read<InventorysearchCubit>()
            //     .getInventorySearch("code");

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
                          data?.receivingLines != null
                              ? recievingLisnes = data?.receivingLines ?? []
                              : recievingLisnes = [];
                          data?.receivingLines != null
                              ? vm.recievingLisnes = data?.receivingLines ?? []
                              : vm.recievingLisnes = [];
                          print("recievelines" + recievingLisnes.toString());
                          print("recievelines" +
                              vm.recievingLisnes.length.toString());
                          orderCodeController.text = data.orderCode ?? "";
                          focController.text = data.foc.toString() ?? "";
                          recievingCodeController.text =
                              data.receivingCode ?? "";
                          receivingId=data.id;
                          orederDateController.text =
                              data.orderCreatedDate ?? "";
                          orderStatusController.text = data.orderStatus ?? "";
                          invoiceStausController.text =
                              data.invoiceStatus ?? "";
                          grandTotalController.text =
                              data.grandTotal.toString() ?? "";
                          vatController.text = data.vat.toString() ?? "";
                          vatableAmountController.text =
                              data.vatableAmount.toString() ?? "";
                          excessTaxController.text =
                              data.excessTax.toString() ?? "";
                          unitCostController.text =
                              data.unitCost.toString() ?? "";
                          actualCostController.text =
                              data.actualCost.toString() ?? "";
                          discountController.text =
                              data.discount.toString() ?? "";
                          inventoryId = data.inventoryId ?? "";
                          print("inventoryId44" + inventoryId.toString());
                          print("length" + recievingLisnes.length.toString());
                          for (var i = 0; i < recievingLisnes.length; i++) {
                            print("variantaaaaaa"+recievingLisnes[i].variantId.toString());
                            context
                                .read<PurchaseStockCubit>()
                                .getCurrentStock(1, recievingLisnes[i].variantId);
                          }
                          // if (currentStock.isNotEmpty) {
                          //   print("recievingLisnessssssss" +
                          //       currentStock.length.toString());
                          //   for (var i = 0; i < recievingLisnes.length; i++) {
                          //     print("stockqty");
                          //     print("stockqty" + currentStock.toString());
                          //
                          //     recievingLisnes[i] = recievingLisnes[i]
                          //         .copyWith(currentStock: currentStock[i]);
                          //     print("stockqty" + currentStock[i].toString());
                          //   }
                          //
                          // }
                          setState(() {});
                          print("recievingLisnes" + recievingLisnes.toString());
                        });
                  },
                ),
                BlocListener<PurchaserecievingpatchCubit,
                    PurchaserecievingpatchState>(
                  listener: (context, state) {
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1)
                        context.showSnackBarSuccess(data.data2);
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                // BlocListener<AdditionalgenerateCubit, AdditionalgenerateState>(
                //   listener: (context, state) {
                //     print("postssssssss" + state.toString());
                //     state.maybeWhen(orElse: () {
                //       // context.
                //       context.showSnackBarError("Loadingggg");
                //     }, error: () {
                //       context.showSnackBarError(Variable.errorMessege);
                //     }, success: (data) {
                //       if (data.data1)
                //         context.showSnackBarSuccess(data.data2);
                //       else {
                //         context.showSnackBarError(data.data2);
                //         print(data.data1);
                //       }
                //       ;
                //     });
                //   },
                // ),


                BlocListener<PurchaseStockCubit, PurchaseStockState>(
                  listener: (context, state) {
                    print("state++++++++++++++++++++++++++++++++");

                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          print("Akshayaaaaa" + data.toString());
                          purchaseCurrentStock = data;
                          var stockQty = purchaseCurrentStock?.StockQty;
                          print("stockqty" + stockQty.toString());
                          print("stockCheck"+stockCheck.toString());
                          if(stockCheck==false){
                         // currentStock.add(stockQty);
                          setState(() {

                          });
                          }

                          else{
                            print("findinf");
                            stock=stockQty;


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
                          print("purchasetable"+purchaseTable.toString());
                          setState(() {


                            // if(Variable.tableedit==true){

                              // table.replaceRange(Variable.tableindex, (Variable.tableindex+1), [OrderLines(isRecieved: table[Variable.tableindex].isRecieved,isActive:table[Variable.tableindex].isActive ,maximumQty:table[Variable.tableindex].maximumQty,minimumQty:table[Variable.tableindex].minimumQty,requestedQty: table[Variable.tableindex].requestedQty,
                              //     variableAmount:table[Variable.tableindex].variableAmount,vat: table[Variable.tableindex].vat,currentQty: table[Variable.tableindex].currentQty,variantName:  purchaseTable?.name,barcode: purchaseTable?.barCode?.barcodeNumber,excessTax: table[Variable.tableindex].excessTax,supplierCode: table[Variable.tableindex].supplierCode
                              //     ,unitCost:purchaseTable?.unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom: purchaseTable?.purchaseUomName,discount: table[Variable.tableindex].discount
                              // )]);

                              //
                              varinatname = purchaseTable?.name??"";
                              unitcost = purchaseTable?.unitCost;
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
                        print("listtt" + list.toString());
                        result = list.data;
                        setState(() {
                          print("Here is the result");
                          print(result);
                          // print(result[0].id);
                        });
                      });
                },
                builder: (context, state) {

                  return SingleChildScrollView(
                    child: Container(
                        height:5000,
                        // width: 788,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Visibility(
                                visible: true,
                                child: Container(
                                  height: height,
                                  // height: double.minPositive,
                                  width: width * .172,
                                  //width: 232,
                                  color: Color(0xffEDF1F2),
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(5),
                                          child: SearchTextfiled(
                                            color: Color(0xffFAFAFA),
                                            hintText: "Search...",
                                            ctrlr: itemsearch,
                                            onChanged: (va) {
                                              context
                                                  .read<InventorysearchCubit>()
                                                  .getSearch(itemsearch.text);
                                            },
                                          )),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .008,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: width * 0.009,
                                          right: width * 0.007,
                                        ),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            RectangleContainer(
                                                "asset/rect1.png", context),
                                            SizedBox(
                                              width: width * .003,
                                            ),
                                            Container(
                                              color: Color(0xffFFFFFF),
                                              height: width * .0197,
                                              width: width * .111,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: width * .001,
                                                  ),
                                                  Icon(
                                                    Icons.add,
                                                    color: Colors.black,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: width * .007,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      "Add a Varient",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              width * .010,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * .003,
                                            ),
                                            RectangleContainer(
                                                "asset/rect2.png", context),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * .015,
                                      ),
                                      Expanded(
                                          child: Container(
                                              height: 0,
                                              child: ListView.separated(
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Divider(
                                                    height: 0,
                                                    color: Color(0xff2B3944)
                                                        .withOpacity(0.3),
                                                    // thickness: 1,
                                                  );
                                                },
                                                physics: ScrollPhysics(),
                                                controller: verticalController,
                                                itemBuilder: (context, index) {
                                                  return AutoScrollTag(
                                                      highlightColor:
                                                          Colors.red,
                                                      controller:
                                                          verticalController,
                                                      key: ValueKey(index),
                                                      index: index,
                                                      child: ItemCard(
                                                        index: index,
                                                        selectedVertical:
                                                            selectedVertical,
                                                        item: result[index]
                                                            .orderCode,
                                                        id: result[index]
                                                            .id
                                                            .toString(),
                                                        onClick: () {
                                                          setState(() {
                                                            // select=false;
                                                            selectedVertical =
                                                                index;
                                                            Variable.verticalid= result[index]
                                                                .id;

                                                            veritiaclid =
                                                                result[index]
                                                                    .id;
                                                            context
                                                                .read<
                                                                    PurchaserecievigReadCubit>()
                                                                .getGeneralPurchaseRecievingRead(
                                                                    veritiaclid!);
                                                          });
                                                        },
                                                      ));
                                                },
                                                itemCount: result.length,
                                              )))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    orderCodeController.text =
                                                        "";
                                                    recievingCodeController
                                                        .text = "";
                                                    orederDateController.text =
                                                        "";
                                                    orderStatusController.text =
                                                        "";
                                                    paymentStatusController
                                                        .text = "";
                                                    invoiceStausController
                                                        .text = "";
                                                    focController.text = "";
                                                    discountController.text =
                                                        "";
                                                    unitCostController.text =
                                                        "";
                                                    vatableAmountController
                                                        .text = "";
                                                    excessTaxController.text =
                                                        "";
                                                    vatController.text = "";
                                                    actualCostController.text =
                                                        "";
                                                    grandTotalController.text =
                                                        "";
                                                    noteController.text = "";
                                                    remarksController.text = "";
                                                  });
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      bottom:
                                                          size.height * .008),
                                                  alignment: Alignment.center,
                                                  height: size.width * .016,
                                                  width: size.width * .016,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                    ),

                                                    //more than 50% of width makes circle
                                                  ),
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: Colors.black,
                                                    size: size.width * .010,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                              child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      orderCodeController,
                                                                  title:
                                                                      "Order code"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      recievingCodeController,
                                                                  title:
                                                                      "Receiving code"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                readOnly: true,
                                                                controller:
                                                                    orederDateController,
                                                                title:
                                                                    "Order date",
                                                                colors: Color(
                                                                    0xff3E4F5B),
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      orderStatusController,
                                                                  title:
                                                                      "Order Status"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      paymentStatusController,
                                                                  title:
                                                                      "Payment Status"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      invoiceStausController,
                                                                  title:
                                                                      "Invoice Status"),
                                                            ],
                                                          )),
                                                          Expanded(
                                                              child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              //  SizedBox(height: height*.030,),
                                                              NewInputCard(
                                                                  controller:
                                                                      focController,
                                                                  title: "foc"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  controller:
                                                                      discountController,
                                                                  title:
                                                                      "discount"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  controller:
                                                                      unitCostController,
                                                                  title:
                                                                      "unit cost"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  controller:
                                                                      vatableAmountController,
                                                                  title:
                                                                      "vatable amount"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  controller:
                                                                      excessTaxController,
                                                                  title:
                                                                      "excess tax"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  controller:
                                                                      vatController,
                                                                  title: "vat"),
                                                            ],
                                                          )),
                                                          Expanded(
                                                              child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      actualCostController,
                                                                  title:
                                                                      "actual cost"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                  readOnly:
                                                                      true,
                                                                  controller:
                                                                      grandTotalController,
                                                                  title:
                                                                      "grand total"),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                readOnly: true,
                                                                controller:
                                                                    noteController,
                                                                title: "note",
                                                                height: 90,
                                                                maxLines: 3,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              NewInputCard(
                                                                readOnly: true,
                                                                controller:
                                                                    remarksController,
                                                                title:
                                                                    "remarks",
                                                                height: 90,
                                                                maxLines: 3,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .030,
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    .036,
                                                              ),
                                                              // SizedBox(height: height*.010,),
                                                            ],
                                                          )),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * .080,
                                              ),
                                              TextWidget(
                                                  text: "recieving lines"),
                                              Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              ),
                                              SizedBox(
                                                height: height * .030,
                                              ),
                                              // ScrollableTable(),

                                              Scrollbar(
                                                  controller: scontroller,
                                                  isAlwaysShown: true,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.topRight,
                                                    height: 300,
                                                    child: ListView(
                                                      padding: EdgeInsets.only(
                                                          top: 0),
                                                      shrinkWrap: true,
                                                      controller: scontroller,
                                                      physics: ScrollPhysics(),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SingleChildScrollView(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  child:
                                                                      customTable(
                                                                    border: const TableBorder(

                                                                        verticalInside: BorderSide(
                                                                            width: 1,
                                                                            color: Colors.black45,
                                                                            // color: Colors.blue,
                                                                            style: BorderStyle.solid),
                                                                        top: BorderSide(
                                                                                width: .5,
                                                                            color: Colors.black45,
                                                                            // color: Colors.blue,
                                                                            style: BorderStyle.solid
                                                                        ),
                                                                        horizontalInside: BorderSide.none),
                                                                    tableWidth:
                                                                        .5,
                                                                    childrens: [
                                                                      TableRow(
                                                                          // decoration: BoxDecoration(
                                                                          //     color: Colors.green.shade200,
                                                                          //     shape: BoxShape.rectangle,
                                                                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                                                                          children: [
                                                                            tableHeadtext(
                                                                              'Sno',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white,
                                                                            ),
                                                                            tableHeadtext(
                                                                              'orderline id',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 50,
                                                                              size: 12,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Variant id',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Variant name',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            // tableHeadtext('description', size: 10, color: null),

                                                                            tableHeadtext(
                                                                              'supplier ref code',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'barcode',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'current qty',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'purchase uom',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'recieved qty',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is recieved',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'unitcost',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'excise tax',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'discount',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'foc',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'vatable amount',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'vat',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'actual cost',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'grand total',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is invoiced',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'expiry date',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is free',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is active',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            // if (widget.onAddNew) textPadding(''),
                                                                          ]),
                                                                      if (recievingLisnes !=
                                                                          null) ...[
                                                                        for (var i =
                                                                                0;
                                                                            i <
                                                                                recievingLisnes
                                                                                    .length;
                                                                            i++)
                                                                          TableRow(
                                                                              decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.rectangle, border: const Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle.solid))),
                                                                              children: [
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].orderLineCode.toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].variantName ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].supplierCode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].barcode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(currentStock.length==0?"":currentStock[i].toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].purchaseUom ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    last: recievingLisnes[i].receivedQty.toString() ?? "",
                                                                                    onChanged: (va) {
                                                                                      print(va);
                                                                                      if (va == "") {
                                                                                        print("entered");
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(receivedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                      } else {
                                                                                        var qty = int.tryParse(va);
                                                                                        var dis = recievingLisnes[i].discount;
                                                                                        var excess = recievingLisnes[i].excessTax;
                                                                                        var unitcost = recievingLisnes[i].unitCost;
                                                                                        var vat = recievingLisnes[i].vat;
                                                                                        var foc = recievingLisnes[i].foc;
                                                                                        if (unitcost == "" || unitcost == 0) {
                                                                                          recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                        }else {var Vamount;
                                                                                        var vactualCost;
                                                                                          if(foc==0 || foc==""){
                                                                                            Vamount  = (((unitcost! *
                                                                                              qty!) +
                                                                                              excess!) -
                                                                                              dis!)
                                                                                              .toDouble();
                                                                                            if(vat==0 ||vat==""){
                                                                                              vactualCost=Vamount;
                                                                                            }
                                                                                            else{

                                                                                              vactualCost  = (Vamount! +
                                                                                                  ((Vamount! *
                                                                                                      vat!) /
                                                                                                      100));
                                                                                            }


                                                                                          recievingLisnes[i] =
                                                                                              recievingLisnes[i]
                                                                                                  .copyWith(
                                                                                                  vatableAmount: Vamount,
                                                                                                  actualCost: vactualCost,
                                                                                                  grandTotal: vactualCost,
                                                                                                  receivedQty: qty);
                                                                                        }
                                                                                          else{

                                                                                            var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                                                                            var vactualCost = (Vamount! +
                                                                                                ((Vamount! *
                                                                                                    vat!) /
                                                                                                    100));

                                                                                            recievingLisnes[i] =
                                                                                                recievingLisnes[i]
                                                                                                    .copyWith(
                                                                                                    vatableAmount: Vamount,
                                                                                                    actualCost: vactualCost,
                                                                                                    grandTotal: vactualCost,
                                                                                                    receivedQty: qty);
                                                                                          }


                                                                                        }}

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),

                                                                                // textPadding(
                                                                                //     recievingLisnes[i]
                                                                                //         .receivedQty.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                                // 1.5),
                                                                                //     fontWeight: FontWeight.w500),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: Checkbox(
                                                                                    value: recievingLisnes[i].isReceived == null ? false : recievingLisnes[i].isReceived,
                                                                                    onChanged: (bool? value) {
                                                                                      bool? isRecieved = recievingLisnes[i].isReceived;
                                                                                      setState(() {
                                                                                        isRecieved = !isRecieved!;
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(isReceived: isRecieved);
                                                                                        print(recievingLisnes);
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    last: recievingLisnes[i].unitCost.toString() ?? "",
                                                                                    onChanged: (va) {
                                                                                      double? unitcost;
                                                                                      if (va == "") {
                                                                                        print("entered");
                                                                                        unitcost = 0;
                                                                                        print("disc" + unitcost.toString());
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                      }
                                                                                      unitcost = double.tryParse(va);
                                                                                      print("unitcost" + unitcost.toString());

                                                                                      var qty = recievingLisnes[i].receivedQty;
                                                                                      print("qty" + qty.toString());
                                                                                      var excess = recievingLisnes[i].excessTax;
                                                                                      print("excess" + excess.toString());
                                                                                      var disc = recievingLisnes[i].discount;
                                                                                      var foc=recievingLisnes[i].foc;

                                                                                      var vat = recievingLisnes[i].vat;
                                                                                      print("vat" + vat.toString());
                                                                                      print("qty" + qty.toString());
                                                                                      if (qty == 0 || qty == null) {
                                                                                        print("checking case");

                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                        setState(() {});
                                                                                      } else {
                                                                                        if(foc==0 || foc=="") {
                                                                                          var Vamount = (((unitcost! *
                                                                                              qty!) +
                                                                                              excess!) -
                                                                                              disc!)
                                                                                              .toDouble();
                                                                                          print(
                                                                                              "Vamount" +
                                                                                                  Vamount
                                                                                                      .toString());

                                                                                          var vactualCost = (Vamount! +
                                                                                              ((Vamount! *
                                                                                                  vat!) /
                                                                                                  100));
                                                                                          print(
                                                                                              "vactualCost" +
                                                                                                  vactualCost
                                                                                                      .toString());
                                                                                          recievingLisnes[i] =
                                                                                              recievingLisnes[i]
                                                                                                  .copyWith(
                                                                                                  vatableAmount: Vamount,
                                                                                                  actualCost: vactualCost,
                                                                                                  grandTotal: vactualCost,
                                                                                                  unitCost: unitcost);
                                                                                          setState(() {});
                                                                                        }else{
                                                                                          var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                                          var vactualCost = (Vamount! +
                                                                                              ((Vamount! *
                                                                                                  vat!) /
                                                                                                  100));
                                                                                          recievingLisnes[i] =
                                                                                              recievingLisnes[i]
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
                                                                                    last: recievingLisnes[i].excessTax.toString() ?? "",
                                                                                    onChanged: (va) {
                                                                                      double? excess;
                                                                                      if (va == "") {
                                                                                        excess = 0;
                                                                                        setState(() {});
                                                                                      } else {
                                                                                        excess = double.tryParse(va);
                                                                                        setState(() {});
                                                                                      }

                                                                                      var qty = recievingLisnes[i].receivedQty;
                                                                                      var vat = recievingLisnes[i].vat;
                                                                                      var foc = recievingLisnes[i].foc;

                                                                                      print("excess" + excess.toString());
                                                                                      var unitcost = recievingLisnes[i].unitCost;
                                                                                      print("unitcost" + unitcost.toString());
                                                                                      var Vdiscount = recievingLisnes[i].discount;
                                                                                      if(qty==0 || unitcost==0){
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                                                        setState(() {

                                                                                        });

                                                                                      }else {
                                                                                        var Vamount;

                                                                                        if(foc==0 ||foc=="") {
                                                                                          Vamount =
                                                                                              (((unitcost! *
                                                                                                  qty!) +
                                                                                                  excess!) -
                                                                                                  Vdiscount!)
                                                                                                  .toDouble();
                                                                                        }else{
                                                                                          Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!);

                                                                                        }
                                                                                        var vactualCost = (Vamount! +
                                                                                            ((Vamount! *
                                                                                                vat!) /
                                                                                                100));
                                                                                        var Vgrnadtotal = (Vamount! +
                                                                                            ((Vamount! *
                                                                                                vat!) /
                                                                                                100));
                                                                                        recievingLisnes[i] =
                                                                                            recievingLisnes[i]
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
                                                                                    last: recievingLisnes[i].discount.toString() ?? "",
                                                                                    onChanged: (va) {
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

                                                                                      var qty = recievingLisnes[i]
                                                                                          .receivedQty;
                                                                                      print(
                                                                                          "qty" +
                                                                                              qty
                                                                                                  .toString());
                                                                                      var excess = recievingLisnes[i]
                                                                                          .excessTax;
                                                                                      print(
                                                                                          "excess" +
                                                                                              excess
                                                                                                  .toString());
                                                                                      var unitcost = recievingLisnes[i]
                                                                                          .unitCost;
                                                                                      print(
                                                                                          "unitcost" +
                                                                                              unitcost
                                                                                                  .toString());
                                                                                      var vat = recievingLisnes[i].vat;
                                                                                      var foc = recievingLisnes[i]
                                                                                          .foc;

                                                                                      print(
                                                                                          "vat" +
                                                                                              vat
                                                                                                  .toString());
                                                                                      if (unitcost ==
                                                                                          0 ||
                                                                                          qty ==
                                                                                              0) {
                                                                                        recievingLisnes[i] =
                                                                                            recievingLisnes[i]
                                                                                                .copyWith(
                                                                                                vatableAmount: 0,
                                                                                                actualCost: 0,
                                                                                                grandTotal: 0,
                                                                                                discount: disc);
                                                                                      }

                                                                                     else {
                                                                                       if(foc==0 ||foc=="") {
                                                                                         var Vamount = (((unitcost! *
                                                                                             qty!) +
                                                                                             excess!) -
                                                                                             disc!)
                                                                                             .toDouble();
                                                                                         print(
                                                                                             "Vamount" +
                                                                                                 Vamount
                                                                                                     .toString());

                                                                                         var vactualCost = (Vamount! +
                                                                                             ((Vamount! *
                                                                                                 vat!) /
                                                                                                 100));
                                                                                         print(
                                                                                             "vactualCost" +
                                                                                                 vactualCost
                                                                                                     .toString());
                                                                                         recievingLisnes[i] =
                                                                                             recievingLisnes[i]
                                                                                                 .copyWith(
                                                                                                 vatableAmount: Vamount,
                                                                                                 actualCost: vactualCost,
                                                                                                 grandTotal: vactualCost,
                                                                                                 discount: disc);
                                                                                         setState(() {});
                                                                                       }
                                                                                       else{
                                                                                         var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                                         var vactualCost = (Vamount! +
                                                                                             ((Vamount! *
                                                                                                 vat!) /
                                                                                                 100));
                                                                                         recievingLisnes[i] =
                                                                                             recievingLisnes[i]
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

                                                                                // textPadding(
                                                                                //     recievingLisnes[i]
                                                                                //         .discount.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                                // 1.5),
                                                                                //     fontWeight: FontWeight.w500),
                                                                                // textPadding(
                                                                                //     recievingLisnes[i]
                                                                                //         .foc.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                                // 1.5),
                                                                                //     fontWeight: FontWeight.w500),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    last: recievingLisnes[i].foc.toString() ?? "",
                                                                                    onChanged: (va) {
                                                                                      double? foc;
                                                                                      if (va == "") {
                                                                                        foc=0;
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(foc: 0);
                                                                                      } else {
                                                                                       foc  = double.tryParse(va);
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(foc: foc);
                                                                                      }
                                                                                      var qty = recievingLisnes[i].receivedQty;
                                                                                      var vat = recievingLisnes[i].vat;
                                                                                      print("qty" + qty.toString());
                                                                                      var excess = recievingLisnes[i].excessTax;
                                                                                      print("excess" + excess.toString());
                                                                                      var disc = recievingLisnes[i].discount;
                                                                                      var unitcost=recievingLisnes[i].unitCost;
                                                                                      if (qty == 0 || unitcost == 0) {
                                                                                        print("checking case");

                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, foc: foc);
                                                                                        setState(() {});
                                                                                      }
                                                                                      else{
                                                                                        var Vamount;
                                                                                        if(foc==0 ||foc==""){
                                                                                           Vamount = (((unitcost! *
                                                                                              qty!) +
                                                                                              excess!) -
                                                                                              disc!)
                                                                                              .toDouble();
                                                                                           setState(() {

                                                                                           });

                                                                                        }else{
                                                                                             Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                                          setState(() {

                                                                                          });

                                                                                        }
                                                                                        var vactualCost = (Vamount! +
                                                                                            ((Vamount! *
                                                                                                vat!) /
                                                                                                100));
                                                                                        recievingLisnes[i] =
                                                                                            recievingLisnes[i]
                                                                                                .copyWith(
                                                                                                vatableAmount: Vamount,
                                                                                                actualCost: vactualCost,
                                                                                                grandTotal: vactualCost,
                                                                                                );
                                                                                        setState(() {});


                                                                                      }

                                                                                      print(recievingLisnes);
                                                                                    },
                                                                                  ),
                                                                                ),

                                                                                // textPadding(
                                                                                //     recievingLisnes[i]
                                                                                //         .unitCost.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                                // 1.5),
                                                                                //     fontWeight: FontWeight.w500),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].vatableAmount.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: UnderLinedInput(
                                                                                    last: recievingLisnes[i].vat.toString() ?? "",
                                                                                    onChanged: (va) {
                                                                                      if (va == "") {
                                                                                        print("sss");
                                                                                        var vatableAmount = recievingLisnes[i].vatableAmount;
                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                                        setState(() {});
                                                                                      } else {
                                                                                        var vat = double.tryParse(va);
                                                                                        var Vamount = recievingLisnes[i].vatableAmount;
                                                                                        print("qty" + Vamount.toString());
                                                                                        var excess = recievingLisnes[i].excessTax;
                                                                                        print("excess" + excess.toString());
                                                                                        var unitcost = recievingLisnes[i].unitCost;
                                                                                        var qty = recievingLisnes[i].receivedQty;
                                                                                        var foc = recievingLisnes[i].foc;
                                                                                        var dis = recievingLisnes[i].discount;
                                                                                        print("unitcost" + unitcost.toString());
                                                                                        if(unitcost==0 || qty==0){
                                                                                          recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);

                                                                                        }else{
                                                                                          if(foc==0 || foc=="") {
                                                                                            var Vamount = (((unitcost! *
                                                                                                qty!) +
                                                                                                excess!) -
                                                                                                dis!)
                                                                                                .toDouble();
                                                                                            var vactualCost = (Vamount! +
                                                                                                ((Vamount! *
                                                                                                    vat!) /
                                                                                                    100));
                                                                                            var Vgrnadtotal = (Vamount! +
                                                                                                ((Vamount! *
                                                                                                    vat!) /
                                                                                                    100));
                                                                                            recievingLisnes[i] =
                                                                                                recievingLisnes[i]
                                                                                                    .copyWith(
                                                                                                  vatableAmount: Vamount,
                                                                                                    actualCost: vactualCost,
                                                                                                    grandTotal: Vgrnadtotal,
                                                                                                    vat: vat);
                                                                                            setState(() {});
                                                                                          }
                                                                                          else{
                                                                                            var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);

                                                                                            var vactualCost = (Vamount! +
                                                                                                ((Vamount! *
                                                                                                    vat!) /
                                                                                                    100));
                                                                                            var Vgrnadtotal = (Vamount! +
                                                                                                ((Vamount! *
                                                                                                    vat!) /
                                                                                                    100));
                                                                                            recievingLisnes[i] =
                                                                                                recievingLisnes[i]
                                                                                                    .copyWith(
                                                                                                  vatableAmount: Vamount,
                                                                                                    actualCost: vactualCost,
                                                                                                    grandTotal: Vgrnadtotal,
                                                                                                    vat: vat);
                                                                                            setState(() {

                                                                                            });
                                                                                          }
                                                                                      }}
                                                                                    },
                                                                                  ),
                                                                                ),


                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].actualCost.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].grandTotal.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),
                                                                                Checkbox(
                                                                                  value: recievingLisnes[i].isInvoiced == null ? false : recievingLisnes[i].isInvoiced,
                                                                                  onChanged: (bool? value) {
                                                                                    setState(() {});
                                                                                  },
                                                                                ),
                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: textPadding(recievingLisnes[i].expiryDate.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                ),

                                                                                TableCell(
                                                                                  child: Checkbox(
                                                                                    value: recievingLisnes[i].isFree == null ? false : recievingLisnes[i].isFree,
                                                                                    onChanged: (bool? value) {
                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),

                                                                                TableCell(
                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  child: Checkbox(
                                                                                    value: recievingLisnes[i].isActive == null ? false : recievingLisnes[i].isActive,
                                                                                    onChanged: (bool? value) {
                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),


                                                                              ])
                                                                      ]
                                                                    ],
                                                                    widths: {
                                                                      0: FractionColumnWidth(
                                                                          .035),
                                                                      //  1: FractionColumnWidth(.05),
                                                                      //  2: FractionColumnWidth(.05),
                                                                      //  3: FractionColumnWidth(.06),
                                                                      //  4: FractionColumnWidth(.05),
                                                                      //  5: FractionColumnWidth(.05),
                                                                      //  6: FractionColumnWidth(.05),
                                                                      //  7: FractionColumnWidth(.05),
                                                                      //  8: FractionColumnWidth(.05,),
                                                                      //  9: FractionColumnWidth(.05),
                                                                      //  10: FractionColumnWidth(.05),
                                                                      11: FractionColumnWidth(
                                                                          .035),
                                                                      //  12: FractionColumnWidth(.035),
                                                                      // 13: FractionColumnWidth(.03),
                                                                      14: FractionColumnWidth(
                                                                          .03),
                                                                      //  15: FractionColumnWidth(.05),
                                                                      //  16: FractionColumnWidth(.03),
                                                                      // 17: FractionColumnWidth(.05),
                                                                      //  18: FractionColumnWidth(.05),
                                                                      //  19: FractionColumnWidth(.05),
                                                                      20: FractionColumnWidth(
                                                                          .04),
                                                                      21: FractionColumnWidth(
                                                                          .05),
                                                                    },
                                                                  ),
                                                                ),
                                                              ),


                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )),

                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Buttons(
                                                    onApply: () {
                                                      print("recievdelines"+recievingLisnes.toString());
                                                      List<RecievingLines>recieve=[];
                                                      for(var i=0;i<recievingLisnes.length;i++){
                                                        if(recievingLisnes[i].isReceived==false){
                                                         orderLinses.add(OrderLiness(orderLineId:recievingLisnes[i]?.purchaseOrderLineId,receivinglineId:recievingLisnes[i].id));
                                                        }
                                                      }
                                                      print("visss"+orderLinses.toString());



                                                      // showDialog(
                                                      //     context: context,
                                                      //     builder: (BuildContext context) {
                                                      //       return AlertDialog(
                                                      //
                                                      //         title: Text(('Login with user...')),
                                                      //         content:
                                                      //         Container(
                                                      //           height: 300,
                                                      //           width: MediaQuery.of(context).size.width-20,
                                                      //           child:Column(
                                                      //             children: [
                                                      //               Text(
                                                      //                 "adjustment lines",
                                                      //               ),
                                                      //               Divider(
                                                      //                 color: Colors.grey,
                                                      //                 height: 4.0,
                                                      //               ),
                                                      //               Expanded(
                                                      //                 child: Row(
                                                      //                   children: [
                                                      //                     Expanded(child: Container(color: Colors.red,
                                                      //                       child: Column(
                                                      //                         children: [
                                                      //                         PopUpInputField(
                                                      //                                 controller: promisedRecieptDate, label: "vendor id"),
                                                      //
                                                      //                         ],
                                                      //                       ),
                                                      //                     )),
                                                      //                     Expanded(child: Container(color: Colors.white,))
                                                      //                   ],
                                                      //                 ),
                                                      //               )
                                                      //               // Row(
                                                      //               //   crossAxisAlignment: CrossAxisAlignment.start,
                                                      //               //   children: [
                                                      //               //     PopUpInputField(
                                                      //               //         controller: promisedRecieptDate, label: "vendor id"),
                                                      //               //     gapWidthColumn(),
                                                      //               //     PopUpInputField(
                                                      //               //       controller: plannedRecieptDate,
                                                      //               //       label: "planned reciept date",
                                                      //               //     ),
                                                      //               //   ],
                                                      //               // ),
                                                      //               // Row(
                                                      //               //   crossAxisAlignment: CrossAxisAlignment.start,
                                                      //               //   children: [
                                                      //               //     PopUpInputField(
                                                      //               //       boarType: "int",
                                                      //               //       //  controller: newQuantity,
                                                      //               //       label: "new quantity",
                                                      //               //       onChanged: (v) {
                                                      //               //         setState(() {
                                                      //               //           // newQty = int.tryParse(v);
                                                      //               //           // int? stck = int.tryParse(stckQty.text);
                                                      //               //           // qtyChange.text = ((stck!) - (newQty!)).toString();
                                                      //               //           // print("newQty" + newQty.toString());
                                                      //               //         });
                                                      //               //       },
                                                      //               //     ),
                                                      //               //     gapWidthColumn(),
                                                      //               //     PopUpInputField(
                                                      //               //       controller: reason,
                                                      //               //       label: "reason",
                                                      //               //     ),
                                                      //               //   ],
                                                      //               // ),
                                                      //
                                                      //             ],
                                                      //           ) ,
                                                      //
                                                      //         ),
                                                      //         actions: [
                                                      //
                                                      //           TextButton(
                                                      //             child: Text(
                                                      //               ("akk"),
                                                      //               style: TextStyle(
                                                      //                   color: Palette.DANGER),
                                                      //             ),
                                                      //             onPressed: () {
                                                      //               // Variables.customerCode = null;
                                                      //               // Variables.customerName = "";
                                                      //               // authentication
                                                      //               //     .clearAuthenticatedUser();
                                                      //               // BlocProvider.of<SigninBloc>(
                                                      //               //     context)
                                                      //               //     .add(SignOut());
                                                      //               // Navigator.of(context)
                                                      //               //     .pushAndRemoveUntil(
                                                      //               //     MaterialPageRoute(
                                                      //               //         builder: (context) =>
                                                      //               //             LoginPage()),
                                                      //               //         (Route<dynamic> route) =>
                                                      //               //     false);
                                                      //             },
                                                      //           ),
                                                      //         ],
                                                      //       );});
                                                      GenerateMissing model=GenerateMissing(
                                                        receivinglineId: receivingId,
                                                        note: noteController.text??"",
                                                        vendorId: "1",
                                                        inventoryId:inventoryId ??"",
                                                        vendorMailId: "akshay@gmail.com",
                                                        vendorAddress: "perincheeri",
                                                        createdBy: "12",
                                                        orderLinses: orderLinses







                                                      );
                                                      setState(() {

                                                      });
                                                      showDailogPopUp(
                                                          context,
                                                          WarrantyDetailsPopUp(
                                                            remarks: remarksController,
                                                            promised:promisedRecieptDate,
                                                            plannded:plannedRecieptDate,
                                                            model:model




                                                            // warranty: widget.warranty,
                                                            // changeActive: onChangeActive,
                                                            // changeAdditionalWarranty: onChangeAdditionalWarranty,
                                                            // changeExtendedWarranty: onChangeExtendedWarranty,
                                                          ));

                                                      // model = model.copyWith(actualCost: 100);
                                                      // print("vishnu"+model.toString());



                                                    },
                                                    icon: Icons.check,
                                                    iconColor: Colors.white,
                                                    text: "generator Order",
                                                    clr: Color(0xff53A9F9),
                                                    height: 28,
                                                    width: 150,
                                                    labelcolor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),

                                              SizedBox(
                                                height: height * .020,
                                              ),
                                              TextWidget(
                                                  text: "additional variants"),
                                              Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              ),
                                              Scrollbar(
                                                  controller: scontroller,
                                                  isAlwaysShown: true,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.topRight,
                                                    height: 300,
                                                    child: ListView(
                                                      controller: scontroller,
                                                      physics: ScrollPhysics(),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Container(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                child: customTable(
                                                                    border: const TableBorder(
                                                                        verticalInside: BorderSide(
                                                                            width: 1,
                                                                            color: Colors.black45,
                                                                            // color: Colors.blue,
                                                                            style: BorderStyle.solid),
                                                                        top: BorderSide(
                                                                            width: .5,
                                                                            color: Colors.black45,
                                                                            // color: Colors.blue,
                                                                            style: BorderStyle.solid
                                                                        ),
                                                                        horizontalInside: BorderSide.none),
                                                                    tableWidth: .5,
                                                                    childrens: [
                                                                      TableRow(
                                                                          // decoration: BoxDecoration(
                                                                          //     color: Colors.green.shade200,
                                                                          //     shape: BoxShape.rectangle,
                                                                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                                                                          children: [
                                                                            tableHeadtext(
                                                                              'Sno',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white,
                                                                            ),

                                                                            tableHeadtext(
                                                                              'Variant id',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Variant name',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            // tableHeadtext('description', size: 10, color: null),

                                                                            tableHeadtext(
                                                                              'supplier ref code',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'barcode',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'current qty',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'purchase uom',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'recieved qty',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is recieved',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'unitcost',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'excise tax',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'discount',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'foc',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'vatableAmount',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'vat',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'actual cost',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'grand total',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is invoiced',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'expiry date',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is free',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is active',
                                                                              padding: EdgeInsets.all(7),
                                                                              height: 46,
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
                                                                  color: Colors.grey.shade200,
                                                                  shape: BoxShape.rectangle,
                                                                  border: const Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle.solid))),
                                                              children: [
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),

                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].variantName ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].supplierCode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].barcode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].currentStock.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].purchaseUom.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    last: additionalVariants[i].receivedQty.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      print(va);
                                                                      if (va == "") {
                                                                        print("entered");
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(receivedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                      } else {
                                                                        var qty = int.tryParse(va);
                                                                        var dis = additionalVariants[i].discount;
                                                                        var excess = additionalVariants[i].excessTax;
                                                                        var unitcost = additionalVariants[i].unitCost;
                                                                        var vat = additionalVariants[i].vat;
                                                                        var foc = additionalVariants[i].foc;
                                                                        if (unitcost == "" || unitcost == 0) {
                                                                          additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                        }else {
                                                                          var Vamount;
                                                                          var vactualCost;
                                                                          if(foc==0 || foc==""){
                                                                            Vamount  = (((unitcost! *
                                                                                qty!) +
                                                                                excess!) -
                                                                                dis!)
                                                                                .toDouble();
                                                                            if(vat==0 ||vat==""){
                                                                              vactualCost=Vamount;
                                                                            }
                                                                            else{

                                                                              vactualCost  = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                            }


                                                                            additionalVariants[i] =
                                                                                additionalVariants[i]
                                                                                    .copyWith(
                                                                                    vatableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: vactualCost,
                                                                                    receivedQty: qty);
                                                                          }
                                                                          else{

                                                                            var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));

                                                                            additionalVariants[i] =
                                                                                additionalVariants[i]
                                                                                    .copyWith(
                                                                                    vatableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: vactualCost,
                                                                                    receivedQty: qty);
                                                                          }


                                                                        }}

                                                                      setState(() {});
                                                                    },
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
                                                                    value: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                                    onChanged: (bool? value) {
                                                                      bool? isRecieved = additionalVariants[i].isReceived;
                                                                      setState(() {
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
                                                                    last: additionalVariants[i].unitCost.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      double? unitcost;
                                                                      if (va == "") {
                                                                        print("entered");
                                                                        unitcost = 0;
                                                                        print("disc" + unitcost.toString());
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                      }
                                                                      unitcost = double.tryParse(va);
                                                                      print("unitcost" + unitcost.toString());

                                                                      var qty = additionalVariants[i].receivedQty;
                                                                      print("qty" + qty.toString());
                                                                      var excess = additionalVariants[i].excessTax;
                                                                      print("excess" + excess.toString());
                                                                      var disc = additionalVariants[i].discount;
                                                                      var foc=additionalVariants[i].foc;

                                                                      var vat = additionalVariants[i].vat;
                                                                      print("vat" + vat.toString());
                                                                      print("qty" + qty.toString());
                                                                      if (qty == 0 || qty == null) {
                                                                        print("checking case");

                                                                        additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                        setState(() {});
                                                                      } else {
                                                                        if(foc==0 || foc=="") {
                                                                          var Vamount = (((unitcost! *
                                                                              qty!) +
                                                                              excess!) -
                                                                              disc!)
                                                                              .toDouble();
                                                                          print(
                                                                              "Vamount" +
                                                                                  Vamount
                                                                                      .toString());

                                                                          var vactualCost = (Vamount! +
                                                                              ((Vamount! *
                                                                                  vat!) /
                                                                                  100));
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
                                                                                  unitCost: unitcost);
                                                                          setState(() {});
                                                                        }else{
                                                                          var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                          var vactualCost = (Vamount! +
                                                                              ((Vamount! *
                                                                                  vat!) /
                                                                                  100));
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
                                                                    last: additionalVariants[i].excessTax.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      double? excess;
                                                                      if (va == "") {
                                                                        excess = 0;
                                                                        setState(() {});
                                                                      } else {
                                                                        excess = double.tryParse(va);
                                                                        setState(() {});
                                                                      }

                                                                      var qty = additionalVariants[i].receivedQty;
                                                                      var vat = additionalVariants[i].vat;
                                                                      var foc = additionalVariants[i].foc;

                                                                      print("excess" + excess.toString());
                                                                      var unitcost = additionalVariants[i].unitCost;
                                                                      print("unitcost" + unitcost.toString());
                                                                      var Vdiscount = additionalVariants[i].discount;
                                                                      if(qty==0 || unitcost==0){
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                                        setState(() {

                                                                        });

                                                                      }else {
                                                                        var Vamount;

                                                                        if(foc==0 ||foc=="") {
                                                                          Vamount =
                                                                              (((unitcost! *
                                                                                  qty!) +
                                                                                  excess!) -
                                                                                  Vdiscount!)
                                                                                  .toDouble();
                                                                        }else{
                                                                          Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!);

                                                                        }
                                                                        var vactualCost = (Vamount! +
                                                                            ((Vamount! *
                                                                                vat!) /
                                                                                100));
                                                                        var Vgrnadtotal = (Vamount! +
                                                                            ((Vamount! *
                                                                                vat!) /
                                                                                100));
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
                                                                    last: additionalVariants[i].discount.toString() ?? "",
                                                                    onChanged: (va) {
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
                                                                          .receivedQty;
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
                                                                          var Vamount = (((unitcost! *
                                                                              qty!) +
                                                                              excess!) -
                                                                              disc!)
                                                                              .toDouble();
                                                                          print(
                                                                              "Vamount" +
                                                                                  Vamount
                                                                                      .toString());

                                                                          var vactualCost = (Vamount! +
                                                                              ((Vamount! *
                                                                                  vat!) /
                                                                                  100));
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
                                                                          var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                          var vactualCost = (Vamount! +
                                                                              ((Vamount! *
                                                                                  vat!) /
                                                                                  100));
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
                                                                    last: additionalVariants[i].foc.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      double? foc;
                                                                      if (va == "") {
                                                                        foc=0;
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(foc: 0);
                                                                      } else {
                                                                        foc  = double.tryParse(va);
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(foc: foc);
                                                                      }
                                                                      var qty = additionalVariants[i].receivedQty;
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
                                                                        var Vamount;
                                                                        if(foc==0 ||foc==""){
                                                                          Vamount = (((unitcost! *
                                                                              qty!) +
                                                                              excess!) -
                                                                              disc!)
                                                                              .toDouble();
                                                                          setState(() {

                                                                          });

                                                                        }else{
                                                                          Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                                          setState(() {

                                                                          });

                                                                        }
                                                                        var vactualCost = (Vamount! +
                                                                            ((Vamount! *
                                                                                vat!) /
                                                                                100));
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
                                                                  child: textPadding(additionalVariants[i].vatableAmount.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    last: additionalVariants[i].vat.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      if (va == "") {
                                                                        print("sss");
                                                                        var vatableAmount = additionalVariants[i].vatableAmount;
                                                                        additionalVariants[i] = additionalVariants[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                        setState(() {});
                                                                      } else {
                                                                        var vat = double.tryParse(va);
                                                                        var Vamount = additionalVariants[i].vatableAmount;
                                                                        print("qty" + Vamount.toString());
                                                                        var excess = additionalVariants[i].excessTax;
                                                                        print("excess" + excess.toString());
                                                                        var unitcost = additionalVariants[i].unitCost;
                                                                        var qty = additionalVariants[i].receivedQty;
                                                                        var foc = additionalVariants[i].foc;
                                                                        var dis = additionalVariants[i].discount;
                                                                        print("unitcost" + unitcost.toString());
                                                                        if(unitcost==0 || qty==0){
                                                                          additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);

                                                                        }else{
                                                                          if(foc==0 || foc=="") {
                                                                            var Vamount = (((unitcost! *
                                                                                qty!) +
                                                                                excess!) -
                                                                                dis!)
                                                                                .toDouble();
                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            var Vgrnadtotal = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            additionalVariants[i] =
                                                                                additionalVariants[i]
                                                                                    .copyWith(
                                                                                    vatableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: Vgrnadtotal,
                                                                                    vat: vat);
                                                                            setState(() {});
                                                                          }
                                                                          else{
                                                                            var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);

                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            var Vgrnadtotal = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            additionalVariants[i] =
                                                                                additionalVariants[i]
                                                                                    .copyWith(
                                                                                    vatableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: Vgrnadtotal,
                                                                                    vat: vat);
                                                                            setState(() {

                                                                            });
                                                                          }
                                                                        }}
                                                                    },
                                                                  ),
                                                                ),


                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].actualCost.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].grandTotal.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),
                                                                Checkbox(
                                                                  value: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                                  onChanged: (bool? value) {
                                                                    setState(() {});
                                                                  },
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(additionalVariants[i].expiryDate.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                ),

                                                                TableCell(
                                                                  child: Checkbox(
                                                                    value: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                                    onChanged: (bool? value) {
                                                                      setState(() {});
                                                                    },
                                                                  ),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
                                                                    value: additionalVariants[i].isActive == null ? false : additionalVariants[i].isActive,
                                                                    onChanged: (bool? value) {
                                                                      setState(() {});
                                                                    },
                                                                  ),
                                                                ),















                                                              ]
                                                          ),
                                                      ],
                                                                      

                                                                          
                                                                          
                                                                          
                                                                          

                                                                        
                                                                        
                                                                      
                                                                      TableRow(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.shade200,
                                                                              shape: BoxShape.rectangle,
                                                                              border: const Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle.solid))),
                                                                          children: [
                                                                            textPadding((1).toString(),
                                                                                fontSize: 12,
                                                                                padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            PopUpCall(
                                                                              // label: "purchase UOM",
                                                                              type:
                                                                              "cost-method-list",
                                                                              value: variantId,
                                                                              onSelection:
                                                                                  (VariantId? va) {
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
                                                                                      .getCurrentStock(1, variantId);

                                                                                  // orderType = va!;
                                                                                });
                                                                              },
                                                                              onAddNew: () {},
                                                                              // restricted: true,
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding(varinatname??"", fontSize: 12, padding: EdgeInsets.only(
                                                                                      left: 11.5,
                                                                                      top: 11.5), fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding((1).toString(),
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding(barcode??"",
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding(stock.toString()??"",
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding(purchaseUomName??"",
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: UnderLinedInput(

                                                                                last:"",
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
                                                                                        vatableAmount1 = (((unitcost! *
                                                                                                  recievedQty!) +
                                                                                                  excess1!) -
                                                                                                  discount!)
                                                                                                  .toDouble();
                                                                                        actualCost1 = (vatableAmount1! +
                                                                                                  ((vatableAmount1! *
                                                                                                      vat1!) /
                                                                                                      100));
                                                                                        grandTotal1 = (vatableAmount1! +
                                                                                            ((vatableAmount1! *
                                                                                                vat1!) /
                                                                                                100));



                                                                                      }
                                                                                      else{
                                                                                        vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                        actualCost1 = (vatableAmount1! +
                                                                                            ((vatableAmount1! *
                                                                                                vat1!) /
                                                                                                100));
                                                                                        grandTotal1 = (vatableAmount1! +
                                                                                            ((vatableAmount1! *
                                                                                                vat1!) /
                                                                                                100));

                                                                                      }

                                                                                    }

                                                                                  }
                                                                                  );
                                                                                  }
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
                                                                              child: Checkbox(
                                                                                value: isReceived1,
                                                                                onChanged: (bool? value) {

                                                                                  setState(() {
                                                                                    isReceived1 = !isReceived1!;

                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                            unitcost==0?Text(""):
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: UnderLinedInput(
                                                                                // controller:unitcost1,
                                                                                //


                                                                                last:unitcost.toString(),
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
                                                                                      vatableAmount1 = (((unitcost! *
                                                                                          recievedQty!) +
                                                                                          excess1!) -
                                                                                          discount!)
                                                                                          .toDouble();
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));



                                                                                    }
                                                                                    else{
                                                                                      vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));

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
                                                                                      vatableAmount1 = (((unitcost! *
                                                                                          recievedQty!) +
                                                                                          excess1!) -
                                                                                          discount!)
                                                                                          .toDouble();
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));



                                                                                    }
                                                                                    else{

                                                                                      vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));

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
                                                                                      vatableAmount1 = (((unitcost! *
                                                                                          recievedQty!) +
                                                                                          excess1!) -
                                                                                          discount!)
                                                                                          .toDouble();
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));



                                                                                    }
                                                                                    else{
                                                                                      vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));

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
                                                                                      vatableAmount1 = (((unitcost! *
                                                                                          recievedQty!) +
                                                                                          excess1!) -
                                                                                          discount!)
                                                                                          .toDouble();
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));



                                                                                    }
                                                                                    else{
                                                                                      vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));

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
                                                                              child: textPadding(vatableAmount1.toString(),
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: UnderLinedInput(


                                                                                onChanged: (p0) {
                                                                                  if (p0 == '')
                                                                                    setState(() {
                                                                                      vat1 = 0;
                                                                                    });
                                                                                  else {
                                                                                    setState(() {
                                                                                      vat1 = double
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
                                                                                      vatableAmount1 = (((unitcost! *
                                                                                          recievedQty!) +
                                                                                          excess1!) -
                                                                                          discount!)
                                                                                          .toDouble();
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));



                                                                                    }
                                                                                    else{

                                                                                      vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                                                      actualCost1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));
                                                                                      grandTotal1 = (vatableAmount1! +
                                                                                          ((vatableAmount1! *
                                                                                              vat1!) /
                                                                                              100));

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
                                                                              child: textPadding(actualCost1.toString(),
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: textPadding(grandTotal1.toString()??"",
                                                                                  fontSize: 12,
                                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                  fontWeight: FontWeight.w500),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: Checkbox(
                                                                                value: isInvoiced1,
                                                                                onChanged: (bool? value) {

                                                                                  setState(() {
                                                                                    isInvoiced1 = !isInvoiced1!;

                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                            TableCell(
                                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child:          Tabledate(

                                                                                  format:DateFormat('yyyy-MM-dd'),
                                                                                  controller:expiryDate,
                                                                                  // initialValue:
                                                                                  //     DateTime.parse(fromDate!),
                                                                                  label: "Promised reciept date",
                                                                                  onSaved: (newValue) {
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
                                                                              child: Checkbox(
                                                                                 
                                                                                value: isFree1,
                                                                                onChanged: (bool? value) {

                                                                                  setState(() {
                                                                                    isFree1 = !isFree1!;

                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                            TableCell(
                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                              child: CheckedBoxs(color:Color(0xff3E4F5B) ,

                                                                                  valueChanger:  isActive1,
                                                                                onSelection: (bool? value ) {

                                                                                setState(() {
                                                                                  isActive1 = !isActive1!;
                                                                                  

                                                                                });
                                                                              },

                                                                              ),
                                                                            )
                                                                            // Checkbox(
                                                                            //   activeColor: Color(0xff3E4F5B),
                                                                            //   value: isActive1,
                                                                            //   onChanged: (bool? value) {
                                                                            //
                                                                            //     setState(() {
                                                                            //       isActive1 = !isActive1!;
                                                                            //
                                                                            //     });
                                                                            //   },
                                                                            // ),
                                                                          ])
                                                                    ]),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  additionalVariants.add(RecievingLines(
                                                                      variantId: variantId??"",
                                                                      currentStock: stock,
                                                                      variantName: varinatname??"",
                                                                      barcode: barcode??"",
                                                                      purchaseUom: purchaseUomName??"",
                                                                      receivedQty: recievedQty,
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

                                                                });



                                                                print("additionalVariants"+additionalVariants.toString());
                                                                variantId="";
                                                                varinatname="";
                                                                barcode="";
                                                                purchaseUomName="";
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
















                                                              },
                                                              child: Container(
                                                                margin: EdgeInsets.only(
                                                                    bottom: size.height * .008,
                                                                    left: size.height * .004,
                                                                    right: size.height * .006),
                                                                alignment: Alignment.center,
                                                                height: size.width * .016,
                                                                width: size.width * .016,
                                                                decoration: BoxDecoration(
                                                                  color: Colors.transparent,
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      100),
                                                                  border: Border.all(
                                                                    color: Colors.black,
                                                                  ),

                                                                  //more than 50% of width makes circle
                                                                ),
                                                                child: Icon(
                                                                  Icons.add,
                                                                  color: Colors.black,
                                                                  size: size.width * .010,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )),

                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Buttons(
                                                    onApply: () {
                                                      AdditionalGenerateModel model=AdditionalGenerateModel(
                                                        receivingId: receivingId,
                                                          note: noteController.text??"",


                                                          vendorId: "1",
                                                          inventoryId:inventoryId ??"",
                                                          vendorMailId: "akshay@gmail.com",
                                                          vendorAddress: "perincheeri",
                                                          purchaseOrderId: 1,
                                                          orderLines: additionalVariants,


                                                      );


                                                    //  context.read<AdditionalgenerateCubit>().additionlGeneratePost(model!);
                                                      showDailogPopUp(
                                                          context,  AdditionalPopUp(
                                                        model: model,
                                                   plannded:plannedRecieptDate ,
                                                        promised: promisedRecieptDate,
                                                        remarks: remarksController,

                                                      ));



                                                    },
                                                    icon: Icons.check,
                                                    iconColor: Colors.white,
                                                    text: "generator Order",
                                                    clr: Color(0xff53A9F9),
                                                    height: 27,
                                                    width: 152,
                                                    labelcolor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Buttons(
                                                    onApply: () {
                                                      for(var i=0;i<recievingLisnes.length;i++){
                                                        recievingLisnes[i]= recievingLisnes[i].copyWith(currentStock: currentStock[i]);
                                                        setState(() {

                                                        });
                                                      }
                                                      print(recievingLisnes.toString());
                                                      PurchaseRecievingRead model = PurchaseRecievingRead(
                                                          orderCode:
                                                              orderCodeController
                                                                      .text ??
                                                                  "",
                                                          receivingCode:
                                                              recievingCodeController
                                                                      .text ??
                                                                  "",
                                                          orderCreatedDate:
                                                              orederDateController
                                                                      .text ??
                                                                  "",
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
                                                          remarks: remarksController.text ?? "",
                                                          receivingLines: recievingLisnes);
                                                      context
                                                          .read<
                                                              PurchaserecievingpatchCubit>()
                                                          .getPurchaseRecievePatch(
                                                              Variable
                                                                  .verticalid,
                                                              model);
                                                    },
                                                    icon: Icons.check,
                                                    iconColor: Colors.white,
                                                    text: "Save",
                                                    clr: Color(0xff53A9F9),
                                                    height: 32,
                                                    width: 90,
                                                    labelcolor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ))
                                        ],
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
class WarrantyDetailsPopUp extends StatefulWidget {
  // final int? stckQty;
  final TextEditingController? remarks;
  final TextEditingController? promised;
  final TextEditingController? plannded;
  final GenerateMissing? model;
  // final List<ReadWarranty>? warranty;
  // final Function(bool) changeActive;
  // final Function(bool) changeAdditionalWarranty;
  // final Function(bool) changeExtendedWarranty;
  const WarrantyDetailsPopUp({
    Key? key,
    // this.stckQty = 0,
    required this.remarks,
    required this.promised,
    required this.plannded,
    required this.model
    // this.warranty,
    // this.indexValue
  }) : super(key: key);

  @override
  _WarrantyDetailsPopUpState createState() => _WarrantyDetailsPopUpState();
}

class _WarrantyDetailsPopUpState extends State<WarrantyDetailsPopUp> {

  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  TextEditingController stckQty = TextEditingController();
  TextEditingController qtyChange = TextEditingController();
  TextEditingController reason = TextEditingController();
  int? newQty = 0;
  @override
  Widget build(BuildContext context) {
    print("widget.model"+widget.model.toString());
    // stckQty.text = widget.stckQty.toString();
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());

      return MultiBlocProvider(
  providers: [

    BlocProvider(
      create: (context) => PurchasegeneratingCubit(),
    ),




  ],
  child: Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [

    BlocListener<PurchasegeneratingCubit, PurchasegeneratingState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loadingggg");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1)
            context.showSnackBarSuccess(data.data2);
          else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),

  ],
  child: AlertDialog(
            content: PopUpHeader(
              label: "Create system generated Po",
              onApply: () {

              },
              onEdit: () {
               print( "aaa"+widget.model.toString());
               GenerateMissing? model=widget.model;

                model = model?.copyWith(remarks: widget.remarks?.text,plannedRecieptDate: widget.plannded?.text,promisedRecieptDate: widget.promised?.text);
               print( "asap"+model.toString());
               context.read<PurchasegeneratingCubit>().generatePost(model!);

              },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,

                child: SingleChildScrollView(
                  child:
                  Container(
                    height: 300,
                   // width: MediaQuery.of(context).size.width-20,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "purchase order",
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 4.0,
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Container(
                              child: Column(
                                children: [
                                  PopUpInputField(
                                      controller: reason, label: "vendor id"),
                                  PopUpDateFormField(
                                    row: true,

                                      format:DateFormat('yyyy-MM-dd'),
                                      controller:  widget.promised,
                                      // initialValue:
                                      //     DateTime.parse(fromDate!),
                                      label: "Promised reciept date",
                                      onSaved: (newValue) {
                                        widget.promised?.text = newValue
                                            ?.toIso8601String()
                                            .split("T")[0] ??
                                            "";
                                        print("promised_receipt_date.text"+ widget.promised!.text.toString());
                                      },
                                      enable: true),
                                  // PopUpInputField(
                                  //     controller: widget.promised, label: "promisdedRecieptdate"),

                                ],
                              ),
                            )),
                            SizedBox(width: 10,),
                            Expanded(child: Container(
                              child: Column(
                                children: [
                                  PopUpDateFormField(
                                      row: true,

                                      format:DateFormat('yyyy-MM-dd'),
                                      controller:  widget.plannded,
                                      // initialValue:
                                      //     DateTime.parse(fromDate!),
                                      label: "planned reciept date",
                                      onSaved: (newValue) {
                                        widget.plannded?.text = newValue
                                            ?.toIso8601String()
                                            .split("T")[0] ??
                                            "";
                                        print("promised_receipt_date.text"+  widget.plannded!.text.toString());
                                      },
                                      enable: true),
                                  // PopUpInputField(
                                  //     controller: widget.plannded, label: "planned reciept date"),
                                  PopUpInputField(
                                      controller: widget.remarks, label: "remarks"),

                                ],
                              ),
                            ))
                          ],
                        )
                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     PopUpInputField(
                        //         controller: promisedRecieptDate, label: "vendor id"),
                        //     gapWidthColumn(),
                        //     PopUpInputField(
                        //       controller: plannedRecieptDate,
                        //       label: "planned reciept date",
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     PopUpInputField(
                        //       boarType: "int",
                        //       //  controller: newQuantity,
                        //       label: "new quantity",
                        //       onChanged: (v) {
                        //         setState(() {
                        //           // newQty = int.tryParse(v);
                        //           // int? stck = int.tryParse(stckQty.text);
                        //           // qtyChange.text = ((stck!) - (newQty!)).toString();
                        //           // print("newQty" + newQty.toString());
                        //         });
                        //       },
                        //     ),
                        //     gapWidthColumn(),
                        //     PopUpInputField(
                        //       controller: reason,
                        //       label: "reason",
                        //     ),
                        //   ],
                        // ),

                      ],
                    ) ,

                  ),
                ),
              ),
            ),
          ),
);
        }
      ),
);

  }
}


class AdditionalPopUp extends StatefulWidget {
  // final int? stckQty;
  final TextEditingController? remarks;
  final TextEditingController? promised;
  final TextEditingController? plannded;
  final AdditionalGenerateModel? model;
  // final List<ReadWarranty>? warranty;
  // final Function(bool) changeActive;
  // final Function(bool) changeAdditionalWarranty;
  // final Function(bool) changeExtendedWarranty;
  const AdditionalPopUp({
    Key? key,
    // this.stckQty = 0,
    required this.remarks,
    required this.promised,
    required this.plannded,
    required this.model
    // this.warranty,
    // this.indexValue
  }) : super(key: key);

  @override
  _AdditionalPopUpState createState() => _AdditionalPopUpState();
}

class _AdditionalPopUpState extends State<AdditionalPopUp> {

  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  TextEditingController stckQty = TextEditingController();
  TextEditingController qtyChange = TextEditingController();
  TextEditingController reason = TextEditingController();
  int? newQty = 0;
  @override
  Widget build(BuildContext context) {
    print("widget.model"+widget.model.toString());
    // stckQty.text = widget.stckQty.toString();
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AdditionalgenerateCubit(),
        ),


      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<AdditionalgenerateCubit, AdditionalgenerateState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1)
                        context.showSnackBarSuccess(data.data2);
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),

              ],
              child: AlertDialog(
                content: PopUpHeader(
                  label: "Create system generated Po",
                  onApply: () {

                  },
                  onEdit: () {
                    print( "aaa"+widget.model.toString());
                    AdditionalGenerateModel? model=widget.model;

                    model = model?.copyWith(remarks: widget.remarks?.text,plannedRecieptDate: widget.plannded?.text,promisedRecieptDate: widget.promised?.text);
                    print( "asap"+model.toString());
                    context.read<AdditionalgenerateCubit>().additionlGeneratePost(model!);

                  },
                  dataField: SizedBox(
                    height: MediaQuery.of(context).size.height * .6,

                    child: SingleChildScrollView(
                      child:
                      Container(
                        height: 300,
                        // width: MediaQuery.of(context).size.width-20,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "purchase order",
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 4.0,
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Expanded(child: Container(
                                  child: Column(
                                    children: [
                                      PopUpInputField(
                                          controller: reason, label: "vendor id"),
                                      PopUpDateFormField(
                                          row: true,

                                          format:DateFormat('yyyy-MM-dd'),
                                          controller:  widget.promised,
                                          // initialValue:
                                          //     DateTime.parse(fromDate!),
                                          label: "Promised reciept date",
                                          onSaved: (newValue) {
                                            widget.promised?.text = newValue
                                                ?.toIso8601String()
                                                .split("T")[0] ??
                                                "";
                                            print("promised_receipt_date.text"+ widget.promised!.text.toString());
                                          },
                                          enable: true),
                                      // PopUpInputField(
                                      //     controller: widget.promised, label: "promisdedRecieptdate"),

                                    ],
                                  ),
                                )),
                                SizedBox(width: 10,),
                                Expanded(child: Container(
                                  child: Column(
                                    children: [
                                      PopUpDateFormField(
                                          row: true,

                                          format:DateFormat('yyyy-MM-dd'),
                                          controller:  widget.plannded,
                                          // initialValue:
                                          //     DateTime.parse(fromDate!),
                                          label: "planned reciept date",
                                          onSaved: (newValue) {
                                            widget.plannded?.text = newValue
                                                ?.toIso8601String()
                                                .split("T")[0] ??
                                                "";
                                            print("promised_receipt_date.text"+  widget.plannded!.text.toString());
                                          },
                                          enable: true),
                                      // PopUpInputField(
                                      //     controller: widget.plannded, label: "planned reciept date"),
                                      PopUpInputField(
                                          controller: widget.remarks, label: "remarks"),

                                    ],
                                  ),
                                ))
                              ],
                            )
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     PopUpInputField(
                            //         controller: promisedRecieptDate, label: "vendor id"),
                            //     gapWidthColumn(),
                            //     PopUpInputField(
                            //       controller: plannedRecieptDate,
                            //       label: "planned reciept date",
                            //     ),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     PopUpInputField(
                            //       boarType: "int",
                            //       //  controller: newQuantity,
                            //       label: "new quantity",
                            //       onChanged: (v) {
                            //         setState(() {
                            //           // newQty = int.tryParse(v);
                            //           // int? stck = int.tryParse(stckQty.text);
                            //           // qtyChange.text = ((stck!) - (newQty!)).toString();
                            //           // print("newQty" + newQty.toString());
                            //         });
                            //       },
                            //     ),
                            //     gapWidthColumn(),
                            //     PopUpInputField(
                            //       controller: reason,
                            //       label: "reason",
                            //     ),
                            //   ],
                            // ),

                          ],
                        ) ,

                      ),
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );

  }
}
class PopUpHeader extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  const PopUpHeader({
    Key? key,
    required this.label,this.onEdit,
    this.widthPopup=50,
    this.dataField,this.onAddNew,
    required this.onApply,  this.isDirectCreate=false,
  }) : super(key: key);

  @override
  _PopUpHeaderState createState() => _PopUpHeaderState();
}

class _PopUpHeaderState extends State<PopUpHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // height:100,


      padding: EdgeInsets.all(10),
      width: 600,
      child: GeneralSavePage(onEdit: widget.onEdit,
        onPopUp: true,
        onApply: widget.onApply,
        onCreate:widget.isDirectCreate?true: _selections[0],
        onCancel: () {
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label, fontSize: 18),
                Transform.scale(
                  scale: 0.8,
                  child: _toggleButtonList(widget.onAddNew??(v){}),
                ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {

      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}
class GeneralSavePage extends StatelessWidget {
  final bool onCreate;
  final bool onPopUp;
  final Widget child;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  const GeneralSavePage(
      {Key? key,
        required this.child,
        required this.onApply,
        this.onCancel,
        this.onCreate = false,
        this.onPopUp = false,
        this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("wwww"+onCreate.toString());
    return Container(
    height: MediaQuery.of(context).size.height * 58,
      width: 100,
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 58,
              margin: EdgeInsets.only(
                  bottom: onCreate
                      ?40
                      : onEdit != null
                      ? 40
                      : 20),
              child: child),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    if (onCreate) save(context),
                    if (onEdit != null && !onCreate) edit()
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget edit() {
    return SizedBox(
      height: 30,
      child: CommonButtonCustom(
          onPressed: onEdit,
          child: Row(
            children: [
              Icon(Icons.edit),
              SizedBox(width: 3),
              Text(
                "Save changes",
              )
            ],
          )),
    );
  }

  Widget save(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          SizedBox(
            height: 30,
            child: CommonButtonLightCustom(
                onPressed: onCancel,
                textColor: Colors.grey,
                color: Colors.orange,
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.grey),
                SizedBox( width: 10,),
                    Text(
                      "Discard",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )),
          ),
          SizedBox( height: 10,),
          SizedBox(

            height: 30,
            child: CommonButtonCustom(
                onPressed: onApply,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Save",
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class Generalpagination extends StatelessWidget {
  final Widget child;
  final int currentTab;
  final int lastTab;
  final Function(int)? onClick;
  final bool create;
  final VoidCallback? onApply;

  const Generalpagination({Key? key,
    required this.child,
    required this.currentTab,
    required this.lastTab,
    this.onClick,
    this.create = false,
    this.onApply})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 60,
              margin: EdgeInsets.only(bottom: 20),
              child: child),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentTab == 0 ? Container() : previous(),
                  currentTab == lastTab
                      ? create
                      ?
                      //save
                  Container()
                      : Container()
                      : next()
                ],
              ))
        ],
      ),
    );
  }

  Widget previous() {
    return Container(

      alignment: Alignment.centerLeft,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(0);
              if (onClick != null && val == 1) onClick!(currentTab - 1);
              if (onClick != null && val == 2) onClick!(currentTab - 1);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.expand,
                  size: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.ac_unit, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "previous",

                ),
              ),
            ],
            isSelected: [
              false,
              false,
              false,
            ]),
      ),
    );
  }

  Widget next() {
    return Container(
      height: 100,
        width: 100,
      alignment: Alignment.centerRight,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(currentTab + 1);
              if (onClick != null && val == 1) onClick!(currentTab + 1);
              if (onClick != null && val == 2) onClick!(lastTab);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Next",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add, size: 12),
              )
            ],
            isSelected: [
              false,
              false,
              false
            ]),
      ),
    );
  }

}
class CommonButtonLightCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonLightCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: Colors.white,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: color!),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}
class CommonButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Palette.BACKGROUND,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: color,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}


