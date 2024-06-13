import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_request_form/pages/purchase_order_request_form_growable.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_request_form/pages/request_form_stabletable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/keyEvent.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/requestformcubit/cubit/deleterequestform_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestformpost_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestpatch_cubit.dart';
import 'package:provider/provider.dart';

import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';
class RequestFormScreen extends StatefulWidget {
  @override
  State<RequestFormScreen> createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController plannedRecieptDate = TextEditingController();
  TextEditingController plannedRecieptDate2 = TextEditingController();
  TextEditingController promisedRecieptDate = TextEditingController();
  TextEditingController promisedRecieptDate2 = TextEditingController();
  TextEditingController orderTypeController = TextEditingController();
  TextEditingController ordereCodeController= TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController inventoryIdController = TextEditingController();
  TextEditingController orderedPersonController = TextEditingController();
  TextEditingController paymentCodeController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController receivingSattusController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController orderType = TextEditingController();
  NavigationProvider commonProvider = NavigationProvider();
  FocusNode requestFormFocusNode=FocusNode();
  FocusNode saveUpadtebuttonFocusnOde=FocusNode();
  final GlobalKey<PurchaseOrderRequestFormGrowableTableState> _myWidgetState = GlobalKey<PurchaseOrderRequestFormGrowableTableState>();
  //
  late AutoScrollController scontroller;
  // var requestedListControllers = <TextEditingController>[];
  // var minListControllers = <TextEditingController>[];
  // var maxListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  // var excesstListControllers = <TextEditingController>[];
  // var discounttListControllers = <TextEditingController>[];
  // var focListControllers = <TextEditingController>[];
  // var vatListControllers = <TextEditingController>[];

  int? veritiaclid=0;
  List<OrderLines> table = [];

  List<PurchaseOrder>result=[];
  bool select=false;
  int selectedVertical=0;
  int? receivingId ;

  PurchaseCureentStockQty? purchaseCurrentStock;
  int?stock=0;
  bool  stockCheck=false;
  var  paginatedList;
  bool updateCheck=false;
  int tabCount=1;
  bool isCountOrdecre=false;

