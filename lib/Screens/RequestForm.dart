import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/requestformcubit/cubit/deleterequestform_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestformpost_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestpatch_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'GeneralScreen.dart';

class RequestFormScreen extends StatefulWidget {
  @override
  State<RequestFormScreen> createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController plannedRecieptDate = TextEditingController();
  TextEditingController promisedRecieptDate = TextEditingController();
  TextEditingController orderTypeController = TextEditingController();
  TextEditingController ordereCodeController= TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController inventoryIdController = TextEditingController();
  TextEditingController orderedPersonController = TextEditingController();
  TextEditingController paymentCodeController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController receivingSattusController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController orderType = TextEditingController();
  late AutoScrollController scontroller;
  var requestedListControllers = <TextEditingController>[];
  var minListControllers = <TextEditingController>[];
  var maxListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  var excesstListControllers = <TextEditingController>[];
  var discounttListControllers = <TextEditingController>[];
  var focListControllers = <TextEditingController>[];
  var vatListControllers = <TextEditingController>[];

  int? veritiaclid=0;
  List<OrderLines> table = [];
  List<PurchaseOrder>result=[];
  bool select=false;
  int selectedVertical=0;
  int? receivingId ;
  String? variantId;
 String varinatname="";
  String? purchaseUomName;
  String? barcode;
  String? supplierRefCode;
  String? vrefcod;
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
  int?discount=0;
  int? recievedQty=0;
  int? minQty=0;
  int? maxQty=0;
  PurchaseCureentStockQty? purchaseCurrentStock;
  int?stock=0;
bool  stockCheck=false;
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
  addition() {
    print("enterd");
    print("+==" + table.toString());
    for (var i = 0; i < table.length; i++) {
      if (table[i].isActive == true) {
        unitcost2 = unitcost2 + table[i].unitCost!;

        grands = grands + table[i].grandTotal!;
        actualValue = actualValue + table[i].actualCost!;
        vatValue = vatValue + table[i].vat!;
        discountValue = discountValue + table[i].discount!;
        focValue = focValue + table[i].foc!;

        VatableValue = VatableValue + table[i].variableAmount!;
        print("excessTaxvalue"+excessTAxValue.toString());
        excessTAxValue = excessTAxValue + table[i].excessTax!;
      }
    }
    unitCostController.text = unitcost2 == 0 ? "" : unitcost2.toString();
    grandTotalController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    // _value=false;
  }
  // valueAddingTextEdingController(){
  //   if(table.isNotEmpty){
  //     print("checking case");
  //     for(var i=0;i<table.length;i++){
  //       var requsted = new TextEditingController(text: table[i].requestedQty.toString()??"");
  //       requestedListControllers.add(requsted);
  //       print(requestedListControllers.length);
  //       var min = new TextEditingController(text: table[i].minimumQty.toString()??"");
  //       minListControllers.add(min);
  //       print("mazzzzz"+table[i].maximumQty.toString());
  //       var max = new TextEditingController(text: table[i].maximumQty.toString()??"");
  //       print("max"+max.toString());
  //       maxListControllers.add(max);
  //       print("maxlength"+maxListControllers.toString());
  //       var unitcost = new TextEditingController(text: table[i].unitCost.toString()??"");
  //       unitcostListControllers.add(unitcost);
  //       var excess = new TextEditingController(text: table[i].excessTax.toString()??"");
  //       excesstListControllers.add(excess);
  //       var disc = new TextEditingController(text: table[i].discount.toString()??"");
  //       discounttListControllers.add(disc);
  //       var foc = new TextEditingController(text: table[i].foc.toString()??"");
  //       focListControllers.add(foc);
  //       var vat = new TextEditingController(text: table[i].vat.toString()??"");
  //       vatListControllers.add(vat);
  //       setState(() {
  //
  //       });
  //
  //     }
  //   }
  // }
  PurchaseOrderTableModel? purchaseTable;
  TextEditingController itemsearch=TextEditingController();
  @override
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,
      body:
        MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => RequestformreadCubit()..getRequestFormRead(Variable.verticalid!),

),
BlocProvider(
create: (context) => InventorysearchCubit()..getInventorySearch("code",tab:"RF"),
),
    BlocProvider(
      create: (context) => RequestformpostCubit(),
    ),
    BlocProvider(
      create: (context) => RequestpatchCubit(),
    ),
    BlocProvider(
      create: (context) => DeleterequestformCubit(),
    ),

  ],
  child: Builder(
    builder: (context) {
      return MultiBlocListener(
  listeners: [
    BlocListener<RequestformpostCubit, RequestformpostState>(
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
    BlocListener<RequestpatchCubit, RequestpatchState>(
      listener: (context, state) {
        print("patch" + state.toString());
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
    BlocListener<RequestformreadCubit, RequestformreadState>(
  listener: (context, state) {

    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {

          setState(() {
            print("datasssssssssssssss"+data.toString());
            data.data?.orderLines != null
                ? table = data.data?.orderLines ?? []
                : table = [];

            print("tablsssssssssssssssssse"+table.toString());
            setState(() {

            });

            //
            // inventoryId.text=data.data?.iventoryId??"";

            ordereCodeController.text=data.data?.orderCode??"";
            orderType.text=data.data?.purchaseOrderType??"";
            orderDateController.text=data.data?.orderDate??"";
            inventoryIdController.text=data.data?.iventoryId??"";
            promisedRecieptDate.text=data.data?.promisedReceiptdate??"";
            plannedRecieptDate.text=data.data?.plannedRecieptDate??"";
            orderedPersonController.text=data.data?.orderedPereson??"";

            paymentCodeController.text=data.data?.paymentcode??"";
            paymentStatusController.text=data.data?.paymentStatus??"";
            orderStatusController.text=data.data?.orderStatus??"";
            receivingSattusController.text=data.data?.recievingStatus??"";
            invoiceStatusController.text=data.data?.invoiceStatus??"";
            noteController.text=data.data?.note??"";
            remarksController.text=data.data?.remarks??"";
            discountController.text=data.data?.discount.toString()??"";
            focController.text=data.data?.foc.toString()??"";
            unitCostController.text=data.data?.unitcost.toString()??"";
            vatableAmountController.text=data.data?.variableAmount.toString()??"";
            excessTaxController.text=data.data?.excessTax.toString()??"";
            vatController.text=data.data?.vat.toString()??"";
            actualCostController.text=data.data?.actualCost.toString()??"";
            grandTotalController.text=data.data?.grandTotal.toString()??"";
           // valueAddingTextEdingController();


          });
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


                if(Variable.tableedit==true) {
                  // additionalVariants[Variable.tableindex] =
                  //     additionalVariants[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",unitCost:purchaseTable?.unitCost,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"",   );
                  setState(() {

                  });
                }
                else{
                  varinatname = purchaseTable?.name??"";
                  unitcost = purchaseTable?.unitCost;
                  supplierRefCode=purchaseTable?.vendorDetails?.vendorRefCode??"";
                  print(  supplierRefCode);
                  print("unitttt"+unitcost.toString());

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

                //

              }
              );
            });
      },
    ),
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
                if(Variable.tableedit==false){
                  print("findinf");
                  stock=stockQty;
                  print("st"+stock.toString());
                  setState(() {

                  });

                }
                else{
                 // additionalVariants[Variable.tableindex] =         additionalVariants[Variable.tableindex].copyWith(currentStock:purchaseCurrentStock?.StockQty   );

                }



              }


            });
      },
    ),

    BlocListener<DeleterequestformCubit, DeleterequestformState>(
      listener: (context, state) {

        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loadingggg");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          print("checkingdata"+data.data1.toString());
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
  child: Builder(
    builder: (context) {
      return  BlocConsumer<InventorysearchCubit, InventorysearchState>(
        listener: (context, state) {
          state.maybeWhen(orElse:(){},
              error: (){
                print("error");
              },
              success: (list){
                print("listtt"+list.toString());
                result=list.data;setState(() {
                  print("Here is the result");
                  print(result);
                  print(result[0].id);
                });

              }
          );
        },
  builder: (context, state) {
    return SingleChildScrollView(
                child: Container(
                  height: 5000,
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      VerticalList(selectedVertical: selectedVertical,
        itemsearch: itemsearch,ontap: (int index){
                          setState(() {
                            print("taped");
                            select=false;
                            selectedVertical=index;

                            veritiaclid =
                                result[index].id;
                            context
                                .read<
                                RequestformreadCubit>()
                                .getRequestFormRead(
                                veritiaclid!);
                          });
                        },result: result,
        ),
                      Expanded(child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 15,left: 10),



                              child: TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.blue,
                                    elevation: 2,
                                    backgroundColor: Colors.white24),
                                onPressed: () {
                                  setState(() {

                                    select=!select;


                                      table.clear();
                                      print("shammmma"+table.toString());
                                      orderTypeController.text="";
                                      ordereCodeController.text="";
                                      orderDateController.text="";
                                      inventoryIdController.text="";
                                      orderedPersonController.text="";
                                      promisedRecieptDate.text="";
                                      plannedRecieptDate.text="";
                                      paymentCodeController.text="";
                                      paymentStatusController.text="";
                                      orderStatusController.text="";
                                      receivingSattusController.text="";
                                      invoiceStatusController.text="";
                                      noteController.text="";
                                      remarksController.text="";
                                      discountController.text="";
                                      focController.text="";
                                      unitCostController.text="";
                                      vatableAmountController.text="";
                                      excessTaxController.text="";
                                      vatController.text="";
                                      actualCostController.text="";
                                      grandTotalController.text="";
                                      variantId="";
                                      barcode="";
                                      stock=0;
                                      purchaseUomName="";
                                      recievedQty=0;
                                      minQty=0;
                                      maxQty=0;
                                      isReceived1=false;
                                      unitcost=0;
                                      excess1=0;
                                      discount=0;
                                      foc1=0;
                                      vatableAmount1=0;
                                      vat1=0;
                                      actualCost1=0;
                                      grandTotal1=0;
                                      isInvoiced1=false;
                                      isFree1=false;
                                      isActive1=false;








                                    //discount.text="";


                                  });


                                },
                                // icon: Icon(Icons.refresh),
                                // label: Text("Clear")
                                child: Text("clear"),
                                // child: Container(
                                //   margin: EdgeInsets.only(bottom: size.height * .008),
                                //   alignment: Alignment.center,
                                //   height: size.width * .016,
                                //   width: size.width * .016,
                                //   decoration: BoxDecoration(
                                //     color: Colors.transparent,
                                //     borderRadius: BorderRadius.circular(100),
                                //     border: Border.all(
                                //       color: Colors.black,
                                //     ),
                                //
                                //     //more than 50% of width makes circle
                                //   ),
                                //   child: Icon(
                                //     Icons.remove ,
                                //     color: Colors.black,
                                //     size: size.width * .010,
                                //   ),
                                // ),
                              ),
                            ),
                            Expanded(child: Container(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(child:Container(
                                        child: Row(
                                          children: [
                                          Expanded(child: Column(
                                                          children: [
                                                            SizedBox(height: height*.030,),

                                                            SelectableDropDownpopUp(
                                                              label: "Order type",
                                                              type:"RequestFormType",
                                                              value: orderType.text,
                                                              onSelection: (String? va) {
                                                                print(
                                                                    "+++++++++++++++++++++++");
                                                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                                                setState(() {


                                                                 // onChange = true;
                                                                  orderType.text = va!;
                                                                });
                                                              },
                                                              onAddNew: () {},
                                                              restricted: true,
                                                            ),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: ordereCodeController, title: "Order code"),
                                                            SizedBox(height: height*.030,),
                                                            PopUpDateFormField(

                                                                format:DateFormat('yyyy-MM-dd'),
                                                                controller: orderDateController,
                                                                //initialValue:orderDateController.text!=null||orderDateController.text!=""||orderDateController.text!="null"?DateTime.parse(orderDateController.text):DateTime.parse("2022-05-26"),
                                                                label: "Promised Reciept Date",
                                                                onSaved: (newValue) {
                                                                  print("new value"+newValue.toString());
                                                                  orderDateController.text = newValue
                                                                      ?.toIso8601String()
                                                                      .split("T")[0] ??
                                                                      "";
                                                                  print("promised_receipt_date.text"+orderDateController.text.toString());
                                                                },
                                                                enable: true),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                controller: inventoryIdController, title: "Inventory  id"),
                                                            SizedBox(height: height*.030,),
                                                            SelectableDropDownpopUp(
                                                              label: "Order Person",
                                                              type:"RequestFormOrderPerson",
                                                              value: orderedPersonController.text,
                                                              onSelection: (OrderedPersonModel? va) {
                                                                print(
                                                                    "+++++++++++++++++++++++"+va.toString());
                                                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                                                setState(() {
                                                                  orderedPersonController.text = va!.organisationCode.toString();

                                                                  // onChange = true;

                                                                });
                                                              },
                                                              onAddNew: () {},
                                                              restricted: true,
                                                            ),
                                                            SizedBox(height: height*.030,),
                                                            PopUpDateFormField(

                                                                format:DateFormat('yyyy-MM-dd'),
                                                                controller: promisedRecieptDate,
                                                                // initialValue:promisedRecieptDate.text!=null||promisedRecieptDate.text!=""||promisedRecieptDate.text!="null"?
                                                                //     DateTime.parse(promisedRecieptDate.text):DateTime.parse("2022-05-26"),
                                                                label: "Promised Reciept Date",
                                                                onSaved: (newValue) {
                                                                  promisedRecieptDate.text = newValue
                                                                      ?.toIso8601String()
                                                                      .split("T")[0] ??
                                                                      "";
                                                                  print("promised_receipt_date.text"+promisedRecieptDate.text.toString());
                                                                },
                                                                enable: true),
                                                            SizedBox(height: height*.030,),
                                                          PopUpDateFormField(

                                                              format:DateFormat('yyyy-MM-dd'),
                                                              controller: plannedRecieptDate,
                                                              // initialValue:
                                                              //     DateTime.parse(fromDate!),
                                                              label: "Planned Reciept Date",
                                                              onSaved: (newValue) {
                                                                plannedRecieptDate.text = newValue
                                                                    ?.toIso8601String()
                                                                    .split("T")[0] ??
                                                                    "";
                                                                print("planned.text"+plannedRecieptDate.text.toString());
                                                              },
                                                              enable: true),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),


                                                          ],
                                                        ),),
                                                        Expanded(child: Column(
                                                          children: [
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: 10,),

                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: paymentCodeController, title: "Payment code"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller: paymentStatusController, title: "Payment status"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller: orderStatusController, title: "Order status"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller: receivingSattusController, title: "Receiving status"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller: invoiceStatusController, title: "Invoice status"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                controller: noteController, title: "Note",height: 90,maxLines: 3,),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                                controller: remarksController, title: "Remarks",height: 90,maxLines: 3,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),

                                                          ],
                                                        ),),
                                                        Expanded(child: Column(
                                                          children: [
                                                            SizedBox(height: height*.030,),

                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: discountController, title: "Discount"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: focController, title: "foc"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: unitCostController, title: "Unit cost"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: vatableAmountController, title: "Variable amount"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: excessTaxController, title: "excess tax"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: vatController, title: "vat"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: actualCostController, title: "actual cost"),
                                                            SizedBox(height: height*.030,),
                                                            NewInputCard(
                                                              readOnly: true,
                                                                controller: grandTotalController, title: "grand total"),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                            SizedBox(height: height*.030,),
                                                          ],
                                                                        ),),


                                          ],
                                        ),
                                      ) )
                                    ],
                                  ),
                                  Scrollbar(
                                    controller: scontroller,
                                    isAlwaysShown: true,
                                    child: Container(
                                      color: Colors.white,
                                      alignment: Alignment.topRight,
                                      height: 300,
                                      // height: MediaQuery.of(context).size.height,
                                      child: ListView(
                                        controller: scontroller,
                                        physics: ScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(left: width*.02,top: height*0.02),
                                                child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        primary: Colors.blue,
                                                        elevation: 2,
                                                        backgroundColor: Colors.white24),
                                                    onPressed: () {
                                                      setState(() {
                                                        table.add(OrderLines(
                                                            variantId: variantId??"",
                                                            currentQty: stock,
                                                            supplierCode: supplierRefCode,
                                                            variantName: varinatname??"",
                                                            barcode: barcode??"",
                                                            minimumQty: minQty,
                                                            maximumQty: maxQty,
                                                            purchaseuom: purchaseUomName??"",
                                                            requestedQty: recievedQty,
                                                            isRecieved: isReceived1,
                                                            discount:discount,
                                                            foc: foc1,
                                                            unitCost: unitcost,
                                                            variableAmount: vatableAmount1,
                                                          vat: vat1,
                                                            excessTax: excess1,
                                                            actualCost: actualCost1,
                                                            grandTotal: grandTotal1,
                                                            isInvoiced: isInvoiced1,
                                                            isFree: isFree1,
                                                            isActive:isActive1,




                                                        ));

                                                      });
                                                      addition();
                                                      unitcost2= 0;

                                                      grands = 0;
                                                      actualValue = 0;
                                                      vatValue = 0;
                                                      discountValue = 0;
                                                      focValue =0;

                                                      VatableValue = 0;

                                                      excessTAxValue = 0;




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
                                                    child:Text("Add New ")

                                                ),
                                              ),
                                              SingleChildScrollView(
                                                child: Container(
                                                  // height: 500,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  padding: EdgeInsets.all(10),
                                                  child: customTable(
                                                    border: const TableBorder(
                                                      verticalInside: BorderSide(
                                                          width:.5,
                                                          color: Colors.black45,
                                                          // color: Colors.blue,
                                                          style:
                                                          BorderStyle.solid),

                                                      horizontalInside:
                                                      BorderSide(
                                                          width:.3,
                                                          color: Colors.black45,
                                                          // color: Colors.blue,
                                                          style:
                                                          BorderStyle.solid),),
                                                    tableWidth: .5,
                                                    childrens: [
                                                      TableRow(
                                                        // decoration: BoxDecoration(
                                                        //     color: Colors.green.shade200,
                                                        //     shape: BoxShape.rectangle,
                                                        //     border: const Border(      top: BorderSide(
                                                        //         width: .5,
                                                        //         color: Colors.black45,
                                                        //         // color: Colors.blue,
                                                        //         style: BorderStyle.solid
                                                        //     ),)),
                                                          children: [
                                                            tableHeadtext(
                                                              'Sno',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white,
                                                            ),
                                                            tableHeadtext(
                                                              'Variant id',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 50,
                                                              size: 12,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Variant Name',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),

                                                            // tableHeadtext('description', size: 10, color: null),
                                                            tableHeadtext(
                                                              'Barcode',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),

                                                            tableHeadtext(
                                                              'Current qty',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Purchase UOM',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Requested qty',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Min Order Qty',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Max Order Qty',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Is Recieved',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Unit Cost',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Excise Tax',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Discount',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'FOC',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Vatable Amount',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),

                                                            tableHeadtext(
                                                              'Vat',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Actual Cost',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Grand Total',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Is Invoiced',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Is Free',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            tableHeadtext(
                                                              'Is Active',
                                                              padding:
                                                              EdgeInsets.all(7),
                                                              height: 46,
                                                              size: 13,
                                                              // color: Palette.containerDarknew,
                                                              // textColor: Palette.white
                                                            ),
                                                            // if (widget.onAddNew) textPadding(''),
                                                          ]),

                                                      if (table != null)...[
                                                        for (var i = 0;
                                                        i < table.length;
                                                        i++)
                                                          TableRow(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.grey
                                                                      .shade200,
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                  border:const  Border(
                                                                      left: BorderSide(
                                                                          width: .5,
                                                                          color: Colors
                                                                              .grey,
                                                                          style: BorderStyle
                                                                              .solid),
                                                                      bottom: BorderSide(
                                                                          width: .5,
                                                                          color: Colors
                                                                              .grey,
                                                                          style: BorderStyle
                                                                              .solid),
                                                                      right: BorderSide(
                                                                          color: Colors
                                                                              .grey,
                                                                          width: .5,
                                                                          style: BorderStyle
                                                                              .solid))),
                                                              children: [
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                                                  child: textPadding(
                                                                      (i + 1)
                                                                          .toString(),
                                                                      fontSize: 12,
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          1.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                                                  child: textPadding(
                                                                      (i + 1)
                                                                          .toString(),
                                                                      fontSize: 12,
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          1.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                // TableCell(
                                                                //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                //   child: PopUpCall(
                                                                //
                                                                //     type:
                                                                //     "cost-method-list",
                                                                //     value: table[i].variantId,
                                                                //     onSelection:
                                                                //         (VariantId? va) {
                                                                //
                                                                //       table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                                                //           variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                //           ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                //       )]);
                                                                //       setState(() {
                                                                //         // variantId =
                                                                //         // va?.code;
                                                                //         int? id = va!.id;
                                                                //         Variable.tableindex =i;
                                                                //         Variable.tableedit=true;
                                                                //
                                                                //
                                                                //         onChange = true;
                                                                //         context
                                                                //             .read<
                                                                //             TableDetailsCubitDartCubit>()
                                                                //             .getTableDetails(
                                                                //             id);
                                                                //         context
                                                                //             .read<
                                                                //             PurchaseStockCubit>()
                                                                //             .getCurrentStock(
                                                                //             id,inventoryId.text);
                                                                //
                                                                //         // orderType = va!;
                                                                //       });
                                                                //     },
                                                                //     onAddNew: () {},
                                                                //     // restricted: true,
                                                                //   ),
                                                                // ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .variantName??"",
                                                                      fontSize: 12,
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          1.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .barcode!,
                                                                      fontSize: 12,
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .currentQty==null?"": table[i]
                                                                          .currentQty.toString(),

                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .purchaseuom!,
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),


                                                                //88888888888888888888                                   //**********************************************
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                             // controller: requestedListControllers[i],
                                                              last: table[i].requestedQty.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      print(va);
                                                                      if (va == "") {
                                                                        print("entered");
                                                                        table[i] = table[i].copyWith(requestedQty: 0, variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                      } else {
                                                                        var qty = int.tryParse(va);
                                                                        var dis = table[i].discount;
                                                                        var excess = table[i].excessTax;
                                                                        var unitcost = table[i].unitCost;
                                                                        var vat = table[i].vat;
                                                                        var foc = table[i].foc;
                                                                        if (unitcost == "" || unitcost == 0) {
                                                                          table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                        }else {
                                                                          var Vamount;
                                                                          var vactualCost;

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


                                                                          table[i] =
                                                                              table[i]
                                                                                  .copyWith(
                                                                                  variableAmount: Vamount,
                                                                                  actualCost: vactualCost,
                                                                                  grandTotal: vactualCost,
                                                                                  requestedQty: qty);
                                                                        }



                                                                      }

                                                                      setState(() {});
                                                                    },
                                                                  ),
                                                                ),
                                                                //    Text(table[i].requestedQty.toString()),



                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                   last:table[i].minimumQty.toString(),
                                                                   // controller: minListControllers[i],

                                                                    onChanged: (p0) {

                                                                      print(p0);
                                                                      if(p0==""){
                                                                        setState(() {
                                                                          table[i] = table[i].copyWith(minimumQty: 0);

                                                                        });
                                                                      }
                                                                      else{
                                                                        setState(() {
                                                                          table[i] = table[i].copyWith(minimumQty:int.tryParse(p0));


                                                                        });

                                                                      }




                                                                    },
                                                                    enable: true,
                                                                    onComplete: () {

                                                                      setState(() {  print("maxxxx"+table.toString());});
                                                                    },
                                                                  ),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    //controller: maxListControllers[i],
                                                                    last:table[i].maximumQty.toString(),
                                                                    onChanged: (p0) {

                                                                      print(p0);
                                                                      if(p0==""){
                                                                        table[i] = table[i].copyWith(maximumQty: 0);
                                                                        setState(() {

                                                                        });

                                                                      }
                                                                      else{
                                                                        setState(() {
                                                                          table[i] = table[i].copyWith(maximumQty:int.tryParse(p0));

                                                                        });
                                                                      }

                                                                    },
                                                                    enable: true,
                                                                    onComplete: () {

                                                                      setState(() {  print("maxxxx"+table.toString());});
                                                                    },
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: CheckedBoxs(

                                                                    valueChanger:table[i].isRecieved==null?false: table[i].isRecieved,


                                                                    onSelection: (bool? value) {  },

                                                                  ),
                                                                ),


                                                                // Checkbox(
                                                                //   value: table[i]
                                                                //       .isRecieved==null?false: table[i]
                                                                //       .isRecieved,
                                                                //   onChanged: (bool?
                                                                //       value) {
                                                                //     setState(() {
                                                                //       this.isRecieved =
                                                                //           value;
                                                                //     });
                                                                //   },
                                                                // ),

                                                                //*************UNITCOST*******************uNIT COST*******************UNITCOST***********UNITCOST************************************************
                                                                //

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    //controller: unitcostListControllers[i],
                                                                    last: table[i].unitCost.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      double? unitcost;
                                                                      if (va == "") {
                                                                        print("entered");
                                                                        unitcost = 0;
                                                                        print("disc" + unitcost.toString());
                                                                        table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                      }
                                                                      unitcost = double.tryParse(va);
                                                                      print("unitcost" + unitcost.toString());

                                                                      var qty = table[i].requestedQty;
                                                                      print("qty" + qty.toString());
                                                                      var excess = table[i].excessTax;
                                                                      print("excess" + excess.toString());
                                                                      var disc = table[i].discount;
                                                                      var foc=table[i].foc;

                                                                      var vat = table[i].vat;
                                                                      print("vat" + vat.toString());
                                                                      print("qty" + qty.toString());
                                                                      if (qty == 0 || qty == null) {
                                                                        print("checking case");

                                                                        table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                        setState(() {});
                                                                      } else {

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
                                                                        table[i] =
                                                                            table[i]
                                                                                .copyWith(
                                                                                variableAmount: Vamount,
                                                                                actualCost: vactualCost,
                                                                                grandTotal: vactualCost,
                                                                                unitCost: unitcost);
                                                                        setState(() {});

                                                                      }
                                                                    },
                                                                  ),
                                                                ),


                                                                //Excess tax***********************************Excesstax***********************************************************************

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                     // controller: excesstListControllers[i],



                                                                    last: table[i].excessTax.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      double? excess;
                                                                      if (va == "") {
                                                                        excess = 0;
                                                                        setState(() {});
                                                                      } else {
                                                                        excess = double.tryParse(va);
                                                                        setState(() {});
                                                                      }

                                                                      var qty = table[i].requestedQty;
                                                                      var vat = table[i].vat;
                                                                      var foc = table[i].foc;

                                                                      print("excess" + excess.toString());
                                                                      var unitcost = table[i].unitCost;
                                                                      print("unitcost" + unitcost.toString());
                                                                      var Vdiscount = table[i].discount;
                                                                      if(qty==0 || unitcost==0){
                                                                        table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, variableAmount: 0, excessTax: excess);
                                                                        setState(() {

                                                                        });

                                                                      }else {
                                                                        var Vamount;


                                                                        Vamount =
                                                                            (((unitcost! *
                                                                                qty!) +
                                                                                excess!) -
                                                                                Vdiscount!)
                                                                                .toDouble();

                                                                        var vactualCost = (Vamount! +
                                                                            ((Vamount! *
                                                                                vat!) /
                                                                                100));
                                                                        var Vgrnadtotal = (Vamount! +
                                                                            ((Vamount! *
                                                                                vat!) /
                                                                                100));
                                                                        table[i] =
                                                                            table[i]
                                                                                .copyWith(
                                                                                actualCost: vactualCost,
                                                                                grandTotal: Vgrnadtotal,
                                                                                variableAmount: Vamount,
                                                                                excessTax: excess);
                                                                        setState(() {});
                                                                      } },
                                                                  ),
                                                                ),
                                                                //****************************************DISCOUNT***************************DISCOUNT*********************************
                                                                // tableEdit==true?
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    last: table[i].discount.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      int? disc;
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
                                                                            int
                                                                                .tryParse(
                                                                                va);
                                                                        print(
                                                                            "disc1" +
                                                                                disc
                                                                                    .toString());
                                                                      }

                                                                      var qty = table[i]
                                                                          .requestedQty;
                                                                      print(
                                                                          "qty" +
                                                                              qty
                                                                                  .toString());
                                                                      var excess = table[i]
                                                                          .excessTax;
                                                                      print(
                                                                          "excess" +
                                                                              excess
                                                                                  .toString());
                                                                      var unitcost = table[i]
                                                                          .unitCost;
                                                                      print(
                                                                          "unitcost" +
                                                                              unitcost
                                                                                  .toString());
                                                                      var vat = table[i].vat;
                                                                      var foc = table[i]
                                                                          .foc;

                                                                      print(
                                                                          "vat" +
                                                                              vat
                                                                                  .toString());
                                                                      if (unitcost ==
                                                                          0 ||
                                                                          qty ==
                                                                              0) {
                                                                        table[i] =
                                                                            table[i]
                                                                                .copyWith(
                                                                                variableAmount: 0,
                                                                                actualCost: 0,
                                                                                grandTotal: 0,
                                                                                discount: disc);
                                                                      }

                                                                      else {

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
                                                                        table[i] =
                                                                            table[i]
                                                                                .copyWith(
                                                                                variableAmount: Vamount,
                                                                                actualCost: vactualCost,
                                                                                grandTotal: vactualCost,
                                                                                discount: disc);
                                                                        setState(() {});

                                                                      }

                                                                    }
                                                                    ,

                                                                  ),
                                                                ),



                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    last: table[i].foc.toString(),
                                                                   // controller: focListControllers[i],

                                                                    onChanged: (p0) {

                                                                      print(p0);
                                                                      if(p0==""){
                                                                        table[i] = table[i].copyWith(foc:0);
                                                                        setState(() {

                                                                        });

                                                                      }
                                                                      else{
                                                                        table[i] = table[i].copyWith(foc:double.tryParse(p0));
                                                                        setState(() {

                                                                        });
                                                                      }




                                                                    },
                                                                    enable: true,
                                                                    onComplete: () {

                                                                      setState(() {  print("maxxxx"+table.toString());});
                                                                    },
                                                                  ),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .variableAmount
                                                                          .toString(),
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),

                                                                //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                   // controller: vatListControllers[i],
                                                                    last: table[i].vat.toString() ?? "",
                                                                    onChanged: (va) {
                                                                      if (va == "") {
                                                                        print("sss");
                                                                        var vatableAmount = table[i].variableAmount;
                                                                        table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                        setState(() {});
                                                                      } else {
                                                                        var vat = double.tryParse(va);
                                                                        var Vamount = table[i].variableAmount;
                                                                        print("qty" + Vamount.toString());
                                                                        var excess = table[i].excessTax;
                                                                        print("excess" + excess.toString());
                                                                        var unitcost = table[i].unitCost;
                                                                        var qty = table[i].requestedQty;
                                                                        var foc = table[i].foc;
                                                                        var dis = table[i].discount;
                                                                        print("unitcost" + unitcost.toString());
                                                                        if(unitcost==0 || qty==0){
                                                                          table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);

                                                                        }else{

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
                                                                          table[i] =
                                                                              table[i]
                                                                                  .copyWith(
                                                                                  variableAmount: Vamount,
                                                                                  actualCost: vactualCost,
                                                                                  grandTotal: Vgrnadtotal,
                                                                                  vat: vat);
                                                                          setState(() {});

                                                                        }}
                                                                    },
                                                                  ),
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .actualCost
                                                                          .toString(),
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      table[i]
                                                                          .grandTotal
                                                                          .toString(),
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          11.5,
                                                                          top:
                                                                          11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: CheckedBoxs(
                                                                      valueChanger:table[i]
                                                                          .isInvoiced==null?false:table[i].isInvoiced,

                                                                      onSelection:(bool ? value){

                                                                      }),
                                                                ),
                                                                // Checkbox(
                                                                //   value: table[i]
                                                                //       .isRecieved==null?false:table[i]
                                                                //       .isRecieved,
                                                                //   onChanged: (bool?
                                                                //       value) {
                                                                //     setState(() {
                                                                //       // this.isRecieved =
                                                                //       //     value;
                                                                //     });
                                                                //   },
                                                                // ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
                                                                    value: table[i]
                                                                        .isFree==null?false:table[i]
                                                                        .isFree,
                                                                    onChanged: (bool?
                                                                    value) {
                                                                      setState(() {
                                                                        // this.isRecieved =
                                                                        //     value;
                                                                      });
                                                                    },
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
                                                                    value: table[i]
                                                                        .isActive==null?false:table[i]
                                                                        .isActive,
                                                                    onChanged: (bool?
                                                                    value) {
                                                                      setState(() {
                                                                        // this.isRecieved =
                                                                        //     value;
                                                                      });
                                                                    },
                                                                  ),
                                                                ),
                                                              ]),],
                                                      TableRow(
                                                          decoration: BoxDecoration(
                                                            color: Colors.grey.shade200,
                                                            shape: BoxShape.rectangle,
                                                            border: const Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle.solid))),
                                                          children: [
                                                            TableCell(
                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                              child: textPadding((table.length+1).toString(),
                                                                  fontSize: 12,
                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                  fontWeight: FontWeight.w500),
                                                            ),
                                                            PopUpCall(
                                                              inventory: "test",
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
                                                                  // stockCheck=true;
                                                                  variantId =
                                                                      va?.code;
                                                                  int? id = va!.id;
                                                                  print("is is"+id.toString());
                                                                  Variable.tableedit=false;
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
                                                                      .getCurrentStock(inventoryIdController.text, variantId);

                                                                  // orderType = va!;
                                                                });
                                                              },
                                                              onAddNew: () {},
                                                              // restricted: true,
                                                            ),
                                                            TableCell(
                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                              child: textPadding(varinatname??"",
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
                                                              child: textPadding(stock.toString(),
                                                                  fontSize: 12,
                                                                  padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                  fontWeight: FontWeight.w500),
                                                            ),
                                                            TableCell(
                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                              child: textPadding(purchaseUomName.toString(),
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

                                                                    }
                                                                    );
                                                                  }
                                                                  // print(Qty);
                                                                },
                                                                enable: true,
                                                                onComplete: () {
                                                                  setState(() {});


                                                                },
                                                              ),
                                                            ),
                                                            TableCell(
                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                              child: UnderLinedInput(

                                                                last:"",
                                                                onChanged: (p0) {
                                                                  if (p0 == '') {
                                                                    setState(() {
                                                                      minQty=0;

                                                                    });
                                                                  } else {
                                                                    setState(() {
                                                                      minQty =
                                                                          int
                                                                              .tryParse(
                                                                              p0);
                                                                    });
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
                                                              child: UnderLinedInput(

                                                                last:"",
                                                                onChanged: (p0) {
                                                                  if (p0 == '') {
                                                                    setState(() {
                                                                      maxQty=0;

                                                                    });
                                                                  } else {
                                                                    setState(() {
                                                                      maxQty =
                                                                          int
                                                                              .tryParse(
                                                                              p0);
                                                                    });
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
                                                              child: CheckedBoxs(color:Color(0xff3E4F5B) ,

                                                                valueChanger:  isReceived1,
                                                                onSelection: (bool? value ) {

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
                                                                      discount = int
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

                                                                last:"",
                                                                onChanged: (p0) {
                                                                  if (p0 == '') {
                                                                    setState(() {
                                                                      foc1=0;

                                                                    });
                                                                  } else {
                                                                    setState(() {
                                                                      foc1 =
                                                                          double
                                                                              .tryParse(
                                                                              p0);
                                                                    });
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
                                                              child: textPadding(vatableAmount1.toString()??"",
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
                                                              child: textPadding(actualCost1.toString()??"",
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
                                                              child: CheckedBoxs(color:Color(0xff3E4F5B) ,

                                                                valueChanger:  isInvoiced1,
                                                                onSelection: (bool? value ) {

                                                                  setState(() {
                                                                    isInvoiced1 = !isInvoiced1!;


                                                                  });
                                                                },

                                                              ),
                                                            ),
                                                            TableCell(
                                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                                              child: CheckedBoxs(color:Color(0xff3E4F5B) ,

                                                                valueChanger:  isFree1,
                                                                onSelection: (bool? value ) {

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
                                                            ),


                                                          ]

                                                      )



                                                      // if (!widget.onAddNew &&
                                                      //     widget.order?.orderLines != null &&
                                                      //     widget.order!.orderLines!.isNotEmpty) ...[
                                                      //   for (var i = 0; i < widget.order!.orderLines!.length; i++

                                                    ],
                                                    widths: {
                                                      0: FractionColumnWidth(.035),
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
                                                      //  11: FractionColumnWidth(.05),
                                                      //  12: FractionColumnWidth(.05),
                                                      13: FractionColumnWidth(.035),
                                                      14: FractionColumnWidth(.035),
                                                      //  15: FractionColumnWidth(.05),
                                                      //  16: FractionColumnWidth(.03),
                                                      // 17: FractionColumnWidth(.05),
                                                      //  18: FractionColumnWidth(.05),
                                                      //  19: FractionColumnWidth(.05),
                                                      //  20: FractionColumnWidth(.05),
                                                    },
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Button(Icons.delete, Colors.red,ctx: context,
                                          onApply: (){print("Akkk");
                                          context.read<DeleterequestformCubit>().requestFormDelete(Variable.verticalid);
                                          },
                                      text: "Discard",height: 29,
                                      width: 90,labelcolor: Colors.red,iconColor: Colors.red),
                                      SizedBox(width: width*.008,),

                  InkWell(
                    onTap: () {
                       PurchaseOrderPost model =
                      PurchaseOrderPost(
                        purchaseOrderType: orderType.text??"",
                          orderedPerson:orderedPersonController.text??"",
                        iventoryId: inventoryIdController.text??"",
                        address1: "akshay",
                        address2: "anmaika",
                        discount:double.tryParse( discountController.text),
                        plannedRecieptDate: plannedRecieptDate.text??"",
                        promisedReceiptdate:promisedRecieptDate.text??"",
                        note: noteController.text??"",
                        remarks: remarksController.text??"",
                        unitcost: double.tryParse(unitCostController.text),
                        excessTax: double.tryParse(excessTaxController.text),
                        actualCost: double.tryParse(actualCostController.text),
                        vat: double.tryParse(vatController.text),
                        grandTotal: double.tryParse(grandTotalController.text),
                        variableAmount: double.tryParse(vatableAmountController.text),
                        foc: double.tryParse(focController.text),
                        createdBy: "12",
                        edited_by: "anvar",

                        orderLines: table

                      );
                       print("model"+model.toString());

                              // //context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(1);
                      select? context.read<RequestformpostCubit>().postRequest(model):
                      context.read<RequestpatchCubit>().getRequestFormPatch(Variable.verticalid,model);


                    },
                    child: Container(
                      color: Color(0xff3E4F5B),
                      alignment: Alignment.center,
                      height: 29,
                      width: 90,

                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Icon(
                            select?   Icons.check:Icons.update,
                            color: Colors.white,
                          ),
                          SizedBox(width:3,),
                          Text(
                            select?"save":"update",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ), //BoxDecoration
                    ),
                  ),
                                      SizedBox(width: width*.008,),
                                    ],
                                  )

                                ],
                              ),
                            ))
                          ],
                        ),
                      ))

                    ],

                  )
            //       Column(
            //         children: [
            //           Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //
            //             children: [
            //               VerticalList(),
            //               Expanded(child: Column(
            //                 children: [
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Order type"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "Order code"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Order date"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Inventory  id"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Ordered person"),
            //                   SizedBox(height: height*.030,),
            //                   PopUpDateFormField(
            //
            //                       format:DateFormat('yyyy-MM-dd'),
            //                       controller: promisedRecieptDate,
            //                       // initialValue:
            //                       //     DateTime.parse(fromDate!),
            //                       label: "Promised Reciept Date",
            //                       onSaved: (newValue) {
            //                         promisedRecieptDate.text = newValue
            //                             ?.toIso8601String()
            //                             .split("T")[0] ??
            //                             "";
            //                         print("promised_receipt_date.text"+promisedRecieptDate.text.toString());
            //                       },
            //                       enable: true),
            //                   SizedBox(height: height*.030,),
            //                 PopUpDateFormField(
            //
            //                     format:DateFormat('yyyy-MM-dd'),
            //                     controller: promisedRecieptDate,
            //                     // initialValue:
            //                     //     DateTime.parse(fromDate!),
            //                     label: "Planned Reciept Date",
            //                     onSaved: (newValue) {
            //                       plannedRecieptDate.text = newValue
            //                           ?.toIso8601String()
            //                           .split("T")[0] ??
            //                           "";
            //                       print("planned.text"+plannedRecieptDate.text.toString());
            //                     },
            //                     enable: true),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //
            //
            //                 ],
            //               ),),
            //               Expanded(child: Column(
            //                 children: [
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: 10,),
            //
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "Payment code"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       readOnly: true,
            //                       controller: controller, title: "Payment status"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       readOnly: true,
            //                       controller: controller, title: "Order status"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       readOnly: true,
            //                       controller: controller, title: "Receiving status"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       readOnly: true,
            //                       controller: controller, title: "Invoice status"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Note",height: 90,maxLines: 3,),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                       controller: controller, title: "Remarks",height: 90,maxLines: 3,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                 ],
            //               ),),
            //               Expanded(child: Column(
            //                 children: [
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "Discount"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "foc"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "Unit cost"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "Variable amount"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "excess tax"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "vat"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "actual cost"),
            //                   SizedBox(height: height*.030,),
            //                   NewInputCard(
            //                     readOnly: true,
            //                       controller: controller, title: "grand total"),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //                   SizedBox(height: height*.030,),
            //
            //
            //
            //                 ],
            //               ),),
            //
            //             ],
            //           ),

            // SizedBox(height: 78,),
            //

            //
            //
            // ],
            //       ),
                ),
              );
  },
);
    }
  ),
);
    }
  ),

    ));
  }
}
