import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';

import 'package:inventory/Screens/sales/general/cubit/generalread/salesgeneralread_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/salesgeneraldelete/salesgeneraldelete_cubit.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../commonWidget/commonutils.dart';
import '../../../commonWidget/verticalList.dart';
import '../../../core/uttils/variable.dart';
import '../../../cubits/cubit/cubit/purchase_stock_cubit.dart';
import '../../../cubits/cubit/table_details_cubit_dart_cubit.dart';
import '../../../model/purchase_current_stock_qty.dart';
import '../../../model/purchase_order_table_model.dart';
import '../../../model/purchaseorder.dart';
import '../../../model/variantid.dart';
import '../../../widgets/customtable.dart';
import '../../../widgets/dropdownbutton.dart';
import '../../../widgets/popupcallwidgets/popupcallwidget.dart';

import 'cubit/customeridcreation/customeridcreation_cubit.dart';
import 'cubit/customeridlist/shippingaddresscreation_cubit.dart';
import 'cubit/postcubit/postcubit_cubit.dart';
import 'cubit/sales_general_patch/salesgeneralpatcvh_cubit.dart';
import 'cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'cubit/shippingaddress/shippingadrees_cubit.dart';
import 'model/customeridlistmodel.dart';
import 'model/shippinfaddressmodel.dart';

class SalesGeneral extends StatefulWidget {
  @override
  _SalesGeneralState createState() => _SalesGeneralState();
}

class _SalesGeneralState extends State<SalesGeneral> {
  int? veritiaclid = 0;
  List<salesOrderTypeModel> result = [];
  int selectedVertical = 0;
  bool select = false;
  bool updateCheck = false;
  List<int?> currentStock = [];
  var paginatedList;
  final GlobalKey< _SalesGeneralGrowableTableState> _myWidgetState = GlobalKey< _SalesGeneralGrowableTableState>();

  PurchaseCureentStockQty? purchaseCurrentStock;
  TextEditingController itemsearch = TextEditingController();

  TextEditingController orderTypeController = TextEditingController();
  TextEditingController orderModeController = TextEditingController();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController invemtoryIdController = TextEditingController();
  TextEditingController cstomerIdController = TextEditingController();
  TextEditingController cstomerIdNameController = TextEditingController();
  TextEditingController trnController = TextEditingController();
  TextEditingController shippingAddressIdController = TextEditingController();
  TextEditingController shippingAddressIdNameController = TextEditingController();
  TextEditingController billingAddressIdController = TextEditingController();
  TextEditingController billingAddressIdNameController = TextEditingController();
  TextEditingController slaesQuotesController = TextEditingController();
  TextEditingController paymentIdController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  TextEditingController remarksController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController exciseTAxController = TextEditingController();
  TextEditingController taxableAmountController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController sellingPriceController = TextEditingController();
  TextEditingController toatalPriceController = TextEditingController();