  double VatableValue = 0;
  double excessTax = 0;
  String? purchaseUom;
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }
  Map keyEventFuctionCount={
    "save":2,
    "cancel":3,
    "table":1

  };
  rowKeyEventResetFunc(){
    tabCount=1;
    isCountOrdecre=false;
    enableKeyEvent=true;
    setState(() {

    });
  }

  rowKeyPressEvent(RawKeyEvent event){
    // FocusNode? currentfocusedNode = FocusManager.instance.primaryFocus;
    int limit=3;
    int startLimit=1;

    if (event is RawKeyDownEvent) {

      if(event.logicalKey==LogicalKeyboardKey.escape){
        print("tabPressd");

        FocusScope.of(context).requestFocus(requestFormFocusNode);
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
        if(tabCount!=1){
          FocusScope.of(context).requestFocus(saveUpadtebuttonFocusnOde);
        }else{
          FocusScope.of(context).requestFocus(_myWidgetState.currentState?.focusNodeList[0]);
        }


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
            //     FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=    _verticalWidgetState.currentState?.   changeSelectedRow(1)??0;
            // setState(() {
            //
            // });
              FocusScope.of(context).requestFocus(requestFormFocusNode);
              _myWidgetState.currentState?.   changeSelectedRow(1);
              setState(() {

              });
              break;
          // case 2:
          //
          //   break;

          };




          // Handle arrow down key press
          // _changeSelectedRow(1);
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          switch (tabCount) {
            case 1:
            // FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
            // setState(() {
            //
            // });
              FocusScope.of(context).requestFocus(requestFormFocusNode);
              _myWidgetState.currentState?.   changeSelectedRow(-1);
              break;
          // case 2:
          // // FocusScope.of(context).requestFocus(inventoryFocusNode);
          // //    _stableWidgetState.currentState?.   changeSelectedRow(-1);
          // // setState(() {
          // //
          // // });
          // break;

          }


          // Handle arrow up key press
          // _changeSelectedRow(-1);
        }
        else if(event.logicalKey==LogicalKeyboardKey.enter || event.logicalKey==LogicalKeyboardKey.numpadEnter){
          switch (tabCount) {
            case 1:
            // verticalOntapFunc(selectedVertical);
              break;
            case 2:
              saveUpdateFunc();
              break;
            case 3:
              deleteOrClearFunction();
              break;

          }



        }






      }
      //invoice page keyPress Event


      //





    }

  }
  tableAssign(List<OrderLines> table1) {
    print("ethito");
    table = List.from(table1);
    setState(() {
      addition();
    });
  }
  bool updateCheckFunc(){
   var isUpdate=table.where((element) => element.updateCheck==true);
   if(isUpdate.isNotEmpty){
     return true;
   }
   else
     return false;
  }

  addition() {
    double unitcost2 = 0;
    double grands = 0;
    double actualValue = 0;
    double vatValue = 0;
    double discountValue = 0;
    double focValue = 0;
    double warrentyprice = 0;
    double VatableValue = 0;
    double excessTAxValue = 0;
    if(table.isNotEmpty==true) {
      for (var i = 0; i < table.length; i++) {
        if (table[i].isActive == true && table[i].updateCheck != true) {
          var unicost1= table[i].unitCost??0;
          var vatValue1= table[i].vat??0;
          var grands1= table[i].grandTotal??0;
          var actualValue1= table[i].actualCost??0;
          var discountValue1= table[i].discount??0;
          var focValue1= table[i].foc??0;
          var VatableValue1= table[i].vatableAmount??0;
          var excessTAxValue1= table[i].excessTax??0;
          unitcost2 = unitcost2 + unicost1;
          grands = double.parse((grands + grands1).toStringAsFixed(2));
          actualValue =double.parse( (actualValue + actualValue1).toStringAsFixed(2));
          vatValue = double.parse((vatValue +vatValue1).toStringAsFixed(2));
          discountValue =double.parse(( discountValue + discountValue1).toStringAsFixed(2));
          focValue = double.parse((focValue + focValue1).toStringAsFixed(2));
          VatableValue = double.parse((VatableValue + VatableValue1).toStringAsFixed(2));
          excessTAxValue = double.parse((excessTAxValue + excessTAxValue1).toStringAsFixed(2));
        }
      }
    }
    unitCostController.text = unitcost2 == 0 ? "" : unitcost2.toString();
    grandTotalController.text = grands.toString();
    vatController.text = vatValue.toString();
    actualCostController.text = actualValue.toString();
    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    // _value=false;
  }




  clear(){
    orderTypeController.text="";
    orderType.text="";
    unitcostListControllers.clear();
    ordereCodeController.text="";
    orderDateController.text="";
    inventoryIdController.text="";
    orderedPersonController.text="";
    promisedRecieptDate.text="";
    plannedRecieptDate.text="";

    updateCheck=false;
    paymentCodeController.text="";
    paymentStatusController.text="";
    orderStatusController.text="";
    receivingSattusController.text="";
    invoiceStatusController.text="";
    noteController.text="";
    remarksController.text="";
    discountController.text="";
    focController.text="";
    unitCostController.text="";
    vatableAmountController.text="";
    excessTaxController.text="";
    vatController.text="";
    actualCostController.text="";
    grandTotalController.text="";

    promisedRecieptDate2.clear();
    plannedRecieptDate2.clear();

    stock=0;


  }
  PurchaseOrderTableModel? purchaseTable;
  TextEditingController itemsearch=TextEditingController();
  @override
  void initState() {
    context.read<InventorysearchCubit>().getInventorySearch("code",tab:"RF");
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    commonProvider = Provider.of<NavigationProvider>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => RequestformreadCubit(),
            ),
            BlocProvider(
              create: (context) => InventorysearchCubit()..getInventorySearch("code",tab:"RF"),
            ),


          ],
          child: Builder(
              builder: (context) {
                return MultiBlocListener(
                  listeners: [
                    BlocListener<RequestformpostCubit, RequestformpostState>(
                      listener: (context, state) {
                        print("postssssssss" + state.toString());
                        state.maybeWhen(orElse: () {
                          context.showSnackBarError("Loading");
                        }, error: () {
                          commonProvider.setLoadingSaveUpdate(false);
                          context.showSnackBarError(Variable.errorMessege);
                        }, success: (data) {
                          if (data.data1) {
                            context.showSnackBarSuccess(data.data2);
                            Timer(Duration(seconds: 5), () {
                              setState(() {
                                context
                                    .read<InventorysearchCubit>()
                                    .getInventorySearch("code",tab:"RF");
                                _myWidgetState.currentState?.currentStock.clear();


                                // context.read<RequestformreadCubit>().getRequestFormRead(veritiaclid);
                              });
                            });
                          }
                          else {
                            context.showSnackBarError(data.data2);
                            print(data.data1);
                          }
                          commonProvider.setLoadingSaveUpdate(false);
                          ;
                        });
                      },
                    ),
                    BlocListener<RequestpatchCubit, RequestpatchState>(
                      listener: (context, state) {
                        print("patch" + state.toString());
                        state.maybeWhen(orElse: () {
                          // context.
                          context.showSnackBarError("Loading");
                        }, error: () {
                          commonProvider.setLoadingSaveUpdate(false);
                          context.showSnackBarError(Variable.errorMessege);
                        }, success: (data) {
                          if (data.data1){
                            context.showSnackBarSuccess(data.data2);
                            _myWidgetState.currentState?.   currentStock.clear();
                            context.read<RequestformreadCubit>().getRequestFormRead(veritiaclid);
                          }

                          else {
                            context.showSnackBarError(data.data2);
                            print(data.data1);
                          }
                          commonProvider.setLoadingSaveUpdate(false);
                          ;
                        });
                      },
                    ),
                    BlocListener<RequestformreadCubit, RequestformreadState>(
                      listener: (context, state) {

                        state.maybeWhen(
                            orElse: () {},
                            error: () {
                              print("error");
                            },
                            success: (data) {

                              setState(() {
                                stockCheck=false;
                                data.data?.orderLines != null ? table = List.from(data.data?.orderLines ?? []) : table = [];
                                ordereCodeController.text=data.data?.orderCode??"";
                                orderType.text=data.data?.purchaseOrderType??"";
                                orderDateController=TextEditingController(text:data.data?.orderDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.orderDate??"")));
                                inventoryIdController.text=data.data?.iventoryId??"";
                                // promisedRecieptDate.text=data.data?.promisedReceiptdate??"";
                                promisedRecieptDate=TextEditingController(text: data.data?.promisedReceiptdate==null?"": DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.promisedReceiptdate??""!)));
                                plannedRecieptDate=TextEditingController(text:data.data?.plannedRecieptDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.plannedRecieptDate??""!)));
                                // plannedRecieptDate.text=data.data?.plannedRecieptDate??"";
                                orderedPersonController.text=data.data?.orderedPereson??"";
                                paymentCodeController.text=data.data?.paymentcode??"";
                                paymentStatusController.text=data.data?.paymentStatus??"";
                                orderStatusController.text=data.data?.orderStatus??"";
                                receivingSattusController.text=data.data?.recievingStatus??"";
                                invoiceStatusController.text=data.data?.invoiceStatus??"";
                                noteController.text=data.data?.note??"";
                                remarksController.text=data.data?.remarks??"";
                                discountController.text=data.data?.discount.toString()??"";
                                focController.text=data.data?.foc.toString()??"";
                                unitCostController.text=data.data?.unitcost.toString()??"";
                                vatableAmountController.text=data.data?.variableAmount.toString()??"";
                                excessTaxController.text=data.data?.excessTax.toString()??"";
                                vatController.text=data.data?.vat.toString()??"";
                                actualCostController.text=data.data?.actualCost.toString()??"";
                                grandTotalController.text=data.data?.grandTotal.toString()??"";
                              });
                            });
                      },
                    ),



                    BlocListener<DeleterequestformCubit, DeleterequestformState>(
                      listener: (context, state) {

                        state.maybeWhen(orElse: () {
                          // context.
                          context.showSnackBarError("Loading");
                        }, error: () {  commonProvider.setLoadingDeleterClear(false);
                          context.showSnackBarError(Variable.errorMessege);
                        }, success: (data) {
                          print("checkingdata"+data.data1.toString());
                          if (data.data1) {
                            context.showSnackBarSuccess(data.data2);
                            clear();
                            table.clear();
                            context.read<InventorysearchCubit>().getInventorySearch("code",tab:"RF");

                          }
                          else {
                            context.showSnackBarError(data.data2);
                            print(data.data1);
                          }
                          commonProvider.setLoadingDeleterClear(false);

                        });
                      },
                    ),

                  ],
                  child: Builder(
                      builder: (context) {
                        return  BlocConsumer<InventorysearchCubit, InventorysearchState>(
                          listener: (context, state) {
                            state.maybeWhen(orElse:(){},
                                error: (){
                                  print("error");
                                },
                                success: (list){
                                  paginatedList=list;
                                  print("listtt"+list.toString());
                                  result=list.data;setState(() {
                                    print("Here is the result");
                                    print(result);
                                    if(result.isNotEmpty){
                                      if(select){
                                        veritiaclid=result[result.length-1].id;
                                        context
                                            .read<RequestformreadCubit>().getRequestFormRead(veritiaclid!);
                                        selectedVertical=result.length-1;
                                      }
                                      else{

                                        veritiaclid=result[0].id;
                                        context
                                            .read<RequestformreadCubit>().getRequestFormRead(veritiaclid!);
                                        selectedVertical=0;
                                      }

                                      select=false;

                                    }
                                    else{
                                      select=true;
                                      clear();
                                      _myWidgetState.currentState?.clearTableAddingVariables();
                                    }

                                  });

                                }
                            );
                          },
                          builder: (context, state) {
                            return RawKeyboardListener(
                              autofocus: false,
                              focusNode:requestFormFocusNode,
                              onKey: (RawKeyEvent event) {

                                if(enableKeyEvent==true){
                                  rowKeyPressEvent(event);}else{

                                  rowKeyEventResetFunc();
                                }





                              },
                              child: Scaffold(
                                backgroundColor:Pellet.bagroundColor ,
                                body: IntrinsicHeight(

                                    child:Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        VerticalList(
                                          tab:"RF",
                                          select: select,
                                          selectedVertical: selectedVertical,
                                          itemsearch: itemsearch,ontap: (int index){
                                          setState(() {
                                            print("taped");
                                            select=false;
                                            clear();
                                            selectedVertical=index;
                                            updateCheck=false;
                                            _myWidgetState.currentState?.clearTableAddingVariables();
                                            table.clear();
                                            // unitcostListControllers.clear();

                                            veritiaclid =
                                                result[index].id;
                                            Variable.verticalid2=result[index].id;
                                            context
                                                .read<
                                                RequestformreadCubit>()
                                                .getRequestFormRead(
                                                veritiaclid);
                                          });
                                        },result: result,
                                          child:                    tablePagination(
                                                () => context
                                                .read<InventorysearchCubit>()
                                                .refresh(),
                                            back: paginatedList?.previousUrl == null
                                                ? null
                                                : () {
                                              context
                                                  .read<InventorysearchCubit>()
                                                  .previuosslotSectionPageList();
                                            },
                                            next:paginatedList?.nextPageUrl == null
                                                ? null
                                                : () {
                                              // print(data.nextPageUrl);
                                              context
                                                  .read<InventorysearchCubit>()
                                                  .nextslotSectionPageList("");
                                            },
                                          ),
                                        ),
                                        Expanded(child: SingleChildScrollView(
                                          child: Container(


                                            child: Column(
                                              mainAxisAlignment:MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                Container(

                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      TextButtonLarge(
                                                          marginCheck: true,



                                                          onPress: () {
                                                            setState(() {

                                                              select=true;
                                                              updateCheck=false;
                                                              _myWidgetState.currentState?.currentStock.clear();
                                                              _myWidgetState.currentState?.clearTableAddingVariables();


                                                              table.clear();
                                                              clear();


                                                            });


                                                          },
                                                          // icon: Icon(Icons.refresh),
                                                          // label: Text("Clear")
                                                          text: "CREATE"
                                                      ),
                                                      TextButtonLarge(
                                                        text: "PREVIEW",
                                                        onPress: () async {
                                                          print("Akshay");
                                                          print("Akshay");
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
                                                                PrintScreen(
                                                                  note: noteController.text,
                                                                  select: select,
                                                                  model: model,
                                                                  orderCode:ordereCodeController.text ,
                                                                  orderDate: orderDateController.text,
                                                                  table:table,
                                                                  vendorCode: "Not",
                                                                  vat: double.tryParse( vatController.text),
                                                                  actualCost:double.tryParse( actualCostController.text),
                                                                  variableAmount:double.tryParse( vatableAmountController.text) ,
                                                                  discount:double.tryParse( discountController.text) ,
                                                                  unitCost:double.tryParse( unitCostController.text) ,
                                                                  excisetax:double.tryParse( excessTaxController.text) ,
                                                                  remarks: remarksController.text ,
                                                                  pageName: "Purchase Order",

                                                                )),
                                                          );


                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 10,),
                                                PurchaseOrderRequestFormTable(
                                                  isSected: select,
                                                  plannedReceiptDate2: plannedRecieptDate2,
                                                  promisedReceiptDate2: promisedRecieptDate2,
                                                  plannedReceiptDate: plannedRecieptDate,
                                                  promisedReceiptDate: promisedRecieptDate,
                                                  paymentStatus: paymentStatusController,
                                                  orderType: orderType,
                                                  orderStatus: orderStatusController,
                                                  orderedPerson: orderedPersonController,
                                                  oderDate: orderDateController,
                                                  invoiceStatus: invoiceStatusController,
                                                  grandTotal: grandTotalController,
                                                  foc: focController,
                                                  exciseTax: excessTaxController,
                                                  discound: discountController,
                                                  actualCost: actualCostController,
                                                  unitCost: unitCostController,
                                                  note: noteController,
                                                  paymentCode: paymentCodeController,
                                                  orderCode: ordereCodeController,
                                                  receivingStatus: receivingSattusController,
                                                  remarks: remarksController,
                                                  vat: vatController,
                                                  vatableAmount: vatableAmountController,
                                                ),
                                                PurchaseOrderRequestFormGrowableTable(
                                                    updateCheck: updateCheckFucction,
                                                    select:select,
                                                    updation: tableAssign,
                                                    key:_myWidgetState,
                                                    ),

                                                SizedBox(height: 30,),
                                                SaveUpdateResponsiveButton(label: select?"SAVE":"UPDATE",
                                                  focusNode: saveUpadtebuttonFocusnOde,
                                                  isKeyFuctionLeft: keyEventFuctionCount["cancel"]==tabCount,
                                                  isKeyFuctionRight: keyEventFuctionCount["save"]==tabCount,
                                                  isSaveUpdateLoading: commonProvider.isLoadingSaveupdate,
                                                  isClearDeketeLoading:commonProvider.isLoadingDeleteClear ,
                                                  saveFunction: (){
saveUpdateFunc();

                                                  },
                                                  discardFunction: (){
                                                    deleteOrClearFunction();
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ))
                                      ],

                                    )

                                ),
                              ),
                            );
                          },
                        );
                      }
                  ),
                );
              }
          ),

        ));
  }
  deleteOrClearFunction(){
    if(select){
      clear();
      updateCheck=false;
      table.clear();
      setState(() {

      });
    }
    else{
      showDailogPopUp(
          context,
          LogoutPopup(
            message: "Do you want to delete the order",
            onPressed:(){
              commonProvider.setLoadingDeleterClear(true);
              Navigator.pop(context);
              context.read<DeleterequestformCubit>().requestFormDelete(veritiaclid);

            },

          ));
    }
  }
  saveUpdateFunc(){
    if(updateCheck==true){
      context.showSnackBarError("please click the update button ");
    }
    else if(table.isEmpty || table.where((element) => element.isActive==true).isEmpty){
      context.showSnackBarError(
          "Required at least one variant ");
    }
    else{
      commonProvider.setLoadingSaveUpdate(true);
      var table1=[
        for(var em in table)
          if(em.isActive==true)
            em
      ];
      PurchaseOrderPost model =
      PurchaseOrderPost(
          purchaseOrderType: orderType.text??"",
          orderedPerson:orderedPersonController.text??"",
          iventoryId: Variable.inventory_ID,
          address1: "akshay",
          address2: "anmaika",
          discount:double.tryParse( discountController.text),
          plannedRecieptDate: DateFormat("yyyy-MM-dd").format(DateFormat("dd-MM-yyyy").parse(plannedRecieptDate.text??"")),
          promisedReceiptdate:DateFormat("yyyy-MM-dd").format(DateFormat("dd-MM-yyyy").parse(promisedRecieptDate.text??"")),
          note: noteController.text??"",
          remarks: remarksController.text??"",
          unitcost: double.tryParse(unitCostController.text),
          excessTax: double.tryParse(excessTaxController.text),
          actualCost: double.tryParse(actualCostController.text),
          vat: double.tryParse(vatController.text),
          grandTotal: double.tryParse(grandTotalController.text),
          variableAmount: double.tryParse(vatableAmountController.text),
          foc: double.tryParse(focController.text),
          createdBy: Variable.created_by,
          edited_by: Variable.created_by,
          orderLines:select? table1:table
      );

      print(model);
      select? context.read<RequestformpostCubit>().postRequest(model):
      context.read<RequestpatchCubit>().getRequestFormPatch(veritiaclid,model);
    }
  }
}



