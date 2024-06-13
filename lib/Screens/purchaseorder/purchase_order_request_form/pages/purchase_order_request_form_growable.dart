
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PurchaseOrderRequestFormGrowableTable extends StatefulWidget {
  bool select;
  final Function updation;
  final Function updateCheck;
  PurchaseOrderRequestFormGrowableTable(
      { required Key key,
        required this.updation,
        required this.select,
        required this.updateCheck,
       }): super(key: key);

  @override
  PurchaseOrderRequestFormGrowableTableState createState() =>
      PurchaseOrderRequestFormGrowableTableState();
}

class PurchaseOrderRequestFormGrowableTableState extends State<PurchaseOrderRequestFormGrowableTable> {
  late AutoScrollController scontroller;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<OrderLines> table =List.from( []);

  int? stock = 0;
  int? stockId ;
  bool stockCheck=false;

  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
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
  double?discount=0;
  int? recievedQty=0;
  int? minQty=0;

  int? maxQty=0;
  TextEditingController receivedTestContoller = TextEditingController();
  TextEditingController minOrderTestContoller = TextEditingController();
  TextEditingController maxOrderTestContoller = TextEditingController();
  TextEditingController discountTestContoller = TextEditingController();
  TextEditingController focTestContoller = TextEditingController();
  TextEditingController unitCostTestContoller = TextEditingController();
  TextEditingController excesstaxTestContoller = TextEditingController();
  TextEditingController vatTestContoller = TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();
  List<List<FocusNode>> listOfxfocusNodes = [];
  int selctedraw=-1;
  var unitcostListControllers = <TextEditingController>[];
  List<FocusNode>focusNodeList=List.generate(7, (index) => FocusNode());
  vatableAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount){
    vatableAmount1 =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
  }

  void changeSelectedRow(int direction) {
    print("woooooooooooooooo");
    setState(() {


        // Adjust the selected row based on the arrow key direction
        selctedraw = (selctedraw + direction).clamp(0, table.length - 1);
        if(selctedraw!=-1)
          FocusScope.of(context).requestFocus(listOfxfocusNodes[selctedraw][0]);

  // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }
  double vatableAmountUpdation(double? unitCost,int? qty,double? excessTax,double? discount){
    print("vatable updationsssssssssss");
    print(unitCost);
    print(qty);
    print(excessTax);
    print(unitCost);
    print(unitCost);
    double vatableAmountupdation=0;
    vatableAmountupdation =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
    return vatableAmountupdation;


  }
  double actualAndgrandTotalUpdation(double? vatableAmount,double? vat){
    double actualCost=0;
    print("grand updationsssssssssss");
    print(vatableAmount);
    print(vat);
    if(vat==null || vat==0){
      actualCost=vatableAmount??0;
    }
    else{
      actualCost = double.parse((vatableAmount! +
          ((vatableAmount *
              vat!) /
              100)).toStringAsFixed(2));
    }

    return actualCost;

  }
  actualAndgrandTotal(double? vatableAmount,double? vat){
    if(vat==0 ||vat==null){
      grandTotal1=actualCost1=vatableAmount;
    }else {
      actualCost1 = double.parse((vatableAmount! +
          ((vatableAmount *
              vat!) /
              100)).toStringAsFixed(2));
      grandTotal1 = actualCost1;
    }

  }
  bool updateCheckFunc(){
    var isUpdate=table.where((element) => element.updateCheck==true);
    if(isUpdate.isNotEmpty){
      return true;
    }
    else
      return false;
  }

  clearTableAddingVariables(){
    setState(() {
table.clear();
    variantId="";
    varinatname="";
    stockCheck=false;
    barcode="";
    purchaseUomName="";
    receivedTestContoller.clear();
    recievedQty=0;
    vatableAmount1=0;
    grandTotal1=0;
unitcostListControllers.clear();
    actualCost1=0;
    minOrderTestContoller.clear();
    minQty=0;
    maxQty=0;
    maxOrderTestContoller.clear();
    isReceived1=false;
    unitCostCheck.clear();unitcost=0;
    excesstaxTestContoller.clear();
    excess1=0;
    discountTestContoller.clear();
    discount=0;
    foc1=0;
    focTestContoller.clear();
    actualCost1=0;
    grandTotal1=0;
    stock=0;
    stockId=0;
    vat1 = 0;
    isInvoiced1=false;
    currentStock.clear();
    isActive1 = false;
    assignCheck=true;
    });

  }
  Future _getCurrentUser() async {
    if (table.isNotEmpty) {
      for (var i = 0; i < table.length; i++) {
        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, table[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  valueAddingTextEdingController(){
    if(table.isNotEmpty){
      print("checking case");
      for(var i=0;i<table.length;i++){
        listOfxfocusNodes.add(List.generate(7, (index) => FocusNode()));
        var unitcost = new TextEditingController(text: table[i].unitCost.toString()??"");
        unitcostListControllers.add(unitcost);

        setState(() {

        });

      }
    }
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<RequestformreadCubit, RequestformreadState>(
              listener: (context, state) {

                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {

                      setState(() {
                        stockCheck=false;
                        data.data?.orderLines != null
                            ? table = List.from(data.data?.orderLines ?? [])
                            : table = [];


                        _getCurrentUser();
                        valueAddingTextEdingController();


                      });
                    });
              },
            ),
            BlocListener<PurchaseStockCubit, PurchaseStockState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");

                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      if(stockCheck==false){
                        currentStock.add(0);
                        setState(() {

                        });
                      }

                      else if(Variable.tableedit==false){
                        print("AKSKKSKSKSK1");
                        stock =0;
                        setState(() {});

                      }
                      else{
                        currentStock[Variable.tableindex]=0;
                        // currentStock.cop(Variable.tableindex,  purchaseCurrentStock?.StockQty??0);
                        print(currentStock.length);
                        setState(() {});
                      }
                    },
                    success: (data) {
                      print("Akshayaaaaa" + data.toString());
                      purchaseCurrentStock = data;
                      var stockQty = purchaseCurrentStock?.StockQty;
                      if(stockCheck==false){

                        currentStock.add(stockQty);
                        setState(() {

                        });
                      }

                      else if(Variable.tableedit==false){
                        print("AKSKKSKSKSK1");
                        stock = purchaseCurrentStock?.StockQty;
                        setState(() {});
                        print(stockQty);
                      }
                      else{
                        currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty??0;
                        // currentStock.cop(Variable.tableindex,  purchaseCurrentStock?.StockQty??0);
                        print(currentStock.length);
                        setState(() {});
                      }


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
                          print("thre error cae");
                          table[Variable.tableindex] =
                              table[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",vat:purchaseTable?.vat,unitCost:purchaseTable?.unitCost,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"",   );
                          unitcostListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );
                          var qty = table[Variable.tableindex].requestedQty;
                          var vat = table[Variable.tableindex].vat;
                          var excess = table[Variable.tableindex].excessTax;
                          var unitcost = table[Variable.tableindex].unitCost??0;
                          // print("unitcost" + unitcost.toString());
                          var Vdiscount = table[Variable.tableindex].discount;
                          if(qty==0 || unitcost==0 ){
                            table[Variable.tableindex] = table[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                            setState(() {
                            });

                          }else {
                            var Vamount;
                            Vamount =         vatableAmountUpdation(unitcost,qty,excess,Vdiscount);
                            var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                            table[Variable.tableindex] =
                                table[Variable.tableindex]
                                    .copyWith(
                                    actualCost: vactualCost,
                                    grandTotal: vactualCost,
                                    vatableAmount: Vamount,
                                    excessTax: excess);
                            setState(() {});
                          }
                          setState(() {

                          });
                        }
                        else{
                          setState(() {
                            varinatname = purchaseTable?.name??"";
                            unitcost = purchaseTable?.unitCost;
                            print("unitcostsssssssssssssss"+unitcost.toString());
                            vat1 = purchaseTable?.vat;
                            unitCostCheck.text=purchaseTable?.unitCost.toString()??"";
                            purchaseUomName = purchaseTable?.purchaseUomName??"";
                            vrefcod = purchaseTable?.code??"";
                            barcode = purchaseTable?.barCode?.barcodeNumber.toString()??"";
                            if(unitcost==0 ||unitcost==null ||recievedQty==0){
                              actualCost1=0;
                              vatableAmount1=0;
                              grandTotal1=0;
                            }
                            else {
                              vatableAmountCalculation(unitcost, recievedQty, excess1, discount);
                              actualAndgrandTotal(vatableAmount1, vat1);
                            }
                          });
                        }
                      }
                      );
                    });
              },
            ),


          ],
          child:
          CustomScrollBar(
            controller: scontroller,
            childs: Container(

              color: Colors.white,
              alignment: Alignment.topRight,
              //height: 300,

              // height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                controller: scontroller,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,

                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        // height: 500,
                        width:  2200,
                        // padding: EdgeInsets.all(10),
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
                                  ),
                                  tableHeadtext(
                                    'Variant Id',
                                    size: 12,
                                  ),
                                  tableHeadtext(
                                    'Variant Name',
                                    size: 13,
                                  ),
                                  // tableHeadtext('description', size: 10, color: null),
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
                                    'Purchase UOM', size: 13,
                                  ),
                                  tableHeadtext(
                                    'Requested Qty',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Min Order Qty',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Max Order Qty',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Is Received',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Unit Cost',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Excise Tax',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                  ),
                                  tableHeadtext(
                                    'Discount',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'FOC',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                  ),
                                  tableHeadtext(
                                    'Vatable Amount',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),

                                  tableHeadtext(
                                    'Vat',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                  ),
                                  tableHeadtext(
                                    'Actual Cost',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                    size: 13,

                                  ),
                                  tableHeadtext(
                                    'Grand Total',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Is Invoiced',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    'Is Active',
                                    size: 13,
                                  ),
                                  tableHeadtext(
                                    '',
                                    size: 13,
                                  ),
                                  // if (widget.onAddNew) textPadding(''),
                                ]),

                            if (table != null)...[
                              for (var i = 0;
                              i < table.length;
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
                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                        child: textPadding(
                                            (i + 1)
                                                .toString(),
                                            fontWeight: FontWeight.w500),
                                      ),


                                      TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child:
                                          VariantIdTAble(
                                            text:table[i].variantId.toString(),
                                            onTap: (){
                                              showDailogPopUp(
                                                context,
                                                TableConfigurePopup(
                                                  inventory: Variable.inventory_ID,
                                                  type: "variantTabalePopup",
                                                  valueSelect: (VariantId? va) {
                                                    widget.updateCheck(true);
                                                    stockCheck=true;
                                                    table[i] = table[i].copyWith(updateCheck: true);
                                                    setState(() {

                                                    });

                                                    table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                        vatableAmount: table[i].vatableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                        ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseUom: table[i].purchaseUom,discount: table[i].discount
                                                    )]);
                                                    setState(() {
                                                      int? id = va!.id;
                                                      Variable.tableindex =i;
                                                      Variable.tableedit=true;
                                                      // onChange = true;
                                                      context
                                                          .read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                      context
                                                          .read<
                                                          PurchaseStockCubit>()
                                                          .getCurrentStock(
                                                          Variable.inventory_ID, va?.code);
                                                      var qty = table[i].requestedQty;
                                                      var excess = table[i].excessTax;
                                                      var unitcost = table[i].unitCost;

                                                      var vat = table[i].vat;
                                                      var disc = table[i].discount;
                                                      if (unitcost ==
                                                          0 ||
                                                          qty ==
                                                              0) {
                                                        table[i] =
                                                            table[i]
                                                                .copyWith(
                                                                vatableAmount: 0,
                                                                actualCost: 0,
                                                                grandTotal: 0,
                                                                discount: disc);
                                                      }

                                                      else {
                                                        var Vamount =         vatableAmountUpdation(unitcost,qty,excess,disc);


                                                        var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);


                                                        table[i] =
                                                            table[i]
                                                                .copyWith(
                                                                vatableAmount: Vamount,
                                                                actualCost: vactualCost,
                                                                grandTotal: vactualCost,
                                                                discount: disc);
                                                        FocusScope.of(context).requestFocus(listOfxfocusNodes[i][0]);
                                                        setState(() {});

                                                      }


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
                                        //   type:"cost-method-list",
                                        //   value: table[i].variantId,
                                        //   onSelection:
                                        //       (VariantId? va) {
                                        //         updateCheck=true;
                                        //         stockCheck=true;
                                        //         table[i] = table[i].copyWith(updateCheck: true);
                                        //         setState(() {
                                        //
                                        //         });
                                        //
                                        //     table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                        //         variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                        //         ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                        //     )]);
                                        //     setState(() {
                                        //
                                        //
                                        //       int? id = va!.id;
                                        //       Variable.tableindex =i;
                                        //       Variable.tableedit=true;
                                        //       stockCheck==true;
                                        //
                                        //
                                        //       // onChange = true;
                                        //       context
                                        //           .read<
                                        //           TableDetailsCubitDartCubit>()
                                        //           .getTableDetails(
                                        //           id);
                                        //       context
                                        //           .read<
                                        //           PurchaseStockCubit>()
                                        //           .getCurrentStock(
                                        //          inventoryIdController.text, va?.code);
                                        //       var qty = table[i]
                                        //           .requestedQty;
                                        //
                                        //       var excess = table[i]
                                        //           .excessTax;
                                        //
                                        //       var unitcost = table[i]
                                        //           .unitCost;
                                        //
                                        //       var vat = table[i].vat;
                                        //       var disc = table[i].discount;
                                        //
                                        //
                                        //       if (unitcost ==
                                        //           0 ||
                                        //           qty ==
                                        //               0) {
                                        //         table[i] =
                                        //             table[i]
                                        //                 .copyWith(
                                        //                 variableAmount: 0,
                                        //                 actualCost: 0,
                                        //                 grandTotal: 0,
                                        //                 discount: disc);
                                        //       }
                                        //
                                        //       else {
                                        //         var Vamount =         vatableAmountUpdation(unitcost,qty,excess,disc);
                                        //
                                        //
                                        //         var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                                        //
                                        //
                                        //         table[i] =
                                        //             table[i]
                                        //                 .copyWith(
                                        //                 variableAmount: Vamount,
                                        //                 actualCost: vactualCost,
                                        //                 grandTotal: vactualCost,
                                        //                 discount: disc);
                                        //         setState(() {});
                                        //
                                        //       }
                                        //
                                        //
                                        //       // orderType = va!;
                                        //     });
                                        //   },
                                        //   onAddNew: () {},
                                        //   // restricted: true,
                                        // ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i].variantName??"",

                                            fontWeight: FontWeight.w500),
                                      ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i].barcode??"",

                                            fontWeight: FontWeight.w500),),

                                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(currentStock.length!=table.length?"": currentStock[i].toString(),

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i].purchaseUom??"",

                                            fontWeight: FontWeight.w500),
                                      ),


                                      //88888888888888888888                                   //**********************************************
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          integerOnly: true,
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][1]);
                                          },
                                          focusNode: listOfxfocusNodes[i][0],
                                          // controller: requestedListControllers[i],
                                          last: table[i].requestedQty.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {

                                            });
                                            print(va);
                                            if (va == "") {
                                              print("entered");
                                              table[i] = table[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                            }
                                            else {
                                              var qty = int.tryParse(va);
                                              var dis = table[i].discount;
                                              var excess = table[i].excessTax;
                                              var unitcost = table[i].unitCost;
                                              var vat = table[i].vat;
                                              var foc = table[i].foc;
                                              if (qty == 0 || unitcost == 0 ||unitcost=="") {
                                                table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                              }else {
                                                var Vamount;
                                                var vactualCost;
                                                Vamount=vatableAmountUpdation(unitcost,qty,excess,dis);
                                                if(vat==0 ||vat==""){
                                                  vactualCost=Vamount;
                                                }
                                                else{
                                                  vactualCost=   actualAndgrandTotalUpdation(Vamount,vat);

                                                }


                                                table[i] =
                                                    table[i]
                                                        .copyWith(
                                                        vatableAmount: Vamount,
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
                                          integerOnly: true,
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][2]);
                                          },
                                          focusNode: listOfxfocusNodes[i][1],

                                          initialCheck:true,
                                          last:table[i].minimumQty.toString(),
                                          // controller: minListControllers[i],

                                          onChanged: (p0) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {

                                            });

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

                                        ),
                                      ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          integerOnly: true,
                                          initialCheck:true,
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][3]);
                                          },
                                          focusNode: listOfxfocusNodes[i][2],
                                          //controller: maxListControllers[i],
                                          last:table[i].maximumQty.toString(),
                                          onChanged: (p0) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {

                                            });

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
                                                                               ),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(

                                          valueChanger:table[i].isRecieved==null?false:table[i].isRecieved,


                                          onSelection: (bool? value) {  },

                                        ),
                                      ),




                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][4]);
                                          },
                                          focusNode: listOfxfocusNodes[i][3],
                                          // initialCheck:true,
                                          controller: unitcostListControllers[i],
                                          // last: table[i].unitCost.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {

                                            });
                                            double? unitcost;
                                            if (va == "") {
                                              print("entered");
                                              unitcost = 0;
                                              print("disc" + unitcost.toString());
                                              table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
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

                                              table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                              setState(() {});
                                            } else {
                                              var Vamount =         vatableAmountUpdation(unitcost,qty,excess,disc);


                                              var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);

                                              table[i] =
                                                  table[i]
                                                      .copyWith(
                                                      vatableAmount: Vamount,
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
                                          initialCheck:true,
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][5]);
                                          },
                                          focusNode: listOfxfocusNodes[i][4],
                                          // controller: excesstListControllers[i],
                                          last: table[i].excessTax.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
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
                                            var qty = table[i].requestedQty;
                                            var vat = table[i].vat;
                                            var foc = table[i].foc;
                                            print("excess" + excess.toString());
                                            var unitcost = table[i].unitCost;
                                            print("unitcost" + unitcost.toString());
                                            var Vdiscount = table[i].discount;
                                            if(qty==0 || unitcost==0){
                                              table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                              setState(() {

                                              });

                                            }else {
                                              var Vamount;

                                              Vamount =         vatableAmountUpdation(unitcost,qty,excess,Vdiscount);
                                              var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                                              table[i] = table[i].copyWith(actualCost: vactualCost, grandTotal: vactualCost, vatableAmount: Vamount, excessTax: excess);
                                              setState(() {});
                                            } },
                                        ),
                                      ),
                                      //****************************************DISCOUNT***************************DISCOUNT*********************************
                                      // tableEdit==true?
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck:true,
                                          onComplete: (){
                                            FocusScope.of(context).requestFocus(listOfxfocusNodes[i][6]);
                                          },
                                          focusNode: listOfxfocusNodes[i][5],
                                          last: table[i].discount.toString() ?? "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {

                                            });
                                            double? disc;
                                            if (va ==
                                                "") {
                                              print(
                                                  "entered");
                                              disc =
                                              0;

                                            } else {
                                              disc =
                                                  double
                                                      .tryParse(
                                                      va);

                                            }

                                            var qty = table[i]
                                                .requestedQty;

                                            var excess = table[i]
                                                .excessTax;

                                            var unitcost = table[i]
                                                .unitCost;

                                            var vat = table[i].vat;
                                            var foc = table[i]
                                                .foc;


                                            if (unitcost ==
                                                0 ||
                                                qty ==
                                                    0) {
                                              table[i] =
                                                  table[i]
                                                      .copyWith(
                                                      vatableAmount: 0,
                                                      actualCost: 0,
                                                      grandTotal: 0,
                                                      discount: disc);
                                            }

                                            else {
                                              var Vamount =         vatableAmountUpdation(unitcost,qty,excess,disc);


                                              var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);


                                              table[i] =
                                                  table[i]
                                                      .copyWith(
                                                      vatableAmount: Vamount,
                                                      actualCost: vactualCost,
                                                      grandTotal: vactualCost,
                                                      discount: disc);
                                              setState(() {});

                                            }

                                          }
                                          ,

                                        ),
                                      ),



                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: UnderLinedInput(
                                      //     initialCheck:true,
                                      //     last: table[i].foc.toString(),
                                      //     // controller: focListControllers[i],
                                      //
                                      //     onChanged: (p0) {
                                      //       widget.updateCheck(true);
                                      //       table[i] = table[i].copyWith(updateCheck: true);
                                      //       setState(() {
                                      //
                                      //       });
                                      //
                                      //       print(p0);
                                      //       if(p0==""){
                                      //         table[i] = table[i].copyWith(foc:0);
                                      //         setState(() {
                                      //
                                      //         });
                                      //
                                      //       }
                                      //       else{
                                      //         table[i] = table[i].copyWith(foc:double.tryParse(p0));
                                      //         setState(() {
                                      //
                                      //         });
                                      //       }
                                      //
                                      //
                                      //
                                      //
                                      //     },
                                      //     enable: true,
                                      //     onComplete: () {
                                      //
                                      //       setState(() {  print("maxxxx"+table.toString());});
                                      //     },
                                      //   ),
                                      // ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i].foc
                                                .toString(),

                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),

                                      ),         TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i]
                                                .vatableAmount
                                                .toString(),

                                            fontWeight: FontWeight.w500,
                                            alighnment: Alignment.topRight),

                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i]
                                                .vat
                                                .toString(),

                                            fontWeight:
                                            FontWeight
                                                .w500,alighnment: Alignment.topRight
                                        ),
                                      ),

                                      //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************

                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: UnderLinedInput(
                                      //       initialCheck:true,
                                      //    // controller: vatListControllers[i],
                                      //     last: table[i].vat.toString() ?? "",
                                      //     onChanged: (va) {
                                      //       updateCheck=true;
                                      //       table[i] = table[i].copyWith(updateCheck: true);
                                      //       setState(() {
                                      //
                                      //       });
                                      //       if (va == "") {
                                      //         print("sss");
                                      //         var vatableAmount = table[i].variableAmount;
                                      //         table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                      //         setState(() {});
                                      //       } else {
                                      //         var vat = double.tryParse(va);
                                      //         var Vamount = table[i].variableAmount;
                                      //         print("qty" + Vamount.toString());
                                      //         var excess = table[i].excessTax;
                                      //         print("excess" + excess.toString());
                                      //         var unitcost = table[i].unitCost;
                                      //         var qty = table[i].requestedQty;
                                      //         var foc = table[i].foc;
                                      //         var dis = table[i].discount;
                                      //         print("unitcost" + unitcost.toString());
                                      //         if(unitcost==0 || qty==0){
                                      //           table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                      //
                                      //         }else{
                                      //
                                      //           var Vamount = (((unitcost! *
                                      //               qty!) +
                                      //               excess!) -
                                      //               dis!)
                                      //               .toDouble();
                                      //           var vactualCost = (Vamount! +
                                      //               ((Vamount! *
                                      //                   vat!) /
                                      //                   100));
                                      //           var Vgrnadtotal = (Vamount! +
                                      //               ((Vamount! *
                                      //                   vat!) /
                                      //                   100));
                                      //           table[i] =
                                      //               table[i]
                                      //                   .copyWith(
                                      //                   variableAmount: Vamount,
                                      //                   actualCost: vactualCost,
                                      //                   grandTotal: Vgrnadtotal,
                                      //                   vat: vat);
                                      //           setState(() {});
                                      //
                                      //         }}
                                      //     },
                                      //   ),
                                      // ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i]
                                                .actualCost
                                                .toString(),

                                            fontWeight:
                                            FontWeight
                                                .w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table[i]
                                                .grandTotal
                                                .toString(),

                                            fontWeight:
                                            FontWeight
                                                .w500,
                                            alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                            valueChanger:table[i]
                                                .isInvoiced==null?false:table[i].isInvoiced,

                                            onSelection:(bool ? value){

                                            }),
                                      ),
                                      // TableCell(
                                      //   verticalAlignment: TableCellVerticalAlignment.middle,
                                      //   child: CheckedBoxs(
                                      //       valueChanger:table[i]
                                      //           .isFree==null?false:table[i].isFree,
                                      //
                                      //       onSelection:(bool ? value){
                                      //         bool? isFree = table[i].isFree;
                                      //         setState(() {
                                      //           updateCheck=true;
                                      //           table[i] = table[i].copyWith(updateCheck: true);
                                      //           setState(() {
                                      //
                                      //           });
                                      //           isFree = !isFree!;
                                      //           table[i] = table[i].copyWith(isFree: isFree);
                                      //
                                      //
                                      //
                                      //         });
                                      //
                                      //       }),
                                      // ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                          focusNode: listOfxfocusNodes[i][6],
                                          onCompleteFunc: (){

                                            bool? isActive = table[i].isActive;
                                            setState(() {
                                              widget.updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              isActive = !isActive!;
                                              table[i] = table[i].copyWith(isActive: isActive);

                                              upDateFunction(i);  if(i!=table.length-1){
                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][6]);
                                              }

                                            });
                                          },
                                          valueChanger: table[i]
                                              .isActive==null?false:table[i]
                                              .isActive,
                                          onSelection: (bool?value) {
                                            bool? isActive = table[i].isActive;
                                            setState(() {
                                              widget.updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              isActive = !isActive!;
                                              table[i] = table[i].copyWith(isActive: isActive);



                                            });
                                          },
                                        ),
                                      ),

                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: TableTextButton(
                                          textColor:  table?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
                                          bagroundColor: table?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                          label:table[i].updateCheck==true?'Update':"",
                                          onPress: (){
                                        upDateFunction(i);
                                          },),
                                      )

                                    ]),],
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
                                    child: textPadding((table.length+1).toString(),
                                        fontSize: 12,
                                        padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  VariantIdTAble(
                                    text:variantId.toString(),
                                    onTap: (){
                                      showDailogPopUp(
                                        context,
                                        TableConfigurePopup(
                                          inventory: Variable.inventory_ID,
                                          type: "variantTabalePopup",
                                          valueSelect: (VariantId? va) {

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
                                              context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                              setState(() {

                                              });
                                              FocusScope.of(context).requestFocus(focusNodeList[0]);
                                              context
                                                  .read<PurchaseStockCubit>()
                                                  .getCurrentStock(Variable.inventory_ID,variantId);
                                              vatableAmountCalculation(unitcost, recievedQty, excess1, discount);
                                              actualAndgrandTotal(vatableAmount1,vat1);

                                              // orderType = va!;
                                            });
                                          },
                                        ),
                                      );
                                    },
                                  ),

                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(varinatname??"",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(barcode??"",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(stock.toString(),

                                        fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(purchaseUomName.toString(),

                                        fontWeight: FontWeight.w500),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      controller: receivedTestContoller,
                                      integerOnly: true,
                                      focusNode: focusNodeList[0],

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
                                              vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                              actualAndgrandTotal(vatableAmount1,vat1);
                                            }

                                          }
                                          );
                                        }
                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {
                                        setState(() {
                                          FocusScope.of(context).requestFocus(focusNodeList[1]);
                                        });


                                      },
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      integerOnly: true,
                                      focusNode: focusNodeList[1],
                                      controller: minOrderTestContoller,

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
                                        FocusScope.of(context).requestFocus(focusNodeList[2]);
                                      },
                                    ),
                                  ),
                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      integerOnly: true,
                                      controller:maxOrderTestContoller,
                                      focusNode: focusNodeList[2],
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
                                        FocusScope.of(context).requestFocus(focusNodeList[3]);
                                      },
                                    ),
                                  ),

                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                      valueChanger:  isReceived1,
                                      onSelection: (bool? value ) {
                                        setState(() {
                                        });
                                      },

                                    ),
                                  ),
                                  // unitcost==0?Text(""):
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      controller: unitCostCheck,
                                      focusNode: focusNodeList[3],

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
                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                          actualAndgrandTotal(vatableAmount1,vat1);
                                        }
                                        setState(() {});
                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {
                                        FocusScope.of(context).requestFocus(focusNodeList[4]);
                                      },
                                    ),
                                  ),



                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      controller: excesstaxTestContoller,
                                      focusNode: focusNodeList[4],
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
                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                          actualAndgrandTotal(vatableAmount1,vat1);
                                          //
                                          // vatableAmount1 = (((unitcost! *
                                          //     recievedQty!) +
                                          //     excess1!) -
                                          //     discount!)
                                          //     .toDouble();
                                          // actualCost1 = (vatableAmount1! +
                                          //     ((vatableAmount1! *
                                          //         vat1!) /
                                          //         100));
                                          // grandTotal1 = (vatableAmount1! +
                                          //     ((vatableAmount1! *
                                          //         vat1!) /
                                          //         100));
                                        }
                                        setState(() {});
                                      },
                                      enable: true,
                                      onComplete: () {
                                        FocusScope.of(context).requestFocus(focusNodeList[5]);
                                      },
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: UnderLinedInput(
                                      controller: discountTestContoller,
                                      focusNode: focusNodeList[5],
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
                                          vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                          actualAndgrandTotal(vatableAmount1,vat1);

                                          // vatableAmount1 = (((unitcost! *
                                          //     recievedQty!) +
                                          //     excess1!) -
                                          //     discount!)
                                          //     .toDouble();
                                          // actualCost1 = (vatableAmount1! +
                                          //     ((vatableAmount1! *
                                          //         vat1!) /
                                          //         100));
                                          // grandTotal1 = (vatableAmount1! +
                                          //     ((vatableAmount1! *
                                          //         vat1!) /
                                          //         100));






                                        }


                                        setState(() {});
                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {
                                        setState(() {
                                          isActive1 = !isActive1!;
                                        });
                                        FocusScope.of(context).requestFocus(focusNodeList[6]);
                                      },
                                    ),
                                  ),
                                  // TableCell(
                                  //   verticalAlignment: TableCellVerticalAlignment.middle,
                                  //   child: UnderLinedInput(
                                  //     controller:focTestContoller,
                                  //     onChanged: (p0) {
                                  //       if (p0 == '') {
                                  //         setState(() {
                                  //           foc1=0;
                                  //
                                  //         });
                                  //       } else {
                                  //         setState(() {
                                  //           foc1 =
                                  //               double
                                  //                   .tryParse(
                                  //                   p0);
                                  //         });
                                  //       }
                                  //
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
                                    child: textPadding(focTestContoller.text.toString()??"", fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                  ),   TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(vatableAmount1.toString()??"", fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(vat1.toString()??"", fontWeight: FontWeight.w500, alighnment: Alignment.topRight,),),
                                  // TableCell(
                                  //   verticalAlignment: TableCellVerticalAlignment.middle,
                                  //   child: UnderLinedInput(
                                  //       controller:vatTestContoller,
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
                                  //         vatableAmount1 = (((unitcost! *
                                  //               recievedQty!) +
                                  //               excess1!) -
                                  //               discount!)
                                  //               .toDouble();
                                  //           actualCost1 = (vatableAmount1! +
                                  //               ((vatableAmount1! *
                                  //                   vat1!) /
                                  //                   100));
                                  //           grandTotal1 = (vatableAmount1! +
                                  //               ((vatableAmount1! *
                                  //                   vat1!) /
                                  //                   100));
                                  //
                                  //       }
                                  //       setState(() {});
                                  //       // print(Qty);
                                  //     },
                                  //
                                  //   ),
                                  // ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(actualCost1.toString()??"", fontWeight: FontWeight.w500, alighnment: Alignment.topRight,),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPadding(grandTotal1.toString()??"", fontWeight: FontWeight.w500, alighnment: Alignment.topRight),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                      // color:Color(0xff3E4F5B) ,

                                      valueChanger:  isInvoiced1,
                                      onSelection: (bool? value ) {
                                        setState(() {
                                          // isInvoiced1 = !isInvoiced1!;
                                        });
                                      },

                                    ),
                                  ),
                                  // TableCell(
                                  //   verticalAlignment: TableCellVerticalAlignment.middle,
                                  //   child: CheckedBoxs(
                                  //     // color:Color(0xff3E4F5B) ,
                                  //     valueChanger:  isFree1,
                                  //     onSelection: (bool? value ) {
                                  //     setState(() {
                                  //         isFree1 = !isFree1!;
                                  //       });
                                  //     },
                                  //
                                  //   ),
                                  // ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                      focusNode: focusNodeList[6],
                                      // color:Color(0xff3E4F5B) ,
                                      valueChanger:  isActive1,
                                      onCompleteFunc: (){
                                        saveFunction();
                                      },
                                      onSelection: (bool? value ) {
                                        setState(() {


                                          isActive1 = !isActive1!;

                                        });
                                      },
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        TableIconTextButton(label: "label",icon: Icons.clear, onPress: (){
                                          setState(() {
                                            receivedTestContoller.clear();
                                            excesstaxTestContoller.clear();
                                            minOrderTestContoller.clear();
                                            maxOrderTestContoller.clear();
                                            discountTestContoller.clear();
                                            vatTestContoller.clear();
                                            focTestContoller.clear();
                                            variantId = "";
                                            varinatname = "";
                                            barcode = "";
                                            purchaseUomName = "";
                                            recievedQty = 0;
                                            excess1 = 0;
                                            unitcostListControllers.clear();
                                            valueAddingTextEdingController();
                                            unitCostCheck.clear();
                                            isReceived1 = false;
                                            discount = 0;
                                            foc1 = 0;
                                            unitcost = 0;
                                            vatableAmount1 = 0;
                                            vat1 = 0;
                                            grandTotal1 = 0;
                                            actualCost1 = 0;
                                            isActive1 =
                                            false;
                                            isFree1 = false;
                                            isInvoiced1 =
                                            false;
                                            stock = 0;
                                          });


                                        }),
                                        TableTextButton(label: "Save",
                                            onPress: (){
                                              saveFunction(); }),
                                      ],
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
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(4),
                            2: FlexColumnWidth(6),
                            3: FlexColumnWidth(3),
                            4: FlexColumnWidth(3),
                            5: FlexColumnWidth(3),
                            6: FlexColumnWidth(3),
                            7: FlexColumnWidth(3),
                            8: FlexColumnWidth(3),
                            9: FlexColumnWidth(3),
                            10: FlexColumnWidth(3),
                            11: FlexColumnWidth(3),
                            12: FlexColumnWidth(3),
                            13: FlexColumnWidth(3),
                            14: FlexColumnWidth(3),
                            15: FlexColumnWidth(3),
                            16: FlexColumnWidth(3),
                            17: FlexColumnWidth(3),
                            18: FlexColumnWidth(2),
                            19: FlexColumnWidth(2),
                            20: FlexColumnWidth(4),
                            // 21: FlexColumnWidth(3),

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
  upDateFunction(int i){
    var Vamount = table[i].vatableAmount??0;
    var variant = table[i].variantId??0;
    var mins = table[i].minimumQty??0;
    var maxs = table[i].maximumQty??0;
    var vat = table[i].vat??0;

    var excess = table[i].excessTax??0;
    print("excess" + excess.toString());
    var unitcosts = table[i].unitCost??0;
    var qty = table[i].requestedQty??0;
    var foc = table[i].foc??0;
    var dis = table[i].discount??0;
    if(variant=="null"||unitcosts==0){
      context.showSnackBarError("please fill all the fields");
    }
    else if(qty==0||qty==""){
      context.showSnackBarError(
          "The requested quantity not be 0 or empty");

    }
    else if(qty!<foc!){
      context.showSnackBarError("the received qty all ways greater than  foc");
    }
    else if(mins>maxs){
      context.showSnackBarError("the minimum qty  all ways less than than  maximum qty");
    }
    else{

      table[i] = table[i].copyWith(updateCheck: false);
      var isUpdate=updateCheckFunc();
      widget.updateCheck(isUpdate);
      widget.updation(table)  ;
    }

    setState(() {

    });
  }
  saveFunction(){
    foc1=foc1??0;
    recievedQty=recievedQty??0;
    if (minQty! >
        maxQty!) {

      context.showSnackBarError(
          "the minimum order is always less than maximum order");
    }
    else  if(variantId=="null"||unitcost==0 ||unitcost==null){
      context.showSnackBarError("please fill all the fields");
    }
    else if(recievedQty==0||recievedQty==""){
      context.showSnackBarError(
          "the requested quantity not be 0 or empty");
    }
    else if(recievedQty!<foc1!){
      context.showSnackBarError("the received qty all ways greater than  foc");
    }
    else {
      setState(() {
        currentStock.add(stock??0);
        table.add(
            OrderLines(
                variantId: variantId ?? "",
                currentQty: stock,
                supplierCode: supplierRefCode,
                variantName: varinatname ?? "",
                barcode: barcode ?? "",
                minimumQty: minQty,
                maximumQty: maxQty,
                purchaseUom: purchaseUomName ?? "",
                requestedQty: recievedQty,
                isRecieved: isReceived1,
                discount: discount,
                foc: foc1,
                unitCost: unitcost,
                vatableAmount: vatableAmount1,
                vat: vat1,
                excessTax: excess1,
                actualCost: actualCost1,
                grandTotal: grandTotal1,
                isInvoiced: isInvoiced1,
                isFree: isFree1,
                isActive: isActive1,
                updateCheck: false
            ));
      });
      widget.updation(table);
      receivedTestContoller.clear();
      excesstaxTestContoller.clear();
      minOrderTestContoller.clear();
      maxOrderTestContoller.clear();
      discountTestContoller.clear();
      vatTestContoller.clear();
      focTestContoller.clear();
      variantId = "";
      varinatname = "";
      barcode = "";
      purchaseUomName = "";
      recievedQty = 0;
      excess1 = 0;
      unitcostListControllers.clear();
      valueAddingTextEdingController();
      unitCostCheck.clear();
      isReceived1 = false;
      discount = 0;
      foc1 = 0;
      unitcost = 0;
      vatableAmount1 =
      0;
      vat1 = 0;
      grandTotal1 = 0;
      actualCost1 = 0;
      isActive1 =
      false;
      isFree1 = false;
      isInvoiced1 =
      false;
      stock = 0;
    }
  }
}