  List<SalesOrderLines> table  =[];
  tableAssign(List<SalesOrderLines> table1) {
    print("ethito");
    table = List.from(table1);
    setState(() {
      addition();
    });
  }

  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }

  Future _getCurrentUser() async {
    if (table.isNotEmpty) {
      for (var i = 0; i < table.length; i++) {
        print("variantaaaaaa" + table[i].variantId.toString());

        var b = await context
            .read<PurchaseStockCubit>()
            .getCurrentStock(invemtoryIdController.text, table[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  clears(){
    orderTypeController.text = "";
    orderCodeController.text="";
    orderModeController.text = "";
    orderDateController.text = "";
    invemtoryIdController.text = "";
    cstomerIdController.text = "";
    trnController.text = "";
    cstomerIdNameController.clear();
    sellingPriceController.text="";
    shippingAddressIdController.text = "";
    billingAddressIdController.text = "";
    slaesQuotesController.text = "";
    paymentIdController.text = "";
    paymentStatusController.text = "";
    orderStatusController.text = "";
    noteController.text = "";
    remarksController.text = "";
    invoiceStatusController.text = "";
    unitCostController.text = "";
    discountController.text = "";
    exciseTAxController.text = "";
    taxableAmountController.text = "";
    vatController.text = "";
    toatalPriceController.text = "";
    billingAddressIdNameController.text="";
    shippingAddressIdNameController.text="";
    table= [];
    _myWidgetState.currentState?.clearTableAddingVariables();
    _myWidgetState.currentState?.table1=[];
    _myWidgetState.currentState?.currentStock=[];
    setState(() {

    });

  }

  addition() {
    print("enterd");
    print("+==" + table.toString());
    double unitcost = 0;
    double sellingprice = 0;
    double actualValue = 0;
    double vatValue = 0;
    double discountValue = 0;
    double totalAmount = 0;
    double warrentyprice = 0;
    double taxableAmount = 0;
    double excessTAxValue = 0;
    if (table.isNotEmpty)
      for (var i = 0; i < table.length; i++) {
        if (table[i].isActive == true &&table[i].updatecheck == false) {
          var unicost1 = table[i].unitCost ?? 0;
          var vatValue1 = table[i].vat ?? 0;
          var discountValue1 = table[i].discount ?? 0;
          var taxableAmount1 = table[i].taxableAmount ?? 0;
          var excessTAxValue1 = table[i].excessTax ?? 0;
          var sellingprice1 = table[i].sellingPrice ?? 0;
          var totalAmount1 = table[i].totalPrice ?? 0;
          var warrentyprice1 = table[i].warrentyPrice ?? 0;

          unitcost = unitcost + unicost1;
          vatValue = vatValue + vatValue1;
          discountValue = discountValue + discountValue1;
          taxableAmount = taxableAmount + taxableAmount1;

          totalAmount = totalAmount + totalAmount1;
          sellingprice = sellingprice + sellingprice1;
          warrentyprice = warrentyprice + warrentyprice1;
          excessTAxValue = excessTAxValue + excessTAxValue1;
        }
      }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    vatController.text = vatValue.toString();
    discountController.text = discountValue.toString();
    sellingPriceController.text = sellingprice.toString();
    toatalPriceController.text = totalAmount.toString();
    taxableAmountController.text = taxableAmount.toString();
    exciseTAxController.text = excessTAxValue.toString();

    // _value=false;
  }

  @override
  void initState() {
    context.read<SalesgeneralverticalCubit>().getSalesGeneralVertical();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostcubitCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralreadCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneraldeleteCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralpatcvhCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseStockCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<PostcubitCubit, PostcubitState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    Timer(Duration(seconds: 5), () {
                      setState(() {
                        context.read<SalesgeneralverticalCubit>().getSalesGeneralVertical();
                        // select=false;
                      });
                    });
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
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
                      print("Akshayaaaaa" + data.toString());
                      purchaseCurrentStock = data;
                      var stockQty = purchaseCurrentStock?.StockId??0;
                      print("stockqty" + stockQty.toString());


                      print("AKSKKSKSKSK");
                      currentStock.add(stockQty);
                      for(var i=0;i<table.length;i++){
                        table[i]=table[i].copyWith(stockId:currentStock[i].toString()??"");
                      }
                      setState(() {});
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
                          ? table = List.from(data?.salesOrderData?.orderLines ?? [])
                          : table = [];
                      //   print("lll"+lines.toString());
                      //
                      orderTypeController.text = data.salesOrderData?.orderType ?? "";
                      orderModeController.text = data.salesOrderData?.orderMode ?? "";
                      orderCodeController.text = data.salesOrderData?.salesOrderCode ?? "";
                      orderDateController.text = data.salesOrderData?.orderedDate ?? "";
                      invemtoryIdController.text = data.salesOrderData?.inventoryid ?? "";
                      cstomerIdController.text = data.salesOrderData?.customerId ?? "";
                      trnController.text = data.salesOrderData?.trnNumber ?? "";
                      shippingAddressIdController.text = data.salesOrderData?.shippingAddressId ?? "";
                      billingAddressIdController.text = data.salesOrderData?.billingAddressId ?? "";
                      slaesQuotesController.text = data.salesOrderData?.salesQuotesId ?? "";
                      paymentIdController.text = data.salesOrderData?.paymentId ?? "";
                      paymentStatusController.text = data.salesOrderData?.paymentStatus ?? "";
                      orderStatusController.text = data.salesOrderData?.orderStatus ?? "";
                      remarksController.text = data.salesOrderData?.remarks ?? "";
                      noteController.text = data.salesOrderData?.note ?? "";
                      invoiceStatusController.text = data.salesOrderData?.invoiceStatus ?? "";
                      unitCostController.text = data.salesOrderData?.unitCost.toString() ?? "";
                      discountController.text = data.salesOrderData?.discount.toString() ?? "";
                      exciseTAxController.text = data.salesOrderData?.excessTax.toString() ?? "";
                      taxableAmountController.text = data.salesOrderData?.taxableAmount.toString() ?? "";
                      vatController.text = data.salesOrderData?.vat.toString() ?? "";
                      sellingPriceController.text = data.salesOrderData?.sellingPriceTotal.toString() ??
                              "";
                      toatalPriceController.text = data.salesOrderData?.totalPrice.toString() ?? "";
                      _getCurrentUser();
                      setState(() {});
                    });
              },
            ),
            BlocListener<SalesgeneralpatcvhCubit, SalesgeneralpatcvhState>(
              listener: (context, state) {
                print("patch" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    // currentStock.clear();
                    context
                        .read<SalesgeneralreadCubit>()
                        .getSalesGenralRead(veritiaclid!);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<SalesgeneraldeleteCubit, SalesgeneraldeleteState>(
              listener: (context, state) {
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("checkingdata" + data.data1.toString());
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    // clear();

                    context
                        .read<SalesgeneralverticalCubit>()
                        .getSalesGeneralVertical();
                    _myWidgetState.currentState?.table1=[];
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<SalesgeneralverticalCubit,
              SalesgeneralverticalState>(
            listener: (context, state) {
              print("aaaa" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    paginatedList=list;
                    print("appuram" + list.data.toString());

                    result = list.data;
                    print("appuram" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        if(select){
                          veritiaclid = result[result.length-1].id;
                          selectedVertical=result.length-1;

                          context
                              .read<SalesgeneralreadCubit>()
                              .getSalesGenralRead(veritiaclid!);

                        }
                        else{
                          veritiaclid = result[0].id;
                          selectedVertical=0;

                          context
                              .read<SalesgeneralreadCubit>()
                              .getSalesGenralRead(veritiaclid!);
                        }

                        select = false;
                      } else {
                        print("common");
                        select = true;
                        // setState(() {
                        // });

                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return Scaffold(
                  backgroundColor: Pellet.bagroundColor,
                  body: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SalesGeneralVerticalList(
                          selectedVertical: selectedVertical,
                          itemsearch: itemsearch,
                          select: select,
                          ontap: (int index) {
                            setState(() {
                              clears();
                              selectedVertical = index;
                              select = false;

                              veritiaclid = result[index].id;
                              _myWidgetState.currentState?.currentStock=[];
                              //
                              context
                                  .read<SalesgeneralreadCubit>()
                                  .getSalesGenralRead(veritiaclid!);
                              setState(() {});
                            });
                          },
                          result: result,
                          child:     tablePagination(
                                () => context
                                .read<SalesgeneralverticalCubit>()
                                .refresh(),
                            back: paginatedList?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<SalesgeneralverticalCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next:paginatedList?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<SalesgeneralverticalCubit>()
                                  .nextslotSectionPageList();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    TextButtonLarge(
                                      marginCheck: true,
                                      onPress: () {
                                        setState(() {
                                          select = true;
                                          clears();



                                          // updateCheck=false;
                                          // currentStock.clear();
                                          //
                                          //
                                          // table.clear();
                                          // clear();
                                        });
                                      },
                                      // icon: Icon(Icons.refresh),
                                      // label: Text("Clear")
                                      text: "CREATE",
                                    ),
                                    TextButtonLarge(
                                      text: "PREVIEW",
                                      onPress: (){
                                        print("Akshay");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              SalePrintScreen(
                                                note: noteController.text,
                                                select: select,
                                                // vendorCode:vend.text,
                                                // orderCode:ordereCodeController.text ,
                                                orderDate: orderDateController.text,
                                                table:table,
                                                vat: double.tryParse( vatController.text),
                                                sellingPrice:double.tryParse( sellingPriceController.text),
                                                taxableAmount:double.tryParse( taxableAmountController.text) ,
                                                discount:double.tryParse( discountController.text) ,
                                                unitCost:double.tryParse( unitCostController.text) ,
                                                excisetax:double.tryParse( exciseTAxController.text) ,
                                                remarks: remarksController.text ,





                                              )),
                                        );


                                      },
                                    ),
                                  ],
                                ),
                                StableTable(
                                  taxableAmount: taxableAmountController,
                                  vat: vatController,
                                  discount: discountController,
                                  note: noteController,
                                  remarks: remarksController,
                                  orderStatus: orderStatusController,
                                  trnNumber: trnController,
                                  customerId: cstomerIdController,
                                  paymentId: paymentIdController,
                                  unitCost: unitCostController,
                                  orderType: orderTypeController,
                                  invoiceStatus: invoiceStatusController,
                                  paymentStatus: paymentStatusController,
                                  orderDate: orderDateController,
                                  orderCode: orderCodeController,
                                  billingAddressId: billingAddressIdController,
                                  exciseTax: exciseTAxController,
                                  invenotryId: invemtoryIdController,
                                  orderMode: orderModeController,
                                  salesQuotesId: slaesQuotesController,
                                  sellingPriceTotal: sellingPriceController,
                                  shipping: shippingAddressIdController,
                                  totalPrice: toatalPriceController,
                                  customerName:cstomerIdNameController,
                                  billingName:billingAddressIdNameController,
                                  shippingName:shippingAddressIdNameController
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 35,
                                ),
                                Row(
                                  children: [
                                    TextWidget(text: "Order Lines"),
                                  ],
                                ),
                                SizedBox(height: height*.01,),

                                SalesGeneralGrowableTable(
                                    updateCheck: updateCheckFucction,
                                    table: table,
                                    select:select,
                                    updation: tableAssign,
                                    key:_myWidgetState,
                                    currenStock: currentStock),
                                // ScrollableTable(),
                                Container(
                                  color: Colors.white,
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [],
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SaveUpdateResponsiveButton(
                                  discardFunction: (){
                                    if(updateCheck){
                                      clears();


                                    }
                                    showDailogPopUp(
                                        context,
                                        LogoutPopup(
                                          message: "Do you want to delete the order?",
                                          // table:table,
                                          // clear:clear(),
                                          // verticalId: veritiaclid,
                                          onPressed: () {
                                            print("akshay");
                                            Navigator.pop(context);
                                            context
                                                .read<
                                                SalesgeneraldeleteCubit>()
                                                .salesGeneralDelete(
                                                veritiaclid);
                                          },
                                        ));
                                  },
                                  saveFunction: (){
                                    print("updateCheck" +
                                        remarksController.text.toString());
                                    if (updateCheck)
                                      context.showSnackBarError(
                                          "please click the update button ");
                                    else {
                                      var table1=[
                                        for(var em in table)
                                          if(em.isActive==true)
                                            em
                                      ];
                                      print("filter table"+table1.toString());
                                      SalesGeneralPostModel model = SalesGeneralPostModel(
                                          orderType:
                                          orderTypeController?.text ?? "",
                                          orderMode:
                                          orderModeController?.text ?? "",
                                          inventoryid:
                                          Variable.inventory_ID ??
                                              "",
                                          customerId:
                                          cstomerIdController?.text ?? "",
                                          trnNumber:
                                          trnController?.text ?? "",
                                          shippingAddressId:
                                          shippingAddressIdController?.text ??
                                              "",
                                          billingAddressId: billingAddressIdController?.text??"",
                                          salesQuotesId:
                                          slaesQuotesController?.text ??
                                              "",
                                          note: noteController?.text ?? "",
                                          remarks:
                                          remarksController?.text ?? "",
                                          discount: double.tryParse(
                                              discountController?.text ?? ""),
                                          unitCost: double.tryParse(
                                              unitCostController?.text ?? ""),
                                          excessTax: double.tryParse(
                                              exciseTAxController?.text ?? ""),
                                          taxableAmount: double.tryParse(taxableAmountController?.text ?? ""),
                                          vat: double.tryParse(vatController?.text ?? ""),
                                          sellingPriceTotal: double.tryParse(sellingPriceController?.text ?? ""),
                                          totalPrice: double.tryParse(toatalPriceController?.text ?? ""),
                                          createdBy: Variable.created_by,
                                          editedBy: Variable.created_by,
                                          orderLines: table1);
                                      print("modelllls" + model.toString());
                                      select
                                          ? context
                                          .read<PostcubitCubit>()
                                          .postSalesGeneral(model)
                                          : context
                                          .read<SalesgeneralpatcvhCubit>()
                                          .getSalesGeneralPatch(
                                          veritiaclid, model);
                                    }

                                  }
                                  ,
                                  label:  select ? "SAVE" : "UPDATE",
                                )

                                // Container(
                                //   margin: EdgeInsets.only(right:width*.015,),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.end,
                                //     children: [
                                //       Button(Icons.delete, Colors.red,
                                //           ctx: context,
                                //           text: "DISCARD", onApply: () {
                                //         if(updateCheck){
                                //           clears();
                                //
                                //
                                //         }
                                //             showDailogPopUp(
                                //                 context,
                                //                 ConfirmationPopup(
                                //                   // table:table,
                                //                   // clear:clear(),
                                //                   verticalId: veritiaclid,
                                //                   onPressed: () {
                                //                     print("akshay");
                                //                     Navigator.pop(context);
                                //                     context
                                //                         .read<
                                //                         SalesgeneraldeleteCubit>()
                                //                         .salesGeneralDelete(
                                //                         veritiaclid);
                                //                   },
                                //                 ));
                                //           },
                                //           height: 29,
                                //           width: 90,
                                //           labelcolor: Colors.red,
                                //           iconColor: Colors.red,
                                //           bdr: true),
                                //       SizedBox(
                                //         width: width * .008,
                                //       ),
                                //       Button(Icons.check, Colors.grey,
                                //           ctx: context,
                                //           text: select ? "SAVE" : "UPDATE",
                                //           height: 29,
                                //           Color: Color(0xff3E4F5B),
                                //           width: 90,
                                //           labelcolor: Colors.white,
                                //           iconColor: Colors.white, onApply: () {
                                //             print("updateCheck" +
                                //                 remarksController.text.toString());
                                //             if (updateCheck)
                                //               context.showSnackBarError(
                                //                   "please click the update button ");
                                //             else {
                                //               SalesGeneralPostModel model = SalesGeneralPostModel(
                                //                   orderType:
                                //                   orderTypeController?.text ?? "",
                                //                   orderMode:
                                //                   orderModeController?.text ?? "",
                                //                   inventoryid:
                                //                   Variable.inventory_ID ??
                                //                       "",
                                //                   customerId:
                                //                   cstomerIdController?.text ?? "",
                                //                   trnNumber:
                                //                   trnController?.text ?? "",
                                //                   shippingAddressId:
                                //                   shippingAddressIdController?.text ??
                                //                       "",
                                //                   billingAddressId: billingAddressIdController?.text??"",
                                //                   salesQuotesId:
                                //                   slaesQuotesController?.text ??
                                //                       "",
                                //                   note: noteController?.text ?? "",
                                //                   remarks:
                                //                   remarksController?.text ?? "",
                                //                   discount: double.tryParse(
                                //                       discountController?.text ?? ""),
                                //                   unitCost: double.tryParse(
                                //                       unitCostController?.text ?? ""),
                                //                   excessTax: double.tryParse(
                                //                       exciseTAxController?.text ?? ""),
                                //                   taxableAmount: double.tryParse(taxableAmountController?.text ?? ""),
                                //                   vat: double.tryParse(vatController?.text ?? ""),
                                //                   sellingPriceTotal: double.tryParse(sellingPriceController?.text ?? ""),
                                //                   totalPrice: double.tryParse(toatalPriceController?.text ?? ""),
                                //                   createdBy: Variable.created_by,
                                //                   // editedBy: "",
                                //                   orderLines: table);
                                //               print("modelllls" + model.toString());
                                //               select
                                //                   ? context
                                //                   .read<PostcubitCubit>()
                                //                   .postSalesGeneral(model)
                                //                   : context
                                //                   .read<SalesgeneralpatcvhCubit>()
                                //                   .getSalesGeneralPatch(
                                //                   veritiaclid, model);
                                //             }
                                //           }),
                                //       SizedBox(
                                //         width: width * .008,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class StableTable extends StatefulWidget {
  TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController orderCode;
  final TextEditingController orderDate;
  final TextEditingController invenotryId;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController billingAddressId;
  final TextEditingController shipping;
  final TextEditingController salesQuotesId;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;
  final TextEditingController customerName;
  final TextEditingController billingName;
  final TextEditingController shippingName;

  StableTable(
      {required this.orderType,
        required this.orderCode,
        required this.orderMode,
        required this.orderDate,
        required this.invenotryId,
        required this.customerId,
        required this.trnNumber,
        required this.shippingName,required this.billingName,
        required this.customerName,
        required this.shipping,
        required this.billingAddressId,
        required this.vat,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.note,
        required this.invoiceStatus,
        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.salesQuotesId,
        required this.sellingPriceTotal});

  @override
  _StableTableState createState() => _StableTableState();
}

class _StableTableState extends State<StableTable> {
  TextEditingController? controller = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? mobileController = TextEditingController();
  TextEditingController? fnameController = TextEditingController();
  TextEditingController? lanameController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();
  TextEditingController taxidController = TextEditingController();
  TextEditingController buisnessmodeController = TextEditingController();
  TextEditingController designation = TextEditingController();
  String? customerUserCode="";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => CustomeridcreationCubit(),
),
    BlocProvider(
      create: (context) => CustomeridcreationCubit(),
    ),
  ],
  child: Builder(
          builder: (context) {
            return
              BlocListener<CustomeridcreationCubit, CustomeridcreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    Timer(Duration(seconds: 5), () {
                      setState(() {
                        // context
                        //     .read<InventorysearchCubit>()
                        //     .getInventorySearch("code");
                        // select=false;
                      });
                    });
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          children: [

                            SelectableDropDownpopUp(
                              label: "Order Type",
                              type: "SalesOrder_TypePopUpCall",
                              value: widget.orderType.text,
                              onSelection: (String va) {
                                print("$va here is");
                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                setState(() {
                                  widget.orderType.text = va;

                                  // onChange = true;
                                  // orderType = va!;
                                });
                              },
                              restricted: false,
                            ),
                            SizedBox(
                              height: height * .030,
                            ),
                            SelectableDropDownpopUp(
                              label: "Order Mode",
                              type: "SalesOrderMode",
                              value: widget.orderMode.text,
                              onSelection: (String va) {
                                print("+++++++++++++++++++++++");
                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                setState(() {
                                  widget.orderMode.text = va;

                                  // onChange = true;
                                  // orderType = va!;
                                });
                              },
                              restricted: true,
                            ),

                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderCode,
                                title: "Order Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderDate,
                                title: "Order Date"),
                            // SizedBox(
                            //   height: height * .030,
                            // ),
                            // NewInputCard(
                            //     controller: widget.invenotryId, title: "Inventory id"),
                            SizedBox(
                              height: height * .030,
                            ),

                            NewInputCard(controller: widget.customerName,
                              readOnly: true,
                              icondrop:true,title: "Customer id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    type: "customerId_ListPopup", valueSelect: (CustomerIdListModel va){
                                    setState(() {
                                      widget.customerName.text=va?.customerName!=""&&va?.customerName!=null?va?.customerName??"":va.businessData?.buisnessMeta?.fullmae??"";
                                     widget.customerId.text=va?.id.toString()??"";
                                      customerUserCode=va?.customerUserCode??"";
                                      widget.trnNumber.text=va?.businessData?.taxId??"";
                                    });
                                  },
                                  ),


                                );

                              },),




                            // SelectableDropDownpopUp(
                            //   label: "customer id",
                            //
                            //   type:"CustomerId_ListPopUpCall",
                            //   value: widget.customerName.text,
                            //   enable: true,
                            //   onSelection: (CustomerIdCreationModel? va) {
                            //     setState(() {
                            //       widget.customerName.text=va?.customerUserCode??"";
                            //       widget.customerId.text=va?.id.toString()??"";
                            //       widget.trnNumber.text=va?.taxId??"";
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     showDailogPopUp(
                            //         context,
                            //         CustomerIdCreationPopUp(
                            //             accesssite: accessSiteController,
                            //             buisnessmode: buisnessmodeController,
                            //             buisnessname: buisnessnameController,
                            //             buisnessuser: buisnessUserController,
                            //             country: country,
                            //             designation: designation,
                            //             email: email,
                            //             fname: fnameController,
                            //             gender: gender,
                            //             lname: lanameController,
                            //             mobile: mobileController,
                            //             password: passwordController,
                            //             taxid: taxidController,
                            //             ontap:(){
                            //               CustomerIdCreation2Model model=CustomerIdCreation2Model(
                            //                 email: email?.text??"",
                            //                 password: passwordController?.text??"",
                            //                 mobile: mobileController?.text??"",
                            //                 fname: fnameController?.text,
                            //                 lname: lanameController?.text,
                            //                 country: country?.text,
                            //                 gender: gender?.text,
                            //                 accessSite: accessSiteController?.text,
                            //                 taxId: taxidController?.text,
                            //                 buisnessMode: buisnessUserController?.text,
                            //                 designation: designation?.text,
                            //
                            //               );
                            //
                            //               context
                            //                   .read<CustomeridcreationCubit>()
                            //                   .postCustomerIdCreation(model);
                            //
                            //
                            //             }
                            //
                            //         ));
                            //   },
                            // ),
                            // SelectableDropDownpopUp(
                            //   label: "shipping address id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.shipping.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.shipping.text=va?.id.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     showDailogPopUp(
                            //         context,
                            //         WarrantyDetailsPopUp(
                            //           // indexValue: temp,
                            //           // changeActive: onChangeActive,
                            //           // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //           // changeExtendedWarranty: onChangeExtendedWarranty,
                            //         ));
                            //   },
                            // ),
                            // NewInputCard(controller: widget.customerId, title: "customer id"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                height: 46,
                                controller: widget.trnNumber,
                                title: "TRN Number"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(controller: widget.shipping,
                              readOnly: true,
                              icondrop:true,title: "Shipping Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code:customerUserCode,

                                    id: int.tryParse(widget.customerId.text),
                                    type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                    setState(() {

                                      widget.shipping.text=va?.id.toString()??"";
                                      widget.shippingName.text=va?.fullName.toString()??"";
                                      setState(() {

                                      });


                                      // onChange = true;
                                      // orderType.text = va!;
                                    });

                                  },
                                  ),


                                );

                              },),



                            // SelectableDropDownpopUp(
                            //   label: "shipping address id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.shippingName.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.shipping.text=va?.id.toString()??"";
                            //       widget.shippingName.text=va?.fullName.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     showDailogPopUp(
                            //         context,
                            //         WarrantyDetailsPopUp(
                            //           // indexValue: temp,
                            //           // changeActive: onChangeActive,
                            //           // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //           // changeExtendedWarranty: onChangeExtendedWarranty,
                            //         ));
                            //   },
                            // ),
                            SizedBox(
                              height: height * .187,
                            ),

                            // NewInputCard(
                            //     controller: widget.shipping, title: "shipping address id"),
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [

                            NewInputCard(controller: widget.billingAddressId,
                              readOnly: true,
                              icondrop:true,title: "Billing Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code: customerUserCode,

                                    type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                    setState(() {

                                      widget.billingAddressId.text=va?.id.toString()??"";
                                      widget.billingName.text=va?.fullName.toString()??"";
                                      setState(() {

                                      });


                                      // onChange = true;
                                      // orderType.text = va!;
                                    });

                                  },
                                  ),


                                );

                              },),

                            // SelectableDropDownpopUp(
                            //   label: "billing address id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.billingName.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.billingAddressId.text=va?.id.toString()??"";
                            //       widget.billingName.text=va?.fullName.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     showDailogPopUp(
                            //         context,
                            //         WarrantyDetailsPopUp(
                            //           // indexValue: temp,
                            //           // changeActive: onChangeActive,
                            //           // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //           // changeExtendedWarranty: onChangeExtendedWarranty,
                            //         ));
                            //   },
                            // ),
                            // NewInputCard(
                            //     controller: widget.billingAddressId,
                            //     title: "billing address id"),
                            SizedBox(
                              height: height * .030,
                            ),
                            // NewInputCard(
                            //     controller: widget.salesQuotesId, title: "Sales  Quotes"),
                            // SizedBox(
                            //   height: height * .030,
                            // ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.paymentId,
                                title: "Payment Id"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.paymentStatus,
                                title: "Payment Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderStatus,
                                title: "Order Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              controller: widget.note,
                              title: "Note",
                              height: 90,
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              controller: widget.remarks,
                              title: "Remarks",
                              height: 90,
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: height * .1799,
                            ),

                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * .045,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.invoiceStatus,
                                title: "Invoice Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.unitCost,
                                title: "Unit Cost"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.discount,
                                title: "Discount"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.exciseTax,
                                title: "Excess Tax"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.taxableAmount,
                                title: "Taxable  Amount"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true, controller: widget.vat, title: "VAT"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.sellingPriceTotal,
                                title: "Selling Price Total"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.totalPrice,
                                title: "Total Price"),
                            SizedBox(
                              height: height * .085,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            );
          }
      ),
);
  }
}

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
  _SalesGeneralGrowableTableState createState() =>
      _SalesGeneralGrowableTableState();
}

