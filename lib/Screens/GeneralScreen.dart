import 'dart:html';

import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/purchase_order_patch_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
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
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

import 'Dashboard.dart';

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
  List<OrderLines>? order = [];
  List<PurchaseOrder> result = [];
  PurchaseOrderTableModel? purchaseTable;
  PurchaseCureentStockQty? purchaseCurrentStock;
  bool _value = false;
  bool select=false;
  TextEditingController itemsearch = TextEditingController();

  TextEditingController inventoryId = TextEditingController();
  TextEditingController vendortrnnumber = TextEditingController();
  TextEditingController ordercode = TextEditingController();
  ScrollController? _scrollController = ScrollController();
  TextEditingController vendoraddress = TextEditingController();
  TextEditingController planned_receipt_date=TextEditingController() ;
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

  // List<Employee> employees = <Employee>[];
  // late EmployeeDataSource employeeDataSource;
  bool? isRecieved = false;
  bool? tableEdit=false;
  int selectedVertical=0;
  bool? isInvoiced = false;
  double? check = 0;
  String? check1 = "";
  int? stockQty = 0;
  int? veritiaclid=1;
  String? address1='';
  String ? address2="";
  String? varinatname = "";
  double? Vamount = 0;
  String? Vbarcode = "";
  double? vvat = 0;
  int? vmaxnqty = 0;
  int? vminqty = 0;
  double? Vgrnadtotal = 0;
  double? vactualCost = 0;
  int? Qty = 0;
  double? eTax = 0;
  double? vfoc = 0;
  int? Vdiscount = 0;
  int? vid = 0;
  String? vrefcod = "";
  String? salesUOM;
  String? purchaseUom;
  double unitcost = 0;
  int discountValue = 0;
  double grands = 0;
  double focValue = 0;
  double VatableValue = 0;
  double excessTax = 0;
  double vatValue = 0;
  double actualValue = 0;
  double excessTAxValue = 0;
  double vatableValue = 0;
  String? variantId;
  List<OrderLines> orderLisnes = [];

  bool onChange = false;
  String orderType = "";

  late AutoScrollController controller;

  @override
  void initState() {
    // context.read<GetVariantCubit>().getVariantList();

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }

  addition() {
    print("enterd");
    print("+==" + table.length.toString());
    for (var i = 0; i < table.length; i++) {
      if (table[i].isActive == true) {
        unitcost = unitcost + table[i].unitCost!;

        grands = grands + table[i].grandTotal!;
        actualValue = actualValue + table[i].actualCost!;
        vatValue = vatValue + table[i].vat!;
        discountValue = discountValue + table[i].discount!;
        focValue = focValue + table[i].foc!;

        VatableValue = VatableValue + table[i].variableAmount!;

        excessTAxValue = excessTAxValue + table[i].excessTax!;
      }
    }
    unitcourse.text = unitcost == 0 ? "" : unitcost.toString();
    grandtotal.text = grands.toString();
    vat.text = vatValue.toString();

    actualcost.text = actualValue.toString();
    print("actualcost.text" + actualcost.text.toString());
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
    // if (table.length == 0) {
    //   unitcourse.text = check == 0 ? "" : check.toString();
    //   grandtotal.text = Vgrnadtotal == 0 ? "" : Vgrnadtotal.toString();
    //   vat.text = vvat == 0 ? "" : vvat.toString();
    //   actualcost.text = vactualCost == 0 ? "" : vactualCost.toString();
    //   print("vfoc" + vfoc.toString());
    //   foc.text = vfoc == 0 ? "" : vfoc.toString();
    //   discount.text = Vdiscount == 0 ? "" : Vdiscount.toString();
    //   excesstax.text = excessTAxValue == 0 ? "" : excessTAxValue.toString();
    //   Variableamount.text = Vamount == 0 ? "" : Vamount.toString();
    // }
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
            create: (context) =>
                InventorysearchCubit()..getInventorySearch("code"),
          ),
          BlocProvider(
            create: (context) => TableDetailsCubitDartCubit(),
          ),
          BlocProvider(
            create: (context) => TableDetailsCubitDartCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseStockCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseorderpostCubit(),
          ),
          BlocProvider(
            create: (context) => GeneralPurchaseReadCubit()..getGeneralPurchaseRead(veritiaclid!),
          ),
          BlocProvider(
            create: (context) => PurchaseOrderPatchCubit(),
          ),
        ],
        child: Builder(builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<PurchaseorderpostCubit, PurchaseorderpostState>(
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
                        setState(() {
                          varinatname = purchaseTable?.name;
                          check = purchaseTable?.unitCost;
                          vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                          print(
                              "vm.totalUnitcost" + vm.totalUnitcost.toString());

                          check1 = purchaseTable?.purchaseUomName;
                          vrefcod = purchaseTable?.code;
                          vid = purchaseTable?.id;
                          purchaseTable?.excessTax != null
                              ? eTax = purchaseTable?.excessTax
                              : eTax = 0;

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
                        purchaseCurrentStock = data;
                        stockQty = purchaseCurrentStock?.StockQty;
                        setState(() {});
                      });
                },
              ),
              BlocListener<GeneralPurchaseReadCubit, GeneralPurchaseReadState>(
                listener: (context, state) {
                  print("state++++++++++++++++++++++++++++++++");

                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {

                        setState(() {
                          data.data?.orderLines != null
                              ? table = data.data?.orderLines ?? []
                              : table = [];
                          inventoryId.text=data.data?.iventoryId??"";
                          vendortrnnumber.text=data.data?.vendorTrnNumber??"";
                          vendoraddress.text=data.data?.vendorAddress??"";
                          note.text=data.data?.note??"";
                          purchaseUom=data.data?.purchaseOrderType??"";
                          orderType=data.data?.purchaseOrderType??"";

                          remarks.text=data.data?.remarks??"";
                          unitcourse.text=data.data?.unitcost.toString()??"";
                          excesstax.text=data.data?.excessTax.toString()??"";
                          actualcost.text=data.data?.actualCost.toString()??"";
                          vat.text=data.data?.vat.toString()??"";
                          grandtotal.text=data.data?.grandTotal.toString()??"";
                          Variableamount.text=data.data?.variableAmount.toString()??"";
                          foc.text=data.data?.foc.toString()??"";
                          discount.text=data.data?.discount.toString()??"";
                          discount.text=data.data?.discount.toString()??"";
                          ordercode.text=data.data?.orderCode.toString()??"";
                          vendorCode.text=data.data?.vendorId.toString()??"";
                          Recievingstatus.text=data.data?.recievingStatus??"";
                          Paymentstatus.text=data.data?.paymentStatus??"";
                          Paymentcode.text=data.data?.paymentcode??"";
                          promised_receipt_date.text=data.data?.promisedReceiptdate??"";
                          planned_receipt_date.text=data.data?.plannedRecieptDate??"";
                          print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                          print("data.data?.promisedReceiptdate${ planned_receipt_date.text}");
                          address1=data.data?.address1??"";
                          address2=data.data?.address2??"";


                        });
                      });
                },
              ),
              BlocListener<PurchaseOrderPatchCubit, PurchaseOrderPatchState>(
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
            ],
            child: BlocConsumer<InventorysearchCubit, InventorysearchState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (list) {

                      result = list.data;
                      setState(() {

                        print(result);
                        print(result[0].id);
                      });
                    });
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  // physics: ScrollPhysics(),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),

                          child: Visibility(
                            visible: !widget.isCollapsed,
                            child: Container(
                              height: height,
                              // height: double.minPositive,
                              width: MediaQuery.of(context).size.width * .172,
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
                                        MediaQuery.of(context).size.height * .008,
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
                                                      fontSize: width * .010,
                                                      overflow:
                                                          TextOverflow.ellipsis),
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
                                            separatorBuilder: (context, index) {
                                              return Divider(
                                                height: 0,
                                                color: Color(0xff2B3944)
                                                    .withOpacity(0.3),
                                                // thickness: 1,
                                              );
                                            },
                                            physics: ScrollPhysics(),
                                            controller: controller,
                                            itemBuilder: (context, index) {
                                              return AutoScrollTag(
                                                  highlightColor: Colors.red,
                                                  controller: controller,
                                                  key: ValueKey(index),
                                                  index: index,
                                                  child: ItemCard(
                                                    index: index,
                                                    selectedVertical: selectedVertical,
                                                    item: result[index].orderCode,
                                                    id: result[index]
                                                        .id
                                                        .toString(),
                                                    onClick: () {
                                                      setState(() {
                                                        select=false;
                                                        selectedVertical=index;

                                                        veritiaclid =
                                                            result[index].id;
                                                        context
                                                            .read<
                                                                GeneralPurchaseReadCubit>()
                                                            .getGeneralPurchaseRead(
                                                                veritiaclid!);
                                                      });
                                                    },
                                                  ));
                                            },
                                            itemCount: result.length,
                                          )


                                          ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [


                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            select=true;
                                            table.clear();
                                            inventoryId.text="";
                                            vendortrnnumber.text="";
                                            ordercode.text="";
                                            vendoraddress.text="";
                                            planned_receipt_date.text="";
                                            promised_receipt_date.text="";
                                            remarks.text="";
                                            orderStatus.text="";
                                            orderDate.text="";
                                            ordercode.text="";
                                            note.text="";
                                            discount.text="";
                                            foc.text="";
                                            unitcourse.text="";
                                            vat.text="";
                                            Variableamount.text="";
                                            excesstax.text="";
                                            grandtotal.text="";
                                            actualcost.text="";
                                            vendorCode.text="";
                                            Recievingstatus.text="";
                                            address2="";
                                            address1="";
                                            purchaseUom="";

                                          });


                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: size.height * .008),
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
                                            Icons.remove ,
                                            color: Colors.black,
                                            size: size.width * .010,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                child: Row(
                                              children: [
                                                Expanded(
                                                    child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
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
                                                      type:
                                                          "sellingngPrice-basedOn",
                                                      value: purchaseUom,
                                                      onSelection: (String? va) {
                                                        print(
                                                            "+++++++++++++++++++++++");
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
                                                        controller: vendorCode,
                                                        title: "Vender code"),
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
                                                    //  initialValue :DateTime.parse(planned_receipt_date.text),
                                                      label: "Promised reciept date",
                                                      onSaved: (newValue) {
                                                        print(newValue);
                                                        var formattedDate = "${newValue?.year}-${newValue?.month}-${newValue?.day}";
                                                        promised_receipt_date.text =
                                                            formattedDate.toString();
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
                                                      initialValue :planned_receipt_date.text!=""?DateTime.parse(planned_receipt_date.text):DateTime.now(),
                                                      label: "Planned reciept date",
                                                      onSaved: (newValue) {
                                                        var formattedDate = "${newValue?.year}-${newValue?.month}-${newValue?.day}";


                                                        planned_receipt_date.text =
                                                            formattedDate.toString();
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
                                                        title: "Payment code",
                                                        readOnly: true),
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
                                                      //label: "R/O",
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
                                                    NewInputCard(
                                                      controller: foc,
                                                      title: "Foc",
                                                      readOnly: true,
                                                    ),
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
                                            )),
                                          )
                                        ],
                                      ),
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
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              padding: EdgeInsets.all(10),
                                              child: customTable(
                                                border: TableBorder(
                                                    verticalInside: BorderSide(
                                                        width: 1,
                                                        color: Colors.black45,
                                                        // color: Colors.blue,
                                                        style:
                                                            BorderStyle.solid),
                                                    horizontalInside:
                                                        BorderSide.none),
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
                                                        tableHeadtext(
                                                          'Vendor ref code',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        // tableHeadtext('description', size: 10, color: null),
                                                        tableHeadtext(
                                                          'barcode',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),

                                                        tableHeadtext(
                                                          'current qty',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'purchase uom',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'requested qty',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'Min order qty',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'Max order qty',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'is recieved',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'Unit cost',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'excise tax',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'discount',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'foc',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'vatable amount',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),

                                                        tableHeadtext(
                                                          'vat',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'actual cost',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'grand total',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'is invoiced',
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          height: 46,
                                                          size: 13,
                                                          // color: Palette.containerDarknew,
                                                          // textColor: Palette.white
                                                        ),
                                                        tableHeadtext(
                                                          'is active',
                                                          padding:
                                                              EdgeInsets.all(7),
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
                                                  if (table != null)
                                                    for (var i = 0;
                                                        i < table.length;
                                                        i++)
                                                      TableRow(
                                                          decoration: BoxDecoration(
                                                              color: Colors.grey
                                                                  .shade200,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border: Border(
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
                                                            textPadding(
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
                                                            textPadding(
                                                                table[i]
                                                                    .variantId!,
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
                                                            textPadding(
                                                                table[i]
                                                                    .variantName!,
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
                                                            textPadding(
                                                                vrefcod!,
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
                                                            textPadding(
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
                                                            textPadding(
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
                                                            textPadding(
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
                                                            UnderLinedInput(
                                                              onChanged: (p0) {
                                                                Qty = int
                                                                    .tryParse(
                                                                        p0);
                                                                print(Qty);
                                                                print("editwork"+i.toString());
                                                                setState(() {
                                                                  tableEdit=true;
                                                                });
                                                              },
                                                              enable: true,
                                                              onComplete: () {
                                                                setState(() {
                                                                  if (Vamount !=
                                                                      0) {
                                                                    Vamount = (((check! * Qty!) +
                                                                                eTax!) -
                                                                            Vdiscount!)
                                                                        .toDouble();
                                                                  }
                                                                });

                                                                setState(() {});
                                                              },
                                                            ),
                                                            tableEdit==true?Text("Akkkkk"):
                                                            textPadding(
                                                                table[i]
                                                                    .minimumQty
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
                                                            textPadding(
                                                                table[i]
                                                                    .maximumQty
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
                                                            Checkbox(
                                                              value: table[i]
                                                                  .isRecieved==null?false: table[i]
                                                                  .isRecieved,
                                                              onChanged: (bool?
                                                                  value) {
                                                                setState(() {
                                                                  this.isRecieved =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            textPadding(
                                                                table[i]
                                                                    .unitCost
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
                                                            textPadding(
                                                                table[i]
                                                                    .excessTax
                                                                    .toString(),
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
                                                            UnderLinedInput(
                                                              onChanged: (p0) {
                                                                Vdiscount = int
                                                                    .tryParse(
                                                                        p0);
                                                                print(
                                                                    Vdiscount);
                                                              },
                                                              enable: true,
                                                              onComplete: () {
                                                                setState(() {
                                                                  Vamount = (((check! * Qty!) +
                                                                              eTax!) -
                                                                          Vdiscount!)
                                                                      .toDouble();
                                                                  print("Vamount" +
                                                                      Vamount
                                                                          .toString());
                                                                });

                                                                setState(() {});
                                                              },
                                                            ),
                                                            textPadding(
                                                                table[i]
                                                                    .discount
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
                                                            textPadding(
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
                                                            textPadding(
                                                                table[i]
                                                                    .vat
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
                                                            textPadding(
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
                                                            textPadding(
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
                                                            Checkbox(
                                                              value: table[i]
                                                                  .isRecieved==null?false:table[i]
                                                                  .isRecieved,
                                                              onChanged: (bool?
                                                                  value) {
                                                                setState(() {
                                                                  // this.isRecieved =
                                                                  //     value;
                                                                });
                                                              },
                                                            ),
                                                            Checkbox(
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
                                                          ]),
//********************************************************************************************************************
                                                  TableRow(
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .grey.shade200,
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: const Border(
                                                              left: BorderSide(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .black45,
                                                                  style:
                                                                      BorderStyle
                                                                          .solid),
                                                              right: BorderSide(
                                                                  color: Colors
                                                                      .black45,
                                                                  width: 1,
                                                                  style: BorderStyle
                                                                      .solid))),
                                                      children: [
                                                        textPadding(
                                                            (table.length + 1)
                                                                .toString(),
                                                            fontSize: 12,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                              variantId =
                                                                  va?.code;
                                                              int? id = va!.id;
                                                              print("is is"+id.toString());

                                                              onChange = true;
                                                              context
                                                                  .read<
                                                                      TableDetailsCubitDartCubit>()
                                                                  .getTableDetails(
                                                                      id);
                                                              context
                                                                  .read<
                                                                      PurchaseStockCubit>()
                                                                  .getCurrentStock(
                                                                  id,inventoryId.text);

                                                              // orderType = va!;
                                                            });
                                                          },
                                                          onAddNew: () {},
                                                          // restricted: true,
                                                        ),
                                                        textPadding(
                                                            varinatname!,
                                                            fontSize: 12,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textPadding(vrefcod!,
                                                            fontSize: 12,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textPadding(
                                                            Vbarcode.toString(),
                                                            fontSize: 12,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textPadding(
                                                            stockQty.toString(),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textPadding(check1!,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        UnderLinedInput(
                                                          onChanged: (p0) {
                                                            if (p0 == '') {
                                                              setState(() {
                                                                Qty = 0;
                                                                Vamount = 0;
                                                                Vgrnadtotal = 0;
                                                                vactualCost = 0;
                                                              });
                                                            } else {
                                                              setState(() {
                                                                Qty = int
                                                                    .tryParse(
                                                                        p0);
                                                              });
                                                            }
                                                            setState(() {
                                                              if (check != 0) {
                                                                Vamount = (((check! *
                                                                                Qty!) +
                                                                            eTax!) -
                                                                        Vdiscount!)
                                                                    .toDouble();

                                                                vactualCost = (Vamount! +
                                                                        ((Vamount! *
                                                                                vvat!) /
                                                                            100))
                                                                    ;
                                                                Vgrnadtotal = (Vamount! +
                                                                        ((Vamount! *
                                                                                vvat!) /
                                                                            100))
                                                                    ;

                                                                if (Vamount !=
                                                                    0) {
                                                                  Vamount = (((check! * Qty!) +
                                                                              eTax!) -
                                                                          Vdiscount!)
                                                                      .toDouble();
                                                                }
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
                                                            vminqty =
                                                                int.tryParse(
                                                                    p0);
                                                          },
                                                          enable: true,
                                                          onComplete: () {
                                                            setState(() {});
                                                          },
                                                        ),
                                                        UnderLinedInput(
                                                          onChanged: (p0) {
                                                            vmaxnqty =
                                                                int.tryParse(
                                                                    p0);
                                                          },
                                                          enable: true,
                                                          onComplete: () {
                                                            setState(() {});
                                                          },
                                                        ),
                                                        Checkbox(
                                                          value:
                                                              this.isRecieved,
                                                          onChanged:
                                                              (bool? value) {
                                                            setState(() {
                                                              // this.isRecieved =
                                                              //     value;
                                                            });
                                                          },
                                                        ),
                                                        check == 0
                                                            ? textPadding(
                                                                check
                                                                    .toString(),
                                                                fontSize: 12,
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            11.5),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)
                                                            : UnderLinedInput(
                                                                initial: check
                                                                    .toString(),
                                                                onChanged:
                                                                    (p0) {
                                                                  if (p0 ==
                                                                      "") {
                                                                    setState(
                                                                        () {
                                                                      check = 0;
                                                                      if (Vamount !=
                                                                          0) {
                                                                        Vamount =
                                                                            (((check! * Qty!) + eTax!) - Vdiscount!).toDouble();
                                                                        vactualCost =
                                                                            (Vamount! + ((Vamount! * vvat!) / 100));
                                                                        Vgrnadtotal =
                                                                            (Vamount! + ((Vamount! * vvat!) / 100));
                                                                      }
                                                                    });
                                                                  }
                                                                  setState(() {
                                                                    check = double
                                                                        .tryParse(
                                                                            p0);

                                                                    Vamount = (((check! * Qty!) +
                                                                                eTax!) -
                                                                            Vdiscount!)
                                                                        .toDouble();
                                                                  });
                                                                },
                                                                enable: true,
                                                                onComplete:
                                                                    () {},
                                                              ),
                                                        eTax == 0
                                                            ? UnderLinedInput(
                                                                onChanged:
                                                                    (p0) {
                                                                  if (p0 ==
                                                                      "") {
                                                                    setState(
                                                                        () {
                                                                      eTax = 0;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      eTax = double
                                                                          .tryParse(
                                                                              p0);
                                                                    });
                                                                  }

                                                                  setState(() {
                                                                    if (Vamount !=
                                                                        0) {
                                                                      Vamount = (((check! * Qty!) + eTax!) -
                                                                              Vdiscount!)
                                                                          .toDouble();
                                                                      vactualCost =
                                                                          (Vamount! + ((Vamount! * vvat!) / 100))
                                                                              ;
                                                                      Vgrnadtotal =
                                                                          (Vamount! + ((Vamount! * vvat!) / 100))
                                                                              ;
                                                                    }
                                                                  });
                                                                },
                                                                enable: true,
                                                                onComplete:
                                                                    () {},
                                                              )
                                                            : UnderLinedInput(
                                                                initial: eTax
                                                                    .toString(),
                                                                onChanged:
                                                                    (p0) {
                                                                  if (p0 ==
                                                                      "") {
                                                                    setState(
                                                                        () {
                                                                      eTax = 0;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      eTax = double.tryParse(
                                                                              p0);
                                                                    });
                                                                  }

                                                                  setState(() {
                                                                    if (Vamount !=
                                                                        0) {
                                                                      Vamount = (((check! * Qty!) + eTax!) -
                                                                              Vdiscount!)
                                                                          .toDouble();
                                                                      vactualCost =
                                                                          (Vamount! + ((Vamount! * vvat!) / 100))
                                                                              ;
                                                                      Vgrnadtotal =
                                                                          (Vamount! + ((Vamount! * vvat!) / 100))
                                                                              ;
                                                                    }
                                                                  });
                                                                },
                                                                enable: true,
                                                                onComplete:
                                                                    () {},
                                                              ),
                                                        UnderLinedInput(
                                                          onChanged: (p0) {
                                                            if (p0 == '')
                                                              setState(() {
                                                                Vdiscount = 0;
                                                              });
                                                            else {
                                                              setState(() {
                                                                Vdiscount = int
                                                                    .tryParse(
                                                                        p0);
                                                              });
                                                            }

                                                            Vamount = (((check! *
                                                                            Qty!) +
                                                                        eTax!) -
                                                                    Vdiscount!)
                                                                .toDouble();

                                                            vactualCost = (Vamount! +
                                                                    ((Vamount! *
                                                                            vvat!) /
                                                                        100))
                                                                ;
                                                            Vgrnadtotal = (Vamount! +
                                                                    ((Vamount! *
                                                                            vvat!) /
                                                                        100))
                                                               ;

                                                            setState(() {});
                                                          },
                                                          enable: true,
                                                          onComplete: () {
                                                            vm.totalDiscount =
                                                                (vm.totalDiscount!) +
                                                                    (Vdiscount!);
                                                            print("vm.totalDiscount" +
                                                                vm.totalDiscount
                                                                    .toString());

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
                                                              if (p0 == '')
                                                                setState(() {
                                                                  vfoc = 0;
                                                                });
                                                              else {
                                                                setState(() {
                                                                  vfoc = double
                                                                      .tryParse(
                                                                          p0);
                                                                });
                                                              }
                                                            });
                                                          },
                                                          enable: true,
                                                          onComplete: () {},
                                                        ),
                                                        textPadding(
                                                            Vamount.toString(),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        UnderLinedInput(
                                                          onChanged: (p0) {
                                                            if (p0 == "") {
                                                              print("null");
                                                              setState(() {
                                                                vvat = 0;
                                                                vactualCost = (Vamount! +
                                                                        ((Vamount! *
                                                                                vvat!) /
                                                                            100))
                                                                   ;
                                                                Vgrnadtotal = (Vamount! +
                                                                        ((Vamount! *
                                                                                vvat!) /
                                                                            100))
                                                                   ;
                                                              });
                                                            }
                                                            print("vvvaaat" +
                                                                p0.toString());
                                                            vvat = double.tryParse(
                                                                p0);
                                                            setState(() {
                                                              vactualCost = (Vamount! +
                                                                      ((Vamount! *
                                                                              vvat!) /
                                                                          100))
                                                                 ;
                                                              Vgrnadtotal = (Vamount! +
                                                                      ((Vamount! *
                                                                              vvat!) /
                                                                          100))
                                                                  ;
                                                            });
                                                          },
                                                          enable: true,
                                                          onComplete: () {
                                                            // table.add(OrderLines(variableAmount: 10,grandTotal: 20,actualCost: 30,unitCost: 30,foc: 1));
                                                            print("vactualCost" +
                                                                vactualCost
                                                                    .toString());
                                                            print("+++++" +
                                                                table.length
                                                                    .toString());

                                                            // table?.add(oderlines1);
                                                            // print("+++++"+oderlines.toString());

                                                            // widget.onAdd(VendorDetails(id: id, name: name));
                                                            // id = "";
                                                            // name = "";
                                                            // print("oncomplete");
                                                          },
                                                        ),
                                                        textPadding(
                                                            vactualCost
                                                                .toString(),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textPadding(
                                                            Vgrnadtotal
                                                                .toString(),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.5,
                                                                    top: 11.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        Checkbox(
                                                          value: isInvoiced,
                                                          onChanged:
                                                              (bool? value) {
                                                            setState(() {
                                                              // this.isRecieved =
                                                              //     value;
                                                            });
                                                          },
                                                        ),
                                                        InkWell(
                                                          child: Center(
                                                              child: Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              11.5),
                                                                  decoration: BoxDecoration(
                                                                      color: _value
                                                                          ? Colors
                                                                              .blue
                                                                          : Colors
                                                                              .transparent,
                                                                      border: Border.all(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Colors.grey)),
                                                                  child: _value
                                                                      ? Icon(
                                                                          Icons
                                                                              .check,
                                                                          size:
                                                                              15,
                                                                        )
                                                                      : SizedBox(
                                                                          height:
                                                                              15,
                                                                          width:
                                                                              15,
                                                                        ))),
                                                          onTap: () {
                                                            setState(() {
                                                              if (vminqty! >
                                                                  vmaxnqty!) {
                                                                context.showSnackBarError(
                                                                    "the minimum order is always less than maximum order");
                                                              } else {
                                                                _value =
                                                                    !_value;
                                                                table.add(
                                                                    OrderLines(
                                                                  isRecieved:
                                                                      isRecieved ??
                                                                          false,
                                                                  isActive:
                                                                      _value ??
                                                                          false,
                                                                  supplierCode:
                                                                      vid.toString() ??
                                                                          "",
                                                                  variantId:
                                                                      variantId ??
                                                                          "",
                                                                  variantName:
                                                                      varinatname ??
                                                                          "",
                                                                  barcode:
                                                                      Vbarcode ??
                                                                          "",
                                                                  cvd: "sss",
                                                                  foc:
                                                                      vfoc ?? 0,
                                                                  maximumQty:
                                                                      vmaxnqty ??
                                                                          0,
                                                                  minimumQty:
                                                                      vminqty ??
                                                                          0,
                                                                  excessTax:
                                                                      eTax ?? 0,
                                                                  vat:
                                                                      vvat ?? 0,
                                                                  actualCost:
                                                                      vactualCost ??
                                                                          0,
                                                                  purchaseuom:
                                                                      check1 ??
                                                                          "",
                                                                  discount:
                                                                      Vdiscount ??
                                                                          0,
                                                                  requestedQty:
                                                                      Qty ?? 0,
                                                                  unitCost:
                                                                      check!??
                                                                          0,
                                                                  grandTotal:
                                                                      Vgrnadtotal ??
                                                                          0,
                                                                  variableAmount:
                                                                      Vamount! ??
                                                                          0,
                                                                  currentQty:
                                                                      stockQty ??
                                                                          0,
                                                                ));
                                                                print("gtable" +
                                                                    table
                                                                        .toString());
                                                                addition();
                                                                vid = 0;
                                                                eTax = 0;
                                                                variantId = "";
                                                                varinatname =
                                                                    "";
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
                                                                VatableValue =
                                                                    0;
                                                                discountValue =
                                                                    0;
                                                                vatValue = 0;
                                                                stockQty = 0;
                                                                _value = false;
                                                                isRecieved =
                                                                    false;

                                                                // _value=false;

                                                                setState(() {});
                                                              }
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
                                                if(_value!=true){
                                                  table.add(
                                                      OrderLines(
                                                        isRecieved:
                                                        isRecieved ??
                                                            false,
                                                        isActive:
                                                        _value ??
                                                            false,
                                                        supplierCode:
                                                        vid.toString() ??
                                                            "",
                                                        variantId:
                                                        variantId ??
                                                            "",
                                                        variantName:
                                                        varinatname ??
                                                            "",
                                                        barcode:
                                                        Vbarcode ??
                                                            "",
                                                        cvd: "sss",
                                                        foc:
                                                        vfoc ?? 0,
                                                        maximumQty:
                                                        vmaxnqty ??
                                                            0,
                                                        minimumQty:
                                                        vminqty ??
                                                            0,
                                                        excessTax:
                                                        eTax ?? 0,
                                                        vat:
                                                        vvat ?? 0,
                                                        actualCost:
                                                        vactualCost ??
                                                            0,
                                                        purchaseuom:
                                                        check1 ??
                                                            "",
                                                        discount:
                                                        Vdiscount ??
                                                            0,
                                                        requestedQty:
                                                        Qty ?? 0,
                                                        unitCost:
                                                        check! ??
                                                            0,
                                                        grandTotal:
                                                        Vgrnadtotal ??
                                                            0,
                                                        variableAmount:
                                                        Vamount! ??
                                                            0,
                                                        currentQty:
                                                        stockQty ??
                                                            0,
                                                      ));
                                                  print("gtable" +
                                                      table
                                                          .toString());
                                                  addition();
                                                  vid = 0;
                                                  eTax = 0;
                                                  variantId = "";
                                                  varinatname =
                                                  "";
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
                                                  VatableValue =
                                                  0;
                                                  discountValue =
                                                  0;
                                                  vatValue = 0;
                                                  stockQty = 0;
                                                  _value = false;
                                                  isRecieved =
                                                  false;

                                                  // _value=false;

                                                  setState(() {});

                                                }



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

                                        PurchaseOrderPost model =
                                            PurchaseOrderPost(
                                          purchaseOrderType:
                                              orderType == "" ? "" : orderType,
                                          iventoryId: inventoryId.text == ""
                                              ? ""
                                              : inventoryId.text,
                                          vendorId: vendorCode.text == ""
                                              ? ""
                                              : vendorCode.text,
                                          vendorTrnNumber:
                                              vendortrnnumber.text == ""
                                                  ? ""
                                                  : vendortrnnumber.text,
                                          vendorMailId: "Akkkkk@gmail.com",
                                          vendorAddress:
                                              vendoraddress.text == ""
                                                  ? ""
                                                  : vendoraddress.text,
                                          address1: address1??"",
                                          address2: address2??"",
                                          promisedReceiptdate: promised_receipt_date.text,
                                          //promised_receipt_date.text,
                                          plannedRecieptDate: planned_receipt_date.text,
                                          //planned_receipt_date.text,
                                          note:
                                              note.text == "" ? "" : note.text,
                                          remarks: remarks.text == ""
                                              ? ""
                                              : remarks.text,
                                          discount: discount.text == ""
                                              ? 0
                                              : double.parse(discount.text),
                                          foc: foc.text == ""
                                              ? 0
                                              : double.parse(foc.text),
                                          unitcost: unitcourse.text == ""
                                              ? 0
                                              : double.parse(unitcourse.text),
                                          excessTax: excesstax.text == ""
                                              ? 0
                                              : double.parse(excesstax.text),
                                          actualCost: actualcost.text == ""
                                              ? 0
                                              : double.parse(actualcost.text),
                                          vat: vat.text == ""
                                              ? 0
                                              : double.parse(vat.text),
                                          grandTotal: grandtotal.text == ""
                                              ? 0
                                              : double.parse(grandtotal.text),
                                          variableAmount: Variableamount.text ==
                                                  ""
                                              ? 0
                                              : double.parse(Variableamount.text),
                                          createdBy: "www",
                                          orderLines: table,
                                        );
                                        select? context.read<PurchaseorderpostCubit>().postPurchase(model):
                                        context.read<PurchaseOrderPatchCubit>().getGeneralPurchasePatch(veritiaclid, model)

                                       ;
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 29,
                                        width: 90,

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.save,
                                              color: Colors.white,
                                            ),
                                            Text(
                                             select?"save":"update",
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
                      ],
                    ),
                  ),
                );
              },
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
