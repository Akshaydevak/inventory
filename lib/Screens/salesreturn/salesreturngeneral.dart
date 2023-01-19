import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/salesreturn/cubit/cubit/salesreturngeneraldelete_cubit.dart';
import 'package:inventory/Screens/salesreturn/cubit/salesgeneralread/salesgeneralread_cubit.dart';

import 'package:inventory/Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../printScreen.dart';
import '../sales/general/model/shippinfaddressmodel.dart';
import 'cubit/cubit/patch/salesreturngeneralpatch_cubit.dart';
import 'cubit/invoiceraed/generalinvoiceread_cubit.dart';
import 'cubit/salesreturn/salesreturnpost_cubit.dart';
import 'model/salesreturninvoiceread.dart';

class SalesReturnGeneral extends StatefulWidget {
  @override
  _SalesReturnGeneralState createState() => _SalesReturnGeneralState();
}

class _SalesReturnGeneralState extends State<SalesReturnGeneral> {
  var paginatedList;
  TextEditingController orderTypeController = TextEditingController();
  TextEditingController orderModeController = TextEditingController();
  TextEditingController returnOrderCodeController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController salesInvoiceCodeController = TextEditingController();
  TextEditingController cstomerIdController = TextEditingController();
  TextEditingController trnController = TextEditingController();
  TextEditingController shippingAddressIdController = TextEditingController();
  TextEditingController shippingAddressNameController = TextEditingController();
  TextEditingController billingAddressIdController = TextEditingController();
  TextEditingController billingAddressNameController = TextEditingController();
  TextEditingController slaesQuotesController = TextEditingController();
  TextEditingController paymentIdController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  TextEditingController remarksController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController exciseTAxController = TextEditingController();
  TextEditingController taxableAmountController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController sellingPriceController = TextEditingController();
  TextEditingController toatalPriceController = TextEditingController();
  final GlobalKey< _SalesReturnGeneralGrowableTableState> _myWidgetState = GlobalKey< _SalesReturnGeneralGrowableTableState>();
  bool select=false;
  bool updateCheck=false;
  int? veritiaclid = 0;
  TextEditingController itemsearch = TextEditingController();
  List<salesOrderTypeModel> result = [];
  List<SalesReturnOrderLines> table = List.from([]);
  int selectedVertical = 0;
  tableAssign( List<SalesReturnOrderLines> table1) {
    print("ethito");
    table = List.from(table1);
    setState(() {
      addition();
    });
  }
  listAssign( List< SalesReturnOrderLines> table1) {
    print("ethito");
    print("table1"+table1.toString());
    setState(() {
      table=List.from(table1);
      // if(table1.isNotEmpty){
      //   for(var i=0;i<table1.length;i++)
      //     table.add(SalesReturnOrderLines(
      //         isActive: table1[i].isActive??false,
      //         isInvoiced: table1[i].isInvoiced??false,
      //         // stockId: table1[i].s??"",
      //         totalPrice: table1[i].totalPrice,
      //         sellingPrice: table1[i].sellingPrice,
      //         taxableAmount: table1[i].taxableAmount,
      //         discountType: table1[i].discountType,
      //         vat: table1[i].vat,
      //         discount: table1[i].discount,
      //         excessTax: table1[i].excessTax,
      //         barcode: table1[i].barcode,
      //         unitCost: table1[i].unitCost,
      //         id: table1[i].id,
      //         invoicedLineCode: table1[i].salesOrderLineCode,
      //         quantity: table1[i].quantity,
      //         salesUom: table1[i].salesUom??"",
      //         variantId: table1[i].variantId,
      //         warrentyPrice: table1[i].warrentyPrice
      //     ));
      // }
      print(table);


    });



  }
  clear(){
    setState(() {
      orderTypeController.text = "";
      returnOrderCodeController.text="";
      orderModeController.text = "";
      orderDateController.text = "";
      cstomerIdController.text = "";
      trnController.text = "";
      sellingPriceController.text="";
      shippingAddressIdController.text = "";
      billingAddressIdController.text = "";
      slaesQuotesController.text = "";
      paymentIdController.text = "";
      paymentStatusController.text = "";
      orderStatusController.text = "";
      reasonController.text = "";
      remarksController.text = "";
      invoiceStatusController.text = "";
      unitCostController.text = "";
      discountController.text = "";
      exciseTAxController.text = "";
      taxableAmountController.text = "";
      vatController.text = "";
      toatalPriceController.text = "";
      billingAddressNameController.text="";
      salesInvoiceCodeController.text="";
      shippingAddressNameController.text="";
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
        if (table[i].isActive == true) {
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
    context.read<SalesreturnverticalCubit>().getSalesReturnGeneralVertical();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SalesreturnpostCubit(),
        ),
        BlocProvider(
          create: (context) => GeneralinvoicereadCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralreadCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturngeneraldeleteCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturngeneralpatchCubit(),
        ),



      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<SalesreturngeneralpatchCubit, SalesreturngeneralpatchState>(
                  listener: (context, state) {
                    print("patch" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1){
                        context.showSnackBarSuccess(data.data2);
                        // currentStock.clear();
                        context
                            .read<SalesgeneralreadCubit>()
                            .getSalesReturnGeneralRead(veritiaclid!);
                      }

                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<SalesgeneralreadCubit, SalesgeneralreadState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("Akshay real "+data.toString());
                            data?.orderLines != null
                                ? table =List.from(  data?.orderLines ?? [])
                                : table =List.from(  []);
                            orderTypeController.text= data?.orderType??"";
                            orderModeController.text= data?.orderMode??"";
                            orderDateController.text= data?.returnOrderDate??"";
                            cstomerIdController.text= data?.customerId??"";
                            trnController.text= data?.trnNumber??"";
                            salesInvoiceCodeController.text= data?.salesInvoiceId??"";
                            shippingAddressIdController.text= data?.shippingAddressId??"";
                            billingAddressIdController.text= data?.billingAddressId??"";
                            paymentIdController.text= data?.payementId??"";
                            paymentStatusController.text= data?.paymentStatus??"";
                            reasonController.text= data?.reason??"";
                            remarksController.text= data?.remarks??"";
                            orderStatusController.text= data?.orderStatus??"";
                            invoiceStatusController.text= data?.invoiceStatus??"";
                            discountController.text= data?.discount.toString()??"";
                            unitCostController.text= data?.unitCost.toString()??"";
                            exciseTAxController.text= data?.excessTax.toString()??"";
                            taxableAmountController.text= data?.taxableAmount.toString()??"";
                            vatController.text= data?.vat.toString()??"";
                            sellingPriceController.text= data?.sellingPriceTotal.toString()??"";
                            toatalPriceController.text= data?.totalPrice.toString()??"";









                          });
                        });
                  },
                ),

                BlocListener<SalesreturnpostCubit, SalesreturnpostState>(
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
                            context.read<SalesreturnverticalCubit>().getSalesReturnGeneralVertical();
                            // currentStock.clear();
                            select=false;

                            // context.read<RequestformreadCubit>().getRequestFormRead(veritiaclid);
                          });
                        });
                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<SalesreturngeneraldeleteCubit, SalesreturngeneraldeleteState>(
                  listener: (context, state) {

                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print("checkingdata"+data.data1.toString());
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        clear();
                        _myWidgetState.currentState?.table1=[];
                        context.read<SalesreturnverticalCubit>().getSalesReturnGeneralVertical();

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),

              ],
              child:
              BlocConsumer<SalesreturnverticalCubit, SalesreturnverticalState>(
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
                            veritiaclid = result[0].id;
                            Variable.verticalid = result[0].id;
                            print("Variable.ak" + Variable.verticalid.toString());
                            context
                                .read<SalesgeneralreadCubit>()
                                .getSalesReturnGeneralRead(veritiaclid!);
                            select = false;
                          } else {
                            print("common");
                            select = true;
                            setState(() {
                            });

                          }

                          setState(() {});
                        });
                      });
                },
                builder: (context, state) {
                  double height = MediaQuery.of(context).size.height;
                  double width = MediaQuery.of(context).size.width;
                  return Builder(
                      builder: (context) {
                        return Scaffold(
                          backgroundColor: Pellet.bagroundColor,

                          body: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SalesReturnGeneralVerticalList(
                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,
                                  ontap: (int index) {
                                    setState(() {
                                      selectedVertical = index;
                                      select = false;

                                      table= [];
                                      clear();
                                      // _myWidgetState.currentState?.cl();
                                      _myWidgetState.currentState?.table1=[];

                                      veritiaclid = result[index].id;
                                      context
                                          .read<SalesgeneralreadCubit>()
                                          .getSalesReturnGeneralRead(veritiaclid!);
                                      // currentStock.clear();
                                      //
                                      // context
                                      //     .read<SalesgeneralreadCubit>()
                                      //     .getSalesGenralRead(veritiaclid!);
                                      setState(() {});
                                    });
                                  },
                                  result: result,
                                  child:     tablePagination(
                                        () => context
                                        .read<SalesreturnverticalCubit>()
                                        .refresh(),
                                    back: paginatedList?.previousUrl == null
                                        ? null
                                        : () {
                                      context
                                          .read<SalesreturnverticalCubit>()
                                          .previuosslotSectionPageList();
                                    },
                                    next:paginatedList?.nextPageUrl == null
                                        ? null
                                        : () {
                                      // print(data.nextPageUrl);
                                      context
                                          .read<SalesreturnverticalCubit>()
                                          .nextslotSectionPageList();
                                    },
                                  ),
                                ),
                                Expanded(child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          TextButtonLarge(
                                      marginCheck:true,

                                            onPress: () {
                                              setState(() {
                                                select = true;

                                                table= [];
                                                clear();
                                                // _myWidgetState.currentState?.cl();
                                                _myWidgetState.currentState?.table1=[];

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
                                                      note: reasonController.text,
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
                                      SizedBox(height: 15,),
                                      SalesReturnGenealStableTable(
                                          select:select,
                                          billingAddresName: billingAddressNameController,
                                          shippingName: shippingAddressNameController,
                                          taxableAmount: taxableAmountController,
                                          vat: vatController,
                                          discount: discountController,
                                          reason: reasonController,
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
                                          returnOrderCode: returnOrderCodeController,
                                          billingAddressId: billingAddressIdController,
                                          exciseTax: exciseTAxController,
                                          orderMode: orderModeController,
                                          salesInvoiceCode: salesInvoiceCodeController,
                                          sellingPriceTotal: sellingPriceController,
                                          shipping: shippingAddressIdController,
                                          totalPrice: toatalPriceController,
                                          assign:listAssign
                                      ),
                                      SizedBox(height: 30),
                                      SalesReturnGeneralGrowableTable(
                                        updation: tableAssign,
                                        table: table,
                                        key:_myWidgetState,

                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 30,
                                      ),
                                      SaveUpdateResponsiveButton(
                                        discardFunction: (){
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
                                                      SalesreturngeneraldeleteCubit>()
                                                      .salesreturnGeneralDelete(
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
                                            SalesReturnGeneralPostModel model = SalesReturnGeneralPostModel(
                                                orderType: orderTypeController?.text ?? "",
                                                orderMode: orderModeController?.text ?? "",
                                                inventoryid:Variable.inventory_ID,
                                                customerId: cstomerIdController?.text ?? "",
                                                trnNumber: trnController?.text ?? "",
                                                salesInvoiceId: salesInvoiceCodeController.text??"",
                                                shippingAddressId: shippingAddressIdController?.text ?? "",
                                                billingAddressId: billingAddressIdController?.text??"",
                                                reason: reasonController?.text ?? "",
                                                remarks: remarksController?.text ?? "",
                                                discount: double.tryParse(discountController?.text ?? ""),
                                                unitCost: double.tryParse(unitCostController?.text ?? ""),
                                                excessTax: double.tryParse(exciseTAxController?.text ?? ""),
                                                taxableAmount: double.tryParse(taxableAmountController?.text ?? ""),
                                                vat: double.tryParse(vatController?.text ?? ""),
                                                sellingPriceTotal: double.tryParse(sellingPriceController?.text ?? ""),
                                                totalPrice: double.tryParse(toatalPriceController?.text ?? ""),
                                                createdBy: Variable.created_by,
                                                editedBy: Variable.created_by,
                                                orderLines: table);
                                            print("modelllls" + model.toString());
                                            select
                                                ? context
                                                .read<SalesreturnpostCubit>()
                                                .postSalesReturnGeneral(model)
                                                :  context
                                                .read<SalesreturngeneralpatchCubit>().postSalesRequestGeneralPatch(veritiaclid,model);
                                          }

                                        },
                                        label:select ? "Save" : "update" ,
                                      ),
                                      // Container(
                                      //   margin: EdgeInsets.only(right:width*.015,),
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.end,
                                      //     children: [
                                      //       Button(Icons.delete, Colors.red,
                                      //           ctx: context,
                                      //           text: "Discard", onApply: () {
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
                                      //                         SalesreturngeneraldeleteCubit>()
                                      //                         .salesreturnGeneralDelete(
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
                                      //           text: select ? "Save" : "update",
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
                                      //               SalesReturnGeneralPostModel model = SalesReturnGeneralPostModel(
                                      //                   orderType: orderTypeController?.text ?? "",
                                      //                   orderMode: orderModeController?.text ?? "",
                                      //                   inventoryid:Variable.inventory_ID,
                                      //                   customerId: cstomerIdController?.text ?? "",
                                      //                   trnNumber: trnController?.text ?? "",
                                      //                   salesInvoiceId: salesInvoiceCodeController.text??"",
                                      //                   shippingAddressId: shippingAddressIdController?.text ?? "",
                                      //                   billingAddressId: billingAddressIdController?.text??"",
                                      //                   reason: reasonController?.text ?? "",
                                      //                   remarks: remarksController?.text ?? "",
                                      //                   discount: double.tryParse(discountController?.text ?? ""),
                                      //                   unitCost: double.tryParse(unitCostController?.text ?? ""),
                                      //                   excessTax: double.tryParse(exciseTAxController?.text ?? ""),
                                      //                   taxableAmount: double.tryParse(taxableAmountController?.text ?? ""),
                                      //                   vat: double.tryParse(vatController?.text ?? ""),
                                      //                   sellingPriceTotal: double.tryParse(sellingPriceController?.text ?? ""),
                                      //                   totalPrice: double.tryParse(toatalPriceController?.text ?? ""),
                                      //                   createdBy: "akaka",
                                      //                   // editedBy: "",
                                      //                   orderLines: table);
                                      //               print("modelllls" + model.toString());
                                      //               select
                                      //                   ? context
                                      //                   .read<SalesreturnpostCubit>()
                                      //                   .postSalesReturnGeneral(model)
                                      //                   :  context
                                      //                   .read<SalesreturngeneralpatchCubit>().postSalesRequestGeneralPatch(veritiaclid,model);
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
                                ))

                              ],
                            ),

                          ),
                        );
                      }
                  );
                },
              ),
            );
          }
      ),
    );
  }
}


