import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalread_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
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

class PurchasReturnGeneralGrowableTable extends StatefulWidget {
  bool select;
  final Function updation;
  final Function updateCheck;
  PurchasReturnGeneralGrowableTable(
      { required Key key,

        required this.updation,
        required this.select,
        required this.updateCheck,
        }): super(key: key);

  @override
  PurchasReturnGeneralGrowableTableState createState() =>
      PurchasReturnGeneralGrowableTableState();
}

class PurchasReturnGeneralGrowableTableState extends State<PurchasReturnGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<Liness>lines=List.from([]);


  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];

  TextEditingController unicostController = TextEditingController();
  var unitcostListControllers = <TextEditingController>[];


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


  double actualAndgrandTotalUpdation(double? vatableAmount,double? vat){
    double actualCost=0;
    actualCost = double.parse((vatableAmount! +
        ((vatableAmount *
            vat!) /
            100)).toStringAsFixed(2));
    return actualCost;

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
    // if(widget.select){
    //   table1=[];
    //   clears();
    //
    // }
    // widget.select=false;


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
            BlocListener<GeneralreadCubit, GeneralreadState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("data" + data.toString());
                      // setState(() {
                      //   print("taskssss");
                      data.lines != null ? lines =List.from( data?.lines ?? []) : lines = [];
                      _getCurrentUser();




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
                      child: Container(
                        width: 2200,
                        // padding: EdgeInsets.all(10),
                        child: customTable(



                            tableWidth: .5,

                            childrens:[
                              TableRow(

                                // decoration: BoxDecoration(

                                //     color: Colors.green.shade200,

                                //     shape: BoxShape.rectangle,

                                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                  children: [

                                    tableHeadtext(

                                      'Sl.No',
                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white,

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
                                      'Barcode',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Current Qty',
                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Purchase UOM',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Qty',
                                      size: 13,

                                    ),

                                    tableHeadtext(
                                      'Unit cost',
                                      size: 13,


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

                                      'Vatable Amount',


                                      size: 13,

                                    ),
                                    tableHeadtext(
                                      'Excess Tax',

                                      size: 13,
                                    ),
                                    tableHeadtext(

                                      'VAT',


                                      size: 13,


                                    ),



                                    tableHeadtext(

                                      'Actual Cost',


                                      size: 13,


                                    ),

                                    tableHeadtext(

                                      'Grand Total',


                                      size: 13,


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

                                      'Is Active',


                                      size: 13,


                                    ),

                                    tableHeadtext(
                                      '',

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
                                      textPadding(""),
                                      textPadding(""),
                                      textPadding("",height: 49),

                                    ]
                                )


                              ],
                              if (lines != null)...[
                                for (var i = 0; i < lines.length; i++)
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
                                              // fontSize: 12,
                                              // padding: EdgeInsets.only(left: 11.5, top:
                                              // 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].variantId??"",
                                              // fontSize: 12,
                                              // padding: EdgeInsets.only(left: 11.5, top:
                                              // 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].variantName??"",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].barcode??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(currentStock.length!=lines.length?"": currentStock[i].toString(),
                                              padding: EdgeInsets.only(left: 11.5, top: 11.5), fontWeight: FontWeight.w500),
                                        ),   TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].purchaseUom??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            initialCheck:true,
                                            integerOnly: true,
                                            readOnly:lines[i].isInvoiced==true?true:false ,

                                            // controller: requestedListControllers[i],
                                            last: lines?[i].totalQty.toString()??"",
                                            onChanged: (va) {

                                              lines[i]=lines[i].copyWith(upDateCheck: true);
                                              print(va);
                                              if (va == "") {
                                                print("entered");
                                                lines[i] = lines[i].copyWith(totalQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                              } else {
                                                var qty = int.tryParse(va);
                                                var dis = lines[i].discount;
                                                var excess = lines[i].excessTax;
                                                var unitcost = lines[i].unitCost;
                                                var vat = lines[i].vat;
                                                var foc = lines[i].foc;
                                                if (qty == 0 || unitcost == 0 ||unitcost=="") {
                                                  lines[i] = lines[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                }else {
                                                  var Vamount;
                                                  var vactualCost;

                                                  Vamount  =vatableAmountUpdation(unitcost,qty,excess,dis);
                                                  // (((unitcost! *
                                                  // qty!) +
                                                  // excess!) -
                                                  // // dis!)
                                                  // .toDouble();
                                                  if(vat==0 ||vat==""){
                                                    vactualCost=Vamount;
                                                  }
                                                  else{
                                                    vactualCost  =actualAndgrandTotalUpdation(Vamount,vat);
                                                    // (Vamount! +
                                                    //     ((Vamount! *
                                                    //         vat!) /
                                                    //         100));
                                                  }


                                                  lines[i] =
                                                      lines[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          totalQty: qty);
                                                }



                                              }

                                              setState(() {});
                                            },
                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].unitCost.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(

                                              lines?[i].discount.toString()??"", fontSize: 12,

                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].foc.toString()??"",
                                              // fontSize: 12,
                                              // padding: EdgeInsets.only(left: 11.5, top:
                                              // 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].vatableAmount.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].excessTax.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].vat.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].actualCost.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),    TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(lines?[i].grandTotal.toString()??"", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:lines![i]
                                                  .isInvoiced==null?false:lines![i]
                                                  .isInvoiced,

                                              onSelection:(bool ? value){


                                              }),
                                        ),                TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:lines![i]
                                                  .isFree==null?false:lines![i]
                                                  .isFree,

                                              onSelection:(bool ? value){

                                              }),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: textPadding("", fontSize: 12,
                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                        //       1.5), fontWeight: FontWeight.w500),
                                        // ),
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: textPadding("", fontSize: 12,
                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                        //       1.5), fontWeight: FontWeight.w500),
                                        // ),
                                        //
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:lines?[i].isActive==null?false:lines?[i].isActive,

                                              onSelection:(bool ? value){
                                                if(lines[i].isInvoiced!=true){


                                                  lines[i]=lines[i].copyWith(upDateCheck: true);
                                                  bool? isActive = lines?[i].isActive??false;
                                                  setState(() {

                                                    isActive = !isActive!;
                                                    print(isActive);
                                                    // widget.updation(i,isActive);
                                                    lines[i] = lines[i].copyWith(isActive: isActive);


                                                    setState(() {});
                                                  });
                                                }
                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            label:lines[i].upDateCheck==true? "update":"",
                                            onPress: (){

                                              lines[i]=lines[i].copyWith(upDateCheck: false);
                                            widget.  updateCheck();
                                              setState(() {

                                              });


                                            },
                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding("", fontSize: 12,
                                              padding: EdgeInsets.only(left: 11.5, top:
                                              1.5), fontWeight: FontWeight.w500),
                                        ),
                                      ]
                                  )
                              ]
                            ]
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