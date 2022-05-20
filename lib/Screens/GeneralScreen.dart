import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
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
import 'package:inventory/widgets/inputfield.dart';
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
  bool? newAddRow=false;

  bool? tableEdit=true;
  int selectedVertical=0;
  bool? isInvoiced = false;
  double? check = 0;
  String? check1 = "";
  int? stockQty = 0;
  int? veritiaclid=0;
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
    context
        .read<InventorysearchCubit>()
        .getInventorySearch("code");

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }


  addition() {
    print("enterd");
    print("+==" + table.toString());
    for (var i = 0; i < table.length; i++) {
      if (table[i].isActive == true) {
        unitcost = unitcost + table[i].unitCost!;

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
    print("Lengthdd"+table.length.toString());
    print(widget.purchaseTable);
    print(widget.unitcost);
    print("+++++++++++++++");

    Size size = MediaQuery.of(context).size;
    vm = Provider.of<NavigationProvider>(context);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MultiBlocProvider(
        providers: [

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
            create: (context) => PurchaseOrderPatchCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseorderdeleteCubit(),
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
              BlocListener<TableDetailsCubitDartCubit, TableDetailsCubitDartState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {
                        purchaseTable = data;
                        setState(() {
                          print("Variable.tableedit"+Variable.tableedit.toString());
                          print("Variable.tableedit"+Variable.tableindex.toString());

                          if(Variable.tableedit==true){

                            table.replaceRange(Variable.tableindex, (Variable.tableindex+1), [OrderLines(isRecieved: table[Variable.tableindex].isRecieved,isActive:table[Variable.tableindex].isActive ,maximumQty:table[Variable.tableindex].maximumQty,minimumQty:table[Variable.tableindex].minimumQty,requestedQty: table[Variable.tableindex].requestedQty,
                                variableAmount:table[Variable.tableindex].variableAmount,vat: table[Variable.tableindex].vat,currentQty: table[Variable.tableindex].currentQty,variantName:  purchaseTable?.name,barcode: purchaseTable?.barCode?.barcodeNumber,excessTax: table[Variable.tableindex].excessTax,supplierCode: table[Variable.tableindex].supplierCode
                                ,unitCost:purchaseTable?.unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom: purchaseTable?.purchaseUomName,discount: table[Variable.tableindex].discount
                            )]);
                          }
                          else{
                            print("shamnaaaaa");
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
                          }
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
                    if(Variable.tableedit==false) {
                      purchaseCurrentStock = data;
                      stockQty = purchaseCurrentStock?.StockQty;
                      setState(() {});
                    }
                    else{
                      table.replaceRange(Variable.tableindex, (Variable.tableindex+1), [OrderLines(isRecieved: table[Variable.tableindex].isRecieved,isActive:table[Variable.tableindex].isActive ,maximumQty:table[Variable.tableindex].maximumQty,minimumQty:table[Variable.tableindex].minimumQty,requestedQty: table[Variable.tableindex].requestedQty,
                          variableAmount:table[Variable.tableindex].variableAmount,vat: table[Variable.tableindex].vat,currentQty: purchaseCurrentStock?.StockQty,variantName:  table[Variable.tableindex].variantName,barcode: table[Variable.tableindex].barcode,excessTax: table[Variable.tableindex].excessTax,supplierCode: table[Variable.tableindex].supplierCode
                          ,unitCost:table[Variable.tableindex].unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom:table[Variable.tableindex].purchaseuom,discount: table[Variable.tableindex].discount
                      )]);
                      setState(() {});

                    }
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
                          print("datasssssssssssssss"+data.toString());
                          data.data?.orderLines != null
                              ? table = data.data?.orderLines ?? []
                              : table = [];
                          print("tablsssssssssssssssssse"+table.toString());

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
                          promised_receipt_date=TextEditingController(text:data.data?.promisedReceiptdate??"");
                          planned_receipt_date=TextEditingController(text:data.data?.plannedRecieptDate??"");
                          print("Invalid date formatsssssssssssssssssssssssss"+promised_receipt_date.text.toString());
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
              BlocListener<PurchaseorderdeleteCubit, PurchaseorderdeleteState>(
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
                        veritiaclid=result[0].id;
                        Variable.verticalid=result[0].id;
                        print("Variable.ak"+Variable.verticalid.toString());

                        print( Variable.verticalid);
                        print("idssss"+result[0].id.toString());
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

                          child:
                          Visibility(
                            visible: !widget.isCollapsed,
                            child: Container(
                              height: height,
                              // height: double.minPositive,
                              width: width * .172,
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

                                            select=!select;

                                            table.clear();
                                            print("shammmma"+table.toString());
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
                                                    // promised_receipt_date==null?
                                                    //
                                                    // BuildDateFormField(
                                                    //   // controller: promised_receipt_date,
                                                    //    label: "Promised reciept date",
                                                    //   onSaved: (newValue) {
                                                    //     print("sss"+newValue.toString());
                                                    //     var formattedDate = "${newValue?.year}-${newValue?.month}-${newValue?.day}";
                                                    //    setState(() {
                                                    //      promised_receipt_date.text =
                                                    //          formattedDate.toString();
                                                    //    });
                                                    //   },
                                                    // ):
                                                    PopUpDateFormField(

                                                        format:DateFormat('yyyy-MM-dd'),
                                                        controller: promised_receipt_date,
                                                        // initialValue:
                                                        //     DateTime.parse(fromDate!),
                                                        label: "Promised reciept date",
                                                        onSaved: (newValue) {
                                                          promised_receipt_date.text = newValue
                                                              ?.toIso8601String()
                                                              .split("T")[0] ??
                                                              "";
                                                          print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                                        },
                                                        enable: true),
                                                    // BuildDateFormField(
                                                    //   format:DateFormat('yyyy-MM-dd') ,
                                                    //    controller: promised_receipt_date,
                                                    //   label: "Promised reciept date",
                                                    //   onSaved: (newValue) {
                                                    //
                                                    //
                                                    //     print("aks2hay"+newValue.toString());
                                                    //     // var formattedDate = "${newValue?.year}-${newValue?.month}-${newValue?.day}";
                                                    //     // setState(() {
                                                    //     //   promised_receipt_date =newValue as TextEditingController;
                                                    //           // formattedDate.toString();
                                                    //       print("promised_receipt_date.text"+promised_receipt_date.text);
                                                    //     // });
                                                    //   },
                                                    // ),
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
                                                    PopUpDateFormField(

                                                        format:DateFormat('yyyy-MM-dd'),
                                                        controller: planned_receipt_date,
                                                        // initialValue:
                                                        //     DateTime.parse(fromDate!),
                                                        label: "Promised reciept date",
                                                        onSaved: (newValue) {
                                                          planned_receipt_date.text = newValue
                                                              ?.toIso8601String()
                                                              .split("T")[0] ??
                                                              "";
                                                          print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                                        },
                                                        enable: true),


                                                    // BuildDateFormField(
                                                    //   controller: planned_receipt_date,
                                                    //   label: "Planned reciept date",
                                                    //   onSaved: (newValue) {
                                                    //     print("akkkkkk");
                                                    //     var formattedDate = "${newValue?.year}-${newValue?.month}-${newValue?.day}";
                                                    //
                                                    //
                                                    //     planned_receipt_date.text =
                                                    //         formattedDate.toString();
                                                    //   },
                                                    // ),
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
                                    alignment: Alignment.topRight,
                                   height: 300,
                                    // height: MediaQuery.of(context).size.height,
                                    child: ListView(
                                      controller: _scrollController,
                                      physics: ScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Row(
                                          children: [
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
                PopUpCall(

                type:
                "cost-method-list",
                value: table[i].variantId,
                onSelection:
                (VariantId? va) {

                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                      variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                      ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                  )]);
                setState(() {
                // variantId =
                // va?.code;
                int? id = va!.id;
            Variable.tableindex =i;
            Variable.tableedit=true;


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
                                                              textPadding(
                                                                  table[i].supplierCode.toString(),
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


                         //88888888888888888888                                   //**********************************************
                                                              tableEdit==true?
                                                              UnderLinedInput(
                    last:"1000",
                                                                onChanged: (p0) {
                                                                  // setState(() {
                                                                  //   tableEdit=true;
                                                                  // });
                                                                  if(p0==""){
                                                                    setState(() {
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                                                          variableAmount:0,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                          ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: 0,actualCost: 0,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                      print("table"+table.toString());
                                                                    });


                                                                  }
                                                                  else {
                                                                    setState(() {
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].maximumQty,requestedQty: int.tryParse(p0),
                                                                          variableAmount:0,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                          ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                    });
                                                                  }
                                                                  setState(() {
                                                                    var ucost=table[i].unitCost;
                                                                    var vamount;
                                                                    var qty=table[i].requestedQty;
                                                                    var etax=table[i].excessTax;
                                                                    var disc=table[i].discount;
                                                                    var vat=table[i].vat;
                                                                    double actual=0;
                                                                    double grnad=0;
                                                                    print("++++++++++++unitcost"+ucost.toString());
                                                                    print("++++++++++++gty"+qty.toString());
                                                                    print("++++++++++++etax"+etax.toString());
                                                                    print("++++++++++++vat"+vat.toString());
                                                                    if(ucost!=0){
                                                                      vamount=(((ucost!*qty!)+etax!)-disc!);
                                                                      actual=(vamount!+(vamount!*vat/100));
                                                                       grnad=(vamount!+(vamount!*vat/100));
                                                                      if(vamount!=0){
                                                                        vamount=(((ucost!*qty!)+etax)-disc!);


                                                                      }




                                                                    }
                                                                    table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:int.tryParse( p0),maximumQty:table[i].minimumQty,requestedQty:table[i].requestedQty,
                                                                        variableAmount:vamount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                        ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: grnad,actualCost: actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                    )]);
                                                                    print("table..editcase"+table.toString());


                                                                  });
                                                                  print(Qty);
                                                                },
                                                                enable: true,
                                                                onComplete: () {


                                                                  setState(() {});
                                                                },
                                                              ):
                UnderLinedInput(

                last: "2000",
                onChanged: (p0) {
                  setState(() {
                   tableEdit=true;

                  });

                print(p0);



                },
                enable: true,
                onComplete: () {

                setState(() {  print("maxxxx"+table.toString());});
                },
                ),
                                                          //    Text(table[i].requestedQty.toString()),


                tableEdit==true?
                                                              UnderLinedInput(
                                                                  last:table[i].minimumQty.toString(),

                                                                onChanged: (p0) {

                                                                  print(p0);

                                                                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:int.tryParse( p0),maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                      variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                      ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                  )]);


                                                                },
                                                                enable: true,
                                                                onComplete: () {

                                                                  setState(() {  print("maxxxx"+table.toString());});
                                                                },
                                                              ):
                UnderLinedInput(
                    last:table[i].minimumQty.toString(),

                  onChanged: (p0) {
                    setState(() {
                     // tableEdit=true;

                    });

                    print(p0);



                  },
                  enable: true,
                  onComplete: () {

                    setState(() {  print("maxxxx"+table.toString());});
                  },
                ),

                                                                  tableEdit==true?
                                                                  UnderLinedInput(
                                                                    last:table[i].maximumQty.toString(),
                                                                    onChanged: (p0) {

                                                                        print(p0);

                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:int.tryParse( p0),minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                          variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                        ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);


                                                                    },
                                                                    enable: true,
                                                                    onComplete: () {

                                                                      setState(() {  print("maxxxx"+table.toString());});
                                                                    },
                                                                  ):


                UnderLinedInput(
                    last:table[i].maximumQty.toString(),

                initial: "600",
                onChanged: (p0) {
                setState(() {
                tableEdit=true;

                });

                print(p0);



                },
                enable: true,
                onComplete: () {

                setState(() {  print("maxxxx"+table.toString());});
                },
                ),
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

     //*************UNITCOST*******************uNIT COST*******************UNITCOST***********UNITCOST************************************************
                                                              //

                UnderLinedInput(
                last: table[i].unitCost
                    .toString(),

                onChanged:
                (p0) {
                  var ucost=table[i].unitCost;
                  print("unitcosttest-ucost"+ucost.toString());
                  var vamount;
                  var qty=table[i].requestedQty;
                  var etax=table[i].excessTax;
                  var disc=table[i].discount;
                  var vat=table[i].vat;
                  double actual=0;
                  double grnad=0;
                if (p0 ==
                "") {
                setState(
                () {
                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                      variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                      ,unitCost: 0,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                  )]);
                if (vamount !=
                0) {
                  ucost=table[i].unitCost;
                  vamount =
                (((ucost! * qty!) + etax!) - disc!).toDouble();
                  actual =
                (vamount! + ((vamount! * vat!) / 100));
                grnad =
                (vamount! + ((vamount! * vat!) / 100));
                }
                });
                }
                setState(() {
                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                      variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                      ,unitCost: double.tryParse(p0),foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                  )]);
                  ucost=table[i].unitCost;
                vamount = (((ucost! * qty!) +
                etax!) -
                disc!)
                    .toDouble();
                  actual =
                  (vamount! + ((vamount! * vat!) / 100));
                  grnad =
                  (vamount! + ((vamount! * vat!) / 100));


                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                      variableAmount:vamount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                      ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: grnad,actualCost: actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                  )]);
                });
                },
                enable: true,
                onComplete:
                () {},
                ),


        //Excess tax***********************************Excesstax***********************************************************************

                                                      UnderLinedInput(
                                                          last: table[i].excessTax
                    .toString(),

                                                        onChanged:
                                                            (p0) {
                                                          if (p0 ==
                                                              "") {
                                                            setState(
                                                                    () {
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                          variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: 0,supplierCode: table[i].supplierCode
                                                                          ,unitCost:table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                });
                                                          } else {
                                                            setState(
                                                                    () {
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                          variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: double.tryParse(p0),supplierCode: table[i].supplierCode
                                                                          ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                });
                                                          }
                                                          var ucost=table[i].unitCost;
                                                          print("unitcosttest-ucost"+ucost.toString());
                                                          var vamount;
                                                          var qty=table[i].requestedQty;
                                                          var etax=table[i].excessTax;
                                                          var disc=table[i].discount;
                                                          var vat=table[i].vat;
                                                          double actual=0;
                                                          double grnad=0;

                                                          setState(() {
                                                            if (vamount !=
                                                                0) {
                                                              vamount = (((ucost! * qty!) + etax!) -
                                                                  disc!)
                                                                  .toDouble();
                                                              actual =
                                                              (vamount! + ((vamount! * vat!) / 100))
                                                              ;
                                                              grnad =
                                                              (vamount! + ((vamount! * vat!) / 100))
                                                              ;
                                                            }
                                                            table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                variableAmount:vamount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: grnad,actualCost:actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                            )]);
                                                          });
                                                        },
                                                        enable: true,
                                                        onComplete:
                                                            () {},
                                                      ),
              //****************************************DISCOUNT***************************DISCOUNT*********************************
  // tableEdit==true?
  UnderLinedInput(
      last: table[i].discount
                    .toString(),
  onChanged: (p0) {
    if (p0 == '')
      setState(() {
        table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
            variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
            ,unitCost:table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: 0
        )]);
      });
    else {
      setState(() {
        table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
            variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
            ,unitCost:table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: int.tryParse(p0)
        )]);
      });
    }
    var ucost=table[i].unitCost;
    print("unitcosttest-ucost"+ucost.toString());
    var vamount;
    var qty=table[i].requestedQty;
    var etax=table[i].excessTax;
    var disc=table[i].discount;
    var vat=table[i].vat;
    double actual=0;
    double grnad=0;

    vamount = (((ucost! *
        qty!) +
        etax!) -
        disc!)
        .toDouble();

    actual = (vamount! +
        ((vamount! *
            vat!) /
            100))
    ;
    grnad = (vamount! +
        ((vamount! *
            vat!) /
            100))
    ;
    table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,maximumQty:table[i].maximumQty,minimumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
        variableAmount:vamount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
        ,unitCost:table[i].unitCost,foc: table[i].foc,grandTotal: grnad,actualCost: actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
    )]);

    setState(() {});
  },
  enable: true,
  onComplete: () {

    setState(() {});
  },
),

  //     :
  // UnderLinedInput(
  //   initial: table[i].discount.toString(),
  //   onChanged: (p0) {
  //     setState(() {
  //       tableEdit=true;
  //
  //     });
  //
  //     print(p0);
  //
  //
  //
  //   },
  //   enable: true,
  //   onComplete: () {
  //
  //     setState(() {  print("maxxxx"+table.toString());});
  //   },
  // ),
                                                               tableEdit==true?
                                                              UnderLinedInput(
                                                                last: table[i].foc.toString(),

                                                                onChanged: (p0) {

                                                                  print(p0);

                                                                  table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:  table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                      variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                      ,unitCost: table[i].unitCost,foc:double.tryParse( p0),grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                  )]);


                                                                },
                                                                enable: true,
                                                                onComplete: () {

                                                                  setState(() {  print("maxxxx"+table.toString());});
                                                                },
                                                              ):
                                                              UnderLinedInput(


                                                                last: table[i].foc.toString(),


                                                                onChanged: (p0) {
                                                                  setState(() {
                                                                    tableEdit=true;

                                                                  });

                                                                  print(p0);



                                                                },
                                                                enable: true,
                                                                onComplete: () {

                                                                  setState(() {  print("maxxxx"+table.toString());});
                                                                },
                                                              ),
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

                                 //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************
                                                              tableEdit==true?
                                                              UnderLinedInput(
                                                                  last:table[i].vat.toString(),
                                                                onChanged: (p0) {
                                                                  if (p0 == "") {

                                                                    setState(() {
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:  table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                          variableAmount:table[i].variableAmount,vat: 0,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                          ,unitCost: table[i].unitCost,foc:table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                      var ucost=table[i].unitCost;
                                                                      print("unitcosttest-ucost"+ucost.toString());
                                                                      var vamount=table[i].variableAmount;
                                                                      var qty=table[i].requestedQty;
                                                                      var etax=table[i].excessTax;
                                                                      var disc=table[i].discount;
                                                                      var vat=table[i].vat;
                                                                      double actual=0;
                                                                      double grnad=0;

                                                                      actual = (vamount! +
                                                                          ((vamount! *
                                                                              vat!) /
                                                                              100))
                                                                      ;
                                                                      grnad  = (vamount! +
                                                                          ((vamount! *
                                                                              vat!) /
                                                                              100))
                                                                      ;
                                                                      table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:  table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                          variableAmount:table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                          ,unitCost: table[i].unitCost,foc:table[i].foc,grandTotal: grnad,actualCost: actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                      )]);
                                                                    });
                                                                  }


                                                                  setState(() {
                                                                    table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:  table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                        variableAmount:table[i].variableAmount,vat:double.tryParse(p0),currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                        ,unitCost: table[i].unitCost,foc:table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                    )]);
                                                                    var ucost=table[i].unitCost;
                                                                    print("unitcosttest-ucost"+ucost.toString());
                                                                    var vamount=table[i].variableAmount;
                                                                    var qty=table[i].requestedQty;
                                                                    var etax=table[i].excessTax;
                                                                    var disc=table[i].discount;
                                                                    var vat=table[i].vat;
                                                                    double actual=0;
                                                                    double grnad=0;

                                                                    actual = (vamount! +
                                                                        ((vamount! *
                                                                            vat!) /
                                                                            100))
                                                                    ;
                                                                    grnad = (vamount! +
                                                                        ((vamount! *
                                                                            vat!) /
                                                                            100));
                                                                    table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:  table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: table[i].requestedQty,
                                                                        variableAmount:table[i].variableAmount,vat:double.tryParse(p0),currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                                        ,unitCost: table[i].unitCost,foc:table[i].foc,grandTotal: grnad,actualCost: actual,variantId: table[i].variantId,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                                    )]);

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
                                                              ):
                UnderLinedInput(

                last: table[i].vat.toString(),
                onChanged: (p0) {
                setState(() {
                tableEdit=true;

                });

                print(p0);



                },
                enable: true,
                onComplete: () {

                setState(() {  print("maxxxx"+table.toString());});
                },
                ),
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
                                                            ]),],


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
                                                                Variable.tableedit=false;

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
                                                          // Qty==0?Text(""):

                                                          UnderLinedInput(

                                                            last:"",
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
                                                          //vminqty==0?Text(""):
                                                          UnderLinedInput(
                                                              last:"",
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
                                                              last:"",
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
                                                          // check == 0
                                                          //     ? textPadding(
                                                          //         check
                                                          //             .toString(),
                                                          //         fontSize: 12,
                                                          //         padding: EdgeInsets
                                                          //             .only(
                                                          //                 left:
                                                          //                     11.5,
                                                          //                 top:
                                                          //                     11.5),
                                                          //         fontWeight:
                                                          //             FontWeight
                                                          //
                                                          //                 .w500)
                                                          check==0?Text(""):
                                                              UnderLinedInput(
                                                                  last:check.toString(),

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
                                                                      vactualCost =
                                                                      (Vamount! + ((Vamount! * vvat!) / 100));
                                                                      Vgrnadtotal =
                                                                      (Vamount! + ((Vamount! * vvat!) / 100));
                                                                    });
                                                                  },
                                                                  enable: true,
                                                                  onComplete:
                                                                      () {},
                                                                ),
                                                          eTax == 0
                                                              ? UnderLinedInput(
                                                            last:"",
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
                                                            last:"",
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
                                                            last:"",
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

                                                              setState(() {});
                                                            },
                                                          ),
                                                          UnderLinedInput(
                                                              last:"",
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
                                                              last:"",
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
                                                                  print("enterd");
                                                                  if(vminqty!=0 &&vmaxnqty!=0){
                                                                  context.showSnackBarError(
                                                                      "the minimum order is always less than maximum order");}
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
                                                                  vvat=0;
                                                                  vmaxnqty=0;
                                                                  vmaxnqty=0;
                                                                  Vdiscount = 0;
                                                                  Vamount = 0;
                                                                  Vgrnadtotal = 0;
                                                                  vactualCost = 0;
                                                                  unitcost = 0;
                                                                  grands = 0;
                                                                  focValue=0;
                                                                  actualValue = 0;
                                                                  excessTAxValue=0;
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
                                                  vvat=0;
                                                  focValue=0;
                                                  excessTAxValue=0;

                                                  check1 = "";
                                                  check = 0;
                                                  Qty = 0;
                                                  Vdiscount = 0;
                                                  Vamount = 0;
                                                  vmaxnqty=0;
                                                  vminqty=0;
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
                                        onApply: () {
                                      print("aaaaaa");
                                      setState(() {
                                        context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(veritiaclid);

                                      });





                                        },
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
                                          address1:"akkk",
                                          //address1??"akkk",
                                          address2:"ass",
                                              //address2??"appp",
                                          promisedReceiptdate: promised_receipt_date.text,

                                          //promised_receipt_date.text,
                                          plannedRecieptDate:planned_receipt_date.text,
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
                                        //context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(1);
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
      onApply();
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