class SalesReturnGenealStableTable extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController returnOrderCode;
  final TextEditingController orderDate;
  final TextEditingController salesInvoiceCode;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController billingAddressId;
  final TextEditingController shipping;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController reason;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;
  final TextEditingController billingAddresName;
  final TextEditingController shippingName;
  final Function assign;
  bool select;
  SalesReturnGenealStableTable(
      {
        required this.orderType,
        required this.returnOrderCode,
        required this.orderMode,
        required this.orderDate,
        required this.salesInvoiceCode,
        required this.customerId,
        required this.trnNumber,
        required this.shipping,
        required this.billingAddressId,
        required this.vat,
        required this.select,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.reason,
        required this.invoiceStatus,
        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.assign,

        required this.sellingPriceTotal, required this.billingAddresName, required this.shippingName});

  @override
  _SalesReturnGenealStableTableState createState() => _SalesReturnGenealStableTableState();
}

class _SalesReturnGenealStableTableState extends State<SalesReturnGenealStableTable>
{
  TextEditingController controller = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lanameController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();
  TextEditingController taxidController = TextEditingController();
  TextEditingController buisnessmodeController = TextEditingController();
  TextEditingController designation = TextEditingController();
  List<SalesReturnOrderLines>table=[];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      BlocListener<GeneralinvoicereadCubit, GeneralinvoicereadState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                setState(() {
                  print("Akshay real "+data.toString());
                  if(data.invoicedData!=null){
                    data?.invoicedData?.lines != null
                        ? table = data?.invoicedData?.lines ?? []
                        : table = [];
                    widget.salesInvoiceCode.text=data?.invoicedData?.invoiceCode??"";
                    widget.orderDate.text=data?.invoicedData?.createdDate??"";
                    widget.remarks.text=data?.invoicedData?.remarks??"";
                    widget.reason.text=data?.invoicedData?.notes??"";
                    widget.invoiceStatus.text=data?.invoicedData?.invoiceStatus??"";
                    widget.discount.text=data?.invoicedData?.discount.toString()??"";
                    widget.unitCost.text=data?.invoicedData?.unitCost.toString()??"";
                    widget.exciseTax.text=data?.invoicedData?.excessTax.toString()??"";
                    widget.taxableAmount.text=data?.invoicedData?.taxableAmount.toString()??"";
                    widget.vat.text=data?.invoicedData?.vat.toString()??"";
                    widget.sellingPriceTotal.text=data?.invoicedData?.sellingPriceTotal.toString()??"";
                    widget.totalPrice.text=data?.invoicedData?.totalPrice.toString()??"";
                  }
                  else{
                    print("the null case");
                    widget.customerId.text=data.customerId??"";
                    widget.trnNumber.text=data.trnNumber??"";
                    widget.paymentId.text=data.paymentId??"";
                    widget.paymentStatus.text=data.paymentStatus??"";
                    widget.orderStatus.text=data.orderStatus??"";
                    widget.discount.text=data.discount.toString()??"";
                    widget.unitCost.text=data.unitCost.toString()??"";
                    widget.exciseTax.text=data.excessTax.toString()??"";
                    widget.taxableAmount.text=data.taxableAmount.toString()??"";
                    widget.vat.text=data.vat.toString()??"";
                    widget.sellingPriceTotal.text=data.sellingPriceTotal.toString()??"";
                    widget.totalPrice.text=data.totalPrice.toString()??"";
                    // print( data?.i);
                    data?.lines != null
                        ? table = data?.lines  ?? []
                        : table = [];
                  }
                  widget.assign(table);



                });
              });
        },
        child: Builder(
            builder: (context) {
              return Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableDropDownpopUp(
                              label: "Order Type",
                              type: "SalesOrder_TypePopUpCall",
                              value: widget.orderType.text,
                              onSelection: (String va) {
                                print("+++++++++++++++++++++++");
                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                setState(() {
                                  widget.orderType.text = va;

                                  // onChange = true;
                                  // orderType = va!;
                                });
                              },
                              restricted: true,
                            ),
                            SizedBox(
                              height: height * .030,
                            ),
                            SelectableDropDownpopUp(
                              label: "Order Mode",
                              apiType:"1",
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
                                controller: widget.returnOrderCode,
                                title: "Return Order Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderDate,
                                title: "Order Date"),

                            SizedBox(
                              height: height * .030,
                            ),widget.select?
                            SelectableDropDownpopUp(
                              label: "Sales Invoice Code",
                              type:"InvoiceCode-PopUpCall",
                              value: widget.salesInvoiceCode.text,
                              enable: true,
                              onSelection: (SalesInvoiceCodeModel? va) {
                                print(
                                    "+++++++++++++++++++++++");
                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                setState(() {
                                  widget.salesInvoiceCode.text=va?.invoiceCode.toString()??"";
                                  context.read<GeneralinvoicereadCubit>().getSalesReturnGeneralInvoiceRead(va?.id);

                                });
                              },

                            ):NewInputCard(
                                readOnly: true,
                                controller: widget.salesInvoiceCode, title: "Sales Invoice Code"),

                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.customerId, title: "Customer Id"),
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
                              height: height * .090,
                            ),


                            // NewInputCard(
                            //     controller: widget.shipping, title: "shipping address id"),
                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SelectableDropDownpopUp(
                            //   label: "Billing Address Id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.billingAddresName.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.billingAddressId.text=va?.id.toString()??"";
                            //       widget.billingAddresName.text=va?.fullName.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     // showDailogPopUp(
                            //     //     context,
                            //     //     WarrantyDetailsPopUp(
                            //     //       // indexValue: temp,
                            //     //       // changeActive: onChangeActive,
                            //     //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //     //       // changeExtendedWarranty: onChangeExtendedWarranty,
                            //     //     ));
                            //   },
                            // ),


                            NewInputCard(controller: widget.billingAddressId,
                              readOnly: true,
                              icondrop:true,title: "Billing Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code: widget.customerId.text,
                                    type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                    setState(() {

                                      widget.billingAddressId.text=va?.id.toString()??"";
                                      widget.billingAddresName.text=va?.fullName.toString()??"";
                                      setState(() {

                                      });


                                      // onChange = true;
                                      // orderType.text = va!;
                                    });

                                  },
                                  ),


                                );

                              },),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(controller: widget.shipping,
                              readOnly: true,
                              icondrop:true,title: "Shipping Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code: widget.customerId.text,
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
                            //   label: "Shipping Address Id",
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
                            //     // showDailogPopUp(
                            //     //     context,
                            //     //     WarrantyDetailsPopUp(
                            //     //       // indexValue: temp,
                            //     //       // changeActive: onChangeActive,
                            //     //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //     //       // changeExtendedWarranty: onChangeExtendedWarranty,
                            //     //     ));
                            //   },
                            // ),
                            // NewInputCard(
                            //     controller: widget.billingAddressId,
                            //     title: "billing address id"),
                            SizedBox(
                              height: height * .030,
                            ),

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
                              controller: widget.reason,
                              title: "Reason",
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
                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

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
                                title: "Taxable Amount"),
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

                          ],
                        ))
                  ],
                ),
              );
            }
        ),
      );
  }
}
class SalesReturnGeneralGrowableTable extends StatefulWidget {
  final List<SalesReturnOrderLines>? table;
  // final List<int?> currenStock;
  // bool select;
  final Function updation;
  // final Function updateCheck;
  SalesReturnGeneralGrowableTable(
      {
        required Key key,
        required this.table,
        required this.updation,
        // required this.select,
        // required this.updateCheck,
        // required this.currenStock
      }): super(key: key);

