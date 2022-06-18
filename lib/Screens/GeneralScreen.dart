import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
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

import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:sticky_headers/sticky_headers.dart';

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
  TextEditingController unitcostTestController=TextEditingController();
  var requestedListControllers = <TextEditingController>[];
  var minListControllers = <TextEditingController>[];
  var maxListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  var excesstListControllers = <TextEditingController>[];
  var discounttListControllers = <TextEditingController>[];
  var focListControllers = <TextEditingController>[];
  var vatListControllers = <TextEditingController>[];
List<TextEditingController> vatController =[];
  // List<Employee> employees = <Employee>[];
  // late EmployeeDataSource employeeDataSource;
  bool? isRecieved = false;
  bool? newAddRow=false;
  bool ? tableClear=false;
  VariantDetailsModel? vendorDetails;
  List<PartnerOrganizationData>?partnerOrganizationData;

  bool? tableEdit=true;
  int selectedVertical=0;
  bool? isInvoiced = false;
  double? check = 0;
  String? check1 = "";
  String? email = "";
  int? stockQty = 0;
  int? veritiaclid=0;
  String? address1='';
  String ? address2="";
  String? varinatname = "";
  String? vendorRefCode = "";
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
    context
        .read<GeneralPurchaseReadCubit>()
        .getGeneralPurchaseRead(Variable.verticalid!);


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

  valueAddingTextEdingController(){
    if(table.isNotEmpty){
      print("checking case11");
      for(var i=0;i<table.length;i++){
        var requsted = new TextEditingController(text: table[i].requestedQty.toString()??"");
        requestedListControllers.add(requsted);
        print(requestedListControllers.length);
        var min = new TextEditingController(text: table[i].minimumQty.toString()??"");
        minListControllers.add(min);
        print("probability"+minListControllers[i].text);
        print("mazzzzz"+table[i].maximumQty.toString());

        var max = new TextEditingController(text: table[i].maximumQty.toString()??"");
        print("max"+max.toString());
        maxListControllers.add(max);

        print("maxlength"+maxListControllers.toString());
        var unitcost = new TextEditingController(text: table[i].unitCost.toString()??"");
        unitcostListControllers.add(unitcost);

        var excess = new TextEditingController(text: table[i].excessTax.toString()??"");
        excesstListControllers.add(excess);

        var disc = new TextEditingController(text:  table[i].discount.toString());

         discounttListControllers.add(disc);

        var foc = new TextEditingController(text: table[i].foc.toString()??"");
        focListControllers.add(foc);

        var vat = new TextEditingController(text: table[i].vat.toString()??"");
        vatListControllers.add(vat);

        setState(() {

        });

      }
    }
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
    // valueAddingTextEdingController();

    Size size = MediaQuery.of(context).size;
    vm = Provider.of<NavigationProvider>(context);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MultiBlocProvider(
        providers: [




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
                                ,unitCost:purchaseTable?.unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom: purchaseTable?.purchaseUomName,discount: table[Variable.tableindex].discount,vendorRefCode: purchaseTable?.vendorDetails?.vendorRefCode??""
                            )]);
                          }
                          else{
                            print("searching data"+purchaseTable.toString());

                            varinatname = purchaseTable?.name;
                           vendorRefCode=purchaseTable?.vendorDetails?.vendorRefCode??"";
                            check = purchaseTable?.unitCost;
                            print("check"+check.toString());
                            unitcostTestController?.text=purchaseTable?.unitCost.toString()??"";
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
                          orderDate.text=data.data?.orderDate??"";


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

                              print("entereddddddd");
                              valueAddingTextEdingController();



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
              BlocListener<VendordetailsCubit, VendordetailsState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {
                        vendorDetails = data;
                        setState(() {
                          print("vendorDetails"+vendorDetails.toString());
                          partnerOrganizationData=vendorDetails?.partnerOrganizationdata;
                          // email=vendorDetails.partnerOrganizationdata[1].



                        });
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
                      print("listaaaaaaaaaaaa"+list.data.toString());

                      result = list.data;
                      setState(() {
if(result.isNotEmpty){ veritiaclid=result[0].id;
Variable.verticalid=result[0].id;
print("Variable.ak"+Variable.verticalid.toString());
}

                        // context
                        //     .read<GeneralPurchaseReadCubit>()
                        //     .getGeneralPurchaseRead(Variable.verticalid!);
                        setState(() {

                        });

                        print( Variable.verticalid);
                        print("idssss"+result[0].id.toString());
                      });
                    });
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  // physics: ScrollPhysics(),
                  child: Container(
                      height: 5000,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Container(
                        //   margin: EdgeInsets.all(10),
                        //
                        //   child:
                        //   Visibility(
                        //     visible: !vm.isCollapsed,
                        //     child: Container(
                        //       height: height,
                        //       // height: double.minPositive,
                        //       width: width * .172,
                        //       //width: 232,
                        //       color: Color(0xffEDF1F2),
                        //       child: Column(
                        //         children: [
                        //           Container(
                        //               margin: EdgeInsets.all(5),
                        //               child: SearchTextfiled(
                        //                 color: Color(0xffFAFAFA),
                        //                 hintText: "Search...",
                        //                 ctrlr: itemsearch,
                        //                 onChanged: (va) {
                        //                   context
                        //                       .read<InventorysearchCubit>()
                        //                       .getSearch(itemsearch.text);
                        //
                        //                 },
                        //               )),
                        //           SizedBox(
                        //             height:
                        //                 MediaQuery.of(context).size.height * .008,
                        //           ),
                        //           Container(
                        //             margin: EdgeInsets.only(
                        //               left: width * 0.009,
                        //               right: width * 0.007,
                        //             ),
                        //             child: Row(
                        //               //mainAxisAlignment: MainAxisAlignment.center,
                        //               children: [
                        //                 RectangleContainer(
                        //                     "asset/rect1.png", context),
                        //                 SizedBox(
                        //                   width: width * .003,
                        //                 ),
                        //                 Container(
                        //                   color: Color(0xffFFFFFF),
                        //
                        //                   height: width * .0197,
                        //                   width: width * .111,
                        //                   child: Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.center,
                        //                     children: [
                        //                       SizedBox(
                        //                         width: width * .001,
                        //                       ),
                        //                       Icon(
                        //                         Icons.add,
                        //                         color: Colors.black,
                        //                         size: 14,
                        //                       ),
                        //                       SizedBox(
                        //                         width: width * .007,
                        //                       ),
                        //                       Container(
                        //                         child: Text(
                        //                           "Add a Varient",
                        //                           style: TextStyle(
                        //                               color: Colors.black,
                        //                               fontSize: width * .010,
                        //                               overflow:
                        //                                   TextOverflow.ellipsis),
                        //                         ),
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ),
                        //                 SizedBox(
                        //                   width: width * .003,
                        //                 ),
                        //                 RectangleContainer(
                        //                     "asset/rect2.png", context),
                        //               ],
                        //             ),
                        //           ),
                        //           SizedBox(
                        //             height: height * .015,
                        //           ),
                        //
                        //           Expanded(
                        //               child: Container(
                        //                   height: 0,
                        //                   child: ListView.separated(
                        //                     separatorBuilder: (context, index) {
                        //                       return Divider(
                        //                         height: 0,
                        //                         color: Color(0xff2B3944)
                        //                             .withOpacity(0.3),
                        //                         // thickness: 1,
                        //                       );
                        //                     },
                        //                     physics: ScrollPhysics(),
                        //                     controller: controller,
                        //                     itemBuilder: (context, index) {
                        //                       return AutoScrollTag(
                        //                           highlightColor: Colors.red,
                        //                           controller: controller,
                        //                           key: ValueKey(index),
                        //                           index: index,
                        //                           child: ItemCard(
                        //                             index: index,
                        //                             selectedVertical: selectedVertical,
                        //                             item: result[index].orderCode,
                        //                             id: result[index]
                        //                                 .id
                        //                                 .toString(),
                        //                             onClick: () {
                        //                               setState(() {
                        //                                 select=false;
                        //                                 selectedVertical=index;
                        //
                        //                                 veritiaclid =
                        //                                     result[index].id;
                        //                                 context
                        //                                     .read<
                        //                                         GeneralPurchaseReadCubit>()
                        //                                     .getGeneralPurchaseRead(
                        //                                         veritiaclid!);
                        //                               });
                        //                             },
                        //                           ));
                        //                     },
                        //                     itemCount: result.length,
                        //                   )
                        //
                        //
                        //                   ))
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        VerticalList(selectedVertical: selectedVertical,
                          itemsearch: itemsearch,ontap: (int index){
                            setState(() {
                              print("taped");
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
                          },result: result,
                        ),
                        Expanded(
                          child: Container(
                            child: StickyHeader(
                              header:  Container(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 3,),
                                    Container(
                                      padding: EdgeInsets.only(top: 15,left: 10),



                                      child:
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            primary: Colors.blue,
                                            // elevation: 2,
                                            backgroundColor: Colors.white24),
                                        onPressed: () {
                                          setState(() {

                                            select=true;
                                            tableClear=true;
                                            setState(() {
                                              requestedListControllers.clear();
                                              minListControllers.clear() ;
                                              maxListControllers .clear();
                                              unitcostListControllers.clear();
                                              excesstListControllers.clear();
                                              discounttListControllers.clear();
                                              print("discount"+discounttListControllers.length.toString());
                                              focListControllers.clear();
                                              print("foccc"+focListControllers.length.toString());
                                              vatListControllers.clear();
                                              print("vattt"+vatListControllers.length.toString());
                                              print("appuzz"+table.length.toString());

                                            });

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
                                            varinatname="";
                                            vendorRefCode="";
                                            check=0;
                                            vrefcod="";



                                            // else{
                                            //   context
                                            //       .read<
                                            //       GeneralPurchaseReadCubit>()
                                            //       .getGeneralPurchaseRead(
                                            //       veritiaclid!);
                                            //
                                            // }



                                          });


                                        },
                                        // icon: Icon(Icons.refresh),
                                        // label: Text("Clear")
                                        child: Text("Create"),
                                        // child: Container(
                                        //   margin: EdgeInsets.only(bottom: size.height * .008),
                                        //   alignment: Alignment.center,
                                        //   height: size.width * .016,
                                        //   width: size.width * .016,
                                        //   decoration: BoxDecoration(
                                        //     color: Colors.transparent,
                                        //     borderRadius: BorderRadius.circular(100),
                                        //     border: Border.all(
                                        //       color: Colors.black,
                                        //     ),
                                        //
                                        //     //more than 50% of width makes circle
                                        //   ),
                                        //   child: Icon(
                                        //     Icons.remove ,
                                        //     color: Colors.black,
                                        //     size: size.width * .010,
                                        //   ),
                                        // ),
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
                                                            label: "Order type",
                                                            type:"sellingngPrice-basedOn",
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
                                                            // colors: Colors.red,
                                                            controller: ordercode,
                                                            title: "Order Code",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),
                                                          NewInputCard(
                                                            controller: orderDate,
                                                            title: "Order Date",
                                                            //label: "Place in setting",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),
                                                          NewInputCard(
                                                            controller: inventoryId,
                                                            title: "Inventory Id",
                                                            // label: "Place in setting",
                                                          ),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),
                                                          SelectableDropDownpopUp(
                                                            label: "Vendor Code",
                                                            type:"VendorCodeGeneral",
                                                            value: vendorCode.text,
                                                            onSelection: (Result? va) {

                                                              print(
                                                                  "+++++++++++++++++++++++"+va.toString());
                                                              //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                                              // setState(() {
                                                              vendorCode.text=va?.partnerCode??"";
                                                              var id=va?.partnerCode;
                                                              print(vendorCode.text);
                                                              setState(() {
                                                                context
                                                                    .read<
                                                                    VendordetailsCubit>()
                                                                    .getVendorDetails(
                                                                    id);

                                                              });
                                                              showDailogPopUp(
                                                                  context,
                                                                  VendorPopup(

                                                                  ));






                                                            },
                                                            onAddNew: () {},
                                                            restricted: true,
                                                          ),
                                                          // NewInputCard(
                                                          //     controller: vendorCode,
                                                          //     title: "Vender Code"),
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
                                                              title: "Vender TRN Number"),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),

                                                          PopUpDateFormField(

                                                              format:DateFormat('yyyy-MM-dd'),
                                                              controller: promised_receipt_date,
                                                              // initialValue:
                                                              //     DateTime.parse(fromDate!),
                                                              label: "Promised Reciept Date",
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
                                                          SizedBox(
                                                            height: height * .010,
                                                          ),
                                                          PopUpDateFormField(

                                                              format:DateFormat('yyyy-MM-dd'),
                                                              controller: planned_receipt_date,
                                                              // initialValue:
                                                              //     DateTime.parse(fromDate!),
                                                              label: "Promised Reciept Date",
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
                                                              title: "Payment Code",
                                                              readOnly: true),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),
                                                          NewInputCard(
                                                            controller: Paymentstatus,
                                                            title: "Payment Status",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .020,
                                                          ),
                                                          NewInputCard(
                                                            controller: orderStatus,
                                                            title: "Order Status",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .020,
                                                          ),
                                                          NewInputCard(
                                                            controller: Recievingstatus,
                                                            title: "Recieving Status",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .030,
                                                          ),
                                                          NewInputCard(
                                                            controller: invoicestatus,
                                                            title: "Invoice Status",
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
                                                            title: "FOC",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .035,
                                                          ),
                                                          NewInputCard(
                                                            controller: unitcourse,
                                                            title: "Unit Cost",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .035,
                                                          ),
                                                          NewInputCard(
                                                              controller: Variableamount,
                                                              readOnly: true,
                                                              title: "Vartable Amount"),
                                                          SizedBox(
                                                            height: height * .035,
                                                          ),
                                                          NewInputCard(
                                                              controller: excesstax,
                                                              readOnly: true,
                                                              title: "Excess Tax"),
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
                                                            title: "Actual Cost",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .035,
                                                          ),
                                                          NewInputCard(
                                                            controller: grandtotal,
                                                            title: "Grand Total",
                                                            readOnly: true,
                                                          ),
                                                          SizedBox(
                                                            height: height * .028,
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
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              content: Column(
                                children: [



                                  Scrollbar(
                                    controller: _scrollController,
                                    isAlwaysShown: true,
                                    child: Container(

                                      color: Colors.white,
                                      alignment: Alignment.topRight,
                                   height: 300,
                                      // height: MediaQuery.of(context).size.height,
                                      child: ListView(
                                        controller: _scrollController,
                                        physics: ScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                // Container(
                                                //   padding: EdgeInsets.only(left: width*.02,top: height*0.02),
                                                //   child:
                                                //   TextButton(
                                                //     style: TextButton.styleFrom(
                                                //         primary: Colors.blue,
                                                //         elevation: 2,
                                                //         backgroundColor: Colors.white24),
                                                //     onPressed: () {
                                                //       if(_value!=false){
                                                //         table.add(
                                                //             OrderLines(
                                                //               vendorRefCode: vendorRefCode??"",
                                                //
                                                //
                                                //               isRecieved:
                                                //
                                                //
                                                //               isRecieved ??
                                                //                   false,
                                                //               isActive:
                                                //               _value ??
                                                //                   false,
                                                //               supplierCode:
                                                //               vid.toString() ??
                                                //                   "",
                                                //               variantId:
                                                //               variantId ??
                                                //                   "",
                                                //               variantName:
                                                //               varinatname ??
                                                //                   "",
                                                //               barcode:
                                                //               Vbarcode ??
                                                //                   "",
                                                //               cvd: "sss",
                                                //               foc:
                                                //               vfoc ?? 0,
                                                //               maximumQty:
                                                //               vmaxnqty ??
                                                //                   0,
                                                //               minimumQty:
                                                //               vminqty ??
                                                //                   0,
                                                //               excessTax:
                                                //               eTax ?? 0,
                                                //               vat:
                                                //               vvat ?? 0,
                                                //               actualCost:
                                                //               vactualCost ??
                                                //                   0,
                                                //               purchaseuom:
                                                //               check1 ??
                                                //                   "",
                                                //               discount:
                                                //               Vdiscount ??
                                                //                   0,
                                                //               requestedQty:
                                                //               Qty ?? 0,
                                                //               unitCost:
                                                //               check! ??
                                                //                   0,
                                                //               grandTotal:
                                                //               Vgrnadtotal ??
                                                //                   0,
                                                //               variableAmount:
                                                //               Vamount! ??
                                                //                   0,
                                                //               currentQty:
                                                //               stockQty ??
                                                //                   0,
                                                //             ));
                                                //         print("aaaatable"+table.toString());
                                                //          requestedListControllers.clear();
                                                //          minListControllers.clear() ;
                                                //          maxListControllers .clear();
                                                //          unitcostListControllers.clear();
                                                //          excesstListControllers.clear();
                                                //          discounttListControllers.clear();
                                                //          focListControllers.clear();
                                                //          vatListControllers.clear();
                                                //
                                                //         setState(() {
                                                //           valueAddingTextEdingController();
                                                //         });
                                                //
                                                //         print("gtable" +
                                                //             table
                                                //                 .toString());
                                                //         addition();
                                                //         vid = 0;
                                                //         eTax = 0;
                                                //         variantId = "";
                                                //         varinatname =
                                                //         "";
                                                //         vrefcod = "";
                                                //         Vbarcode = "";
                                                //         vendorRefCode="";
                                                //         vvat=0;
                                                //         focValue=0;
                                                //         excessTAxValue=0;
                                                //
                                                //         check1 = "";
                                                //         check = 0;
                                                //         Qty = 0;
                                                //         Vdiscount = 0;
                                                //         Vamount = 0;
                                                //         vmaxnqty=0;
                                                //         vminqty=0;
                                                //         Vgrnadtotal = 0;
                                                //         vactualCost = 0;
                                                //         unitcost = 0;
                                                //         grands = 0;
                                                //         actualValue = 0;
                                                //
                                                //         VatableValue =
                                                //         0;
                                                //         discountValue =
                                                //         0;
                                                //         vatValue = 0;
                                                //         stockQty = 0;
                                                //         _value = false;
                                                //         isRecieved =
                                                //         false;
                                                //
                                                //         // _value=false;
                                                //
                                                //         setState(() {});
                                                //
                                                //       }
                                                //
                                                //
                                                //
                                                //     },
                                                //     child:Text("Add New ")
                                                //
                                                //   ),
                                                // ),
                                                SingleChildScrollView(

                                                  child:
                                                  Container(
                                                    // height: 500,
                                                    width: 2200,
                                                    padding: EdgeInsets.all(10),
                                                    child: customTable(
                                                      border: const TableBorder(
                                                          verticalInside: BorderSide(
                                                              width:.5,
                                                              color: Colors.black45,
                                                              // color: Colors.blue,
                                                              style:
                                                                  BorderStyle.solid),

                                                          horizontalInside:
                                                          BorderSide(
                                                              width:.3,
                                                              color: Colors.black45,
                                                              // color: Colors.blue,
                                                              style:
                                                              BorderStyle.solid),),
                                                      tableWidth: .5,
                                                      childrens: [
                                                        if(select==true)...[
                                                         TableRow(
                                                          // decoration: BoxDecoration(
                                                          //     color: Colors.green.shade200,
                                                          //     shape: BoxShape.rectangle,
                                                          //     border: const Border(      top: BorderSide(
                                                          //         width: .5,
                                                          //         color: Colors.black45,
                                                          //         // color: Colors.blue,
                                                          //         style: BorderStyle.solid
                                                          //     ),)),
                                                            children: [
                                                              Visibility(
                                                  visible:!select,


                                                                child: tableHeadtext(
                                                                  'S',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white,
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Variant id',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 50,
                                                                  size: 12,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Variant Name',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility( visible:!select,
                                                                child: tableHeadtext(
                                                                  'Vendor ref code',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              // tableHeadtext('description', size: 10, color: null),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Barcode',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),

                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Current qty',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Purchase UOM',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Requested qty',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Min Order Qty',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Max Order Qty',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Is Recieved',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Unit Cost',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Excise Tax',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'Discount',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                  visible:!select,
                                                                child: tableHeadtext(
                                                                  'FOC',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Vatable Amount',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),

                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Vat',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Actual Cost',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Grand Total',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Is Invoiced',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  'Is Active',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
                                                              ),
                                                              Visibility(
                                                                visible:!select,
                                                                child: tableHeadtext(
                                                                  '',
                                                                  padding:
                                                                  EdgeInsets.all(7),
                                                                  height: 46,
                                                                  size: 13,
                                                                  // color: Palette.containerDarknew,
                                                                  // textColor: Palette.white
                                                                ),
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
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: PopUpCall(

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
                                                                              var    variantId1 =
                                                                                  va?.code;
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
                                                                                  inventoryId.text,variantId1);

                                                                              // orderType = va!;
                                                                            });
                                                                          },
                                                                          onAddNew: () {},
                                                                          // restricted: true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
                                                                            table[i].vendorRefCode.toString(),
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
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),


                                                                    //88888888888888888888                                   //**********************************************
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:requestedListControllers[i],
                                                                          initialCheck: true,
                                                                          last: table[i].requestedQty.toString() ?? "",
                                                                          onChanged: (va) {
                                                                            print(va);
                                                                            if (va == "") {
                                                                              print("entered");
                                                                              table[i] = table[i].copyWith(requestedQty: 0, variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                            } else {
                                                                              var qty = int.tryParse(va);
                                                                              var dis = table[i].discount;
                                                                              var excess = table[i].excessTax;
                                                                              var unitcost = table[i].unitCost;
                                                                              var vat = table[i].vat;
                                                                              var foc = table[i].foc;
                                                                              if (unitcost == "" || unitcost == 0) {
                                                                                table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                              }else {
                                                                                var Vamount;
                                                                                var vactualCost;

                                                                                Vamount  = (((unitcost! *
                                                                                    qty!) +
                                                                                    excess!) -
                                                                                    dis!)
                                                                                    .toDouble();
                                                                                if(vat==0 ||vat==""){
                                                                                  vactualCost=Vamount;
                                                                                }
                                                                                else{

                                                                                  vactualCost  = (Vamount! +
                                                                                      ((Vamount! *
                                                                                          vat!) /
                                                                                          100));
                                                                                }


                                                                                table[i] =
                                                                                    table[i]
                                                                                        .copyWith(
                                                                                        variableAmount: Vamount,
                                                                                        actualCost: vactualCost,
                                                                                        grandTotal: vactualCost,
                                                                                        requestedQty: qty);
                                                                              }



                                                                            }

                                                                            setState(() {});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    //    Text(table[i].requestedQty.toString()),



                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          //last:table[i].minimumQty.toString(),
                                                                          // controller:minListControllers[i],

                                                                          onChanged: (p0) {

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
                                                                          onComplete: () {

                                                                            setState(() {  print("maxxxx"+table.toString());});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          initialCheck: true,

                                                                          // controller:maxListControllers[i],
                                                                          last:table[i].maximumQty.toString(),
                                                                          onChanged: (p0) {

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
                                                                          onComplete: () {

                                                                            setState(() {  print("maxxxx"+table.toString());});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: CheckedBoxs(

                                                                          valueChanger:table[i].isRecieved==null?false: table[i].isRecieved,


                                                                          onSelection: (bool? value) {  },

                                                                        ),
                                                                      ),
                                                                    ),


                                                                    // Checkbox(
                                                                    //   value: table[i]
                                                                    //       .isRecieved==null?false: table[i]
                                                                    //       .isRecieved,
                                                                    //   onChanged: (bool?
                                                                    //       value) {
                                                                    //     setState(() {
                                                                    //       this.isRecieved =
                                                                    //           value;
                                                                    //     });
                                                                    //   },
                                                                    // ),

                                                                    //*************UNITCOST*******************uNIT COST*******************UNITCOST***********UNITCOST************************************************
                                                                    //

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:unitcostListControllers[i],
                                                                          initial: "true",
                                                                          last: table[i].unitCost.toString() ?? "",
                                                                          onChanged: (va) {
                                                                            double? unitcost;
                                                                            if (va == "") {
                                                                              print("entered");
                                                                              unitcost = 0;
                                                                              print("disc" + unitcost.toString());
                                                                              table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
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

                                                                              table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                              setState(() {});
                                                                            } else {

                                                                              var Vamount = (((unitcost! *
                                                                                  qty!) +
                                                                                  excess!) -
                                                                                  disc!)
                                                                                  .toDouble();
                                                                              print(
                                                                                  "Vamount" +
                                                                                      Vamount
                                                                                          .toString());

                                                                              var vactualCost = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              print(
                                                                                  "vactualCost" +
                                                                                      vactualCost
                                                                                          .toString());
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      variableAmount: Vamount,
                                                                                      actualCost: vactualCost,
                                                                                      grandTotal: vactualCost,
                                                                                      unitCost: unitcost);
                                                                              setState(() {});

                                                                            }
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),



                                                                    //Excess tax***********************************Excesstax***********************************************************************
                                                                    excesstListControllers.isNotEmpty?
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:excesstListControllers[i],
                                                                          initialCheck: true,
                                                                          last: table[i].excessTax.toString() ?? "",
                                                                          onChanged: (va) {
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
                                                                              table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, variableAmount: 0, excessTax: excess);
                                                                              setState(() {

                                                                              });

                                                                            }else {
                                                                              var Vamount;


                                                                              Vamount =
                                                                                  (((unitcost! *
                                                                                      qty!) +
                                                                                      excess!) -
                                                                                      Vdiscount!)
                                                                                      .toDouble();

                                                                              var vactualCost = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              var Vgrnadtotal = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      actualCost: vactualCost,
                                                                                      grandTotal: Vgrnadtotal,
                                                                                      variableAmount: Vamount,
                                                                                      excessTax: excess);
                                                                              setState(() {});
                                                                            } },
                                                                        ),
                                                                      ),
                                                                    ):
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(

                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:excesstListControllers[i],
                                                                          initialCheck: true,
                                                                          last: table[i].excessTax.toString() ?? "",
                                                                          onChanged: (va) {
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
                                                                              table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, variableAmount: 0, excessTax: excess);
                                                                              setState(() {

                                                                              });

                                                                            }else {
                                                                              var Vamount;


                                                                              Vamount =
                                                                                  (((unitcost! *
                                                                                      qty!) +
                                                                                      excess!) -
                                                                                      Vdiscount!)
                                                                                      .toDouble();

                                                                              var vactualCost = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              var Vgrnadtotal = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      actualCost: vactualCost,
                                                                                      grandTotal: Vgrnadtotal,
                                                                                      variableAmount: Vamount,
                                                                                      excessTax: excess);
                                                                              setState(() {});
                                                                            } },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    //****************************************DISCOUNT***************************DISCOUNT*********************************
                                                                    // tableEdit==true?
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:discounttListControllers[i],
                                                                          initialCheck: true,
                                                                          last: table[i].discount.toString() ?? "",
                                                                          onChanged: (va) {
                                                                            int? disc;
                                                                            if (va ==
                                                                                "") {
                                                                              print(
                                                                                  "entered");
                                                                              disc =
                                                                              0;
                                                                              print(
                                                                                  "disc" +
                                                                                      disc
                                                                                          .toString());
                                                                            } else {
                                                                              disc =
                                                                                  int
                                                                                      .tryParse(
                                                                                      va);
                                                                              print(
                                                                                  "disc1" +
                                                                                      disc
                                                                                          .toString());
                                                                            }

                                                                            var qty = table[i]
                                                                                .requestedQty;
                                                                            print(
                                                                                "qty" +
                                                                                    qty
                                                                                        .toString());
                                                                            var excess = table[i]
                                                                                .excessTax;
                                                                            print(
                                                                                "excess" +
                                                                                    excess
                                                                                        .toString());
                                                                            var unitcost = table[i]
                                                                                .unitCost;
                                                                            print(
                                                                                "unitcost" +
                                                                                    unitcost
                                                                                        .toString());
                                                                            var vat = table[i].vat;
                                                                            var foc = table[i]
                                                                                .foc;

                                                                            print(
                                                                                "vat" +
                                                                                    vat
                                                                                        .toString());
                                                                            if (unitcost ==
                                                                                0 ||
                                                                                qty ==
                                                                                    0) {
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      variableAmount: 0,
                                                                                      actualCost: 0,
                                                                                      grandTotal: 0,
                                                                                      discount: disc);
                                                                            }

                                                                            else {

                                                                              var Vamount = (((unitcost! *
                                                                                  qty!) +
                                                                                  excess!) -
                                                                                  disc!)
                                                                                  .toDouble();
                                                                              print(
                                                                                  "Vamount" +
                                                                                      Vamount
                                                                                          .toString());

                                                                              var vactualCost = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              print(
                                                                                  "vactualCost" +
                                                                                      vactualCost
                                                                                          .toString());
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      variableAmount: Vamount,
                                                                                      actualCost: vactualCost,
                                                                                      grandTotal: vactualCost,
                                                                                      discount: disc);
                                                                              setState(() {});

                                                                            }

                                                                          }
                                                                          ,

                                                                        ),
                                                                      ),
                                                                    ),



                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller:focListControllers[i],
                                                                          initialCheck: true,
                                                                          last: table[i].foc.toString(),

                                                                          onChanged: (p0) {

                                                                            print(p0);
                                                                            if(p0==""){
                                                                              table[i] = table[i].copyWith(foc:0);
                                                                              setState(() {

                                                                              });

                                                                            }
                                                                            else{
                                                                              table[i] = table[i].copyWith(foc:double.tryParse(p0));
                                                                              setState(() {

                                                                              });
                                                                            }




                                                                          },
                                                                          enable: true,
                                                                          onComplete: () {

                                                                            setState(() {  print("maxxxx"+table.toString());});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),

                                                                    //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************

                    Visibility(
                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: UnderLinedInput(
                                                                          // controller: vatListControllers[i],
                                                                          initialCheck: true,

                                                                          last: table[i].vat.toString() ?? "",
                                                                          onChanged: (va) {
                                                                            if (va == "") {
                                                                              print("sss");
                                                                              var vatableAmount = table[i].variableAmount;
                                                                              table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                              setState(() {});
                                                                            } else {
                                                                              var vat = double.tryParse(va);
                                                                              var Vamount = table[i].variableAmount;
                                                                              print("qty" + Vamount.toString());
                                                                              var excess = table[i].excessTax;
                                                                              print("excess" + excess.toString());
                                                                              var unitcost = table[i].unitCost;
                                                                              var qty = table[i].requestedQty;
                                                                              var foc = table[i].foc;
                                                                              var dis = table[i].discount;
                                                                              print("unitcost" + unitcost.toString());
                                                                              if(unitcost==0 || qty==0){
                                                                                table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);

                                                                              }else{

                                                                                var Vamount = (((unitcost! *
                                                                                    qty!) +
                                                                                    excess!) -
                                                                                    dis!)
                                                                                    .toDouble();
                                                                                var vactualCost = (Vamount! +
                                                                                    ((Vamount! *
                                                                                        vat!) /
                                                                                        100));
                                                                                var Vgrnadtotal = (Vamount! +
                                                                                    ((Vamount! *
                                                                                        vat!) /
                                                                                        100));
                                                                                table[i] =
                                                                                    table[i]
                                                                                        .copyWith(
                                                                                        variableAmount: Vamount,
                                                                                        actualCost: vactualCost,
                                                                                        grandTotal: Vgrnadtotal,
                                                                                        vat: vat);
                                                                                setState(() {});

                                                                              }}
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),

                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: textPadding(
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
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: CheckedBoxs(
                                                                            valueChanger:table[i]
                                                                                .isRecieved==null?false:table[i].isRecieved,

                                                                            onSelection:(bool ? value){

                                                                            }),
                                                                      ),
                                                                    ),
                                                                    // Checkbox(
                                                                    //   value: table[i]
                                                                    //       .isRecieved==null?false:table[i]
                                                                    //       .isRecieved,
                                                                    //   onChanged: (bool?
                                                                    //       value) {
                                                                    //     setState(() {
                                                                    //       // this.isRecieved =
                                                                    //       //     value;
                                                                    //     });
                                                                    //   },
                                                                    // ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TableCell(
                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                        child: CheckedBoxs(
                                                                            valueChanger:table[i]
                                                                                .isActive==null?false:table[i].isActive,

                                                                            onSelection:(bool ? value){
                                                                              bool? isActive = table[i].isActive;
                                                                              setState(() {
                                                                                isActive = !isActive!;
                                                                                table[i] = table[i].copyWith(isActive: isActive);
                                                                                print(isInvoiced);
                                                                                setState(() {

                                                                                });

                                                                              });


                                                                            }),
                                                                        // Checkbox(
                                                                        //   value: table[i]
                                                                        //       .isActive==null?false:table[i]
                                                                        //       .isActive,
                                                                        //   onChanged: (bool?
                                                                        //       value) {
                                                                        //     setState(() {
                                                                        //       // this.isRecieved =
                                                                        //       //     value;
                                                                        //     });
                                                                        //   },
                                                                        // ),
                                                                      ),
                                                                    ),
                                                                    Visibility(
                                                                      visible:!select,
                                                                      child: TextButton(
                                                                          style: TextButton.styleFrom(
                                                                              primary: Colors.white,
                                                                              elevation: 2,
                                                                              backgroundColor: Colors
                                                                                  .grey.shade200
                                                                          ),
                                                                          onPressed: () {
                                                                            addition();
                                                                            vid = 0;
                                                                            eTax = 0;
                                                                            variantId = "";
                                                                            varinatname =
                                                                            "";
                                                                            vrefcod = "";
                                                                            Vbarcode = "";
                                                                            vendorRefCode="";
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




                                                                          },
                                                                          child:Text("update",style:TextStyle(color: Colors.black))

                                                                      ),
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
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: PopUpCall(
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
                                                                              inventoryId.text,variantId);

                                                                          // orderType = va!;
                                                                        });
                                                                      },
                                                                      onAddNew: () {},
                                                                      // restricted: true,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        varinatname!,
                                                                        fontSize: 12,
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(vendorRefCode!,
                                                                        fontSize: 12,
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        Vbarcode.toString(),
                                                                        fontSize: 12,
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        stockQty.toString(),
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(check1!,
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                // Qty==0?Text(""):

                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(

                                                                      //last:"",
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
                                                                  ),
                                                                ),
                                                                //vminqty==0?Text(""):
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: Checkbox(
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
                                                                  ),
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
                                                                check==0?
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TextFormField(

                                                                    initialValue:check.toString(),
                                                                    keyboardType: TextInputType.number,
                                                                    inputFormatters: <TextInputFormatter>[
                                                                      FilteringTextInputFormatter.digitsOnly
                                                                    ],
                                                                    decoration: InputDecoration(

                                                                      contentPadding: EdgeInsets.all(10),
                                                                      isDense: true,
                                                                      // hintText: widget.hintText,
                                                                      hintStyle: TextStyle(fontSize: 10),
                                                                      border:InputBorder.none,
                                                                    ),
                                                                    onChanged: (p0){
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
                                                                  ),
                                                                )
                                                                    :
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,

                                                                    child: UnderLinedInput(
                                                                      initialCheck: true,
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
                                                                  ),
                                                                ),
                                                                eTax == 0
                                                                    ?  Visibility(
                                                                  visible:!select,
                                                                      child: TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(

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
                                                                  ),
                                                                ),
                                                                    )
                                                                    :  Visibility(
                                                                  visible:!select,
                                                                      child: TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                                                  child: UnderLinedInput(
                                                                      last:"",
                                                                      // initial: eTax
                                                                      //     .toString(),
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
                                                                ),
                                                                    ),

                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(
                                                                      //last:"",
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        Vamount.toString(),
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: UnderLinedInput(
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
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        vactualCost
                                                                            .toString(),
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: textPadding(
                                                                        Vgrnadtotal
                                                                            .toString(),
                                                                        padding:
                                                                        EdgeInsets.only(
                                                                            left: 11.5,
                                                                            top: 11.5),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: Checkbox(
                                                                      value: isInvoiced,
                                                                      onChanged:
                                                                          (bool? value) {
                                                                        setState(() {
                                                                          // this.isRecieved =
                                                                          //     value;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TableCell(
                                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                                    child: InkWell(
                                                                      child: Center(
                                                                          child: Container(
                                                                            // margin: EdgeInsets
                                                                            //     .only(
                                                                            //         top:
                                                                            //             11.5),
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
                                                                          }
                                                                          else {
                                                                            _value =
                                                                            !_value;
                                                                          }
                                                                          //
                                                                          //   table.add(
                                                                          //       OrderLines(
                                                                          //         vendorRefCode: vendorRefCode??"",
                                                                          //     isRecieved:
                                                                          //         isRecieved ??
                                                                          //             false,
                                                                          //     isActive:
                                                                          //         _value,
                                                                          //     supplierCode:
                                                                          //         vid.toString() ,
                                                                          //     variantId:
                                                                          //         variantId ,
                                                                          //     variantName:
                                                                          //         varinatname,
                                                                          //     barcode:
                                                                          //         Vbarcode ,
                                                                          //     cvd: "sss",
                                                                          //     foc:
                                                                          //         vfoc ,
                                                                          //     maximumQty:
                                                                          //         vmaxnqty ,
                                                                          //     minimumQty:
                                                                          //         vminqty ,
                                                                          //     excessTax:
                                                                          //         eTax ,
                                                                          //     vat:
                                                                          //         vvat ,
                                                                          //     actualCost:
                                                                          //         vactualCost,
                                                                          //     purchaseuom:
                                                                          //         check1 ,
                                                                          //     discount:
                                                                          //         Vdiscount ,
                                                                          //     requestedQty:
                                                                          //         Qty ,
                                                                          //     unitCost:
                                                                          //         check,
                                                                          //     grandTotal:
                                                                          //         Vgrnadtotal ,
                                                                          //     variableAmount:
                                                                          //         Vamount! ,
                                                                          //     currentQty:
                                                                          //         stockQty,
                                                                          //   ));
                                                                          //   print("gtable" +
                                                                          //       table
                                                                          //           .toString());
                                                                          //   addition();
                                                                          //   vid = 0;
                                                                          //   eTax = 0;
                                                                          //   variantId = "";
                                                                          //   varinatname =
                                                                          //       "";
                                                                          //   vrefcod = "";
                                                                          //   Vbarcode = "";
                                                                          //   check1 = "";
                                                                          //   vendorRefCode="";
                                                                          //   check = 0;
                                                                          //   Qty = 0;
                                                                          //   vvat=0;
                                                                          //   vmaxnqty=0;
                                                                          //   vmaxnqty=0;
                                                                          //   Vdiscount = 0;
                                                                          //   Vamount = 0;
                                                                          //   Vgrnadtotal = 0;
                                                                          //   vactualCost = 0;
                                                                          //   unitcost = 0;
                                                                          //   grands = 0;
                                                                          //   focValue=0;
                                                                          //   actualValue = 0;
                                                                          //   excessTAxValue=0;
                                                                          //   VatableValue =
                                                                          //       0;
                                                                          //   discountValue =
                                                                          //       0;
                                                                          //   vatValue = 0;
                                                                          //   stockQty = 0;
                                                                          //   _value = false;
                                                                          //   isRecieved =
                                                                          //       false;
                                                                          //
                                                                          //   // _value=false;
                                                                          //
                                                                          //   setState(() {});
                                                                          // }
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                                Visibility(
                                                                  visible:!select,
                                                                  child: TextButton(
                                                                      style: TextButton.styleFrom(
                                                                          primary: Colors.black,
                                                                          // elevation: 2,
                                                                          backgroundColor: Colors
                                                                              .grey.shade200
                                                                      ),
                                                                      onPressed: () {

                                                                        table.add(
                                                                            OrderLines(
                                                                              vendorRefCode: vendorRefCode??"",


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
                                                                        print("aaaatable"+table.toString());
                                                                        requestedListControllers.clear();
                                                                        minListControllers.clear() ;
                                                                        maxListControllers .clear();
                                                                        unitcostListControllers.clear();
                                                                        excesstListControllers.clear();
                                                                        discounttListControllers.clear();
                                                                        focListControllers.clear();
                                                                        vatListControllers.clear();

                                                                        setState(() {
                                                                          tableClear=false;
                                                                          valueAddingTextEdingController();
                                                                        });

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
                                                                        vendorRefCode="";
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





                                                                      },
                                                                      child:Text("set",style:TextStyle(color: Colors.black))

                                                                  ),
                                                                ),
                                                              ]),],

                                                        //**********************Read case Read case**********************Read Case*****************


           TableRow(
                                                          // decoration: BoxDecoration(
                                                          //     color: Colors.green.shade200,
                                                          //     shape: BoxShape.rectangle,
                                                          //     border: const Border(      top: BorderSide(
                                                          //         width: .5,
                                                          //         color: Colors.black45,
                                                          //         // color: Colors.blue,
                                                          //         style: BorderStyle.solid
                                                          //     ),)),
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
                                                                'Barcode',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),

                                                              tableHeadtext(
                                                                'Current qty',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Purchase UOM',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Requested qty',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Min Order Qty',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Max Order Qty',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Is Recieved',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Unit Cost',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Excise Tax',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Discount',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'FOC',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Vatable Amount',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),

                                                              tableHeadtext(
                                                                'Vat',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Actual Cost',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Grand Total',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Is Invoiced',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                'Is Active',
                                                                padding:
                                                                EdgeInsets.all(7),
                                                                height: 46,
                                                                size: 13,
                                                                // color: Palette.containerDarknew,
                                                                // textColor: Palette.white
                                                              ),
                                                              tableHeadtext(
                                                                '',
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
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                                                      child: textPadding(
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: PopUpCall(

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
                                                                            var    variantId1 =
                                                                                va?.code;
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
                                                                                inventoryId.text,variantId1);

                                                                            // orderType = va!;
                                                                          });
                                                                        },
                                                                        onAddNew: () {},
                                                                        // restricted: true,
                                                                      ),
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
                                                                          table[i].vendorRefCode.toString(),
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),


                                                                    //88888888888888888888                                   //**********************************************
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:requestedListControllers[i],
                                                                        //last: table[i].requestedQty.toString() ?? "",
                                                                        onChanged: (va) {
                                                                          print(va);
                                                                          if (va == "") {
                                                                            print("entered");
                                                                            table[i] = table[i].copyWith(requestedQty: 0, variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                          } else {
                                                                            var qty = int.tryParse(va);
                                                                            var dis = table[i].discount;
                                                                            var excess = table[i].excessTax;
                                                                            var unitcost = table[i].unitCost;
                                                                            var vat = table[i].vat;
                                                                            var foc = table[i].foc;
                                                                            if (unitcost == "" || unitcost == 0) {
                                                                              table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                            }else {
                                                                              var Vamount;
                                                                              var vactualCost;

                                                                              Vamount  = (((unitcost! *
                                                                                  qty!) +
                                                                                  excess!) -
                                                                                  dis!)
                                                                                  .toDouble();
                                                                              if(vat==0 ||vat==""){
                                                                                vactualCost=Vamount;
                                                                              }
                                                                              else{

                                                                                vactualCost  = (Vamount! +
                                                                                    ((Vamount! *
                                                                                        vat!) /
                                                                                        100));
                                                                              }


                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      variableAmount: Vamount,
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
                                                                        //last:table[i].minimumQty.toString(),
                                                                        controller:minListControllers[i],

                                                                        onChanged: (p0) {

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
                                                                        onComplete: () {

                                                                          setState(() {  print("maxxxx"+table.toString());});
                                                                        },
                                                                      ),
                                                                    ),

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:maxListControllers[i],
                                                                        //last:table[i].maximumQty.toString(),
                                                                        onChanged: (p0) {

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
                                                                        onComplete: () {

                                                                          setState(() {  print("maxxxx"+table.toString());});
                                                                        },
                                                                      ),
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: CheckedBoxs(

                                                                        valueChanger:table[i].isRecieved==null?false: table[i].isRecieved,


                                                                        onSelection: (bool? value) {  },

                                                                      ),
                                                                    ),


                                                                    // Checkbox(
                                                                    //   value: table[i]
                                                                    //       .isRecieved==null?false: table[i]
                                                                    //       .isRecieved,
                                                                    //   onChanged: (bool?
                                                                    //       value) {
                                                                    //     setState(() {
                                                                    //       this.isRecieved =
                                                                    //           value;
                                                                    //     });
                                                                    //   },
                                                                    // ),

                                                                    //*************UNITCOST*******************uNIT COST*******************UNITCOST***********UNITCOST************************************************
                                                                    //

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:unitcostListControllers[i],
                                                                        // last: table[i].unitCost.toString() ?? "",
                                                                        onChanged: (va) {
                                                                          double? unitcost;
                                                                          if (va == "") {
                                                                            print("entered");
                                                                            unitcost = 0;
                                                                            print("disc" + unitcost.toString());
                                                                            table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
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

                                                                            table[i] = table[i].copyWith(variableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                            setState(() {});
                                                                          } else {

                                                                            var Vamount = (((unitcost! *
                                                                                qty!) +
                                                                                excess!) -
                                                                                disc!)
                                                                                .toDouble();
                                                                            print(
                                                                                "Vamount" +
                                                                                    Vamount
                                                                                        .toString());

                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            print(
                                                                                "vactualCost" +
                                                                                    vactualCost
                                                                                        .toString());
                                                                            table[i] =
                                                                                table[i]
                                                                                    .copyWith(
                                                                                    variableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: vactualCost,
                                                                                    unitCost: unitcost);
                                                                            setState(() {});

                                                                          }
                                                                        },
                                                                      ),
                                                                    ),



                                                                    //Excess tax***********************************Excesstax***********************************************************************
                                                                    excesstListControllers.isNotEmpty?
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:excesstListControllers[i],
                                                                        // last: table[i].excessTax.toString() ?? "",
                                                                        onChanged: (va) {
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
                                                                            table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, variableAmount: 0, excessTax: excess);
                                                                            setState(() {

                                                                            });

                                                                          }else {
                                                                            var Vamount;


                                                                            Vamount =
                                                                                (((unitcost! *
                                                                                    qty!) +
                                                                                    excess!) -
                                                                                    Vdiscount!)
                                                                                    .toDouble();

                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            var Vgrnadtotal = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            table[i] =
                                                                                table[i]
                                                                                    .copyWith(
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: Vgrnadtotal,
                                                                                    variableAmount: Vamount,
                                                                                    excessTax: excess);
                                                                            setState(() {});
                                                                          } },
                                                                      ),
                                                                    ):
                                                                    TableCell(

                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        // controller:excesstListControllers[i],
                                                                        // last: table[i].excessTax.toString() ?? "",
                                                                        onChanged: (va) {
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
                                                                            table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, variableAmount: 0, excessTax: excess);
                                                                            setState(() {

                                                                            });

                                                                          }else {
                                                                            var Vamount;


                                                                            Vamount =
                                                                                (((unitcost! *
                                                                                    qty!) +
                                                                                    excess!) -
                                                                                    Vdiscount!)
                                                                                    .toDouble();

                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            var Vgrnadtotal = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            table[i] =
                                                                                table[i]
                                                                                    .copyWith(
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: Vgrnadtotal,
                                                                                    variableAmount: Vamount,
                                                                                    excessTax: excess);
                                                                            setState(() {});
                                                                          } },
                                                                      ),
                                                                    ),
                                                                    //****************************************DISCOUNT***************************DISCOUNT*********************************
                                                                    // tableEdit==true?
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:discounttListControllers[i],
                                                                        // last: table[i].discount.toString() ?? "",
                                                                        onChanged: (va) {
                                                                          int? disc;
                                                                          if (va ==
                                                                              "") {
                                                                            print(
                                                                                "entered");
                                                                            disc =
                                                                            0;
                                                                            print(
                                                                                "disc" +
                                                                                    disc
                                                                                        .toString());
                                                                          } else {
                                                                            disc =
                                                                                int
                                                                                    .tryParse(
                                                                                    va);
                                                                            print(
                                                                                "disc1" +
                                                                                    disc
                                                                                        .toString());
                                                                          }

                                                                          var qty = table[i]
                                                                              .requestedQty;
                                                                          print(
                                                                              "qty" +
                                                                                  qty
                                                                                      .toString());
                                                                          var excess = table[i]
                                                                              .excessTax;
                                                                          print(
                                                                              "excess" +
                                                                                  excess
                                                                                      .toString());
                                                                          var unitcost = table[i]
                                                                              .unitCost;
                                                                          print(
                                                                              "unitcost" +
                                                                                  unitcost
                                                                                      .toString());
                                                                          var vat = table[i].vat;
                                                                          var foc = table[i]
                                                                              .foc;

                                                                          print(
                                                                              "vat" +
                                                                                  vat
                                                                                      .toString());
                                                                          if (unitcost ==
                                                                              0 ||
                                                                              qty ==
                                                                                  0) {
                                                                            table[i] =
                                                                                table[i]
                                                                                    .copyWith(
                                                                                    variableAmount: 0,
                                                                                    actualCost: 0,
                                                                                    grandTotal: 0,
                                                                                    discount: disc);
                                                                          }

                                                                          else {

                                                                            var Vamount = (((unitcost! *
                                                                                qty!) +
                                                                                excess!) -
                                                                                disc!)
                                                                                .toDouble();
                                                                            print(
                                                                                "Vamount" +
                                                                                    Vamount
                                                                                        .toString());

                                                                            var vactualCost = (Vamount! +
                                                                                ((Vamount! *
                                                                                    vat!) /
                                                                                    100));
                                                                            print(
                                                                                "vactualCost" +
                                                                                    vactualCost
                                                                                        .toString());
                                                                            table[i] =
                                                                                table[i]
                                                                                    .copyWith(
                                                                                    variableAmount: Vamount,
                                                                                    actualCost: vactualCost,
                                                                                    grandTotal: vactualCost,
                                                                                    discount: disc);
                                                                            setState(() {});

                                                                          }

                                                                        }
                                                                        ,

                                                                      ),
                                                                    ),



                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller:focListControllers[i],
                                                                        // last: table[i].foc.toString(),

                                                                        onChanged: (p0) {

                                                                          print(p0);
                                                                          if(p0==""){
                                                                            table[i] = table[i].copyWith(foc:0);
                                                                            setState(() {

                                                                            });

                                                                          }
                                                                          else{
                                                                            table[i] = table[i].copyWith(foc:double.tryParse(p0));
                                                                            setState(() {

                                                                            });
                                                                          }




                                                                        },
                                                                        enable: true,
                                                                        onComplete: () {

                                                                          setState(() {  print("maxxxx"+table.toString());});
                                                                        },
                                                                      ),
                                                                    ),

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),

                                                                    //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: UnderLinedInput(
                                                                        controller: vatListControllers[i],
                                                                        // last: table[i].vat.toString() ?? "",
                                                                        onChanged: (va) {
                                                                          if (va == "") {
                                                                            print("sss");
                                                                            var vatableAmount = table[i].variableAmount;
                                                                            table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                                                            setState(() {});
                                                                          } else {
                                                                            var vat = double.tryParse(va);
                                                                            var Vamount = table[i].variableAmount;
                                                                            print("qty" + Vamount.toString());
                                                                            var excess = table[i].excessTax;
                                                                            print("excess" + excess.toString());
                                                                            var unitcost = table[i].unitCost;
                                                                            var qty = table[i].requestedQty;
                                                                            var foc = table[i].foc;
                                                                            var dis = table[i].discount;
                                                                            print("unitcost" + unitcost.toString());
                                                                            if(unitcost==0 || qty==0){
                                                                              table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);

                                                                            }else{

                                                                              var Vamount = (((unitcost! *
                                                                                  qty!) +
                                                                                  excess!) -
                                                                                  dis!)
                                                                                  .toDouble();
                                                                              var vactualCost = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              var Vgrnadtotal = (Vamount! +
                                                                                  ((Vamount! *
                                                                                      vat!) /
                                                                                      100));
                                                                              table[i] =
                                                                                  table[i]
                                                                                      .copyWith(
                                                                                      variableAmount: Vamount,
                                                                                      actualCost: vactualCost,
                                                                                      grandTotal: Vgrnadtotal,
                                                                                      vat: vat);
                                                                              setState(() {});

                                                                            }}
                                                                        },
                                                                      ),
                                                                    ),

                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: textPadding(
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
                                                                    ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: CheckedBoxs(
                                                                          valueChanger:table[i]
                                                                              .isRecieved==null?false:table[i].isRecieved,

                                                                          onSelection:(bool ? value){

                                                                          }),
                                                                    ),
                                                                    // Checkbox(
                                                                    //   value: table[i]
                                                                    //       .isRecieved==null?false:table[i]
                                                                    //       .isRecieved,
                                                                    //   onChanged: (bool?
                                                                    //       value) {
                                                                    //     setState(() {
                                                                    //       // this.isRecieved =
                                                                    //       //     value;
                                                                    //     });
                                                                    //   },
                                                                    // ),
                                                                    TableCell(
                                                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                                                      child: CheckedBoxs(
                                                                          valueChanger:table[i]
                                                                              .isActive==null?false:table[i].isActive,

                                                                          onSelection:(bool ? value){
                                                                            bool? isActive = table[i].isActive;
                                                                            setState(() {
                                                                              isActive = !isActive!;
                                                                              table[i] = table[i].copyWith(isActive: isActive);
                                                                              print(isInvoiced);
                                                                              setState(() {

                                                                              });

                                                                            });


                                                                          }),
                                                                      // Checkbox(
                                                                      //   value: table[i]
                                                                      //       .isActive==null?false:table[i]
                                                                      //       .isActive,
                                                                      //   onChanged: (bool?
                                                                      //       value) {
                                                                      //     setState(() {
                                                                      //       // this.isRecieved =
                                                                      //       //     value;
                                                                      //     });
                                                                      //   },
                                                                      // ),
                                                                    ),
                                                                    TextButton(
                                                                        style: TextButton.styleFrom(
                                                                            primary: Colors.white,
                                                                            elevation: 2,
                                                                            backgroundColor: Colors
                                                                                .grey.shade200
                                                                        ),
                                                                        onPressed: () {
                                                                          addition();
                                                                          vid = 0;
                                                                          eTax = 0;
                                                                          variantId = "";
                                                                          varinatname =
                                                                          "";
                                                                          vrefcod = "";
                                                                          Vbarcode = "";
                                                                          vendorRefCode="";
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




                                                                        },
                                                                        child:Text("update",style:TextStyle(color: Colors.black))

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
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: PopUpCall(
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
                                                                            inventoryId.text,variantId);

                                                                        // orderType = va!;
                                                                      });
                                                                    },
                                                                    onAddNew: () {},
                                                                    // restricted: true,
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      varinatname!,
                                                                      fontSize: 12,
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(vendorRefCode!,
                                                                      fontSize: 12,
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      Vbarcode.toString(),
                                                                      fontSize: 12,
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      stockQty.toString(),
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(check1!,
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                // Qty==0?Text(""):

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(

                                                                    //last:"",
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
                                                                ),
                                                                //vminqty==0?Text(""):
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
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
                                                                check==0?
                                                                TextFormField(

                                                                  initialValue:check.toString(),
                                                                  keyboardType: TextInputType.number,
                                                                  inputFormatters: <TextInputFormatter>[
                                                                    FilteringTextInputFormatter.digitsOnly
                                                                  ],
                                                                  decoration: InputDecoration(

                                                                    contentPadding: EdgeInsets.all(10),
                                                                    isDense: true,
                                                                    // hintText: widget.hintText,
                                                                    hintStyle: TextStyle(fontSize: 10),
                                                                    border:InputBorder.none,
                                                                  ),
                                                                  onChanged: (p0){
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
                                                                )
                                                                    :
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                                                  child: UnderLinedInput(
                                                                    initialCheck: true,
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
                                                                ),
                                                                eTax == 0
                                                                    ? TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(

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
                                                                  ),
                                                                )
                                                                    : TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                                                  child: UnderLinedInput(
                                                                    last:"",
                                                                    // initial: eTax
                                                                    //     .toString(),
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
                                                                ),

                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
                                                                    //last:"",
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      Vamount.toString(),
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: UnderLinedInput(
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
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      vactualCost
                                                                          .toString(),
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: textPadding(
                                                                      Vgrnadtotal
                                                                          .toString(),
                                                                      padding:
                                                                      EdgeInsets.only(
                                                                          left: 11.5,
                                                                          top: 11.5),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: Checkbox(
                                                                    value: isInvoiced,
                                                                    onChanged:
                                                                        (bool? value) {
                                                                      setState(() {
                                                                        // this.isRecieved =
                                                                        //     value;
                                                                      });
                                                                    },
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: InkWell(
                                                                    child: Center(
                                                                        child: Container(
                                                                          // margin: EdgeInsets
                                                                          //     .only(
                                                                          //         top:
                                                                          //             11.5),
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
                                                                        }
                                                                        else {
                                                                          _value =
                                                                          !_value;
                                                                        }
                                                                        //
                                                                        //   table.add(
                                                                        //       OrderLines(
                                                                        //         vendorRefCode: vendorRefCode??"",
                                                                        //     isRecieved:
                                                                        //         isRecieved ??
                                                                        //             false,
                                                                        //     isActive:
                                                                        //         _value,
                                                                        //     supplierCode:
                                                                        //         vid.toString() ,
                                                                        //     variantId:
                                                                        //         variantId ,
                                                                        //     variantName:
                                                                        //         varinatname,
                                                                        //     barcode:
                                                                        //         Vbarcode ,
                                                                        //     cvd: "sss",
                                                                        //     foc:
                                                                        //         vfoc ,
                                                                        //     maximumQty:
                                                                        //         vmaxnqty ,
                                                                        //     minimumQty:
                                                                        //         vminqty ,
                                                                        //     excessTax:
                                                                        //         eTax ,
                                                                        //     vat:
                                                                        //         vvat ,
                                                                        //     actualCost:
                                                                        //         vactualCost,
                                                                        //     purchaseuom:
                                                                        //         check1 ,
                                                                        //     discount:
                                                                        //         Vdiscount ,
                                                                        //     requestedQty:
                                                                        //         Qty ,
                                                                        //     unitCost:
                                                                        //         check,
                                                                        //     grandTotal:
                                                                        //         Vgrnadtotal ,
                                                                        //     variableAmount:
                                                                        //         Vamount! ,
                                                                        //     currentQty:
                                                                        //         stockQty,
                                                                        //   ));
                                                                        //   print("gtable" +
                                                                        //       table
                                                                        //           .toString());
                                                                        //   addition();
                                                                        //   vid = 0;
                                                                        //   eTax = 0;
                                                                        //   variantId = "";
                                                                        //   varinatname =
                                                                        //       "";
                                                                        //   vrefcod = "";
                                                                        //   Vbarcode = "";
                                                                        //   check1 = "";
                                                                        //   vendorRefCode="";
                                                                        //   check = 0;
                                                                        //   Qty = 0;
                                                                        //   vvat=0;
                                                                        //   vmaxnqty=0;
                                                                        //   vmaxnqty=0;
                                                                        //   Vdiscount = 0;
                                                                        //   Vamount = 0;
                                                                        //   Vgrnadtotal = 0;
                                                                        //   vactualCost = 0;
                                                                        //   unitcost = 0;
                                                                        //   grands = 0;
                                                                        //   focValue=0;
                                                                        //   actualValue = 0;
                                                                        //   excessTAxValue=0;
                                                                        //   VatableValue =
                                                                        //       0;
                                                                        //   discountValue =
                                                                        //       0;
                                                                        //   vatValue = 0;
                                                                        //   stockQty = 0;
                                                                        //   _value = false;
                                                                        //   isRecieved =
                                                                        //       false;
                                                                        //
                                                                        //   // _value=false;
                                                                        //
                                                                        //   setState(() {});
                                                                        // }
                                                                      });
                                                                    },
                                                                  ),
                                                                ),
                                                                TableCell(
                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                  child: TextButton(
                                                                      style: TextButton.styleFrom(
                                                                          primary: Colors.black,
                                                                          // elevation: 2,
                                                                          backgroundColor: Colors
                                                                              .grey.shade200
                                                                      ),
                                                                      onPressed: () {

                                                                        table.add(
                                                                            OrderLines(
                                                                              vendorRefCode: vendorRefCode??"",


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
                                                                              Vamount ??
                                                                                  0,
                                                                              currentQty:
                                                                              stockQty ??
                                                                                  0,
                                                                            ));
                                                                        print("aaaatable"+table.toString());
                                                                        requestedListControllers.clear();
                                                                        minListControllers.clear() ;
                                                                        maxListControllers .clear();
                                                                        unitcostListControllers.clear();
                                                                        excesstListControllers.clear();
                                                                        discounttListControllers.clear();
                                                                        focListControllers.clear();
                                                                        vatListControllers.clear();

                                                                        setState(() {
                                                                          tableClear=false;
                                                                          valueAddingTextEdingController();
                                                                        });

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
                                                                        vendorRefCode="";
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





                                                                      },
                                                                      child:Text("set",style:TextStyle(color: Colors.black))

                                                                  ),
                                                                ),
                                                              ]),

                                                      ],
                                                      widths: {
                                                        0: FlexColumnWidth(2),
                                                        1: FlexColumnWidth(4),
                                                        2: FlexColumnWidth(7),
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
                                                        18: FlexColumnWidth(3),
                                                        19: FlexColumnWidth(3),
                                                        20: FlexColumnWidth(3),
                                                        21: FlexColumnWidth(3),

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

                                                      },
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .08,
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
                                          inventoryId.text=Variable.inventory_ID;

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
                                            vendorMailId: Variable.email,
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
                                          color: Color(0xff3E4F5B),
                                          alignment: Alignment.center,
                                          height: 29,
                                          width: 90,

                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                select?   Icons.check:Icons.update,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width:3,),
                                              Text(
                                               select?"save":"update",
                                                style: TextStyle(
                                                    color: Colors.white,
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
