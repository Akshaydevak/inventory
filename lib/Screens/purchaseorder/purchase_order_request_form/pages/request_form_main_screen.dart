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
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
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


  double VatableValue = 0;
  double excessTax = 0;
  String? purchaseUom;
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
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
            BlocProvider(
              create: (context) => RequestformpostCubit(),
            ),
            BlocProvider(
              create: (context) => RequestpatchCubit(),
            ),
            BlocProvider(
              create: (context) => DeleterequestformCubit(),
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
                                promisedRecieptDate.text=data.data?.promisedReceiptdate??"";
                                promisedRecieptDate2=TextEditingController(text: data.data?.promisedReceiptdate==null?"": DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.promisedReceiptdate??""!)));
                                plannedRecieptDate2=TextEditingController(text:data.data?.plannedRecieptDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.plannedRecieptDate??""!)));
                                plannedRecieptDate.text=data.data?.plannedRecieptDate??"";
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
                        }, error: () {
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
                            return Scaffold(
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
                                                saveFunction: (){
                                                  if(updateCheck==true){
                                                    context.showSnackBarError("please click the update button ");
                                                  }
                                                  else{
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
                                                        plannedRecieptDate: plannedRecieptDate.text??"",
                                                        promisedReceiptdate:promisedRecieptDate.text??"",
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

                                                },
                                                discardFunction: (){
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
                                                            print("akshay");
                                                            Navigator.pop(context);
                                                            context.read<DeleterequestformCubit>().requestFormDelete(veritiaclid);

                                                          },

                                                        ));
                                                  }
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                    ],

                                  )

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
}



