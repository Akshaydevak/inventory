import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/invoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/invoicepost_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
import 'package:inventory/Screens/purchasreturn/purchase_return_invoice/pages/purchase_return_invoice_growable.dart';
import 'package:inventory/Screens/purchasreturn/purchase_return_invoice/pages/purchase_return_invoice_stable_table.dart';
import 'package:inventory/commonWidget/Colors.dart';


import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';



class PurchaseReturnInvoice extends StatefulWidget {
  @override
  _PurchaseReturnInvoiceState createState() => _PurchaseReturnInvoiceState();
}

class _PurchaseReturnInvoiceState extends State<PurchaseReturnInvoice> {
  var paginatedList;
  TextEditingController returnInvoiceCodeController = TextEditingController();
  final GlobalKey<PurchasReturnInvoiceGrowableTableState> _myWidgetState = GlobalKey<PurchasReturnInvoiceGrowableTableState>();
  TextEditingController purchaseReturnOrderCodeController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController paymentCodeController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController purchaseInvoiceidController = TextEditingController();
  TextEditingController paymentmethodController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalCostController = TextEditingController();
  TextEditingController inventoryContoller = TextEditingController();
  TextEditingController vendoridContoller = TextEditingController();
  TextEditingController vendorTrnnumberController = TextEditingController();

  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  List<PurchaseOrder> result = [];
  int selectedVertical = 0;
  TextEditingController itemsearch = TextEditingController();
  int? veritiaclid = 0;
  bool updateCheck = false;
  List<Order> lines = [];

  late AutoScrollController recieveController;
  void initState() {
    context.read<VertiacalCubit>().getGeneralVertical();

    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  tableAssign(List<Order> table1) {
    print("ethito");
    lines = List.from(table1);
    setState(() {
      addition();
    });
  }
  addition() {
    print("enterd");
    print("+==" + lines.toString());
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    if(lines!.isNotEmpty)
      for (var i = 0; i < lines!.length; i++) {
        if (lines?[i].isInvoiced == true && lines?[i].updateCheck == false) {
          var unicost1= lines?[i].unitCost??0;
          var vatValue1= lines?[i].vat??0;
          var grands1= lines?[i].grandTotal??0;
          var actualValue1= lines?[i].actualCost??0;
          var discountValue1= lines?[i].discount??0;
          var focValue1= lines?[i].foc??0;
          var VatableValue1= lines?[i].vatableAmount??0;
          var excessTAxValue1= lines?[i].excessTax??0;

          unitcost = unitcost +unicost1;

          grands = grands + grands1;
          actualValue = actualValue + actualValue1;
          vatValue = vatValue + vatValue1;
          discountValue = discountValue + discountValue1;
          focValue = focValue + focValue1;

          VatableValue = VatableValue + VatableValue1;
          print("excessTaxvalue"+excessTAxValue.toString());
          excessTAxValue = excessTAxValue + excessTAxValue1;
        }
      }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    grandTotalCostController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();
    print("foc value"+focValue.toString());

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    // _value=false;
  }
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }

  clear(){
    setState(() {
      lines.clear();
      _myWidgetState.currentState?.lines.clear();
      print("_myWidgetState.currentState?.lines.length");
      print(_myWidgetState.currentState?.lines.length);





      purchaseReturnOrderCodeController.text = "";
      orderDateController.text =  "";
      paymentCodeController.text =  "";
      paymentCodeController.text =  "";
      paymentStatusController.text =  "";
      paymentmethodController.text ="";
      invoiceStatusController.text = "";
      discountController.text = "";
      focController.text =  "";
      unitCostController.text =  "";
      vatableAmountController.text =  "";
      excessTaxController.text = "";
      vatController.text = "";
      actualCostController.text = "";
      grandTotalCostController.text = "";
      noteController.text =  "";
      remarksController.clear();
      inventoryContoller.text =  "";
      vendoridContoller.text =  "";
      vendorTrnnumberController.text = "";
      returnInvoiceCodeController.clear();
      purchaseInvoiceidController.text =  "";
      orderStatusController.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InvoiceReadCubit(),
        ),
        BlocProvider(
          create: (context) => InvoicepostCubit(),
        ),


      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<InvoiceReadCubit, InvoiceReadState>(
            listener: (context, state) {
              print("state++++++++++++++++++++++++++++++++");
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (data) {
                    setState(() {
                      if (data.invoicedata!=null) {
                        data.invoicedata?.orderLiness != null
                            ? lines =List.from( data.invoicedata?.orderLiness ?? [])
                            : lines =List.from( []);
                        purchaseReturnOrderCodeController.text = data.invoicedata?.returnOrderCode ?? "";
                        orderDateController.text = data.invoicedata?.invoicedDate ?? "";
                        paymentCodeController.text = data.invoicedata?.payementCode ?? "";
                        paymentCodeController.text = data.invoicedata?.payementCode ?? "";
                        paymentStatusController.text = data.invoicedata?.paymentStatus ?? "";
                        paymentmethodController.text = data.invoicedata?.paymentMethod ?? "";
                        invoiceStatusController.text = data.invoicedata?.invoiceStatus ?? "";
                        discountController.text = data.invoicedata?.discount.toString() ?? "";
                        focController.text = data.invoicedata?.foc.toString() ?? "";
                        unitCostController.text = data.invoicedata?.unitCost.toString() ?? "";
                        vatableAmountController.text = data.invoicedata?.vatableAmount.toString() ?? "";
                        excessTaxController.text = data.invoicedata?.excessTax.toString() ?? "";
                        vatController.text = data.invoicedata?.vat.toString() ?? "";
                        actualCostController.text = data.invoicedata?.actualCost.toString() ?? "";
                        grandTotalCostController.text = data.invoicedata?.grandTotal.toString() ?? "";
                        noteController.text = data.invoicedata?.notes.toString() ?? "";
                        remarksController.text = data.invoicedata?.remarks.toString() ?? "";
                        inventoryContoller.text = data.invoicedata?.inventoryId.toString() ?? "";
                        vendoridContoller.text = data.invoicedata?.vendorId.toString() ?? "";
                        vendorTrnnumberController.text = data.invoicedata?.vendorTrnNumber.toString() ?? "";
                        purchaseInvoiceidController.text = data.invoicedata?.purchaseInvoiceId.toString() ?? "";
                        returnInvoiceCodeController.text = data.invoicedata?.returnOrderCode.toString() ?? "";
                        orderStatusController.text=data.invoicedata?.returnOrderStatus??"";
                      } else {
                        data?.orderLiness != null
                            ? lines =List.from( data?.orderLiness ?? [])
                            : lines = List.from([]);
                        purchaseReturnOrderCodeController.text = data.returnOrderCode ?? "";
                        unitCostController.text =
                            data.unitCost.toString() ?? "";
                        excessTaxController.text =
                            data.excessTax.toString() ?? "";
                        actualCostController.text =
                            data.actualCost.toString() ?? "";
                        vatController.text = data.vat.toString() ?? "";
                        grandTotalCostController.text =
                            data.grandTotal.toString() ?? "";
                        vatableAmountController.text =
                            data.vatableAmount.toString() ?? "";
                        focController.text = data.foc.toString() ?? "";
                        discountController.text = data.discount.toString() ?? "";
                        inventoryContoller.text = data.inventoryId.toString() ?? "";
                        vendoridContoller.text = data.vendorCode.toString() ?? "";
                        vendorTrnnumberController.text = data.vendorTrnNumber.toString() ?? "";
                        purchaseInvoiceidController.text = data.purchaseInvoiceId.toString() ?? "";
                        returnInvoiceCodeController.text = data.returnOrderCode.toString() ?? "";
                        remarksController.text = data.remarks.toString() ?? "";
                        noteController.text = data.notes.toString() ?? "";
                        orderStatusController.text=data.returnOrderStatus??"";
                        setState(() {

                        });
                      }

                    });
                  });
            },
          ),
          BlocListener<InvoicepostCubit, InvoicepostState>(
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
                      context
                          .read<VertiacalCubit>()
                          .getGeneralVertical();


                      context.read<InvoiceReadCubit>().getInvoiceRead(veritiaclid!);
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
        ],
        child: BlocConsumer<VertiacalCubit, VertiacalState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (list) {
                  print("aaaaayyyiram" + list.data.toString());
                  paginatedList=list;

                  result = list.data;
                  setState(() {
                    if (result.isNotEmpty) {
                      veritiaclid = result[0].id;
                      Variable.verticalid = result[0].id;
                      context.read<InvoiceReadCubit>().getInvoiceRead(veritiaclid!);
                    } else {
                      print("common");
                      // select=true;
                      setState(() {});
                    }


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
                      PurchaseVerticalList(
                        selectedVertical: selectedVertical,
                        itemsearch: itemsearch,
                        ontap: (int index) {
                          setState(() {
                            updateCheck=false;
                            selectedVertical = index;
                            clear();
                            veritiaclid = result[index].id;
                            context.read<InvoiceReadCubit>().getInvoiceRead(veritiaclid!);
                            setState(() {});
                          });
                        },
                        result: result,
                        child:     tablePagination(() => context.read<VertiacalCubit>().refresh(),
                          back: paginatedList?.previousUrl == null
                              ? null
                              : () {
                            context.read<VertiacalCubit>().previuosslotSectionPageList();
                          },
                          next:paginatedList?.nextPageUrl == null
                              ? null
                              : () {
                            context.read<VertiacalCubit>().nextslotSectionPageList();
                          },
                        ),
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    TextButtonLarge(
                                      marginCheck: true,
                                      text: "PREVIEW",
                                      onPress: () async {
                                        InventoryListModel model=InventoryListModel();


                                        UserPreferences userPref = UserPreferences();
                                        await userPref.getInventoryList().then((user) {
                                          print("entereeeeeeeeeeeeeeeeeeed");

                                          if (user.isInventoryExist == true) {
                                            model=user;

                                            // prefs.setString('token', user?.token ?? "");




                                          } else {

                                          }
                                        });

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              PurchaseReturnInvoicePrintScreen(
                                                table:lines,
                                                pageName: "INVOICE SCREEN",
                                                orderCode: purchaseInvoiceidController.text??"",
                                                vat: double.tryParse( vatController.text),
                                                actualCost:double.tryParse( actualCostController.text),
                                                variableAmount:double.tryParse( vatableAmountController.text) ,
                                                discount:double.tryParse( discountController.text) ,
                                                unitCost:double.tryParse( unitCostController.text) ,
                                                excisetax:double.tryParse( excessTaxController.text) ,
                                                model:model,
                                                // remarks: remarks.text ,
                                              )
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),

                                InvoiceStableTable(
                                  returnInvoiceCode:
                                  returnInvoiceCodeController,
                                  excessTax: excessTaxController,
                                  orderDate: orderDateController,
                                  vat: vatController,
                                  paymentCode: paymentCodeController,
                                  actualCost: actualCostController,
                                  paymentStatus: paymentStatusController,
                                  grandToatl: grandTotalCostController,
                                  paymentMethod: paymentmethodController,
                                  note: noteController,
                                  orderStatus: orderStatusController,
                                  remarks: remarksController,
                                  invoiceStatus: invoiceStatusController,
                                  discount: discountController,
                                  foc: focController,
                                  unitCost: unitCostController,
                                  vatableAmount: vatableAmountController,
                                  purchaseReturnOrderCode:
                                  purchaseReturnOrderCodeController,
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
                                PurchasReturnInvoiceGrowableTable(
                                    updateCheck: updateCheckFucction,
                                    updation: tableAssign,
                                    key:_myWidgetState,
                                ),

                                Container(
                                  color: Colors.white,
                                  height: 55,
                                ),
                                SaveUpdateResponsiveButton(
                                  label:"SAVE" ,
                                  saveFunction: (){
                                    print("apppa"+lines.toString());
                                    if(updateCheck)  context.showSnackBarError("please click the update button");
                                    else{
                                      List<Order>? result;
                                      bool confirmationCheck=false;
                                      for(var i=0;i<lines.length;i++){
                                        if(lines[i].isInvoiced==false){
                                          confirmationCheck=true;
                                        }
                                        result = lines.where((o) => o.isInvoiced == true).toList();


                                      }
                                      if(confirmationCheck){
                                        showDailogPopUp(
                                            context,
                                            LogoutPopup(
                                              message: "Some of lines are not confirmed. Do you want to continue?",
                                              // table:table,
                                              // // clear:clear(),
                                              // verticalId:veritiaclid ,
                                              onPressed:(){
                                                PurchaseReturnInvoicePostModel model =
                                                PurchaseReturnInvoicePostModel(
                                                    purchaseInvoiceId:purchaseInvoiceidController?.text??null,
                                                    returnOrderCode:purchaseReturnOrderCodeController?.text??null,
                                                    inventoryId: inventoryContoller?.text??null,
                                                    invoicedBy: Variable.created_by,
                                                    venderId: vendoridContoller?.text??null,
                                                    notes:noteController?.text??null,

                                                    remarks: remarksController?.text??"",
                                                    unitCost: double.tryParse( unitCostController?.text??""),
                                                    foc: double.tryParse( focController?.text??""),
                                                    discount: double.tryParse( discountController?.text??""),
                                                    grandTotal: double.tryParse( grandTotalCostController?.text??""),
                                                    vatableAmount: double.tryParse( vatableAmountController?.text??""),
                                                    excessTax: double.tryParse( excessTaxController?.text??""),
                                                    actualCost:  double.tryParse( actualCostController?.text??""),
                                                    vat:  double.tryParse( vatController?.text??""),
                                                    vendorTrnNumber: vendorTrnnumberController?.text??null,
                                                    paymentCode: paymentCodeController?.text??null,
                                                    paymentMethod: paymentmethodController?.text??null,
                                                    paymentStatus:paymentStatusController?.text??null ,

                                                    lines: result

                                                );
                                                print("model"+model.toString());
                                                context.read<InvoicepostCubit>().invoicePost(model);
                                                Navigator.pop(context);

                                              },


                                            ));

                                      }
                                      else {
                                        PurchaseReturnInvoicePostModel model =
                                        PurchaseReturnInvoicePostModel(
                                            purchaseInvoiceId: purchaseInvoiceidController
                                                .text ?? "",
                                            returnOrderCode: purchaseReturnOrderCodeController
                                                ?.text ?? "",
                                            inventoryId: inventoryContoller
                                                ?.text ?? "",
                                            invoicedBy: Variable.created_by,
                                            venderId: vendoridContoller?.text ??
                                                "",
                                            notes: noteController?.text ?? "",
                                            remarks: remarksController?.text ??
                                                "",
                                            unitCost: double.tryParse(
                                                unitCostController?.text ?? ""),
                                            foc: double.tryParse(
                                                focController?.text ?? ""),
                                            discount: double.tryParse(
                                                discountController?.text ?? ""),
                                            grandTotal: double.tryParse(
                                                grandTotalCostController
                                                    ?.text ?? ""),
                                            vatableAmount: double.tryParse(
                                                vatableAmountController?.text ??
                                                    ""),
                                            excessTax: double.tryParse(
                                                excessTaxController?.text ??
                                                    ""),
                                            actualCost: double.tryParse(
                                                actualCostController?.text ??
                                                    ""),
                                            vat: double.tryParse(
                                                vatController?.text ?? ""),
                                            vendorTrnNumber: vendorTrnnumberController
                                                ?.text ?? "",
                                            paymentCode: paymentCodeController?.text??null,
                                            paymentMethod: paymentmethodController?.text??null,
                                            paymentStatus:paymentStatusController?.text??null ,
                                            lines: result

                                        );
                                        print("model"+model.toString());
                                        context.read<InvoicepostCubit>()
                                            .invoicePost(model);
                                      } }

                                  },
                                  discardFunction: (){

                                  },

                                )
                                ,

                              ],
                            ),
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
      ),
    );
  }
}


