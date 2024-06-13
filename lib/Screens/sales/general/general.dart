import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/keyEvent.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:provider/provider.dart';
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
  NavigationProvider commonProvider = NavigationProvider();
  FocusNode salesMainFocusnode=FocusNode();
  FocusNode saveUpdateButtonFocusnode=FocusNode();
  List<SalesOrderLines> table  =[];
  int tabCount=1;
  bool isCountOrdecre=false;

  Map keyEventFuctionCount={
    "save":2,
    "cancel":3,
    "table":1

  };

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
  rowKeyEventResetFunc(){
    tabCount=1;
    isCountOrdecre=false;
    enableKeyEvent=true;
    setState(() {

    });
  }
  rowKeyPressEvent(RawKeyEvent event){
    print(event.logicalKey)
;    // FocusNode? currentfocusedNode = FocusManager.instance.primaryFocus;
    int limit=3;
    int startLimit=1;

    if (event is RawKeyDownEvent) {

      if(event.logicalKey==LogicalKeyboardKey.escape){

        FocusScope.of(context).requestFocus(_myWidgetState.currentState?.focusNodeList[0]);
        if(isCountOrdecre==false){

          if(tabCount!=limit){
            tabCount=++tabCount;

            if(tabCount==limit){
              isCountOrdecre=true;
            }


          }
        }
        else{
          if(tabCount!=startLimit){
            tabCount=--tabCount;
            if(tabCount==startLimit){
              isCountOrdecre=false;}
          }



        }
        if(tabCount==1)
          FocusScope.of(context).requestFocus(_myWidgetState.currentState?.focusNodeList[0]);
        if(tabCount==2 ||tabCount==3)
          FocusScope.of(context).requestFocus(saveUpdateButtonFocusnode);

        // tabCount= tabCount== limit?--tabCount:++tabCount;
        setState(() {

        });

      }
      // else  if(event.logicalKey==LogicalKeyboardKey.keyR){
      //    remarksPopupCallFunc();
      //
      //  }
      // else if(event.logicalKey==LogicalKeyboardKey.arrowLeft){
      //   FocusNode? focusedNode = FocusScope.of(context).focusedChild;
      //   if (focusedNode != null) {
      //     print('Currently focused node: ${focusedNode}');
      //   }
      //
      // }
      else{

        if (event.logicalKey == LogicalKeyboardKey.arrowDown ) {
          switch (tabCount) {
            case 1:
              FocusScope.of(context).requestFocus(salesMainFocusnode);
               _myWidgetState.currentState?.   changeSelectedRow(1);
              setState(() {

              });
              break;

          };


          // Handle arrow down key press
          // _changeSelectedRow(1);
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          switch (tabCount) {
            case 1:
              FocusScope.of(context).requestFocus(salesMainFocusnode);
                 _myWidgetState.currentState?.   changeSelectedRow(-1);
              setState(() {

              });
              break;



          // Handle arrow up key press
          // _changeSelectedRow(-1);
        }}
        else if(event.logicalKey==LogicalKeyboardKey.enter || event.logicalKey==LogicalKeyboardKey.numpadEnter){
          switch (tabCount) {
            case 2:
              saveUpdateFunction();
              break;
            case 3:
              discardCancelFunction();
              break;

          }



        }






      }
      //invoice page keyPress Event


      //





    }

  }

  addition() {
   
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
    discountController.text = discountValue.toStringAsFixed(2);
    sellingPriceController.text = sellingprice.toStringAsFixed(2);
    toatalPriceController.text = totalAmount.toStringAsFixed(2);
    taxableAmountController.text = taxableAmount.toStringAsFixed(2);
    exciseTAxController.text = excessTAxValue.toStringAsFixed(2);

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
    commonProvider = Provider.of<NavigationProvider>(context);
    return Builder(builder: (context) {
      return MultiBlocListener(
        listeners: [
          BlocListener<PostcubitCubit, PostcubitState>(
            listener: (context, state) {
              print("postssssssss" + state.toString());
              state.maybeWhen(orElse: () {
                // context.
                context.showSnackBarError("Loading");
              }, error: () {
                commonProvider.setLoadingSaveUpdate(false);
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
                ;    commonProvider.setLoadingSaveUpdate(false);
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
                commonProvider.setLoadingSaveUpdate(true);
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
                commonProvider.setLoadingSaveUpdate(false);
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
                commonProvider.setLoadingDeleterClear(false);
                context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                print("checkingdata" + data.data1.toString());
                if (data.data1) {
                  context.showSnackBarSuccess(data.data2);
                  // clear();
clears();
                  context
                      .read<SalesgeneralverticalCubit>()
                      .getSalesGeneralVertical();

                } else {
                  context.showSnackBarError(data.data2);
                  print(data.data1);
                }
                commonProvider.setLoadingDeleterClear(false);
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
                      clears();
                      // setState(() {
                      // });

                    }

                    setState(() {});
                  });
                });
          },
          builder: (context, state) {
            return Builder(builder: (context) {
              return RawKeyboardListener(
                autofocus: false,
                focusNode:salesMainFocusnode,
                onKey: (RawKeyEvent event) {

                  if(enableKeyEvent==true){
                    rowKeyPressEvent(event);}else{

                    rowKeyEventResetFunc();
                  }





                },
                child: Scaffold(
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
                              _myWidgetState.currentState?.selctedraw=-1;
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
                                          if (user.isInventoryExist == true) {model=user;
                                          } else {
                                          }
                                        });
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              SalePrintScreen(
                                                note: noteController.text,
                                                select: select,
                                                orderCode: orderCodeController.text??"",
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
                                  focusNode: saveUpdateButtonFocusnode,
                                  isKeyFuctionLeft: keyEventFuctionCount["cancel"]==tabCount,
                                  isKeyFuctionRight: keyEventFuctionCount["save"]==tabCount,
                                  isSaveUpdateLoading: commonProvider.isLoadingSaveupdate,
                                  isClearDeketeLoading:commonProvider.isLoadingDeleteClear ,
                                  discardFunction: (){
                                    discardCancelFunction();
                                  },
                                  saveFunction: (){

                                    saveUpdateFunction();
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
                ),
              );
            });
          },
        ),
      );
    });
  }
  saveUpdateFunction(){
    print("updateCheck" +
        remarksController.text.toString());
    if (updateCheck)
      context.showSnackBarError(
          "please click the update button ");
    else if(table.isEmpty || table.where((element) => element.isActive==true).isEmpty){

      context.showSnackBarError(
          "Required at least one variant ");
    }
    else {
      commonProvider.setLoadingSaveUpdate(true);
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
  discardCancelFunction(){
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
            commonProvider.setLoadingDeleterClear(true);
            Navigator.pop(context);
            context
                .read<
                SalesgeneraldeleteCubit>()
                .salesGeneralDelete(
                veritiaclid);
          },
        ));
  }
}











