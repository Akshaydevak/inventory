import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

class GeneralScreen extends StatefulWidget {
  final bool isCollapsed;
  final double? unitcost;
  final PurchaseOrderTableModel? purchaseTable;
  GeneralScreen(this.isCollapsed, this.purchaseTable, {required this.unitcost});
  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  List<OrderLines> table = [];
  PurchaseOrderTableModel? purchaseTable;
  PurchaseCureentStockQty? purchaseCurrentStock;
  bool _value = false;


  TextEditingController inventoryId = TextEditingController();
  TextEditingController vendortrnnumber = TextEditingController();
  TextEditingController ordercode = TextEditingController();
  ScrollController? _scrollController = ScrollController();
  TextEditingController vendoraddress = TextEditingController();
  TextEditingController planned_receipt_date = TextEditingController();
  TextEditingController promised_receipt_date = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController foc = TextEditingController();
  TextEditingController Variableamount = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController orderDate = TextEditingController();
  TextEditingController vendorCode = TextEditingController();
  TextEditingController Paymentcode = TextEditingController();
  TextEditingController Paymentstatus = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController Recievingstatus = TextEditingController();
  TextEditingController invoicestatus = TextEditingController();
  TextEditingController unitcourse = TextEditingController(text: "0");
  TextEditingController excesstax = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController actualcost = TextEditingController();
  TextEditingController grandtotal = TextEditingController();
  TextEditingController discount = TextEditingController();
  NavigationProvider vm = NavigationProvider();

  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;
  bool ? isRecieved = false;
  double? check = 0;
  String? check1 = "";
  int ? stockQty=0;

  String? varinatname = "";
  double? Vamount = 0;
  String? Vbarcode = "";
  int? vvat = 0;
  int? vmaxnqty = 0;
  int? vminqty = 0;
  int? Vgrnadtotal = 0;
  int? vactualCost = 0;
  int? Qty = 0;
  int? eTax = 0;
  int? vfoc = 0;
  int? Vdiscount = 0;
  int? vid = 0;
  String? vrefcod = "";
  String? salesUOM;
  String? purchaseUom;
  int unitcost = 0;
  int discountValue = 0;
  int grands = 0;
  int focValue = 0;
  int VatableValue = 0;
  int excessTax = 0;
  int vatValue = 0;
  int actualValue = 0;
  int excessTAxValue = 0;
  int vatableValue = 0;
  String? variantId;
  List<OrderLines> orderLisnes = [];

  bool onChange = false;
  String orderType = "";

  @override
  void initState() {
    super.initState();
    // table.add(OrderLines(variableAmount: 10,grandTotal: 20,actualCost: 30,unitCost: 30,foc: 1));
    // addition();
  }

  addition() {
    print("enterd");
    print("+==" + table.length.toString());
    for (var i = 0; i < table.length; i++) {
      if(table[i].isActive==true){
      unitcost = unitcost + table[i].unitCost!;

      grands = grands + table[i].grandTotal!;
      actualValue = actualValue + table[i].actualCost!;
      vatValue = vatValue + table[i].vat!;
      discountValue = discountValue + table[i].discount!;
      focValue=focValue+table[i].foc!;

      VatableValue = VatableValue + table[i].variableAmount!;
      excessTAxValue=VatableValue + table[i].excessTax!;
    }}
    unitcourse.text = unitcost == 0 ? "" : unitcost.toString();
    grandtotal.text = grands.toString();
    vat.text = vatValue.toString();

    actualcost.text = actualValue.toString();
    print("actualcost.text"+actualcost.text.toString());
    foc.text = focValue.toString();
    discount.text = discountValue.toString();
    excesstax.text = excessTAxValue.toString();
    Variableamount.text = VatableValue.toString();
   // _value=false;
  }

