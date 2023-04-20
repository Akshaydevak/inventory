import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/salesreturn/cubit/invoiceraed/generalinvoiceread_cubit.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SalesReturnGeneralGrowableTable extends StatefulWidget {
  final List<SalesReturnOrderLines>? table;
  // final List<int?> currenStock;
  // bool select;
  final Function updation;
  // final Function updateCheck;
  SalesReturnGeneralGrowableTable(
      {
        required Key key,
        required this.table,
        required this.updation,
      }): super(key: key);

  @override
  SalesReturnGeneralGrowableTableState createState() =>
      SalesReturnGeneralGrowableTableState();
}

class SalesReturnGeneralGrowableTableState extends State<SalesReturnGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;

  PurchaseOrderTableModel? purchaseTable;
  List<SalesReturnOrderLines> table1 = [];
  String? variantId = "";
  String? varinatname = "";
  String? returntype = "";
  String? returntime = "";
  String? barcode = "";
  String? salesUom = "";
  int? stock = 0;
  int? stockId ;
  String? discountPrice="price";
  PurchaseCureentStockQty? purchaseCurrentStock;
  var unitcostListControllers = <TextEditingController>[];

  bool? invoiced = false;
  bool? isActive1 = false;
  bool? clear = true;
  String? supplierRefCode = "";
  double? unitcost1 = 0;
  double? discount1 = 0;
  double vat1 = 0;
  int? quantity = 0;
  double? etax1 = 0;
  double taxableAmount = 0;
  double warrentyprice = 5;
  double sellingPrice = 0;
  double warrentyPrice = 5;
  double totalPrice = 0;
  TextEditingController unicostController = TextEditingController();
  void taxableCalcutatingMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    if (type == "price") {
      taxableAmount = double.parse((((reqQty * unitCst) + exTaxx) - disct).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmount =double.parse ((total - ((total * disct) / 100)).toStringAsFixed(2));
    }
  }

  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts = double.parse((((reqQty * unitCst) + exTaxx) - disct).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmounts = (total - ((total * disct) / 100));
    }
    return taxableAmounts;
  }

  void selliPriceCalculation(double taxableAmount, double vatt) {
    sellingPrice = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
  }

  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 =double.parse( (taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
    return sellingPrice1;
  }

  void totalPriceCalculation(double sellingprice, double warrentyprice) {
    totalPrice = sellingprice + warrentyprice;
    setState(() {
      print("totalp" + totalPrice.toString());
    });
  }

  double totalPriceUpdation(double sellingprice, double warrentyprice) {
    double totalPrice1;
    totalPrice1 = sellingprice + warrentyprice;
    setState(() {});
    return totalPrice1;
  }
  valueAddingTextEdingController(){
    unitcostListControllers.clear();
    if(table1.isNotEmpty){
      print("checking case");
      for(var i=0;i<table1.length;i++){

        var unitcost = new TextEditingController(text: table1[i].unitCost.toString()??"");
        unitcostListControllers.add(unitcost);

        setState(() {

        });

      }
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
    if (assignCheck == false) table1 = widget.table ?? [];

    // if(widget.select && clear==true)table1.clear();
    // clear=false;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [

            BlocListener<GeneralinvoicereadCubit, GeneralinvoicereadState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("checkin Case");
                      table1.clear();
                      if(data.invoicedData!=null){
                        data?.invoicedData?.lines != null ? table1 =List.from( data?.invoicedData?.lines ?? []) : table1 = [];
                      }
                      else{
                        data?.lines != null ? table1 = List.from(data?.lines  ?? []) : table1 = [];
                      }
                      setState(() {
                        // table1[0]=table1[0].copyWith(unitCost: 3);
                        valueAddingTextEdingController();
                      });

                      print("thee table"+table1.toString());
                    });

              },
            ),

            BlocListener<TableDetailsCubitDartCubit,
                TableDetailsCubitDartState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      purchaseTable = data;
                      print("purchasetable" + purchaseTable.toString());
                      setState(() {
                        if (Variable.tableedit == true) {
                          print("object");
                          table1[Variable.tableindex] =
                              table1[Variable.tableindex].copyWith(

                                  vat: purchaseTable?.vat,
                                  unitCost: purchaseTable?.unitCost,
                                  salesUom:
                                  purchaseTable?.purchaseUomName ?? "",
                                  barcode: purchaseTable?.barCode?.barcodeNumber
                                      .toString() ??
                                      "",
                                  returnTime: purchaseTable?.returnTime,
                                  returnType: purchaseTable?.returnType);
                          unitcostListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );
                          var qty = table1[Variable.tableindex].quantity ?? 0;
                          var vat = table1[Variable.tableindex].vat ?? 0;
                          var unitcost =
                              table1[Variable.tableindex].unitCost ?? 0;
                          var Vdiscount = table1[Variable.tableindex].discount ?? 0;
                          var excess = table1[Variable.tableindex].excessTax ?? 0;

                          if (qty == 0 || unitcost == 0) {
                            table1[Variable.tableindex] = table1[Variable.tableindex].copyWith(
                                taxableAmount: 0,
                                sellingPrice: 0,
                                totalPrice: 0,
                                excessTax: excess);
                            setState(() {});
                          } else {
                            var taxableAmount =
                            taxableUpdateMethod(
                                qty,
                                unitcost,
                                excess!,
                                Vdiscount,
                                table1[Variable.tableindex].discountType);

                            var sellingPrice =
                            sellingPriceUpdation(
                                taxableAmount, vat);
                            var totalprice =
                            totalPriceUpdation(
                                sellingPrice,
                                table1[Variable.tableindex]
                                    .warrentyPrice ??
                                    0);

                            table1[Variable.tableindex] = table1[Variable.tableindex].copyWith(
                                taxableAmount:
                                taxableAmount,
                                sellingPrice: sellingPrice,
                                totalPrice: totalprice,
                                excessTax: excess);
                            setState(() {});
                          }
                          setState(() {});
                        } else {
                          varinatname = purchaseTable?.name ?? "";
                          returntype = purchaseTable?.returnType ?? "";
                          returntime = purchaseTable?.returnTime.toString() ?? "";
                          unitcost1 = purchaseTable?.unitCost ?? 0;
                          unicostController.text = unitcost1.toString();
                          vat1 = purchaseTable?.vat ?? 0;
                          salesUom = purchaseTable?.purchaseUomName ?? "";
                          barcode = purchaseTable?.barCode?.barcodeNumber
                              .toString() ??
                              "";
                        }

                        //
                      });
                    });
              },
            ),

          ],
          child: CustomScrollBar(
            controller: recieveController,

            childs: Container(
              color: Colors.white,
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                controller: recieveController,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: 2200,
                        // padding: EdgeInsets.all(10),
                        child: customTable(

                            tableWidth: .5,
                            childrens: [
                              TableRow(
                                  children: [
                                    tableHeadtext(
                                      'Variant Id',

                                      size: 13,
                                    ),



                                    tableHeadtext(
                                      'Barcode',

                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Current Qty',

                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Return Type',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Return Time ',


                                      size: 13,


                                    ),

                                    tableHeadtext(
                                      'Invoiced',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Warranty',

                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Sales UOM',
                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Quantity',

                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Unit Cost',


                                      size: 13,
                                      // color: Palette.containerDarknew,
                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Excise Tax',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),
                                    tableHeadtext(
                                      'Discount Type',
                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Discount',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Taxable Amount',



                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'VAT',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Selling Price',



                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    // tableHeadtext(
                                    //   'Warranty Price',
                                    //
                                    //   size: 13,
                                    //   // color: Palette.containerDarknew,
                                    //   // textColor: Palette.white
                                    // ),
                                    tableHeadtext(
                                      'Total Price',
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
                              if(table1.isEmpty)...[
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

                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding(""),
                                      Container(height: 48,)

                                    ]),

                              ],

                              if (table1 != null) ...[
                                for (var i = 0; i < table1!.length; i++)
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
                                            verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                            child:
                                            table1[i].isInvoiced!=true?
                                            VariantIdTAble(
                                              text:variantId.toString(),
                                              onTap: (){
                                                showDailogPopUp(
                                                  context,
                                                  TableConfigurePopup(
                                                    inventory: Variable.inventory_ID,
                                                    type: "variantTabalePopup",
                                                    valueSelect: (VariantId? va) {
                                                      assignCheck = true;
                                                      // widget.updateCheck(true);
                                                      table1[i] = table1[i].copyWith(updatecheck: true);
                                                      setState(() {});
                                                      table1[i] = table1[i].copyWith(
                                                          variantId: va?.code);

                                                      // table1.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                                      //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                      //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                      // )]);
                                                      setState(() {
                                                        // variantId =
                                                        //     va?.code;
                                                        int? id = va!.id;
                                                        Variable.tableindex = i;
                                                        Variable.tableedit = true;

                                                        // onChange = true;
                                                        context
                                                            .read<
                                                            TableDetailsCubitDartCubit>()
                                                            .getTableDetails(id);
                                                        // context
                                                        //     .read<
                                                        //     PurchaseStockCubit>()
                                                        //     .getCurrentStock(
                                                        //     varia.text, variantId);

                                                        // orderType = va!;
                                                      });
                                                    },
                                                  ),
                                                );
                                              },
                                            )
                                            // PopUpCall(
                                            //   inventory: Variable.inventory_ID,
                                            //
                                            //   type: "cost-method-list",
                                            //   value: table1[i].variantId??"",
                                            //   onSelection: (VariantId? va) {
                                            //     assignCheck = true;
                                            //     // widget.updateCheck(true);
                                            //     table1[i] = table1[i].copyWith(updatecheck: true);
                                            //     setState(() {});
                                            //     table1[i] = table1[i].copyWith(
                                            //         variantId: va?.code);
                                            //
                                            //     // table1.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                            //     //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                            //     //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                            //     // )]);
                                            //     setState(() {
                                            //       // variantId =
                                            //       //     va?.code;
                                            //       int? id = va!.id;
                                            //       Variable.tableindex = i;
                                            //       Variable.tableedit = true;
                                            //
                                            //       // onChange = true;
                                            //       context
                                            //           .read<
                                            //           TableDetailsCubitDartCubit>()
                                            //           .getTableDetails(id);
                                            //       // context
                                            //       //     .read<
                                            //       //     PurchaseStockCubit>()
                                            //       //     .getCurrentStock(
                                            //       //     varia.text, variantId);
                                            //
                                            //       // orderType = va!;
                                            //     });
                                            //   },
                                            //   onAddNew: () {},
                                            //   // restricted: true,
                                            // )
                                                :
                                            textPadding(
                                                table1?[i].variantId ?? "",
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 1.5),
                                                fontWeight: FontWeight.w500)
                                        ),
                                        //   TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: textPadding(table1?[i].variantId??"", fontSize: 12,
                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                        //       1.5), fontWeight: FontWeight.w500),
                                        // ),

                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i].barcode ?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i].qty.toString()?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment:
                                        //       TableCellVerticalAlignment.middle,
                                        //   child: textPadding(
                                        //       table1.length !=
                                        //               widget.currenStock?.length
                                        //           ? ""
                                        //           : widget.currenStock![i]
                                        //               .toString(),
                                        //       fontSize: 12,
                                        //       padding: EdgeInsets.only(
                                        //           left: 11.5, top: 1.5),
                                        //       fontWeight: FontWeight.w500),
                                        // ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(table1?[i].runtimeType.toString()??"",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i]
                                                  .returnTime
                                                  .toString() ??
                                                  "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:
                                              table1[i].isInvoiced == null
                                                  ? false
                                                  : table1?[i].isInvoiced,
                                              onSelection: (bool? value) {}),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1[i].warrentyId ?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1[i].salesUom ?? "",
                                              fontSize: 12,
                                              // height: 42,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            initialCheck: true,
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            // controller: requestedListControllers[i],
                                            last: table1?[i]
                                                .quantity
                                                .toString() ??
                                                "",
                                            onChanged: (va) {

                                              // widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // // table[i] = table[i].copyWith(updateCheck: true);
                                              // setState(() {
                                              //
                                              // });
                                              // print(va);
                                              if (va == "") {
                                                print("entered");
                                                assignCheck = true;
                                                table1[i] = table1[i].copyWith(
                                                    quantity: 0,
                                                    taxableAmount: 0,
                                                    sellingPrice: 0,
                                                    totalPrice: 0);

                                                setState(() {});
                                              } else {
                                                var qty = int.tryParse(va);
                                                var dis =
                                                    table1?[i].discount ?? 0;
                                                var excess =
                                                    table1?[i].excessTax ?? 0;
                                                var unitcost =
                                                    table1?[i].unitCost ?? 0;
                                                var vat = table1?[i].vat ?? 0;


                                                if (qty == 0 ||
                                                    unitcost == 0 ||
                                                    unitcost == "") {
                                                  table1[i] = table1[i]
                                                      .copyWith(
                                                      taxableAmount: 0,
                                                      sellingPrice: 0,
                                                      totalPrice: 0);
                                                } else {
                                                  var taxableAmount;
                                                  var sellingPrice;
                                                  var total;
                                                  //
                                                  taxableAmount =
                                                      taxableUpdateMethod(qty!, unitcost, excess, dis, table1[i].discountType);
                                                  sellingPrice =
                                                      sellingPriceUpdation(
                                                          taxableAmount, vat);
                                                  total = totalPriceUpdation(
                                                      sellingPrice,
                                                      table1[i].warrentyPrice ??
                                                          0);

                                                  table1[i] = table1[i]
                                                      .copyWith(
                                                      totalPrice: total,
                                                      taxableAmount:
                                                      taxableAmount,
                                                      sellingPrice:
                                                      sellingPrice,
                                                      quantity: qty);
                                                }
                                              }

                                              setState(() {});
                                            },
                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            initialCheck: true,
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            //controller: unitcostListControllers[i],
                                            last: table1?[i]
                                                .unitCost
                                                .toString() ??
                                                "",
                                            onChanged: (va) {
                                              // widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // table1[i] = table[i].copyWith(updateCheck: true);
                                              // setState(() {
                                              //
                                              // });
                                              double? unitcost;
                                              if (va == "") {
                                                print("entered");
                                                unitcost = 0;
                                                print("disc" +
                                                    unitcost.toString());
                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount: 0,
                                                    unitCost: 0,
                                                    sellingPrice: 0,
                                                    totalPrice: 0);
                                                setState(() {});
                                              }
                                              unitcost = double.tryParse(va);
                                              var qty = table1[i].quantity ?? 0;
                                              var excess =
                                                  table1[i].excessTax ?? 0;
                                              var disc =
                                                  table1[i].discount ?? 0;
                                              var vat = table1[i].vat ?? 0;
                                              if (qty == 0 ||
                                                  qty == null ||
                                                  unitcost == 0) {
                                                print("checking case");

                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount: 0,
                                                    sellingPrice: 0,
                                                    totalPrice: 0,
                                                    unitCost: 0);
                                                setState(() {});
                                              } else {
                                                var taxableAmounts =
                                                taxableUpdateMethod(
                                                    qty,
                                                    unitcost!,
                                                    excess,
                                                    disc,
                                                    table1[i].discountType);
                                                print("taxableAmounts" +
                                                    taxableAmounts.toString());

                                                var sellingPrice =
                                                sellingPriceUpdation(
                                                    taxableAmounts, vat);
                                                var totalPrice =
                                                totalPriceUpdation(
                                                    sellingPrice,
                                                    table1[i]
                                                        .warrentyPrice ??
                                                        0);

                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount:
                                                    taxableAmounts,
                                                    sellingPrice: sellingPrice,
                                                    totalPrice: totalPrice,
                                                    unitCost: unitcost);
                                                setState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            initialCheck: true,
                                            readOnly: table1[i].isInvoiced==true?true:false,

                                            // controller: excesstListControllers[i],
                                            last: table1?[i]
                                                .excessTax
                                                .toString() ??
                                                "",
                                            onChanged: (va) {
                                              // widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {});
                                              double? excess;
                                              if (va == "") {
                                                excess = 0;
                                                setState(() {});
                                              } else {
                                                excess = double.tryParse(va);
                                                setState(() {});
                                              }
                                              var qty = table1[i].quantity ?? 0;
                                              var vat = table1[i].vat ?? 0;
                                              var unitcost =
                                                  table1[i].unitCost ?? 0;
                                              var Vdiscount =
                                                  table1[i].discount ?? 0;
                                              if (qty == 0 || unitcost == 0) {
                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount: 0,
                                                    sellingPrice: 0,
                                                    totalPrice: 0,
                                                    excessTax: excess);
                                                setState(() {});
                                              } else {
                                                var taxableAmount =
                                                taxableUpdateMethod(
                                                    qty,
                                                    unitcost,
                                                    excess!,
                                                    Vdiscount,
                                                    table1[i].discountType);

                                                var sellingPrice =
                                                sellingPriceUpdation(
                                                    taxableAmount, vat);
                                                var totalprice =
                                                totalPriceUpdation(
                                                    sellingPrice,
                                                    table1[i]
                                                        .warrentyPrice ??
                                                        0);

                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount:
                                                    taxableAmount,
                                                    sellingPrice: sellingPrice,
                                                    totalPrice: totalprice,
                                                    excessTax: excess);
                                                setState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child:
                                          table1[i].isInvoiced!=true?PopUpCall(
                                            apiType: "1",
                                            type: "PriceTypePopUpCall",
                                            value: table1[i].discountType??"",
                                            onSelection: (String va) {
                                              print("+++++++++++++++++++++++");

                                              setState(() {
                                                table1[i] = table1[i].copyWith(updatecheck: true);
                                                table1[i] = table1[i]
                                                    .copyWith(discountType: va);
                                                // widget.updateCheck(true);
                                                var qty = table1[i].quantity ?? 0;
                                                var unitcost =
                                                    table1[i].unitCost ?? 0;
                                                var excess =
                                                    table1[i].excessTax ?? 0;
                                                var discounts =
                                                    table1[i].discount ?? 0;
                                                var disc =
                                                    table1[i].discount ?? 0;
                                                var vat = table1[i].vat ?? 0;
                                                if (unitcost == 0 || qty == 0) {
                                                  table1[i] = table1[i].copyWith(
                                                      taxableAmount: 0,
                                                      sellingPrice: 0,
                                                      totalPrice: 0);
                                                } else {
                                                  if (qty == 0 || unitcost == 0) {
                                                    table1[i] =
                                                        table1[i].copyWith(
                                                          taxableAmount: 0,
                                                          sellingPrice: 0,
                                                          totalPrice: 0,
                                                        );
                                                    setState(() {});
                                                  } else {
                                                    var taxableAmount =
                                                    taxableUpdateMethod(
                                                        qty,
                                                        unitcost,
                                                        excess,
                                                        discounts,
                                                        table1[i]
                                                            .discountType);
                                                    var sellingPrice =
                                                    sellingPriceUpdation(
                                                        taxableAmount, vat);
                                                    var totalPrice =
                                                    totalPriceUpdation(
                                                        sellingPrice,
                                                        table1[i]
                                                            .warrentyPrice ??
                                                            0);
                                                    table1[i] =
                                                        table1[i].copyWith(
                                                          taxableAmount:
                                                          taxableAmount,
                                                          sellingPrice: sellingPrice,
                                                          totalPrice: totalPrice,
                                                        );
                                                    setState(() {});
                                                  }
                                                }

                                                // onChange = true;
                                                // orderType = va!;
                                              });
                                            },
                                          ):textPadding(
                                              table1[i].discountType ?? "",
                                              fontSize: 12,
                                              // height: 42,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            initialCheck: true,
                                            last:
                                            table1?[i].discount.toString() ??
                                                "",
                                            onChanged: (va) {
                                              // widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {});
                                              var disc;
                                              if (va == "") {
                                                disc = 0;
                                                setState(() {});
                                              } else {
                                                disc = double.tryParse(va);
                                                setState(() {});
                                              }
                                              var qty = table1[i].quantity ?? 0;
                                              var vat = table1[i].vat ?? 0;
                                              var unitcost =
                                                  table1[i].unitCost ?? 0;
                                              var excess =
                                                  table1[i].excessTax ?? 0;

                                              if (qty == 0 || unitcost == 0) {
                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount: 0,
                                                    sellingPrice: 0,
                                                    totalPrice: 0,
                                                    discount: disc);
                                                setState(() {});
                                              } else {
                                                var taxableAmount =
                                                taxableUpdateMethod(
                                                    qty,
                                                    unitcost,
                                                    excess!,
                                                    disc,
                                                    table1[i].discountType);

                                                var sellingPrice =
                                                sellingPriceUpdation(
                                                    taxableAmount, vat);
                                                var totalprice =
                                                totalPriceUpdation(
                                                    sellingPrice,
                                                    table1[i]
                                                        .warrentyPrice ??
                                                        0);

                                                table1[i] = table1[i].copyWith(
                                                    taxableAmount:
                                                    taxableAmount,
                                                    sellingPrice: sellingPrice,
                                                    totalPrice: totalprice,
                                                    discount: disc);
                                                setState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i]
                                                  .taxableAmount
                                                  .toString() ??
                                                  "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i].vat.toString() ?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i]
                                                  .sellingPrice
                                                  .toString() ??
                                                  "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment:
                                        //   TableCellVerticalAlignment.middle,
                                        //   child: textPadding(
                                        //       table1?[i]
                                        //           .warrentyPrice
                                        //           .toString() ??
                                        //           "",
                                        //       fontSize: 12,
                                        //       padding: EdgeInsets.only(
                                        //           left: 11.5, top: 1.5),
                                        //       fontWeight: FontWeight.w500),
                                        // ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i]
                                                  .totalPrice
                                                  .toString() ??
                                                  "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:
                                              table1?[i].isActive == null
                                                  ? false
                                                  : table1?[i].isActive,
                                              onSelection: (bool? value) {
                                                if( table1[i].isInvoiced!=true) {
                                                  bool? isActive =
                                                      table1[i].isActive;
                                                  setState(() {
                                                    // widget.updateCheck(true);
                                                    table1[i] =
                                                        table1[i].copyWith(
                                                            updatecheck: true);
                                                    // table1[i] = table1[i].copyWith(updateCheck: true);
                                                    setState(() {});
                                                    isActive = !isActive!;
                                                    table1[i] = table1[i]
                                                        .copyWith(
                                                        isActive: isActive);
                                                  });
                                                } }),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            onPress: () {
                                              widget.updation(table1);
                                              table1[i].copyWith(updatecheck: false);
                                            },
                                            label: "update",
                                          ),
                                        )
                                      ]),

                              ]
                            ]),
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