  @override
  _SalesReturnGeneralGrowableTableState createState() =>
      _SalesReturnGeneralGrowableTableState();
}

class _SalesReturnGeneralGrowableTableState extends State<SalesReturnGeneralGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;

  PurchaseOrderTableModel? purchaseTable;
  List<SalesReturnOrderLines> table1 = [];
  String? variantId = "";
  String? varinatname = "";
  String? returntype = "";
  String? returntime = "";
  String? barcode = "";
  String? salesUom = "";
  int? stock = 0;
  int? stockId ;
  String? discountPrice = "price";
  PurchaseCureentStockQty? purchaseCurrentStock;
  var unitcostListControllers = <TextEditingController>[];

  bool? invoiced = false;
  bool? isActive1 = false;
  bool? clear = true;
  String? supplierRefCode = "";
  double? unitcost1 = 0;
  double? discount1 = 0;
  double vat1 = 0;
  int? quantity = 0;
  double? etax1 = 0;
  double taxableAmount = 0;
  double warrentyprice = 5;
  double sellingPrice = 0;
  double warrentyPrice = 5;
  double totalPrice = 0;
  TextEditingController unicostController = TextEditingController();
  void taxableCalcutatingMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    if (type == "price") {
      taxableAmount = double.parse((((reqQty * unitCst) + exTaxx) - disct).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmount =double.parse ((total - ((total * disct) / 100)).toStringAsFixed(2));
    }
  }

  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts = double.parse((((reqQty * unitCst) + exTaxx) - disct).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmounts = (total - ((total * disct) / 100));
    }
    return taxableAmounts;
  }

  void selliPriceCalculation(double taxableAmount, double vatt) {
    sellingPrice = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
  }

  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 =double.parse( (taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
    return sellingPrice1;
  }

  void totalPriceCalculation(double sellingprice, double warrentyprice) {
    totalPrice = sellingprice + warrentyprice;
    setState(() {
      print("totalp" + totalPrice.toString());
    });
  }

  double totalPriceUpdation(double sellingprice, double warrentyprice) {
    double totalPrice1;
    totalPrice1 = sellingprice + warrentyprice;
    setState(() {});
    return totalPrice1;
  }
  valueAddingTextEdingController(){
    unitcostListControllers.clear();
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
    if (assignCheck == false) table1 = widget.table ?? [];

    // if(widget.select && clear==true)table1.clear();
    // clear=false;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [

            BlocListener<GeneralinvoicereadCubit, GeneralinvoicereadState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("checkin Case");
                      table1.clear();
                      if(data.invoicedData!=null){
                        data?.invoicedData?.lines != null
                            ? table1 =List.from( data?.invoicedData?.lines ?? [])
                            : table1 = [];



                      }
                      else{
                        data?.lines != null
                            ? table1 = List.from(data?.lines  ?? [])
                            : table1 = [];

                      }
                      setState(() {
                        // table1[0]=table1[0].copyWith(unitCost: 3);
                        valueAddingTextEdingController();
                      });

                      print("thee table"+table1.toString());
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
                          returntime = purchaseTable?.returnTime.toString() ?? "";
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
                                      'Barcode',

                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Current Qty',

                                      size: 13,
                                    ),
                                    tableHeadtext(
                                      'Return Type',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Return Time ',


                                      size: 13,


                                    ),

                                    tableHeadtext(
                                      'Invoiced',


                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

                                    tableHeadtext(
                                      'Warranty',

                                      size: 13,

                                      // color: Palette.containerDarknew,

                                      // textColor: Palette.white
                                    ),

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
                                      'Excise Tax',


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
                              if(table1.isEmpty)...[
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
                                      Container(height: 48,)

                                    ]),

                              ],

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
        text:variantId.toString(),
        onTap: (){
        showDailogPopUp(
        context,
        TableConfigurePopup(
        inventory: Variable.inventory_ID,
        type: "variantTabalePopup",
        valueSelect: (VariantId? va) {
        assignCheck = true;
        // widget.updateCheck(true);
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
        // context
        //     .read<
        //     PurchaseStockCubit>()
        //     .getCurrentStock(
        //     varia.text, variantId);

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
                                          //   type: "cost-method-list",
                                          //   value: table1[i].variantId??"",
                                          //   onSelection: (VariantId? va) {
                                          //     assignCheck = true;
                                          //     // widget.updateCheck(true);
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
                                          //       // context
                                          //       //     .read<
                                          //       //     PurchaseStockCubit>()
                                          //       //     .getCurrentStock(
                                          //       //     varia.text, variantId);
                                          //
                                          //       // orderType = va!;
                                          //     });
                                          //   },
                                          //   onAddNew: () {},
                                          //   // restricted: true,
                                          // )
            :
                                          textPadding(
                                              table1?[i].variantId ?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500)
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
                                              table1?[i].qty.toString()?? "",
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
                                          child: textPadding(table1?[i].runtimeType.toString()??"",
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
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table1[i].warrentyId ?? "",
                                              fontSize: 12,
                                              padding: EdgeInsets.only(
                                                  left: 11.5, top: 1.5),
                                              fontWeight: FontWeight.w500),
                                        ),
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
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: textPadding(
                                        //
                                        //       table1?[i].salesUom??"", fontSize: 12,
                                        //       height:42,
                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                        //       1.5), fontWeight: FontWeight.w500),
                                        // ),
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

                                              // widget.updateCheck(true);
                                              table1[i] = table1[i].copyWith(updatecheck: true);
                                              // // table[i] = table[i].copyWith(updateCheck: true);
                                              // setState(() {
                                              //
                                              // });
                                              // print(va);
                                              if (va == "") {
                                                print("entered");
                                                assignCheck = true;
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
                                            initialCheck: true,
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            //controller: unitcostListControllers[i],
                                            last: table1?[i]
                                                .unitCost
                                                .toString() ??
                                                "",
                                            onChanged: (va) {
                                              // widget.updateCheck(true);
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
                                              // widget.updateCheck(true);
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
                                          child:
                                          table1[i].isInvoiced!=true?PopUpCall(
                                            apiType: "1",
                                            type: "PriceTypePopUpCall",
                                            value: table1[i].discountType??"",
                                            onSelection: (String va) {
                                              print("+++++++++++++++++++++++");

                                              setState(() {
                                                table1[i] = table1[i].copyWith(updatecheck: true);
                                                table1[i] = table1[i]
                                                    .copyWith(discountType: va);
                                                // widget.updateCheck(true);
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
                                          ):textPadding(
                                              table1[i].discountType ?? "",
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
                                            readOnly: table1[i].isInvoiced==true?true:false,
                                            initialCheck: true,
                                            last:
                                            table1?[i].discount.toString() ??
                                                "",
                                            onChanged: (va) {
                                              // widget.updateCheck(true);
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
                                                if( table1[i].isInvoiced!=true) {
                                                  bool? isActive =
                                                      table1[i].isActive;
                                                  setState(() {
                                                    // widget.updateCheck(true);
                                                    table1[i] =
                                                        table1[i].copyWith(
                                                            updatecheck: true);
                                                    // table1[i] = table1[i].copyWith(updateCheck: true);
                                                    setState(() {});
                                                    isActive = !isActive!;
                                                    table1[i] = table1[i]
                                                        .copyWith(
                                                        isActive: isActive);
                                                  });
                                                } }),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            onPress: () {
                                              print("the date mistake is "+table1.toString());
                                              // widget.updateCheck(false);
                                              widget.updation(table1);


                                              print("the date mistake is "+table1.toString());
                                              table1[i].copyWith(updatecheck: false);
                                            },
                                            label: "update",
                                          ),
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