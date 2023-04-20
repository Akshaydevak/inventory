import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';

import 'package:inventory/Screens/sales/general/cubit/generalread/salesgeneralread_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/salesgeneraldelete/salesgeneraldelete_cubit.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';
import 'package:inventory/Screens/sales/general/pages/sales_general_stable_table.dart';
import 'package:inventory/Screens/sales/general/pages/sales_growable_table.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
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
  final GlobalKey<SalesGeneralGrowableTableState> _myWidgetState = GlobalKey<SalesGeneralGrowableTableState>();

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
                      // orderDateController.text = data.salesOrderData?.orderedDate ?? "";

                      orderDateController=TextEditingController(text:data.salesOrderData?.orderedDate ==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.salesOrderData?.orderedDate??"")));
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
                                                note: noteController.text,
                                                select: select,
                                                orderDate: orderDateController.text,
                                                table:table,
                                                vat: double.tryParse( vatController.text),
                                                sellingPrice:double.tryParse( sellingPriceController.text),
                                                taxableAmount:double.tryParse( taxableAmountController.text) ,
                                                discount:double.tryParse( discountController.text) ,
                                                unitCost:double.tryParse( unitCostController.text) ,
                                                excisetax:double.tryParse( exciseTAxController.text) ,
                                                remarks: remarksController.text ,
                                                pageName: "GENERAL",
                                                model: model,
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
                                  height: 55,
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


