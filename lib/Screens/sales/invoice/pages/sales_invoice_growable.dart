import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/sales/invoice/cubits/read/invoiceread_cubit.dart';
import 'package:inventory/Screens/sales/invoice/model/invoice_read.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SalesInvoiceGrowableTable extends StatefulWidget {
  List<OrderLinesInvoice> table;
  final Function updation;
  final Function updateCheck;
  // final Function updation;
  SalesInvoiceGrowableTable({required Key key,required this.table,required this.updation,required this.updateCheck});

  @override
  SalesInvoiceGrowableTableState createState() => SalesInvoiceGrowableTableState();
}

class SalesInvoiceGrowableTableState extends State<SalesInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  bool editionchek=false;
  var unitcostListControllers = <TextEditingController>[];
  valueAddingTextEdingController(){
    unitcostListControllers.clear();

    if(table1.isNotEmpty){
      print("checking case");
      for(var i=0;i<table1.length;i++){
        var unitcost = new TextEditingController(text: table1[i].quantity.toString()??"");
        unitcostListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }
  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts =double.parse (((((reqQty * unitCst) + exTaxx) - disct)).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = double.parse(((reqQty * unitCst) + exTaxx).toStringAsFixed(2));
      taxableAmounts = double.parse((total - ((total * disct) / 100)).toStringAsFixed(2));
    }
    return taxableAmounts;
  }
  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
    return sellingPrice1;
  }
  double totalPriceUpdation(double sellingprice, double warrentyprice) {
    double totalPrice1;
    totalPrice1 = sellingprice + warrentyprice;
    setState(() {});
    return totalPrice1;
  }
  List<OrderLinesInvoice> table1=[];
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


    return
      BlocListener<InvoicereadCubit, InvoicereadState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                print("algorithm" + data.toString());
                if(data.invoicedData!=null)
                {
                  print(data?.invoicedData?.lines.toString());
                  table1 = [];
                  data.invoicedData?.lines != null
                      ? table1 =List.from(  data.invoicedData?.lines ?? [])
                      : table1 = [];
                  valueAddingTextEdingController();
                }
                else{
                  table1 = [];
                  print(  data.lines.toString());
                  data.lines != null ? table1 = List.from( data.lines ?? []) : table1 = [];
                  valueAddingTextEdingController();
                }


                setState(() {});
              });
          // TODO: implement listener
        },
        child: Builder(
            builder: (context) {
              return CustomScrollBar(
                controller: recieveController,

                childs: Container(
                  color: Colors.white,
                  alignment: Alignment.topRight,
                  child:
                  SingleChildScrollView(
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
                            // padding: EdgeInsets.all(10),
                            child: customTable(



                                tableWidth: .5,

                                childrens:[
                                  TableRow(
                                      children: [

                                        tableHeadtext('Variant Id',  size: 13,),
                                        tableHeadtext('Barcode',  size: 13,
                                        ),
                                        tableHeadtext('Sales Order Line Code', size: 13,
                                        ),

                                        tableHeadtext('Return Based On', size: 13,),
                                        tableHeadtext(
                                          'Return time ',

                                          size: 13,


                                        ),

                                        tableHeadtext(

                                          ' Is Invoiced',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Sales UOM',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

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

                                          'Excess Tax',


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
                                        tableHeadtext(
                                          'Warranty Price',

                                          size: 13,
                                          // color: Palette.containerDarknew,
                                          // textColor: Palette.white
                                        ),



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
                                  if (table1 != null)...[
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
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1?[i].variantId??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),    TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1?[i].barcode??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),    TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1[i].salesOrderLineCode??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),    TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1[i].returnType??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),    TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1[i].returnTime.toString()??""??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),

                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: CheckedBoxs(
                                                  valueChanger:table1[i].isInvoiced??false,

                                                  onSelection:(bool ? value){
                                                    editionchek=true;
                                                    widget.updateCheck(true);
                                                    table1[i] = table1[i].copyWith(updatecheck: true);
                                                    bool isinvoiced =table1[i].isInvoiced??false;
                                                    setState(() {
                                                      isinvoiced = !isinvoiced!;
                                                      table1[i] = table1[i].copyWith(isInvoiced: isinvoiced);
                                                      setState(() {});
                                                    });
                                                  }),
                                            ),   TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(table1[i].salesUom??"", fontSize: 12,
                                                  padding: EdgeInsets.only(left: 11.5, top:
                                                  1.5), fontWeight: FontWeight.w500),
                                            ),

                                            TableCell(
                                              verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                // initialCheck:true,
                                                controller: unitcostListControllers[i],
                                                // last: table1[i]?.totalQuantity
                                                //     .toString() ??
                                                //     "",
                                                onChanged: (va) {
                                                  widget.updateCheck(true);
                                                  table1[i] = table1[i].copyWith(updatecheck: true);
                                                  // table[i] = table[i].copyWith(updateCheck: true);
                                                  // setState(() {
                                                  //
                                                  // });
                                                  // print(va);
                                                  if (va == "") {
                                                    print("entered");
                                                    // assignCheck = true;
                                                    table1[i] = table1[i].copyWith(
                                                        quantity: 0,
                                                        taxableAmount: 0,
                                                        sellingPriceTotal: 0,
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
                                                          sellingPriceTotal: 0,
                                                          totalPrice: 0);
                                                    } else {
                                                      var taxableAmount;
                                                      var sellingPrice;
                                                      var total;
                                                      //
                                                      taxableAmount =
                                                          taxableUpdateMethod(
                                                              qty!,
                                                              unitcost,
                                                              excess,
                                                              dis,
                                                              table1[i]
                                                                  .discountType);
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
                                                          sellingPriceTotal:
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
                                                //controller: unitcostListControllers[i],
                                                last: table1?[i]
                                                    .unitCost
                                                    .toString() ??
                                                    "",
                                                onChanged: (va) {
                                                  widget.updateCheck(true);
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
                                                        sellingPriceTotal: 0,
                                                        totalPrice: 0);
                                                    setState(() {});
                                                  }
                                                  unitcost = double.tryParse(va);
                                                  var qty = table1[i].totalQuantity ?? 0;
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
                                                        sellingPriceTotal: 0,
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
                                                        sellingPriceTotal: sellingPrice,
                                                        totalPrice: totalPrice,
                                                        unitCost: unitcost);
                                                    setState(() {});
                                                  }
                                                },
                                              ),
                                            ),
                                            PopUpCall(
                                              type: "PriceTypePopUpCall",
                                              value: table1[i].discountType??"price",
                                              onSelection: (String va) {
                                                print("+++++++++++++++++++++++");

                                                setState(() {
                                                  table1[i] = table1[i].copyWith(updatecheck: true);
                                                  table1[i] = table1[i]
                                                      .copyWith(discountType: va);
                                                  widget.updateCheck(true);
                                                  var qty = table1[i].totalQuantity ?? 0;
                                                  var unitcost =
                                                      table1[i].unitCost ?? 0;
                                                  var excess =
                                                      table1[i].excessTax ?? 0;
                                                  var discounts =
                                                      table1[i].discount ?? 0;
                                                  var disc =
                                                      table1[i].discount ?? 0;
                                                  var vat = table1[i].vat ?? 0;
                                                  print(unitcost);
                                                  print(qty);
                                                  if (unitcost == 0 || qty == 0) {
                                                    print("0th case");
                                                    table1[i] = table1[i].copyWith(
                                                        taxableAmount: 0,
                                                        sellingPriceTotal: 0,
                                                        totalPrice: 0);
                                                  } else {
                                                    if (qty == 0 || unitcost == 0) {
                                                      print("0th case222");
                                                      table1[i] =
                                                          table1[i].copyWith(
                                                            taxableAmount: 0,
                                                            sellingPriceTotal: 0,
                                                            totalPrice: 0,
                                                          );
                                                      setState(() {});
                                                    } else {
                                                      print("orginal case");
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
                                                            sellingPriceTotal: sellingPrice,
                                                            totalPrice: totalPrice,
                                                          );
                                                      setState(() {});
                                                    }
                                                  }

                                                  // onChange = true;
                                                  // orderType = va!;
                                                });
                                              },
                                            ),
                                            TableCell(
                                              verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                initialCheck: true,
                                                last:
                                                table1?[i].discount.toString()
                                                ,
                                                onChanged: (va) {
                                                  widget.updateCheck(true);
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
                                                        sellingPriceTotal: 0,
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
                                                        sellingPriceTotal: sellingPrice,
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
                                              child: UnderLinedInput(
                                                initialCheck: true,

                                                // controller: excesstListControllers[i],
                                                last: table1?[i]
                                                    .excessTax
                                                    .toString() ??
                                                    "",
                                                onChanged: (va) {
                                                  widget.updateCheck(true);
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
                                                        sellingPriceTotal: 0,
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
                                                        sellingPriceTotal: sellingPrice,
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
                                                      .sellingPriceTotal
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
                                                  table1?[i]
                                                      .warrentyPrice
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
                                                    bool? isActive =
                                                        table1[i].isActive;
                                                    setState(() {
                                                      widget.updateCheck(true);
                                                      table1[i] = table1[i].copyWith(updatecheck: true);
                                                      // table1[i] = table1[i].copyWith(updateCheck: true);
                                                      setState(() {});
                                                      isActive = !isActive!;
                                                      table1[i] = table1[i]
                                                          .copyWith(
                                                          isActive: isActive);
                                                    });
                                                  }),
                                            ),
                                            TableCell(
                                              verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                              child: TableTextButton(
                                                onPress: () {
                                                  widget.updateCheck(false);
                                                  table1[i]= table1[i].copyWith(updatecheck: false);
                                                  widget.updation(table1);

                                                },
                                                label: table1[i].updatecheck==true?"UPDATE":"",
                                              ),
                                            )


                                          ]
                                      )
                                  ],

                                  if(table1.isEmpty==true)
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
                                          Container(height: 50,)


                                        ])


                                ]

                            ),
                          ),

                        ),
                        SizedBox(height: 20,),

                      ],
                    ),

                  ),

                ),
              );
            }
        ),
      );
  }
}