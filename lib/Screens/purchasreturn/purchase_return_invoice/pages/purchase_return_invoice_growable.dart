import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalread_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/invoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
import 'package:inventory/Screens/sales/general/cubit/generalread/salesgeneralread_cubit.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';
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
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PurchasReturnInvoiceGrowableTable extends StatefulWidget {

  final Function updation;
  final Function updateCheck;
  PurchasReturnInvoiceGrowableTable(
      { required Key key,

        required this.updation,

        required this.updateCheck,
      }): super(key: key);

  @override
  PurchasReturnInvoiceGrowableTableState createState() =>
      PurchasReturnInvoiceGrowableTableState();
}

class PurchasReturnInvoiceGrowableTableState extends State<PurchasReturnInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<Order>lines=List.from([]);


  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
  List<List<FocusNode>> listOfxfocusNodes = [];
  TextEditingController unicostController = TextEditingController();
  var unitcostListControllers = <TextEditingController>[];
  int selctedraw=-1;

  focusNodeAddingFunction(){
    unitcostListControllers.clear();

    if(lines.isNotEmpty){
      print("checking case");
      for(var i=0;i<lines.length;i++){
        listOfxfocusNodes.add(List.generate(1, (index) => FocusNode()));


      }
    }
  }
  Future _getCurrentUser() async {
    if (lines.isNotEmpty) {
      for (var i = 0; i < lines.length; i++) {
        print("variantaaaaaa" + lines[i].variantId.toString());

        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, lines[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  double vatableAmountUpdation(double? unitCost,int? qty,double? excessTax,double? discount){
    double vatableAmountupdation=0;
    vatableAmountupdation =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
    return vatableAmountupdation;


  }
  void changeSelectedRow(int direction) {
    setState(() {


      // Adjust the selected row based on the arrow key direction
      selctedraw = (selctedraw + direction).clamp(0, lines.length - 1);
      if(selctedraw!=-1)
      FocusScope.of(context).requestFocus(listOfxfocusNodes[selctedraw][0]);


      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }

  double actualAndgrandTotalUpdation(double? vatableAmount,double? vat){
    double actualCost=0;
    actualCost = double.parse((vatableAmount! +
        ((vatableAmount *
            vat!) /
            100)).toStringAsFixed(2));
    return actualCost;

  }
  bool updateCheckFunc(){
    var isUpdate=lines.where((element) => element.updateCheck==true);
    if(isUpdate.isNotEmpty){
      return true;
    }
    else
      return false;
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



    // clear=
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



                      // }


                    });
              },
            ),
            BlocListener<InvoiceReadCubit, InvoiceReadState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        if (data.invoicedata!=null) {
                          data.invoicedata?.orderLiness != null
                              ? lines =List.from( data.invoicedata?.orderLiness ?? [])
                              : lines =List.from( []);
                          focusNodeAddingFunction();

                        } else {
                          data?.orderLiness != null
                              ? lines =List.from( data?.orderLiness ?? [])
                              : lines = List.from([]);
                          focusNodeAddingFunction();
                          setState(() {

                          });
                        }

                      });
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
                controller: recieveController,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
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
                                      'Sl.No',

                                      size: 13,

                                    ),
                                    tableHeadtext(
                                      'Return Order line Id',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Variant Id',

                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Variant Name',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    // tableHeadtext('description', size: 10, color: null),

                                    tableHeadtext(
                                      'Barcode',

                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Purchase UOM',
                                      size: 13,

                                    ),
                                    tableHeadtext(
                                      ' Qty',
                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Unit Cost',

                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Excess tax',


                                      size: 13,
                                      // color: Palette.containerDarknew,
                                      // textColor: Palette.white
                                    ),
                                    tableHeadtext(
                                      'Discount',
                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'FOC',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Variable Amount',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'VAT',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Actual cost',
                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Grand Total',

                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Is Invoiced',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Is Free',

                                      size: 13,
                                      // color: Palette.containerDarknew,
                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      '',

                                      size: 13,
                                    ),

                                    // if (widget.onAddNew) textPadding(''),
                                  ]),

                              if(lines.isEmpty)...[
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

                                      textPadding("",height: 55),

                                    ]
                                )


                              ],

                              if (lines != null) ...[
                                for (var i = 0;
                                i < lines!.length;
                                i++)
                                  TableRow(
                                      decoration: BoxDecoration(
                                          color:selctedraw==i?Pellet.selectedTableColor: Pellet.tableRowColor,
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
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              (i + 1)
                                                  .toString(),
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].returnOrderLineCode ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].variantId ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].variantName ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].barcode ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].purchaseUom ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i].requestedQty.toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),



                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .unitCost
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .excessTax
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,


                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .discount
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,


                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .foc
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .vatableAmount
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .vat
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .actualCost
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: textPadding(
                                              lines?[i]
                                                  .grandTotal
                                                  .toString() ??
                                                  "",
                                              fontSize:
                                              12,

                                              fontWeight:
                                              FontWeight
                                                  .w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(focusNode: listOfxfocusNodes[i][0],
                                              onCompleteFunc: (){
                                                widget.updateCheck(true);
                                                lines[i]=lines[i].copyWith(updateCheck: true);
                                                bool? isInvoiced = lines?[i].isInvoiced??false;
                                                setState(() {
                                                  isInvoiced = !isInvoiced!;
                                                  lines?[i] = lines![i].copyWith(isInvoiced: isInvoiced);
                                                  upDateFunction(i);
                                                  if(i!=lines.length-1){
                                                    FocusScope.of(context).requestFocus(listOfxfocusNodes[i+1][0]);
                                                  }

                                                  setState(() {});
                                                });
                                              },
                                              valueChanger:lines![i]
                                                  .isInvoiced==null?false:lines![i]
                                                  .isInvoiced,

                                              onSelection:(bool ? value){
                                                widget.updateCheck(true);
                                                lines[i]=lines[i].copyWith(updateCheck: true);
                                                bool? isInvoiced = lines?[i].isInvoiced??false;
                                                setState(() {
                                                  isInvoiced = !isInvoiced!;
                                                  lines?[i] = lines![i].copyWith(isInvoiced: isInvoiced);
                                                  setState(() {});
                                                });

                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: CheckedBoxs(
                                              valueChanger: lines![i].isFree ==
                                                  null
                                                  ? false
                                                  : lines![i]
                                                  .isFree,
                                              onSelection:
                                                  (bool?
                                              value) {}),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment
                                              .middle,
                                          child: TableTextButton(
                                            textColor:  lines?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
                                            bagroundColor: lines?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                            label:lines[i].updateCheck==true? "UPDATE":"",
                                            onPress: (){

                                              lines[i]=lines[i].copyWith(updateCheck: false);
                                              var update=updateCheckFunc();
                                              widget.updateCheck(update);
                                             widget.updation( lines);
                                              setState(() {

                                              });


                                            },
                                          ),
                                        ),
                                      ])
                              ],

                            ],
                          widths: {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(4),
                            2: FlexColumnWidth(4),
                            3: FlexColumnWidth(7),
                            4: FlexColumnWidth(4),
                            5: FlexColumnWidth(4),
                            6: FlexColumnWidth(2),
                            7: FlexColumnWidth(2),
                            8: FlexColumnWidth(2),
                            9: FlexColumnWidth(2),
                            10: FlexColumnWidth(2),
                            11: FlexColumnWidth(3),
                            12: FlexColumnWidth(2),
                            13: FlexColumnWidth(3),
                            14: FlexColumnWidth(3),
                            15: FlexColumnWidth(3),
                            16: FlexColumnWidth(3),
                            17: FlexColumnWidth(3),
                            18: FlexColumnWidth(2),
                            19: FlexColumnWidth(2),
                            20: FlexColumnWidth(3),
                            // 21: FlexColumnWidth(3),

                          },),
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
  upDateFunction(int i){
    lines[i]=lines[i].copyWith(updateCheck: false);
    var update=updateCheckFunc();
    widget.updateCheck(update);
    widget.updation( lines);
    setState(() {

    });
  }
}