  @override
  Widget build(BuildContext context) {
    print("+++++++++++++++");
    print(widget.purchaseTable);
    print(widget.unitcost);
    print("+++++++++++++++");

    Size size = MediaQuery.of(context).size;
    vm = Provider.of<NavigationProvider>(context);

    //   Future totalUnitcost(int? value,int? grand,int? foc,int?
    //   actualCost, int? vat,List<OrderLines> orderLines,int ? discount,int ? excesstax,int ?vatableAmount)async{
    //
    // unitcost=value!;
    // discountValue=discount!;
    // grands=grand!;
    // focValue=foc!;
    // orderLisnes=orderLines;
    // VatableValue=vatableAmount!;
    // excessTAxValue=excesstax!;
    //
    // print("+++++++++++++++");
    // print(orderLines);
    //
    // vatValue=vat!;
    // actualValue=actualCost!;
    //
    //
    //
    //
    //     print("unit cost is$unitcost");
    //     // unitcourse.text=unitcost.toString();
    //     print(unitcourse.text);
    //     // setState(() {
    //     //
    //     // });
    //
    //
    //   }
    //
    //
    if (table.length == 0) {
      unitcourse.text = check == 0 ? "" : check.toString();
      grandtotal.text = Vgrnadtotal == 0 ? "" : Vgrnadtotal.toString();
      vat.text = vvat == 0 ? "" : vvat.toString();
      actualcost.text = vactualCost == 0 ? "" : vactualCost.toString();
      print("vfoc"+vfoc.toString());
      foc.text = vfoc == 0 ? "" : vfoc.toString();
      discount.text = Vdiscount == 0 ? "" : Vdiscount.toString();
      excesstax.text = excessTAxValue == 0 ? "" : excessTAxValue.toString();
      Variableamount.text = Vamount == 0 ? "" : Vamount.toString();
    }
//

//
// }
//

// }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TableDetailsCubitDartCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseStockCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseorderpostCubit(),
          ),
        ],
        child: Builder(builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<PurchaseorderpostCubit, PurchaseorderpostState>(
                listener: (context, state) {

                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {
                        if (data.data1) {
                          print(data.data2);
                        } else {
                          print(data.data1);
                        }
                        ;
                      });
                },
              ),
              BlocListener<TableDetailsCubitDartCubit,
                  TableDetailsCubitDartState>(
                listener: (context, state) {
                  print("state++++++++++++++++++++++++++++++++");

                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {
                        purchaseTable = data;
                        setState(() {
                          varinatname = purchaseTable?.purchaseUomName;
                          check = purchaseTable?.unitCost;
                          vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                          print(
                              "vm.totalUnitcost" + vm.totalUnitcost.toString());

                          check1 = purchaseTable?.purchaseUom;
                          vrefcod = purchaseTable?.code;
                          vid = purchaseTable?.id;
                          purchaseTable?.excessTax!=null?eTax=purchaseTable?.excessTax:eTax=0;

                          Vbarcode =
                              purchaseTable?.barCode?.barcodeNumber.toString();
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
                        print("error");
                      },
                      success: (data) {

                        purchaseCurrentStock=data;
                        stockQty=purchaseCurrentStock?.StockQty;
                        setState(() {});
                      });
                },
              ),
            ],
            child: SingleChildScrollView(
              // physics: ScrollPhysics(),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              
                              child:Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //SizedBox(height: height*.030,),

                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          SizedBox(
                                            height: height * .035,
                                          ),

                                          SelectableDropDownpopUp(
                                            label: "order type",
                                            type: "sellingngPrice-basedOn",
                                            value: purchaseUom,
                                            onSelection: (String? va) {
                                              print("+++++++++++++++++++++++");
                                              //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                              setState(() {
                                                purchaseUom = va;

                                                onChange = true;
                                                orderType = va!;
                                              });
                                            },
                                            onAddNew: () {},
                                            restricted: true,
                                          ),
                                          // NewInputCard(
                                          //     controller: controller, title: "Order type"),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: ordercode,
                                            title: "Order code",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: orderDate,
                                            title: "order date",
                                            //label: "Place in setting",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: inventoryId,
                                            title: "Inventory id",
                                            // label: "Place in setting",
                                          ),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                              controller: vendorCode, title: "Vender code"),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: vendoraddress,
                                            title: "Vender Address",
                                            height: 90,
                                            maxLines: 3,
                                          ),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                              controller: vendortrnnumber,
                                              title: "Vender TRN number"),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          BuildDateFormField(
                                            label: "Promised reciept date",
                                            onSaved: (newValue) {
                                              print(newValue);
                                              promised_receipt_date.text =
                                                  newValue.toString();
                                            },
                                          ),
                                          // NewInputCard(
                                          //     controller: promised_receipt_date,
                                          //     title: "Promised reciept date"),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          SizedBox(
                                            height: height * .018,
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: height * .040,
                                          ),

                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          BuildDateFormField(
                                            label: "Planned reciept date",
                                            onSaved: (newValue) {
                                              print(newValue);
                                              planned_receipt_date.text =
                                                  newValue.toString();
                                            },
                                          ),
                                          // NewInputCard(
                                          //     controller: planned_receipt_date,
                                          //     title: "Planned reciept date"),
                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          NewInputCard(
                                              controller: Paymentcode,
                                              title: "Payment code"),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: Paymentstatus,
                                            title: "Payment status",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          NewInputCard(
                                            controller: orderStatus,
                                            title: "Order status",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          NewInputCard(
                                            controller: Recievingstatus,
                                            title: "Recieving status",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .030,
                                          ),
                                          NewInputCard(
                                            controller: invoicestatus,
                                            title: "Invoice status",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          NewInputCard(
                                            controller: note,
                                            title: "Note",
                                            label: "R/O",
                                            height: 90,
                                            maxLines: 3,
                                          ),
                                          SizedBox(
                                            height: height * .020,
                                          ),
                                          NewInputCard(
                                            controller: remarks,
                                            title: "Remarks",
                                            height: 90,
                                            maxLines: 3,
                                          ),

                                          SizedBox(
                                            height: height * .020,
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          NewInputCard(
                                            controller: discount,
                                            title: "Discount",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(controller: foc, title: "Foc",readOnly: true,),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                            controller: unitcourse,
                                            title: "Unit cost",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                              controller: Variableamount,
                                              readOnly: true,
                                              title: "Vartable amount"),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                              controller: excesstax,
                                              readOnly: true,
                                              title: "Excess tax"),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                            controller: vat,
                                            title: "Vat",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                            controller: actualcost,
                                            title: "Actual cost",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .035,
                                          ),
                                          NewInputCard(
                                            controller: grandtotal,
                                            title: "Grand total",
                                            readOnly: true,
                                          ),
                                          SizedBox(
                                            height: height * .008,
                                          ),
                                          SizedBox(
                                            height: height * .008,
                                          ),
                                          SizedBox(
                                            height: height * .018,
                                          ),
                                        ],
                                      )),
                                ],
                              )
                            ),
                          )

                        ],
                      ),
                    ),

                    Scrollbar(
                      controller: _scrollController,
                      isAlwaysShown: true,
                      child: Container(
                        height: 410,
                        //  width: MediaQuery.of(context).size.width,
                        child: ListView(
                          controller: _scrollController,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Container(
                                  // height: 500,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(10),
                                  child: customTable(
                                    border: TableBorder(
                                        verticalInside: BorderSide(
                                            width: 1,
                                            color: Colors.black45,
                                            // color: Colors.blue,
                                            style: BorderStyle.solid),
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
                                              height: 50,
                                              size: 12,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Variant Name',
                                              padding: EdgeInsets.all(7),
                                              height: 46,
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Vendor ref code',
                                              padding: EdgeInsets.all(7),
                                              height: 46,
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            // tableHeadtext('description', size: 10, color: null),
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
                                              'requested qty',
                                              padding: EdgeInsets.all(7),
                                              height: 46,
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Min order qty',
                                              padding: EdgeInsets.all(7),
                                              height: 46,
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Max order qty',
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
                                              'Unit cost',
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
                                              'is active',
                                              padding: EdgeInsets.all(7),
                                              height: 46,
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            // if (widget.onAddNew) textPadding(''),
                                          ]),
                                      // if (!widget.onAddNew &&
                                      //     widget.order?.orderLines != null &&
                                      //     widget.order!.orderLines!.isNotEmpty) ...[
                                      //   for (var i = 0; i < widget.order!.orderLines!.length; i++)

                                      for (var i = 0; i < table.length; i++)
                                        TableRow(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                shape: BoxShape.rectangle,
                                                border: Border(
                                                    left: BorderSide(
                                                        width: .5,
                                                        color: Colors.grey,
                                                        style: BorderStyle.solid),
                                                    bottom:  BorderSide(
                                                        width: .5,
                                                        color: Colors.grey,
                                                        style: BorderStyle.solid),
                                                    right: BorderSide(
                                                        color: Colors.grey,
                                                        width:  .5,
                                                        style: BorderStyle.solid))),
                                            children: [
                                              textPadding(
                                                  (i+1).toString(),
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 1.5),
                                                  fontWeight: FontWeight.w500),
                                              PopUpCall(
                                                // label: "purchase UOM",
                                                type: "cost-method-list",
                                                value: variantId,
                                                onSelection: (VariantId? va) {
                                                  print(va!.id.toString());

                                                  setState(() {
                                                    variantId = va?.code;
                                                    int? id = va!.id;

                                                    onChange = true;
                                                    context
                                                        .read<
                                                            TableDetailsCubitDartCubit>()
                                                        .getTableDetails(1);
                                                    // orderType = va!;
                                                  });
                                                },
                                                onAddNew: () {},
                                                // restricted: true,
                                              ),
                                              textPadding(table[i].variantName!,
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 1.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(vrefcod!,
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(table[i].barcode!,
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(table[i].currentQty.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(table[i].purchaseuom!,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              UnderLinedInput(
                                                onChanged: (p0) {
                                                  Qty = int.tryParse(p0);
                                                  print(Qty);
                                                },
                                                enable: true,
                                                onComplete: () {
                                                  setState(() {
                                                    if (Vamount != 0) {
                                                      Vamount = (((check! * Qty!) +
                                                                  eTax!) -
                                                              Vdiscount!)
                                                          .toDouble();
                                                    }
                                                  });

                                                  setState(() {});
                                                },
                                              ),
                                              textPadding(
                                                  table[i].minimumQty.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(
                                                  table[i].maximumQty.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              Checkbox(
                                                value: table[i].isRecieved,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    this.isRecieved = value;
                                                  });
                                                },
                                              ),
                                              textPadding(table[i].unitCost.toString(),
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 1.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding("",
                                                  fontSize: 12,
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              UnderLinedInput(
                                                onChanged: (p0) {
                                                  Vdiscount = int.tryParse(p0);
                                                  print(Vdiscount);
                                                },
                                                enable: true,
                                                onComplete: () {
                                                  setState(() {
                                                    Vamount =
                                                        (((check! * Qty!) + eTax!) -
                                                                Vdiscount!)
                                                            .toDouble();
                                                    print("Vamount" +
                                                        Vamount.toString());
                                                  });
                                                  // widget.onAdd(VendorDetails(id: id, name: name));
                                                  // id = "";
                                                  // name = "";
                                                  // print("oncomplete");
                                                  setState(() {});
                                                },
                                              ),
                                              textPadding(table[i].discount.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(
                                                  table[i]
                                                      .variableAmount
                                                      .toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              UnderLinedInput(
                                                onChanged: (p0) {
                                                  vvat = int.tryParse(p0);
                                                },
                                                enable: true,
                                                onComplete: () {
                                                  setState(() {
                                                    vactualCost =
                                                        (Vamount! + vvat!).toInt();
                                                    Vgrnadtotal =
                                                        (Vamount! + vvat!).toInt();
                                                  });
                                                  // table.add(OrderLines(variableAmount: 10,grandTotal: 20,actualCost: 30,unitCost: 30,foc: 1));
                                                },
                                              ),
                                              textPadding(
                                                  table[i].actualCost.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding(
                                                  table[i].grandTotal.toString(),
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              textPadding("",
                                                  padding: EdgeInsets.only(
                                                      left: 11.5, top: 11.5),
                                                  fontWeight: FontWeight.w500),
                                              Checkbox(
                                                value: table[i].isActive,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    this.isRecieved = value;
                                                  });
                                                },
                                              ),
                                            ]),

                                      TableRow(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              shape: BoxShape.rectangle,
                                              border: Border(
                                                  left: BorderSide(
                                                      width: 1,
                                                      color: Colors.black45,
                                                      style: BorderStyle.solid),
                                                  right: BorderSide(
                                                      color: Colors.black45,
                                                      width: 1,
                                                      style: BorderStyle.solid))),
                                          children: [
                                            textPadding((table.length+1).toString(),
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            PopUpCall(
                                              // label: "purchase UOM",
                                              type: "cost-method-list",
                                              value: variantId,
                                              onSelection: (VariantId? va) {
                                                print(va!.id.toString());
                                                print("code"+va!.code.toString());

                                                setState(() {
                                                  variantId = va?.code;
                                                  int? id = va!.id;

                                                  onChange = true;
                                                  context
                                                      .read<
                                                          TableDetailsCubitDartCubit>()
                                                      .getTableDetails(1);
                                                  context
                                                      .read<PurchaseStockCubit>()
                                                      .getCurrentStock(1);

                                                  // orderType = va!;
                                                });
                                              },
                                              onAddNew: () {},
                                              // restricted: true,
                                            ),
                                            textPadding(varinatname!,
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding(vrefcod!,
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding(Vbarcode.toString(),
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding(stockQty.toString(),
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding(check1!,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                Qty = int.tryParse(p0);
                                                setState(() {
                                                  if (Vamount != 0) {
                                                    Vamount =
                                                        (((check! * Qty!) + eTax!) -
                                                                Vdiscount!)
                                                            .toDouble();
                                                  }
                                                });
                                                print(Qty);
                                              },
                                              enable: true,
                                              onComplete: () {
                                                setState(() {});

                                                setState(() {});
                                              },
                                            ),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                vminqty = int.tryParse(p0);
                                              },
                                              enable: true,
                                              onComplete: () {
                                                setState(() {});
                                              },
                                            ),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                vmaxnqty = int.tryParse(p0);
                                              },
                                              enable: true,
                                              onComplete: () {
                                                setState(() {});
                                              },
                                            ),
                                            Checkbox(
                                              value: this.isRecieved,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  this.isRecieved = value;
                                                });
                                              },
                                            ),
                                         check==0?   textPadding(check.toString(),
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500):
                                         UnderLinedInput(
                                           initial: check.toString(),
                                           onChanged: (p0) {
                                             setState(() {
                                               check = double.tryParse(p0);
                                               if (Vamount != 0) {
                                                 Vamount =
                                                     (((check! * Qty!) + eTax!) -
                                                         Vdiscount!)
                                                         .toDouble();
                                               }
                                             });


                                           },
                                           enable: true,
                                           onComplete: () {

                                           },
                                         ),
                                            eTax==0?   textPadding(eTax.toString(),
                                                fontSize: 12,
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500):
                                            UnderLinedInput(
                                              initial: eTax.toString(),
                                              onChanged: (p0) {
                                                setState(() {
                                                  eTax = int.tryParse(p0);
                                                  if (Vamount != 0) {
                                                    Vamount =
                                                        (((check! * Qty!) + eTax!) -
                                                            Vdiscount!)
                                                            .toDouble();
                                                  }
                                                });


                                              },
                                              enable: true,
                                              onComplete: () {

                                              },
                                            ),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                Vdiscount = int.tryParse(p0);

                                                setState(() {
                                                  Vamount =
                                                      (((check! * Qty!) + eTax!) -
                                                              Vdiscount!)
                                                          .toDouble();
                                                  print("Vamount" +
                                                      Vamount.toString());
                                                  if(vvat!=0){
                                                    vactualCost =(Vamount!+
                                                        ((Vamount! * vvat!)/100)).toInt();
                                                    Vgrnadtotal
                                                    =(Vamount!+
                                                        ((Vamount! * vvat!)/100)).toInt();
                                                  }
                                                });
                                                print(Vdiscount);
                                              },
                                              enable: true,
                                              onComplete: () {
                                                vm.totalDiscount =
                                                    (vm.totalDiscount!) +
                                                        (Vdiscount!);
                                                print("vm.totalDiscount" +
                                                    vm.totalDiscount.toString());

                                                // widget.onAdd(VendorDetails(id: id, name: name));
                                                // id = "";
                                                // name = "";
                                                // print("oncomplete");
                                                setState(() {});
                                              },
                                            ),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                setState(() {
                                                  vfoc = int.tryParse(p0);
                                                });


                                              },
                                              enable: true,
                                              onComplete: () {

                                              },
                                            ),
                                            textPadding(Vamount.toString(),
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            UnderLinedInput(
                                              onChanged: (p0) {
                                                vvat = int.tryParse(p0);
                                                setState(() {
                                                  vactualCost =(Vamount!+
                                                      ((Vamount! * vvat!)/100)).toInt();
                                                  Vgrnadtotal
                                                  =(Vamount!+
                                                      ((Vamount! * vvat!)/100)).toInt();
                                                });
                                              },
                                              enable: true,
                                              onComplete: () {
                                                // table.add(OrderLines(variableAmount: 10,grandTotal: 20,actualCost: 30,unitCost: 30,foc: 1));
                                                print("vactualCost" +
                                                    vactualCost.toString());
                                                print("+++++" +
                                                    table.length.toString());

                                                // table?.add(oderlines1);
                                                // print("+++++"+oderlines.toString());

                                                // widget.onAdd(VendorDetails(id: id, name: name));
                                                // id = "";
                                                // name = "";
                                                // print("oncomplete");
                                              },
                                            ),
                                            textPadding(vactualCost.toString(),
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding(Vgrnadtotal.toString(),
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
                                            textPadding("",
                                                padding: EdgeInsets.only(
                                                    left: 11.5, top: 11.5),
                                                fontWeight: FontWeight.w500),
          InkWell(

          child: Center(child: Container(
            margin: EdgeInsets.only(top: 11.5),
            decoration: BoxDecoration(
        color:    _value?Colors.blue:Colors.transparent,
                border: Border.all(
                width: 2,
                color: Colors.grey
            )

            ),




              child:_value? Icon(Icons.check,size: 15,):SizedBox(height: 15,width:15,))),



            onTap: (){
              setState(() {
                _value=!_value;

              });
            },
          ),

                                          ]),
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
                                      13: FractionColumnWidth(.03),
                                      //  14: FractionColumnWidth(.05),
                                      //  15: FractionColumnWidth(.05),
                                      //  16: FractionColumnWidth(.03),
                                      // 17: FractionColumnWidth(.05),
                                      //  18: FractionColumnWidth(.05),
                                      //  19: FractionColumnWidth(.05),
                                      //  20: FractionColumnWidth(.05),
                                    },
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    table.add(OrderLines(isRecieved:isRecieved,
                                        isActive:_value,
                                      supplierCode: vid.toString(),
                                      variantId: variantId,
                                      variantName: varinatname,
                                      barcode: Vbarcode,
                                      cvd: "sss",
                                      foc: vfoc,
                                      maximumQty: vmaxnqty,
                                      minimumQty: vminqty,
                                      excessTax: 2,
                                      vat: vvat,
                                      actualCost: vactualCost,
                                      purchaseuom: check1,
                                      discount: Vdiscount,
                                      requestedQty: Qty,
                                      unitCost: check!.toInt(),
                                      grandTotal: Vgrnadtotal,
                                      variableAmount: Vamount!.toInt(),
                                      currentQty: stockQty,


                                    ));
                                    addition();
                                    vid = 0;
                                    variantId = "";
                                    varinatname = "";
                                    vrefcod = "";
                                    Vbarcode = "";
                                    check1 = "";
                                    check = 0;
                                    Qty = 0;
                                    Vdiscount = 0;
                                    Vamount = 0;
                                    Vgrnadtotal = 0;
                                    vactualCost = 0;
                                    unitcost = 0;
                                    grands = 0;
                                    actualValue = 0;
                                    VatableValue = 0;
                                    discountValue = 0;
                                    vatValue = 0;
                                    stockQty=0;
                                    _value=false;
                                    isRecieved=false;

                                    // _value=false;

                                    setState(() {});
                                    print("ttt" + table.toString());



                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: size.height * .008,left: size.height * .004,right: size.height * .006 ),
                                    alignment: Alignment.center,
                                    height: size.width * .016,
                                    width: size.width * .016,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(100),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .008,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Button(Icons.delete, Colors.red,
                            ctx: context,
                            text: "Discard",
                            onApply: () {},
                            height: 29,
                            width: 90,
                            labelcolor: Colors.red,
                            iconColor: Colors.red,
                            bdr: true),
                        SizedBox(
                          width: width * .008,
                        ),
                        InkWell(
                          onTap: () {

                            if (vid != 0) {
                              table.add(OrderLines(
                                supplierCode: vid.toString(),
                                variantId: variantId,
                                variantName: varinatname,
                                barcode: Vbarcode,
                                cvd: "sss",
                                foc: 22,
                                maximumQty: vmaxnqty,
                                minimumQty: vminqty,
                                excessTax: 0,
                                vat: vvat,
                                actualCost: 10,
                                purchaseuom: check1,
                                discount: Vdiscount,
                                requestedQty: Qty,
                                unitCost: check!.toInt(),
                                grandTotal: Vgrnadtotal,
                                variableAmount: 3,
                              ));
                            }

                            PurchaseOrderPost model = PurchaseOrderPost(
                              purchaseOrderType: orderType,
                              iventoryId: inventoryId.text,
                              vendorId: vendorCode.text,
                              vendorTrnNumber: vendortrnnumber.text,
                              vendorMailId: "Akkkkk@gmail.com",
                              vendorAddress: vendoraddress.text,
                              address1: "Akshhy",
                              address2: "parammal",
                              promisedReceiptdate:"2022-04-29",
                              //promised_receipt_date.text,
                              plannedRecieptDate:"2022-04-29",
                              //planned_receipt_date.text,
                              note: note.text,
                              remarks: remarks.text,
                              discount: int.parse(discount.text),
                              foc: int.parse(foc.text),
                              unitcost: int.parse(unitcourse.text),
                              excessTax: int.parse(excesstax.text),
                              actualCost: int.parse(actualcost.text),
                              vat: int.parse(vat.text),
                              grandTotal: int.parse(grandtotal.text),
                              variableAmount: int.parse(Variableamount.text),
                              createdBy: "www",
                              orderLines: table,
                            );
                            print("dddddd" + vid.toString());
                            print("akkkkk");
                            context
                                .read<PurchaseorderpostCubit>()
                                .postPurchase(model);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 29,
                            width: 90,
                            // decoration: BoxDecoration(
                            //     color: Color,
                            //     border: bdr
                            //         ? Border.all(
                            //       color: border, //color of border
                            //       width: 1,
                            //     )
                            //         : Border() //Border
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.save,
                                  color: Colors.white,
                                ),
                                Text(
                                  "save",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ), //BoxDecoration
                          ),
                        ),
//
                        SizedBox(
                          width: width * .008,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

Widget Button(IconData icon, Color border,
    {Color Color = Colors.transparent,
    required BuildContext ctx,
    required String text,
    double height = 30,
    double width = 30,
    Color labelcolor = Colors.white,
    Color iconColor = Colors.black,
    required Function onApply,
    bool bdr = false}) {
  return InkWell(
    onTap: () {
      onApply(ctx);
    },
    child: Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color,
          border: bdr
              ? Border.all(
                  color: border, //color of border
                  width: 1,
                )
              : Border() //Border
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            text,
            style: TextStyle(color: labelcolor, fontWeight: FontWeight.bold),
          )
        ],
      ), //BoxDecoration
    ),
  );
}
