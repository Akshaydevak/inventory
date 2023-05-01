import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/salesreturn/cubit/cubit/salesreturngeneraldelete_cubit.dart';
import 'package:inventory/Screens/salesreturn/cubit/salesgeneralread/salesgeneralread_cubit.dart';

import 'package:inventory/Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/Screens/salesreturn/pages/sales_return_stable_table.dart';
import 'package:inventory/Screens/salesreturn/pages/slaes_return_growable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
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
  final GlobalKey< SalesReturnGeneralGrowableTableState> _myWidgetState = GlobalKey< SalesReturnGeneralGrowableTableState>();
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
                            // orderDateController.text= data?.returnOrderDate??"";
                            orderDateController=TextEditingController(text:data?.returnOrderDate ==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data?.returnOrderDate??"")));
                            cstomerIdController.text= data?.customerId??"";
                            returnOrderCodeController.text= data?.salesReturnOrderCode??"";
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
                            if(select){
                              veritiaclid = result[result.length-1].id;
                              selectedVertical=result.length-1;

                              context
                                  .read<SalesgeneralreadCubit>()
                                  .getSalesReturnGeneralRead(veritiaclid!);
                            }
                            else{
                              veritiaclid = result[0].id;
                              selectedVertical=0;

                              context
                                  .read<SalesgeneralreadCubit>()
                                  .getSalesReturnGeneralRead(veritiaclid!);
                            }

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
                                      _myWidgetState.currentState?.currentStock=[];

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
                                                _myWidgetState.currentState?.table1=[];
                                                _myWidgetState.currentState?.currentStock=[];
                                              });
                                            },
                                            // icon: Icon(Icons.refresh),
                                            // label: Text("Clear")
                                            text: "CREATE",
                                          ),
                                          TextButtonLarge(
                                            text: "PREVIEW",
                                            onPress: () async {
                                              InventoryListModel model=InventoryListModel();


                                              UserPreferences userPref = UserPreferences();
                                              await userPref.getInventoryList().then((user) {
                                                print("entereeeeeeeeeeeeeeeeeeed");

                                                if (user.isInventoryExist == true) {
                                                  model=user;
                                                  print("existing");
                                                  print(model.email);
                                                  // prefs.setString('token', user?.token ?? "");




                                                } else {

                                                }
                                              });
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
                                                      model: model,
                                                      pageName: "GENERAL",
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
                                      SizedBox(
                                        height: 30,
                                      ),
                                      SaveUpdateResponsiveButton(
                                        discardFunction: (){
                                          showDailogPopUp(
                                              context,
                                              LogoutPopup(
                                                message: "Do you want to delete the order?",
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



