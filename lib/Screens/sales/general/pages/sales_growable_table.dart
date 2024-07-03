import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class SalesGeneralGrowableTable extends StatefulWidget {
  final List<SalesOrderLines>? table;
  final List<int?> currenStock;
  bool select;


  final Function updation;
  final Function updateCheck;
  SalesGeneralGrowableTable(
      { required Key key,
        required this.table,
        required this.updation,
        required this.select,
        required this.updateCheck,
        required this.currenStock}): super(key: key);

  @override
  SalesGeneralGrowableTableState createState() =>
      SalesGeneralGrowableTableState();
}

class SalesGeneralGrowableTableState extends State<SalesGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<SalesOrderLines> table1 =List.from( []);
  String? variantId = "";
  String? varinatname = "";
  String? returntype = "";
  String? returntime = "";
  String? barcode = "";
  List<FocusNode>focusNodeList=List.generate(5, (index) => FocusNode());
  List<List<FocusNode>> listOfxfocusNodes = [];
  String? salesUom = "";
  int? stock = 0;
  int? stockId ;
  bool stockCheck=false;
  String? discountPrice = "price";
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
  bool? invoiced = false;
  bool? isActive1 = false;
  int selctedraw=-1;
  bool? clear = false;
  String? supplierRefCode = "";
  double? unitcost1 = 0;
  double? discount1 = 0;
  double vat1 = 0;
  int? quantity = 0;
  double? etax1 = 0;
  double taxableAmount = 0;
  double warrentyprice = 5;
  double sellingPrice = 0;
  double warrentyPrice = 0;
  double totalPrice = 0;
  TextEditingController unicostController = TextEditingController();
  TextEditingController discountTestController = TextEditingController();
  TextEditingController excessTestController = TextEditingController();
  TextEditingController quanitityTestController = TextEditingController();
  var unitcostListControllers = <TextEditingController>[];

  void taxableCalcutatingMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    if (type == "price") {
      taxableAmount = double.parse(((((reqQty * unitCst) + exTaxx) - disct)).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmount = double.parse(((total - ((total * disct) / 100))).toStringAsFixed(2));
    }
  }





  bool updateCheckFunc(){
    var isUpdate=table1.where((element) => element.updatecheck==true);
    if(isUpdate.isNotEmpty){
      return true;
    }
    else
      return false;
  }
  clearTableAddingVariables(){



    print("widget clearing checking");

    variantId = "";
    quantity = 0;
    returntime = "";
    returntype = "";
    salesUom = "";
    unicostController.text = "";
    discountTestController.clear();
    excessTestController.clear();
    quanitityTestController.clear();
    // unitcostListControllers.clear();

    // focusNodeList.clear();
    discountPrice = "price";
    varinatname = "";
    barcode = "";
    discount1 = 0;
    stock=0;
    stockId=0;
    unitcost1 = 0;
    taxableAmount = 0;
    vat1 = 0;
    etax1 = 0;
    sellingPrice = 0;
    totalPrice = 0;
    warrentyPrice = 0;
    isActive1 = false;
    assignCheck=true;



  }

  void changeSelectedRow(int direction) {
    setState(() {
      if(table1.isEmpty || selctedraw== table1.length - 1){
        FocusScope.of(context).requestFocus(focusNodeList[0]);
      }
     else{
        // Adjust the selected row based on the arrow key direction
        selctedraw = (selctedraw + direction).clamp(0, table1.length - 1);
        if(selctedraw!=-1)
        FocusScope.of(context).requestFocus(listOfxfocusNodes[selctedraw][0]);
      }

      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }
  Future _getCurrentUser() async {
    if (table1.isNotEmpty) {
      for (var i = 0; i < table1.length; i++) {
        print("variantaaaaaa" + table1[i].variantId.toString());

        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, table1[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts = double.parse(((((reqQty * unitCst) + exTaxx) - disct)).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmounts = (total - ((total * disct) / 100));
    }
    return taxableAmounts;
  }

  void selliPriceCalculation(double taxableAmount, double vatt) {
    sellingPrice = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    print("sellingPrice" + sellingPrice.toString());
    setState(() {});
  }

  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));
    print("sellingPrice" + sellingPrice.toString());
    setState(() {});
    return sellingPrice1;
  }

  void totalPriceCalculation(double sellingprice, double warrentyprice) {
    totalPrice =double.parse((sellingprice + warrentyprice).toStringAsFixed(2));
    setState(() {
      print("totalp" + totalPrice.toString());
    });
  }

  double totalPriceUpdation(double sellingprice, double warrentyprice) {
    double totalPrice1;
    totalPrice1 = double.parse((sellingprice + warrentyprice).toStringAsFixed(2));
    setState(() {});
    return totalPrice1;
  }


  void initState() {
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  valueAddingTextEdingController(){
    if(table1.isNotEmpty){
      print("checking case");
      for(var i=0;i<table1.length;i++){

        listOfxfocusNodes.add(List.generate(5, (index) => FocusNode()));
        var unitcost = new TextEditingController(text: table1[i].unitCost.toString()??"");
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
    // widget.select=false;


    // clear=false;
    print("Akshay" + table1.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<SalesgeneralreadCubit, SalesgeneralreadState>(
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
                      stockCheck=false;
                      data?.salesOrderData?.orderLines != null
                          ? table1 =List.from( data?.salesOrderData?.orderLines ?? [])
                          : table1 = [];
                      _getCurrentUser();
                      valueAddingTextEdingController();

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
                        print("currentStock"+currentStock.toString());
                      }

                      else if (Variable.tableedit == false &&stockCheck==true) {
                        print("AKSKKSKSKSK1");
                        stock = 0;
                        // stockId=purchaseCurrentStock?.StockId;
                        setState(() {});

                      } else {
                        currentStock[Variable.tableindex]=0;
                        // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty??0;
                        // // currentStock.cop(Variable.tableindex,  purchaseCurrentStock?.StockQty??0);
                        // print(currentStock.length);
                        setState(() {});
                      }
                    },
                    success: (data) {
                      print("Akshayaaaaa" + data.toString());
                      purchaseCurrentStock = data;
                      var stockQty = purchaseCurrentStock?.StockQty;
                      print("stockqty" + stockQty.toString());
                      // print("stockCheck"+stockCheck.toString());
                      if(stockCheck==false){
                        currentStock.add(stockQty??0);
                        if(currentStock.length!=null){
                          table1[currentStock.length-1]= table1[currentStock.length-1].copyWith(stockId:purchaseCurrentStock?.StockId.toString());
                        }
                        print("currentStock"+currentStock.toString());
                      }

                      else if (Variable.tableedit == false &&stockCheck==true) {
                        print("AKSKKSKSKSK1");
                        stock = purchaseCurrentStock?.StockQty;
                        stockId=purchaseCurrentStock?.StockId;
                        setState(() {});
                        print(stockQty);
                      } else {
                        currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty??0;
                        table1[Variable.tableindex]= table1[currentStock.length-1].copyWith(stockId:purchaseCurrentStock?.StockId.toString());
                        // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty??0;
                        // // currentStock.cop(Variable.tableindex,  purchaseCurrentStock?.StockQty??0);
                        // print(currentStock.length);
                        setState(() {});
                      }
                    });
              },
            ),
            BlocListener<SalesgeneralreadCubit, SalesgeneralreadState>(
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
                      data?.salesOrderData?.orderLines != null
                          ? table1 =List.from( data?.salesOrderData?.orderLines ?? [])
                          : table1= [];
                      valueAddingTextEdingController();



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
                                  variaNtname: purchaseTable?.name ?? "",
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
                          returntime = purchaseTable?.returnTime .toString()?? "";
                          unitcost1 = purchaseTable?.unitCost ?? 0;
                          unicostController.text = unitcost1.toString();
                          vat1 = purchaseTable?.vat ?? 0;

                          // supplierRefCode =
                          //     purchaseTable?.vendorDetails?.vendorRefCode ?? "";
                          print(supplierRefCode);

                          salesUom = purchaseTable?.purchaseUomName ?? "";
                          // vrefcod = purchaseTable?.code??"";
                          // vid = purchaseTable?.id;
                          // purchaseTable?.excessTax != null
                          //     ? eTax = purchaseTable?.excessTax
                          //     : eTax = 0;
                          //
                          barcode = purchaseTable?.barCode?.barcodeNumber
                              .toString() ??
                              "";
                          if (unitcost1 == 0 ||
                              quantity == 0) {
                            taxableAmount = 0;
                            sellingPrice = 0;
                            totalPrice = 0;
                          } else {
                            taxableCalcutatingMethod(
                                quantity!,
                                unitcost1!,
                                etax1!,
                                discount1!,
                                discountPrice);

                            selliPriceCalculation(
                                taxableAmount, vat1);
                            totalPriceCalculation(
                                sellingPrice, warrentyPrice);
                          }
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
                                      'Return Based On',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Return Time Is',
                                      size: 13,


                                    ),

                                    tableHeadtext(
                                      'Invoiced',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    // tableHeadtext(
                                    //   'Warranty',
                                    //
                                    //   size: 13,
                                    //
                                    //   // color: Palette.containerDarknew,
                                    //
                                    //   // textColor: Palette.white
                                    // ),

                                    tableHeadtext(
                                      'Sales UOM',

                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Quantity',
                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Actual Cost',


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
                                    //
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
                              if (table1 != null) ...[
                                for (var i = 0; i < table1!.length; i++)
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
                                          TableCellVerticalAlignment.middle,
                                          child:
                                          table1[i].isInvoiced!=true?
                                          VariantIdTAble(
                                            text:table1[i].variantId.toString(),
                                            onTap: (){
                                              showDailogPopUp(
                                                context,
                                                TableConfigurePopup(
                                                  inventory: Variable.inventory_ID,
                                                  type: "variantTabalePopup",
                                                  valueSelect: (VariantId? va) {
                                                    stockCheck=true;
                                                    assignCheck = true;
                                                    clear=true;
                                                    widget.updateCheck(true);
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
                                                      FocusScope.of(context).requestFocus(listOfxfocusNodes[i][0]);
                                                      // onChange = true;
                                                      context
                                                          .read<
                                                          TableDetailsCubitDartCubit>()
                                                          .getTableDetails(id);
                                                      context
                                                          .read<PurchaseStockCubit>()
                                                          .getCurrentStock(
                                                          Variable.inventory_ID,
                                                          table1[i].variantId);

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
                                          //
                                          //   type: "cost-method-list",
                                          //   value: table1[i].variantId??"",
                                          //   onSelection: (VariantId? va) {
                                          //     stockCheck=true;
                                          //     assignCheck = true;
                                          //     clear=true;
                                          //     widget.updateCheck(true);
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
                                          //       context
                                          //           .read<PurchaseStockCubit>()
                                          //           .getCurrentStock(
                                          //           Variable.inventory_ID,
                                          //           table1[i].variantId);
                                          //
                                          //       // orderType = va!;
                                          //     });
                                          //   },
                                          //   onAddNew: () {},
                                          //   // restricted: true,
                                          // )
                                              : textPadding(
                                              table1[i].variantId?? "",
                                              fontSize: 12,

                                              fontWeight: FontWeight.w500),
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
                                          child:
                                          textPadding(

                                              table1?[i].variaNtname ?? "",
                                              fontSize: 12,


                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i].barcode ?? "",
                                              fontSize: 12,

                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              currentStock.length!=table1.length?"": currentStock[i].toString(),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
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
                                          child: textPadding(table1[i].returnType??"",
                                              fontSize: 12,

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
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

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
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
                                        // TableCell(
                                        //   verticalAlignment:
                                        //   TableCellVerticalAlignment.middle,
                                        //   child: textPadding(
                                        //       table1[i].warrentyId ?? "",
                                        //       fontSize: 12,
                                        //       padding: EdgeInsets.only(
                                        //           left: 11.5, top: 1.5),
                                        //       fontWeight: FontWeight.w500),
                                        // ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1[i].salesUom ?? "",
                                              fontSize: 12,
                                              // height: 42,

                                              fontWeight: FontWeight.w500),
                                        ),

                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child:
                                          UnderLinedInput(
                                            initialCheck: true,
                                            onComplete: (){
                                              FocusScope.of(context).requestFocus(listOfxfocusNodes[i][1]);
                                            },
                                            focusNode: listOfxfocusNodes[i][0],
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            // controller: requestedListControllers[i],
                                            last: table1?[i]
                                                .quantity
                                                .toString() ??
                                                "",
                                            onChanged: (va) {
                                              clear=true;
                                              widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // // table[i] = table[i].copyWith(updateCheck: true);
                                              // setState(() {
                                              //
                                              // });
                                              // print(va);
                                              if (va == "") {
                                                print("entered");
                                                assignCheck = true;
                                                clear=true;
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
                                            focusNode: listOfxfocusNodes[i][1],
                                            onComplete: (){
                                              FocusScope.of(context).requestFocus(listOfxfocusNodes[i][2]);
                                            },
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            // initialCheck: true,
                                            controller: unitcostListControllers[i],
                                            // last: table1?[i]
                                            //     .unitCost
                                            //     .toString() ??
                                            //     "",
                                            onChanged: (va) {
                                              widget.updateCheck(true);
                                              clear=true;
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
                                            focusNode: listOfxfocusNodes[i][2],
                                            onComplete: (){
                                              FocusScope.of(context).requestFocus(listOfxfocusNodes[i][3]);
                                            },
                                            readOnly: table1[i].isInvoiced==true?true:false,

                                            // controller: excesstListControllers[i],
                                            last: table1?[i]
                                                .excessTax
                                                .toString() ??
                                                "",
                                            onChanged: (va) {
                                              widget.updateCheck(true);
                                              clear=true;
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
                                            child:table1[i].isInvoiced!=true?         PopUpCall(
                                              type: "PriceTypePopUpCall",
                                              value: table1[i].discountType??"",
                                              onSelection: (String va) {
                                                print("+++++++++++++++++++++++");

                                                setState(() {
                                                  clear=true;
                                                  table1[i] = table1[i].copyWith(updatecheck: true);
                                                  table1[i] = table1[i]
                                                      .copyWith(discountType: va);
                                                  widget.updateCheck(true);
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
                                            ): textPadding(
                                                table1[i]?.discountType
                                                    .toString() ??
                                                    "",
                                                fontSize: 12,

                                                fontWeight: FontWeight.w500)),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            focusNode: listOfxfocusNodes[i][3],
                                            onComplete: (){
                                              FocusScope.of(context).requestFocus(listOfxfocusNodes[i][4]);
                                            },
                                            initialCheck: true,
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            last:
                                            table1?[i].discount.toString() ??
                                                "",
                                            onChanged: (va) {
                                              clear=true;
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

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1?[i].vat.toString() ?? "",
                                              fontSize: 12,

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
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

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
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

                                              fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                            focusNode: listOfxfocusNodes[i][4],
                                              onCompleteFunc: (){
                                               setState(() {
                                                 if( table1[i].isInvoiced!=true){
                                                   clear=true;
                                                   bool? isActive =
                                                       table1[i].isActive;
                                                   setState(() {
                                                     widget.updateCheck(true);

                                                     table1[i] = table1[i].copyWith(updatecheck: true);

                                                     table1[i] = table1[i]
                                                         .copyWith(
                                                         isActive: !isActive!);
                                                   });
                                                   updateFuntion(i);
                                                   if(i!=table1.length-1){
                                                     FocusScope.of(context).requestFocus(listOfxfocusNodes[i+1][0]);
                                                     selctedraw=i+1;

                                                   }
                                                   else{
                                                     FocusScope.of(context).requestFocus(focusNodeList[0]);
                                                   }
                                                 }
                                               });

                                              },
                                              valueChanger:
                                              table1?[i].isActive == null
                                                  ? false
                                                  : table1?[i].isActive,
                                              onSelection: (bool? value) {
                                                if( table1[i].isInvoiced!=true){
                                                  clear=true;
                                                  bool? isActive =
                                                      table1[i].isActive;
                                                  setState(() {
                                                    widget.updateCheck(true);

                                                    table1[i] = table1[i].copyWith(updatecheck: true);

                                                    table1[i] = table1[i]
                                                        .copyWith(
                                                        isActive: !isActive!);

                                                  });

                                                }

                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            textColor:  table1?[i].updatecheck==true?Pellet.bagroundColor:Colors.black,
                                            bagroundColor: table1?[i].updatecheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                            onPress: () {
                                              updateFuntion(i);

                                            },
                                            label:table1[i].updatecheck==true? "Update":"",
                                          ),
                                        )
                                      ]),
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
                                          VariantIdTAble(
                                            text:variantId.toString(),
                                            onTap: (){
                                              selctedraw=-1;
                                              setState(() {

                                              });
                                              showDailogPopUp(
                                                context,
                                                TableConfigurePopup(
                                                  inventory: Variable.inventory_ID,
                                                  type: "variantTabalePopup",
                                                  valueSelect: (VariantId? va) {
                                                    print("vaavvavvavavava"+va.toString());
                                                    print(va!.id.toString());
                                                    print("code" + va!.code.toString());

                                                    setState(() {
                                                      clear=true;
                                                      stockCheck=true;
                                                      variantId = va.code;
                                                      int? id = va!.id;
                                                      print("is is" + id.toString());
                                                      Variable.tableedit = false;
                                                      // stockCheck=true;

                                                      FocusScope.of(context).requestFocus(focusNodeList[0]); // onChange = true;
                                                      context
                                                          .read<
                                                          TableDetailsCubitDartCubit>()
                                                          .getTableDetails(id);
                                                      setState(() {});
                                                      context
                                                          .read<PurchaseStockCubit>()
                                                          .getCurrentStock(
                                                          Variable.inventory_ID,
                                                          variantId);

                                                      // orderType = va!;
                                                    });
                                                  },
                                                ),
                                              );
                                            },
                                          )

                                        // PopUpCall(
                                        //   inventory: Variable.inventory_ID,
                                        //   // label: "purchase UOM",
                                        //   type: "cost-method-list",
                                        //   value: variantId,
                                        //   onSelection: (VariantId? va) {
                                        //     print("vaavvavvavavava"+va.toString());
                                        //     print(va!.id.toString());
                                        //     print("code" + va!.code.toString());
                                        //
                                        //     setState(() {
                                        //       clear=true;
                                        //       stockCheck=true;
                                        //       variantId = va.code;
                                        //       int? id = va!.id;
                                        //       print("is is" + id.toString());
                                        //       Variable.tableedit = false;
                                        //       // stockCheck=true;
                                        //
                                        //       // onChange = true;
                                        //       context
                                        //           .read<
                                        //           TableDetailsCubitDartCubit>()
                                        //           .getTableDetails(id);
                                        //       setState(() {});
                                        //       context
                                        //           .read<PurchaseStockCubit>()
                                        //           .getCurrentStock(
                                        //           Variable.inventory_ID,
                                        //           variantId);
                                        //
                                        //       // orderType = va!;
                                        //     });
                                        //   },
                                        // ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(varinatname ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(barcode ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            stock.toString() ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(returntype ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(returntime ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                            valueChanger: invoiced,
                                            onSelection: (bool? value) {}),
                                      ),
                                      // TableCell(
                                      //   verticalAlignment:
                                      //   TableCellVerticalAlignment.middle,
                                      //   child: textPadding("warrenty" ?? "",
                                      //       fontSize: 12,
                                      //       padding: EdgeInsets.only(
                                      //           left: 11.5, top: 1.5),
                                      //       fontWeight: FontWeight.w500),
                                      // ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(salesUom ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          focusNode: focusNodeList[0],
                                          controller: quanitityTestController,

                                          onChanged: (p0) {
                                            clear=true;
                                            if (p0 == '') {
                                              setState(() {
                                                quantity = 0;
                                                taxableAmount = 0;
                                                sellingPrice = 0;
                                                totalPrice = 0;
                                                setState(() {});
                                              });
                                            } else {
                                              setState(() {
                                                quantity = int.tryParse(p0);
                                              });

                                              setState(() {
                                                if (unitcost1 == 0 ||
                                                    quantity == 0) {
                                                  taxableAmount = 0;
                                                  sellingPrice = 0;
                                                  totalPrice = 0;
                                                } else {
                                                  taxableCalcutatingMethod(
                                                      quantity!,
                                                      unitcost1!,
                                                      etax1!,
                                                      discount1!,
                                                      discountPrice);

                                                  selliPriceCalculation(
                                                      taxableAmount, vat1);
                                                  totalPriceCalculation(
                                                      sellingPrice,
                                                      warrentyPrice);
                                                  setState(() {});
                                                }
                                              });
                                            }
                                            // print(Qty);
                                          },
                                          enable: true,
                                          onComplete: () {
                                            FocusScope.of(context).requestFocus(focusNodeList[1]);
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          focusNode: focusNodeList[1],
                                          controller: unicostController,
                                          onChanged: (p0) {
                                            clear=true;
                                            if (p0 == '')
                                              setState(() {
                                                unitcost1 = 0;
                                                setState(() {});
                                              });
                                            else {
                                              setState(() {
                                                unitcost1 = double.tryParse(p0);
                                              });
                                            }

                                            if (unitcost1 == 0 ||
                                                quantity == 0) {
                                              taxableAmount = 0;
                                              sellingPrice = 0;
                                              totalPrice = 0;
                                            } else {
                                              taxableCalcutatingMethod(
                                                  quantity!,
                                                  unitcost1!,
                                                  etax1!,
                                                  discount1!,
                                                  discountPrice);

                                              selliPriceCalculation(
                                                  taxableAmount, vat1);
                                              totalPriceCalculation(
                                                  sellingPrice, warrentyPrice);
                                            }

                                            setState(() {});
                                            // print(Qty);
                                          },
                                          enable: true,
                                          onComplete: () {
                                            FocusScope.of(context).requestFocus(focusNodeList[2]);
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          focusNode: focusNodeList[2],
                                          controller: excessTestController,
                                          onChanged: (p0) {
                                            clear=true;
                                            if (p0 == '')
                                              setState(() {
                                                etax1 = 0;
                                                setState(() {});
                                              });
                                            else {
                                              setState(() {
                                                etax1 = double.tryParse(p0);
                                                setState(() {});
                                              });
                                            }
                                            if (unitcost1 == 0 ||
                                                quantity == 0) {
                                              taxableAmount = 0;
                                              sellingPrice = 0;
                                              totalPrice = 0;
                                            } else {
                                              taxableCalcutatingMethod(
                                                  quantity!,
                                                  unitcost1!,
                                                  etax1!,
                                                  discount1!,
                                                  discountPrice);

                                              selliPriceCalculation(
                                                  taxableAmount, vat1);
                                              totalPriceCalculation(
                                                  sellingPrice, warrentyPrice);
                                            }
                                            setState(() {});
                                          },
                                          enable: true,
                                          onComplete: () {
                                            FocusScope.of(context).requestFocus(focusNodeList[3]);
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: PopUpCall(
                                          type: "PriceTypePopUpCall",
                                          value: discountPrice,
                                          onSelection: (String va) {
                                            clear=true;
                                            print("+++++++++++++++++++++++");

                                            setState(() {
                                              discountPrice = va;
                                              if (unitcost1 == 0 ||
                                                  quantity == 0) {
                                                taxableAmount = 0;
                                                sellingPrice = 0;
                                                totalPrice = 0;
                                              } else {
                                                taxableCalcutatingMethod(
                                                    quantity!,
                                                    unitcost1!,
                                                    etax1!,
                                                    discount1!,
                                                    discountPrice);

                                                selliPriceCalculation(
                                                    taxableAmount, vat1);
                                                totalPriceCalculation(
                                                    sellingPrice, warrentyPrice);
                                              }

                                              // onChange = true;
                                              // orderType = va!;
                                            });
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          focusNode: focusNodeList[3],
                                          controller: discountTestController,
                                          onChanged: (p0) {
                                            clear=true;
                                            if (p0 == '')
                                              setState(() {
                                                discount1 = 0;
                                              });
                                            else {
                                              setState(() {
                                                discount1 = double.tryParse(p0);
                                              });
                                            }

                                            if (unitcost1 == 0 ||
                                                quantity == 0) {
                                              taxableAmount = 0;
                                              sellingPrice = 0;
                                              totalPrice = 0;
                                            } else {
                                              taxableCalcutatingMethod(
                                                  quantity!,
                                                  unitcost1!,
                                                  etax1!,
                                                  discount1!,
                                                  discountPrice);

                                              selliPriceCalculation(
                                                  taxableAmount, vat1);
                                              totalPriceCalculation(
                                                  sellingPrice, warrentyPrice);
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
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            taxableAmount?.toString() ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            vat1?.toString() ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            sellingPrice?.toString() ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      // TableCell(
                                      //   verticalAlignment:
                                      //   TableCellVerticalAlignment.middle,
                                      //   child: textPadding(
                                      //       warrentyPrice?.toString() ?? "",
                                      //       fontSize: 12,
                                      //       padding: EdgeInsets.only(
                                      //           left: 11.5, top: 1.5),
                                      //       fontWeight: FontWeight.w500),
                                      // ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            totalPrice?.toString() ?? "",
                                            fontSize: 12,

                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                          focusNode: focusNodeList[4],
                                          // color: Color(0xff3E4F5B),
                                          valueChanger: isActive1,
                                          onCompleteFunc: (){
                                            setState(() {
                                              if(stockId!=null){
                                                isActive1 = !isActive1!;
                                                saveFunction();

                                                variantPoppFunc();
                                              }


                                              else{
                                                context.showSnackBarError("The stock does not exist");

                                              }
                                            });
                                          },
                                          onSelection: (bool? value) {
                                            clear=true;
                                            setState(() {
                                              if(stockId!=null){
                                                isActive1 = !isActive1!;

                                              }


                                              else{
                                                context.showSnackBarError("The stock does not exist");

                                              }
                                            });
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: Row(
                                          children: [
                                            TableIconTextButton(
                                              label: "",
                                              icon: Icons.clear,
                                              onPress: () {
                                                setState(() {
                                                  clearTableAddingVariables();
                                                  widget.updation(table1);
                                                });

                                                // onChange=true;
                                                //
                                                // setState(() {
                                                //
                                                //   // print(keys);
                                                //   print(i);
                                                //
                                                //
                                                //   uomList?.removeAt(i);
                                                //   upDate.removeAt(i);
                                                //   codeListController.removeAt(i);
                                                //   upDateButton.removeAt(i);
                                                //   widget.uomTableEdit(
                                                //       type: "1", list: uomList);
                                                // nameListTextEditingController.removeAt(i);
                                                //
                                                // print(keys);
                                                //
                                                // aboutProducts = Storage(
                                                //     name: headingController.text, keyValues: keys);
                                                // widget.storageTableEdit(
                                                //     type: "1", list: aboutProducts);
                                                // });


                                              },
                                            ),
                                            TableTextButton(
                                                label: "Save",
                                                onPress: () {
                                                  saveFunction();
                                                  // setState(() {
                                                  //   if(quantity==0||quantity==""||quantity==null)
                                                  //     context.showSnackBarError("Please enter the quantity");
                                                  //   else if(unitcost1==0||unitcost1==""||unitcost1==null)
                                                  //     context.showSnackBarError("Please enter the unitcost");
                                                  //   else{
                                                  //     table1.add(SalesOrderLines(
                                                  //       variantId: variantId ?? "",
                                                  //       stockId: stockId.toString(),
                                                  //       returnType: returntype,
                                                  //       returnTime: int.tryParse(returntime??""),
                                                  //       salesUom: salesUom,
                                                  //       warrentyId: "a",
                                                  //       discountType: discountPrice,
                                                  //       variaNtname: varinatname ?? "",
                                                  //       barcode: barcode ?? "",
                                                  //       discount: discount1??0,
                                                  //       unitCost: unitcost1??0,
                                                  //       taxableAmount: taxableAmount??0,
                                                  //       quantity: quantity??0,
                                                  //       vat: vat1??0,
                                                  //       excessTax: etax1??0,
                                                  //       sellingPrice: sellingPrice??0,
                                                  //       totalPrice: totalPrice??0,
                                                  //       qty: stock??0,
                                                  //       warrentyPrice: warrentyPrice??0,
                                                  //       isInvoiced: invoiced??false,
                                                  //       isActive: isActive1??false,
                                                  //       updatecheck: false,
                                                  //     ));
                                                  //     print("GAssaliiiiiiiiiiiis"+table1.toString());
                                                  //     currentStock.add(stock??0);
                                                  //     clearTableAddingVariables();
                                                  //     unitcostListControllers.clear();
                                                  //     valueAddingTextEdingController();
                                                  //     widget.updation(table1);
                                                  //
                                                  //   }
                                                  //
                                                  //
                                                  //
                                                  // });
                                                }),

                                          ],
                                        ),
                                      )
                                    ]),
                              ]
                            ],
                          widths: {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(7),
                            2: FlexColumnWidth(4),
                            3: FlexColumnWidth(3),
                            4: FlexColumnWidth(3),
                            5: FlexColumnWidth(3),
                            6: FlexColumnWidth(2),
                            7: FlexColumnWidth(4),
                            8: FlexColumnWidth(2),
                            9: FlexColumnWidth(2),
                            10: FlexColumnWidth(2),
                            11: FlexColumnWidth(3),
                            12: FlexColumnWidth(2),
                            13: FlexColumnWidth(3),
                            14: FlexColumnWidth(2),
                            15: FlexColumnWidth(3),
                            16: FlexColumnWidth(3),
                            17: FlexColumnWidth(3),
                            18: FlexColumnWidth(3),
                            19: FlexColumnWidth(2),
                            20: FlexColumnWidth(3),
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
      }
      ),
    );
  }
  updateFuntion(int i){
    setState(() {
      if(table1[i].quantity==0||table1[i].quantity==""||table1[i].quantity==null)
        context.showSnackBarError("Please enter the quantity");
      else if(table1[i].unitCost==0||table1[i].unitCost==""||table1[i].unitCost==null)
        context.showSnackBarError("Please enter the unitcost");

      else{
        table1[i]=      table1[i].copyWith(updatecheck: false);
        var update=     updateCheckFunc();
        widget.updateCheck(update);

        widget.updation(table1);
      }


    });
  }
  variantPoppFunc(){


    selctedraw=-1;
    setState(() {

    });
    showDailogPopUp(
      context,
      TableConfigurePopup(
        inventory: Variable.inventory_ID,
        type: "variantTabalePopup",
        valueSelect: (VariantId? va) {
          print("vaavvavvavavava"+va.toString());
          print(va!.id.toString());
          print("code" + va!.code.toString());

          setState(() {
            clear=true;
            stockCheck=true;
            variantId = va.code;
            int? id = va!.id;
            print("is is" + id.toString());
            Variable.tableedit = false;
            // stockCheck=true;

            FocusScope.of(context).requestFocus(focusNodeList[0]); // onChange = true;
            context
                .read<
                TableDetailsCubitDartCubit>()
                .getTableDetails(id);
            setState(() {});
            context
                .read<PurchaseStockCubit>()
                .getCurrentStock(
                Variable.inventory_ID,
                variantId);

            // orderType = va!;
          });
        },
      ),
    );
  }
  saveFunction(){
    setState(() {
      if(quantity==0||quantity==""||quantity==null)
        context.showSnackBarError("Please enter the quantity");
      else if(unitcost1==0||unitcost1==""||unitcost1==null)
        context.showSnackBarError("Please enter the unitcost");
      else{
        table1.add(SalesOrderLines(
          variantId: variantId ?? "",
          stockId: stockId.toString(),
          returnType: returntype,
          returnTime: int.tryParse(returntime??""),
          salesUom: salesUom,
          warrentyId: "a",
          discountType: discountPrice,
          variaNtname: varinatname ?? "",
          barcode: barcode ?? "",
          discount: discount1??0,
          unitCost: unitcost1??0,
          taxableAmount: taxableAmount??0,
          quantity: quantity??0,
          vat: vat1??0,
          excessTax: etax1??0,
          sellingPrice: sellingPrice??0,
          totalPrice: totalPrice??0,
          qty: stock??0,
          warrentyPrice: warrentyPrice??0,
          isInvoiced: invoiced??false,
          isActive: isActive1??false,
          updatecheck: false,
        ));
        print("GAssaliiiiiiiiiiiis"+table1.toString());
        currentStock.add(stock??0);
        clearTableAddingVariables();
        unitcostListControllers.clear();
        listOfxfocusNodes.clear();
        valueAddingTextEdingController();
        widget.updation(table1);

      }



    });
  }
}