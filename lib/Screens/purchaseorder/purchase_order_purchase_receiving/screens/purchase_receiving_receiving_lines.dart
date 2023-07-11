import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievig_read_cubit.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PurchasReturnGeneralGrowableTable extends StatefulWidget {
  bool select;
  final Function updation;
  final String vendorCode;
  final Function updateCheck;
  PurchasReturnGeneralGrowableTable(
      {required Key key,
        required this.updation,
        required this.select,
        required this.updateCheck, required this.vendorCode,
      }): super(key: key);
  @override
  PurchasReturnGeneralGrowableTableState createState() => PurchasReturnGeneralGrowableTableState();
}
class PurchasReturnGeneralGrowableTableState extends State<PurchasReturnGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;
  bool stockCheck=false;
  PurchaseOrderTableModel? purchaseTable;
  List<RecievingLines> recievingLisnes =List.from([]);
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
  TextEditingController unicostController = TextEditingController();
  var unitcostReceivingListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  var expirydateControllerList2 = <TextEditingController>[];

  double vatableAmountUpdation(
      double? unitCost, int? qty, double? excessTax, double? discount) {
    double vatableAmount = double.parse(
        (((unitCost! * qty!) + excessTax!) - discount!).toStringAsFixed(2));
    return vatableAmount;
  }

  double vatableAmountFocUpdation(double? unitCost, int? qty, double? excessTax,
      double? discount, double? foc) {
    double vatableAmount = double.parse(
        ((((qty! * unitCost!) - (foc! * unitCost!)) + excessTax!) - discount!)
            .toStringAsFixed(2));
    return vatableAmount;
  }

  double actualAndgrandTotalUpdation(double? vatableAmount, double? vat) {
    double actualCosts;
    if (vat == null || vat == 0) {
      actualCosts = vatableAmount ?? 0;
    } else {
      actualCosts = double.parse(
          (vatableAmount! + ((vatableAmount * vat!) / 100)).toStringAsFixed(2));
    }

    return actualCosts;
  }
  valueAddingRecievingTextEdingController(){
    if(recievingLisnes.isNotEmpty){
      for(var i=0;i<recievingLisnes.length;i++){
        var unitcost = new TextEditingController(text:recievingLisnes [i].unitCost.toString()??"");
        unitcostReceivingListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }
  tableUpdationConditionCheck(int index){

    var qty = recievingLisnes[index].requestedQty;
    var vat = recievingLisnes[index].vat;
    var foc = recievingLisnes[index].foc;
    var unitcost = recievingLisnes[index].unitCost;
    var Vdiscount = recievingLisnes[index].discount;
    var excess = recievingLisnes[index].excessTax;

    if (qty == 0 || unitcost == 0) {
      recievingLisnes[index] = recievingLisnes[index].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0);

      setState(
              () {});
    } else {
      var Vamount;
      if (foc == 0 || foc == "") {
        Vamount = vatableAmountUpdation(unitcost, qty, excess, Vdiscount);
      } else {
        Vamount = vatableAmountFocUpdation(unitcost, qty, excess, Vdiscount, foc);
      }
      var vactualCost = actualAndgrandTotalUpdation(Vamount, vat);
      var Vgrnadtotal = actualAndgrandTotalUpdation(Vamount, vat);
      recievingLisnes[index] = recievingLisnes[index].copyWith(actualCost: vactualCost, grandTotal: Vgrnadtotal, vatableAmount: Vamount,);

      setState(
              () {});
    }


  }
  Future _getCurrentUser() async {
    if (recievingLisnes.isNotEmpty) {
      for (var i = 0; i < recievingLisnes.length; i++) {
        print("variantaaaaaa" + recievingLisnes[i].variantId.toString());

        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, recievingLisnes[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  void initState() {
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [

            BlocListener<PurchaseStockCubit, PurchaseStockState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");

                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      currentStock.add(0);
                      setState(() {});
                    },
                    success: (data) {
                      purchaseCurrentStock = data;
                      var stockQty = purchaseCurrentStock?.StockQty;
                      currentStock.add(stockQty??0);
                      setState(() {});
                    });
              },
            ),
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
                          expirydateControllerList2.add(date);}
                    });
              },
            ),

          ],
          child:
          CustomScrollBar(
            controller: recieveController,
            childs: Container(
              color: Colors.white,
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                controller:recieveController ,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child:
                      Container(
                        width: 2200,
                        // padding:
                        // EdgeInsets
                        //     .all(
                        //     10),
                        child:
                        customTable(

                          tableWidth:
                          .5,
                          childrens: [
                            TableRow(
                                children: [
                                  tableHeadtext(
                                    'Sl.No',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Orderline Id',
                                    size: 12,
                                  ),
                                  tableHeadtext(
                                    'Variant Id',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Variant Name',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Supplier Ref Code',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Barcode',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Current Qty',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                  ),
                                  tableHeadtext(
                                    'Purchase UOM',
                                    size: 13,
                                  ),
                                  tableHeadtext('Received Qty', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('Is Received', size: 13,),
                                  tableHeadtext('Unit Cost', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('Excise Tax', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('Discount', size: 13, center: true,padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('FOC', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),

                                  tableHeadtext('Vatable Amount', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('VAT', size: 13, center: true, padding: EdgeInsets.only(bottom:height*.0198),),
                                  tableHeadtext('Actual Cost', center: true, padding: EdgeInsets.only(bottom:height*.0198), size: 13,),
                                  tableHeadtext('Grand Total', center: true, padding: EdgeInsets.only(bottom:height*.0198), size: 13,),
                                  tableHeadtext('Is Invoiced', size: 13,),
                                  tableHeadtext('Expiry Date', size: 13,),
                                  tableHeadtext('Is Free', size: 13,),
                                  tableHeadtext('Is Active', size: 13,),
                                  tableHeadtext('', size: 13,),

                                  // if (widget.onAddNew) textPadding(''),
                                ]),
                            if(recievingLisnes.isEmpty)...[
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
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  Container(height: 42,),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                  textPadding(""),
                                ],
                              )


                            ],
                            if (recievingLisnes != null) ...[

                              for (var i = 0; i < recievingLisnes.length;
                              i++)
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
                                        child: textPadding((i + 1).toString(),
                                            // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(recievingLisnes[i].orderLineCode.toString(), fontWeight: FontWeight.w500),),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child:
                                          VariantIdTAble(text:recievingLisnes[i].variantId.toString(),
                                            onTap: (){
                                              showDailogPopUp(
                                                context,
                                                TableConfigurePopup(
                                                  vendorId: widget. vendorCode,
                                                  type: "variantTabalePopup",
                                                  valueSelect: (VariantId? va) {
                                                    // updateCheck=true;
                                                    recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                    setState(() {

                                                    });
                                                    recievingLisnes[i] = recievingLisnes[i].copyWith(variantId:va?.code );
                                                    setState(() {
                                                      var  variant= va?.code;
                                                      int? id = va!.id;
                                                      Variable.tableindex =i;
                                                      Variable.tableedit=false;
                                                      // recievlinequantityCheck=true;
                                                      stockCheck=true;

                                                      // variantIdcheck=true;
                                                      context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                      context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, variant);

                                                      // orderType = va!;
                                                    });
                                                  },
                                                ),
                                              );
                                            },
                                          )


                                        //     PopUpCall(
                                        //   vendorId: vendorCodeController.text,
                                        //
                                        //   type:"cost-method-list",
                                        //   value: recievingLisnes[i].variantId,
                                        //   onSelection: (VariantId? va) {
                                        //     updateCheck=true;
                                        //     recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                        //     setState(() {
                                        //
                                        //     });
                                        //     recievingLisnes[i] = recievingLisnes[i].copyWith(variantId:va?.code );
                                        //     setState(() {
                                        //       var  variant= va?.code;
                                        //       int? id = va!.id;
                                        //       Variable.tableindex =i;
                                        //       Variable.tableedit=false;
                                        //       recievlinequantityCheck=true;
                                        //       stockCheck=true;
                                        //
                                        //       variantIdcheck=true;
                                        //       context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                        //       context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, variant);
                                        //
                                        //       // orderType = va!;
                                        //     });
                                        //   }, // restricted: true,
                                        // ),
                                      ),
                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: textPadding(recievingLisnes[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                      // ),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(recievingLisnes[i].variantName ?? "", fontWeight: FontWeight.w500),),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(recievingLisnes[i].supplierCode ?? "", fontWeight: FontWeight.w500),),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(recievingLisnes[i].barcode ?? "",fontWeight: FontWeight.w500),),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(currentStock.length!=recievingLisnes.length?"":currentStock[i].toString(), fontWeight: FontWeight.w500, alighnment: Alignment.topRight),),
                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPadding(recievingLisnes[i].purchaseUom ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          integerOnly: true,
                                          last: recievingLisnes[i].requestedQty.toString() ?? "",
                                          onChanged: (va) {
                                            recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true,requestedQty:va == ""?0:int.tryParse(va) );
                                            tableUpdationConditionCheck(i);
                                            setState(() {});
                                          },
                                        ),
                                      ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                            valueChanger:recievingLisnes[i].isReceived == null ? false : recievingLisnes[i].isReceived,
                                            onSelection:(bool ? value){
                                              widget.updateCheck(true);
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {
                                              });
                                              bool? isRecieved = recievingLisnes[i].isReceived;
                                              setState(() {
                                                isRecieved = !isRecieved!;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(isReceived: isRecieved);

                                              });

                                            }),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          controller:unitcostReceivingListControllers[i],
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true,unitCost: va == ""?0:double.tryParse(va));
                                            tableUpdationConditionCheck(i);
                                            setState(() {});



                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          last: recievingLisnes[i].excessTax.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true,excessTax:va == ""?0:double.tryParse(va) );
                                            tableUpdationConditionCheck(i);
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          last: recievingLisnes[i].discount.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true,discount:va ==
                                                ""?0:  double
                                                .tryParse(
                                                va) );
                                            tableUpdationConditionCheck(i);
                                            setState(() {});

                                          }
                                          ,

                                        ),
                                      ),


                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          last: recievingLisnes[i].foc.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true,foc:va == ""?0:double.tryParse(va) );
                                            tableUpdationConditionCheck(i);
                                            setState(() {});
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
                                        child: textPadding(recievingLisnes[i]?.vatableAmount.toString() ?? "",
                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(recievingLisnes[i]?.vat.toString() ?? "",
                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),
                                      ),
                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: UnderLinedInput(
                                      //     initialCheck:true,
                                      //     last: recievingLisnes[i].vat.toString() ?? "",
                                      //     onChanged: (va) {
                                      //       updateCheck=true;
                                      //       recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                      //       setState(() {
                                      //       });
                                      //       if (va == "") {
                                      //         print("sss");
                                      //         var vatableAmount = recievingLisnes[i].vatableAmount;
                                      //         recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                      //         setState(() {});
                                      //       } else {
                                      //         var vat = double.tryParse(va);
                                      //         var Vamount = recievingLisnes[i].vatableAmount;
                                      //         print("qty" + Vamount.toString());
                                      //         var excess = recievingLisnes[i].excessTax;
                                      //         print("excess" + excess.toString());
                                      //         var unitcost = recievingLisnes[i].unitCost;
                                      //         var qty = recievingLisnes[i].receivedQty;
                                      //         var foc = recievingLisnes[i].foc;
                                      //         var dis = recievingLisnes[i].discount;
                                      //         print("unitcost" + unitcost.toString());
                                      //         if(unitcost==0 || qty==0){
                                      //           recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                      //
                                      //         }else{
                                      //           if(foc==0 || foc=="") {
                                      //             double Vamount = double.parse((((unitcost! *
                                      //                 qty!) +
                                      //                 excess!) -
                                      //                 dis!)
                                      //                 .toStringAsFixed(2));
                                      //             double vactualCost = double.parse((Vamount! +
                                      //                 ((Vamount! *
                                      //                     vat!) /
                                      //                     100)).toStringAsFixed(2));
                                      //             double Vgrnadtotal =double.parse( (Vamount! +
                                      //                 ((Vamount! *
                                      //                     vat!) /
                                      //                     100)).toStringAsFixed(2));
                                      //             recievingLisnes[i] =
                                      //                 recievingLisnes[i]
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
                                      //             double vactualCost =double.parse( (Vamount! +
                                      //                 ((Vamount! *
                                      //                     vat!) /
                                      //                     100)).toStringAsFixed(2));
                                      //             double Vgrnadtotal = double.parse((Vamount! +
                                      //                 ((Vamount! *
                                      //                     vat!) /
                                      //                     100)).toStringAsFixed(2));
                                      //             recievingLisnes[i] =
                                      //                 recievingLisnes[i]
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
                                        child: textPadding(recievingLisnes[i].actualCost.toString() ?? "", fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(recievingLisnes[i].grandTotal.toString() ?? "",
                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                            valueChanger:recievingLisnes[i].isInvoiced == null ? false : recievingLisnes[i].isInvoiced,
                                            onSelection:(bool ? value){
                                              bool? isInvoiced = recievingLisnes[i].isInvoiced;
                                              setState(() {

                                              });

                                            }),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Tabledate(

                                            format:DateFormat('dd-MM-yyyy'),
                                            controller:recievingLisnes.length!=expirydateControllerList2.length?TextEditingController(text:""): expirydateControllerList2[i],
                                            label: "Promised Receipt date",
                                            onSuffixIconPressed: (){
                                              setState(() {



                                                recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck:recievingLisnes[i].expiryDate!=null||recievingLisnes[i].updateCheck==true? true:false,expiryDate: null);
                                                expirydateControllerList2[i]=TextEditingController(text: "");
                                              });


                                            },
                                            onSaved: (newValue) {
                                              widget.updateCheck(true);
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              expirydateControllerList2[i]=TextEditingController(text:DateFormat('dd-MM-yyyy').format(newValue!));
                                              recievingLisnes[i] =
                                                  recievingLisnes[i]
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



                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: textPadding(recievingLisnes[i].expiryDate.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                      // ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:CheckedBoxs(
                                            valueChanger:recievingLisnes[i].isFree == null ? false : recievingLisnes[i].isFree,
                                            onSelection:(bool ? value){
                                              widget.updateCheck(true);
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              bool? isFree = recievingLisnes[i].isFree;
                                              setState(() {
                                                isFree = !isFree!;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(isFree: isFree);
                                                print(isFree);

                                              });

                                            }),

                                      ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:
                                        CheckedBoxs(
                                          valueChanger: recievingLisnes[i].isActive == null ? false : recievingLisnes[i].isActive,
                                          onSelection
                                              : (bool? value) {
                                            widget.updateCheck(true);

                                            bool? isActive = recievingLisnes[i].isActive;
                                            setState(() {
                                              isActive = !isActive!;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(isActive: isActive,updateCheck: true);


                                            });
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: TableTextButton(

                                          onPress: () {

                                            var variant = recievingLisnes[i].variantId??0;
                                            var expirydates = recievingLisnes[i].expiryDate??"";


                                            var excess = recievingLisnes[i].excessTax??0;
                                            print("excess" + excess.toString());
                                            var unitcosts = recievingLisnes[i].unitCost??0;
                                            var qty = recievingLisnes[i].requestedQty??0;
                                            var foc = recievingLisnes[i].foc??0;
                                            var dis = recievingLisnes[i].discount??0;
                                            if(variant=="null"||unitcosts==0){
                                              context.showSnackBarError("please fill all the fields");
                                            }
                                            else if(qty==0||qty==""){
                                              context.showSnackBarError(
                                                  "the requested quantity not be 0 or empty");

                                            }
                                            // else if(expirydates=="")
                                            //   context.showSnackBarError("please select the expiry date");
                                            else if(qty!<foc!){
                                              context.showSnackBarError("the received qty all ways greater than  foc");

                                            }
                                            else{

                                              widget.updateCheck(false);
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: false);
                                             widget. updation(recievingLisnes);
                                              setState(() {

                                              });

                                              setState(() {

                                              });
                                            }






                                          },
                                          textColor:recievingLisnes[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.grey ,
                                          label: recievingLisnes[i].updateCheck==true?"Update":"",

                                        ),
                                      ),


                                    ])
                            ]
                          ],
                          widths: {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(3),
                            2: FlexColumnWidth(3),
                            3: FlexColumnWidth(4),
                            4: FlexColumnWidth(3),
                            5: FlexColumnWidth(3),
                            6: FlexColumnWidth(3),
                            7: FlexColumnWidth(3),
                            8: FlexColumnWidth(3),
                            9: FlexColumnWidth(2.5),
                            10: FlexColumnWidth(3),
                            11: FlexColumnWidth(3),
                            12: FlexColumnWidth(3),
                            13: FlexColumnWidth(3),
                            14: FlexColumnWidth(3),
                            15: FlexColumnWidth(3),
                            16: FlexColumnWidth(3),
                            17: FlexColumnWidth(3),
                            18: FlexColumnWidth(2.5),
                            19: FlexColumnWidth(4),
                            20: FlexColumnWidth(2.5),
                            21: FlexColumnWidth(2.5),
                            22: FlexColumnWidth(3),

                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20,)

                  ],
                ),

              ),
            ),
          ),
        );
      }),
    );
  }
}