class _SalesGeneralGrowableTableState extends State<SalesGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<SalesOrderLines> table1 =List.from( []);
  String? variantId = "";
  String? varinatname = "";
  String? returntype = "";
  String? returntime = "";
  String? barcode = "";
  String? salesUom = "";
  int? stock = 0;
  int? stockId ;
 bool stockCheck=false;
  String? discountPrice = "price";
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
  bool? invoiced = false;
  bool? isActive1 = false;
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
  clearTableAddingVariables(){

    variantId = "";
    quantity = 0;
    returntime = "";
    returntype = "";
    salesUom = "";
    unicostController.text = "";
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
    unitcostListControllers.clear();


  }
  Future _getCurrentUser() async {
    if (table1.isNotEmpty) {
      for (var i = 0; i < table1.length; i++) {
        print("variantaaaaaa" + table1[i].variantId.toString());

        var b = await context
            .read<PurchaseStockCubit>()
            .getCurrentStock(Variable.inventory_ID, table1[i].variantId);
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
                            // border: const TableBorder(
                            //   verticalInside: BorderSide(
                            //       width: .5,
                            //       color: Colors.black45,
                            //       style: BorderStyle.solid),
                            //   horizontalInside: BorderSide(
                            //       width: .3,
                            //       color: Colors.black45,
                            //       // color: Colors.blue,
                            //       style: BorderStyle.solid),
                            // ),
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
                                      'Unit Cost',


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
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
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
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
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
                                              currentStock.length!=table1.length?"": currentStock[i].toString(),
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
                                          child: textPadding(table1[i].returnType??"",
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
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),

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
                                        table1[i].isInvoiced!=true?         PopUpCall(
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
                                            table1[i].discountType
                                                .toString() ??
                                                "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
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
                                                if( table1[i].isInvoiced!=true){
                                                  clear=true;
                                                  bool? isActive =
                                                      table1[i].isActive;
                                                  setState(() {
                                                    widget.updateCheck(true);
                                                    print("aaaaaaaaaaa"+isActive.toString());
                                                    table1[i] = table1[i].copyWith(updatecheck: true);
                                                    // table1[i] = table1[i].copyWith(updateCheck: true);
                                                    setState(() {});
                                                    isActive = !isActive!;
                                                    print("aaaaaaaaaaa"+isActive.toString());
                                                    table1[i] = table1[i]
                                                        .copyWith(
                                                        isActive: isActive);
                                                  });

                                                }

                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            onPress: () {

                                              setState(() {
                                                widget.updateCheck(false);
                                                table1[i]=      table1[i].copyWith(updatecheck: false);
                                                widget.updation(table1);


                                              });

                                            },
                                            textColor:table1[i].updatecheck==true?Pellet.tableBlueHeaderPrint:Colors.grey ,
                                            label:table1[i].updatecheck==true? "UPDATE":"",
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

        // onChange = true;
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
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(barcode ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            stock.toString() ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(returntype ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(returntime ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
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
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          // controller: receivedTestContoller,

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
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
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
                                            setState(() {});

                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          // controller: excesstaxTestContoller,
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
                                            setState(() {});

                                            setState(() {});
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
                                          // controller: discountTestContoller,
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
                                            setState(() {});

                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            taxableAmount?.toString() ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            vat1?.toString() ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            sellingPrice?.toString() ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
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
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                          // color: Color(0xff3E4F5B),
                                          valueChanger: isActive1,
                                          onSelection: (bool? value) {
                                            clear=true;
                                            setState(() {
                                              if(stockId!=null)

                                              isActive1 = !isActive1!;
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
                                        child: TableTextButton(
                                            label: "Save",
                                            onPress: () {
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
                                                  valueAddingTextEdingController();
                                                  widget.updation(table1);

                                                }



                                              });
                                            }),
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
class WarrantyDetailsPopUp extends StatefulWidget {
  final int? stckQty;
  final String? code;
  // final int? indexValue;
  // final List<ReadWarranty>? warranty;
  // final Function(bool) changeActive;
  // final Function(bool) changeAdditionalWarranty;
  // final Function(bool) changeExtendedWarranty;
  const WarrantyDetailsPopUp({
    Key? key,
    this.stckQty = 0,
    this.code,
    // required this.changeActive,
    // required this.changeAdditionalWarranty,
    // required this.changeExtendedWarranty,
    // this.warranty,
    // this.indexValue
  }) : super(key: key);

  @override
  _WarrantyDetailsPopUpState createState() => _WarrantyDetailsPopUpState();
}

class _WarrantyDetailsPopUpState extends State<WarrantyDetailsPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String countryCode="";
  String stateCode="";
  TextEditingController addresstype = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController streetname = TextEditingController();
  TextEditingController buildingname = TextEditingController();
  TextEditingController landmark = TextEditingController();
  TextEditingController instructions = TextEditingController();
  TextEditingController addresstag = TextEditingController();
  int? newQty = 0;
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShippingaddresscreationCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return BlocListener<ShippingaddresscreationCubit, ShippingaddresscreationState>(
          listener: (context, state) {
            print("postssssssss" + state.toString());
            state.maybeWhen(orElse: () {
              // context.
              // context.showSnackBarError("Loading");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              if (data.data1) {
                context.read<ShippingadreesCubit>().getShippingId(id:widget.code);

                showDailogPopUp(
                    context,
                    SuccessPopup(
                      content: data.data2,
                      // table:table,
                    ));
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    // context
                    //     .read<InventorysearchCubit>()
                    //     .getInventorySearch("code");
                    // select=false;
                  });
                });
              } else {
                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: data.data2,
                      // table:table,
                    ));
                print(data.data1);
              }
              ;
            });
            // TODO: implement listener
          },
          child: AlertDialog(
            content: PopUpHeader(
              label: "Address Creation",

              addNew: false,
              buttonCheck: true,
              isDirectCreate: true,

              onApply: () {

                ShippingAddressCreationModel model=ShippingAddressCreationModel(
                  country: countryCode??"",
                  addressTag: addresstag.text??"",
                  addressType:"buisness",
                  buillingName: buildingname.text??"",
                  city: city.text??"",
                  contact: "91"+contact.text.toString()??"",
                  fullName: fullname.text??"",
                  instructions: instructions.text??"",
                  landmark: landmark?.text??'',
                  state: state.text??"",
                  streetName: streetname.text??"",
                  userCode: widget.code,
                );
                print("aaaaaaaaaaaaaaa"+model.toString());
                context
                    .read<ShippingaddresscreationCubit>()
                    .postShippinAddress(
                    model);


              },

              onEdit: () {


              },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: SingleChildScrollView(
                    child:Container(
                        height: 600,
                        width: 800,
                        child:Row(
                          children: [
                            Expanded(child: Column(
                              children: [


                                SelectableDropDownpopUp(
                                  row: true,
                                  controller:country,
                                  label: "Country",
                                  type: "ProducedCountryPopUpCall",
                                  // id: base_uom ?? 0,
                                  value: country?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (VariantReadModel? va) {
                                    setState(() {
                                      country?.text = va?.name.toString() ?? "";
                                      countryCode = va?.code.toString() ?? "";

                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),


                                PopUpInputField(
                                  controller:fullname ,
                                  label: "Full Name",
                                ),
                                PopUpInputField(
                                  boarType: "int",

                                  controller:contact ,
                                  label: "Mobile No",
                                ),
                                PopUpInputField(
                                  controller:city ,
                                  label: "City",
                                ),

                                SelectableDropDownpopUp(
                                  row: true,
                                  code: countryCode,

                                  controller:state,
                                  label: "State",
                                  type: "StatePop_UpCall",
                                  // id: base_uom ?? 0,
                                  value: state?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (StateList? va) {
                                    setState(() {
                                      print(va?.code.toString());
                                      state?.text = va?.name.toString() ?? "";
                                      stateCode = va?.code.toString() ?? "";


                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),

                              ],
                            )),
                            SizedBox(width: 15,),
                            Expanded(child:   Column(
                              children: [
                                PopUpInputField(
                                  controller:streetname ,
                                  label: "Street Name",
                                ),
                                PopUpInputField(
                                  controller:buildingname ,
                                  label: "Building Name",
                                ),
                                PopUpInputField(
                                  controller:landmark ,
                                  label: "Landmark",
                                ),
                                PopUpInputField(
                                  controller:instructions ,
                                  label: "Instruction",
                                ),

                                NewRadioButtonText(
                                  lable: "",
                                  valueAssign:(va){

                                    addresstag.text=va;

                                  },

                                ),




                              ],
                            )),
                          ],
                        )
                    )
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "adjustment lines",
                  //     ),
                  //     Divider(
                  //       color: Colors.grey,
                  //       height: 4.0,
                  //     ),
                  //     SizedBox(height: 10,),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //             controller: stckQty, label: "current quantity"),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: qtyChange,
                  //           label: "quantity change",
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //           boarType: "int",
                  //           //  controller: newQuantity,
                  //           label: "new quantity",
                  //           onChanged: (v) {
                  //             setState(() {
                  //               newQty = int.tryParse(v);
                  //               int? stck = int.tryParse(stckQty.text);
                  //               qtyChange.text = ((stck!) - (newQty!)).toString();
                  //               print("newQty" + newQty.toString());
                  //             });
                  //           },
                  //         ),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: reason,
                  //           label: "reason",
                  //         ),
                  //       ],
                  //     ),
                  //     // PopUpSwitchTile(
                  //     //     value: active,
                  //     //     title: "is Active",
                  //     //     onClick: (gg) {
                  //     //       active = gg;
                  //     //       // widget.changeActive(gg);
                  //     //       onChange = true;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // customTable(tableWidth: .5, childrens: [
                  //     //   TableRow(children: [
                  //     //     tableHeadtext("conditions", size: 10, color: null),
                  //     //     //tableHeadtext("name", size: 10, color: null),
                  //     //   ]),
                  //     //   // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(                        ""),
                  //     //     ]),
                  //     //
                  //     // ]),
                  //     // PopUpSwitchTile(
                  //     //     value: additionalWarranty,
                  //     //     title: "is additional warranty",
                  //     //     onClick: (gg) {
                  //     //       additionalWarranty = gg;
                  //     //       // widget.changeAdditionalWarranty(gg);
                  //     //       onChangeWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // if (onChangeWarranty) Text("Additional Warranty"),
                  //     // gap12(),
                  //     // if (onChangeWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("warranty section", size: 10, color: null),
                  //     //       tableHeadtext("aditional warranty code",
                  //     //           size: 10, color: null),
                  //     //       tableHeadtext("duration", size: 10, color: null),
                  //     //       tableHeadtext("maximum occurence", size: 10, color: null),
                  //     //     ]),
                  //     //     // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     // for (var j = 0;
                  //     //     //     j <
                  //     //     //         widget.warranty![widget.indexValue!]
                  //     //     //             .additionalWarranty!.length;
                  //     //     //     j++)
                  //     //       TableRow(children: [
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(    ""),
                  //     //       ]),
                  //     //     TableRow(children: [
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //
                  //     //   ]),
                  //     // if (!onChangeWarranty) Container(),
                  //     // PopUpSwitchTile(
                  //     //     value: extendedWarranty,
                  //     //     title: "is extended warranty",
                  //     //     onClick: (gg) {
                  //     //       extendedWarranty = gg;
                  //     //       // widget.changeExtendedWarranty(gg);
                  //     //       onChangeExtWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty) Text("Extended Warranty"),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "duration",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.duration
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "description",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.description
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "price",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.price
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "maximum occurence",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.maximumOccurence
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "is active",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "read only field is enabled",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("conditions", size: 10, color: null),
                  //     //
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding('aasssss'),
                  //     //     ]),
                  //     //   ]),
                  //     if (!onChangeExtWarranty) Container(),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class AdditionalWarrantyPopUp extends StatefulWidget {
  const AdditionalWarrantyPopUp({Key? key}) : super(key: key);

  @override
  _AdditionalWarrantyPopUpState createState() =>
      _AdditionalWarrantyPopUpState();
}

class _AdditionalWarrantyPopUpState extends State<AdditionalWarrantyPopUp> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: PopUpHeader(
        label: "Additional Warranty",
        onApply: () {},
        dataField: SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Additional warranty"),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PopUpInputField(label: "duration"),
                    gapWidthColumn(),
                    PopUpInputField(
                      label: "description",
                      maxLines: 3,
                    )
                  ],
                ),
                PopUpInputField(label: "maximum occurence"),
                PopUpSwitchTile(
                    value: isActive,
                    title: "is active",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                SizedBox(height: 10,),
                PopUpSwitchTile(
                    value: isActive,
                    title: "read only field is enabled",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                SizedBox(height: 10,),
                customTable(tableWidth: .5, childrens: [
                  TableRow(children: [
                    tableHeadtext("conditions", size: 10, color: null),
                    //tableHeadtext("name", size: 10, color: null),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WarrantyTypePopUp extends StatefulWidget {
  const WarrantyTypePopUp({Key? key}) : super(key: key);

  @override
  _WarrantyTypePopUpState createState() => _WarrantyTypePopUpState();
}

class _WarrantyTypePopUpState extends State<WarrantyTypePopUp> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: PopUpHeader(
        label: "Warranty Type",
        onApply: () {},
        dataField: SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("warranty type"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    PopUpInputField(
                      label: "code",
                      restricted: true,
                    ),
                    gapWidthColumn(),
                    PopUpInputField(label: "description")
                  ],
                ),
                SizedBox(height: 10,),
                PopUpInputField(label: "title"),
                SizedBox(height: 10,),
                PopUpSwitchTile(
                    value: isActive,
                    title: "is Active",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class PopUpSwitchTile extends StatefulWidget {
  final bool value;
  final String title;
  final Color color;
  final Function(bool) onClick;
  const PopUpSwitchTile(
      {Key? key,
        required this.value,
        required this.title,
        this.color=Colors.black,
        required this.onClick})
      : super(key: key);

  @override
  _PopUpSwitchTileState createState() => _PopUpSwitchTileState();
}

class _PopUpSwitchTileState extends State<PopUpSwitchTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(
          //horizontal: 10,
          //vertical: 5
        ),
        leading: Container(
            width: 300,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 12),
            )),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              activeColor: widget.color,
              value: widget.value,
              onChanged: widget.onClick,
            ),
          ),
        ));
  }
}
class CustomerIdCreationPopUp extends StatefulWidget {

  final TextEditingController? mobile;
  final TextEditingController? fname;
  final TextEditingController? taxId;

  final TextEditingController? country;
  final TextEditingController? gender;


  final Function ontap;

  CustomerIdCreationPopUp({
    Key? key,
    required this.country,
    required this.ontap,
    required this.mobile,
    required this.taxId,

    required this.fname,
     required this.gender,


  }) : super(key: key);

  @override
  _CustomerIdCreationPopUpState createState() => _CustomerIdCreationPopUpState();
}

class _CustomerIdCreationPopUpState extends State<CustomerIdCreationPopUp> {
  bool active = false;
  bool addNew  = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  TextEditingController? email = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? mobileController = TextEditingController();
  TextEditingController? fnameController = TextEditingController();
  TextEditingController? lanameController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();
  TextEditingController taxidController = TextEditingController();
  TextEditingController buisnessmodeController = TextEditingController();
  TextEditingController designation = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShippingaddresscreationCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return BlocListener<ShippingaddresscreationCubit, ShippingaddresscreationState>(
          listener: (context, state) {
            print("postssssssss" + state.toString());
            state.maybeWhen(orElse: () {
              // context.
              context.showSnackBarError("Loading");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              if (data.data1) {

                showDailogPopUp(
                    context,
                    SuccessPopup(
                      content: data.data2,
                      // table:table,
                    ));
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    // context
                    //     .read<InventorysearchCubit>()
                    //     .getInventorySearch("code");
                    // select=false;
                  });
                });
              } else {

                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: data.data2,
                      // table:table,
                    ));
                print(data.data1);
              }
              ;
            });
            // TODO: implement listener
          },
          child: AlertDialog(

            content: PopUpHeader(
              buttonCheck: true,

              label: "Customer Id Creation",
              onApply: () {
                widget.ontap();
              },
              onTap: () {
                print("akshay");
                addNew = !addNew;
                setState(() {});
              },
              isDirectCreate: true,
              addNew: addNew,
              onEdit: () {





              },
                onAddNew:(bool){
                print("akshay"+bool.toString());
                },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: SingleChildScrollView(
                    child:Container(
                        height: 600,
                        width: 800,
                        child:Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                PopUpInputField(
                                  controller:widget.fname ,
                                  label: "Full Name",
                                ),

                                PopUpInputField(
                                  boarType: "int",
                                  controller:widget.mobile ,
                                  label: "Mobile",
                                ),



                                // PopUpInputField(
                                //   controller:widget.country ,
                                //   label: "country",
                                // ),

                              ],
                            )),
                            SizedBox(width: 15,),
                            Expanded(child:   Column(
                              children: [
                                SelectableDropDownpopUp(
                                  row: true,
                                  controller: widget.country,
                                  label: "Produced Country",
                                  type: "ProducedCountryPopUpCall",
                                  // id: base_uom ?? 0,
                                  value: widget.country?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (VariantReadModel? va) {
                                    setState(() {
                                      widget.country?.text =
                                          va?.name.toString() ?? "";

                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                PopUpInputField(

                                  controller:widget.taxId ,
                                  label: "Tax ID",
                                ),


                              ],
                            )),
                          ],
                        )
                    )
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "adjustment lines",
                  //     ),
                  //     Divider(
                  //       color: Colors.grey,
                  //       height: 4.0,
                  //     ),
                  //     SizedBox(height: 10,),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //             controller: stckQty, label: "current quantity"),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: qtyChange,
                  //           label: "quantity change",
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //           boarType: "int",
                  //           //  controller: newQuantity,
                  //           label: "new quantity",
                  //           onChanged: (v) {
                  //             setState(() {
                  //               newQty = int.tryParse(v);
                  //               int? stck = int.tryParse(stckQty.text);
                  //               qtyChange.text = ((stck!) - (newQty!)).toString();
                  //               print("newQty" + newQty.toString());
                  //             });
                  //           },
                  //         ),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: reason,
                  //           label: "reason",
                  //         ),
                  //       ],
                  //     ),
                  //     // PopUpSwitchTile(
                  //     //     value: active,
                  //     //     title: "is Active",
                  //     //     onClick: (gg) {
                  //     //       active = gg;
                  //     //       // widget.changeActive(gg);
                  //     //       onChange = true;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // customTable(tableWidth: .5, childrens: [
                  //     //   TableRow(children: [
                  //     //     tableHeadtext("conditions", size: 10, color: null),
                  //     //     //tableHeadtext("name", size: 10, color: null),
                  //     //   ]),
                  //     //   // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(                        ""),
                  //     //     ]),
                  //     //
                  //     // ]),
                  //     // PopUpSwitchTile(
                  //     //     value: additionalWarranty,
                  //     //     title: "is additional warranty",
                  //     //     onClick: (gg) {
                  //     //       additionalWarranty = gg;
                  //     //       // widget.changeAdditionalWarranty(gg);
                  //     //       onChangeWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // if (onChangeWarranty) Text("Additional Warranty"),
                  //     // gap12(),
                  //     // if (onChangeWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("warranty section", size: 10, color: null),
                  //     //       tableHeadtext("aditional warranty code",
                  //     //           size: 10, color: null),
                  //     //       tableHeadtext("duration", size: 10, color: null),
                  //     //       tableHeadtext("maximum occurence", size: 10, color: null),
                  //     //     ]),
                  //     //     // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     // for (var j = 0;
                  //     //     //     j <
                  //     //     //         widget.warranty![widget.indexValue!]
                  //     //     //             .additionalWarranty!.length;
                  //     //     //     j++)
                  //     //       TableRow(children: [
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(    ""),
                  //     //       ]),
                  //     //     TableRow(children: [
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //
                  //     //   ]),
                  //     // if (!onChangeWarranty) Container(),
                  //     // PopUpSwitchTile(
                  //     //     value: extendedWarranty,
                  //     //     title: "is extended warranty",
                  //     //     onClick: (gg) {
                  //     //       extendedWarranty = gg;
                  //     //       // widget.changeExtendedWarranty(gg);
                  //     //       onChangeExtWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty) Text("Extended Warranty"),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "duration",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.duration
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "description",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.description
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "price",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.price
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "maximum occurence",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.maximumOccurence
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "is active",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "read only field is enabled",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("conditions", size: 10, color: null),
                  //     //
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding('aasssss'),
                  //     //     ]),
                  //     //   ]),
                  //     if (!onChangeExtWarranty) Container(),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}


