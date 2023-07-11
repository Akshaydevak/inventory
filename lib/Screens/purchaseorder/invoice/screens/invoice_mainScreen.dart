import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventory_read_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventorypost_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/inventory_read_model.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchaseorder/invoice/screens/purchase_order_invoice_growable.dart';
import 'package:inventory/Screens/purchaseorder/invoice/screens/purchase_order_stabletable.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/paymentpost/payment_sale_post_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/sales/invoice/cubits/payment_suucess_post/payment_transaction_success_post_cubit.dart';
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
import 'package:pdf/pdf.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:printing/printing.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:pdf/widgets.dart' as pw;


class InventoryInvoiceScreen extends StatefulWidget {
  @override
  _InventoryInvoiceScreenState createState() => _InventoryInvoiceScreenState();
}

class _InventoryInvoiceScreenState extends State<InventoryInvoiceScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController invoiceCodeController = TextEditingController();
  TextEditingController purchaseCodeController = TextEditingController();
  TextEditingController orderedDateController = TextEditingController();
  TextEditingController paymentCodeController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController paymentMethodController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController variableAmountController = TextEditingController();
  TextEditingController exciseTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  final GlobalKey< PurchaseOrderInvoiceGrowableTableState> _myWidgetState = GlobalKey< PurchaseOrderInvoiceGrowableTableState>();
  List<PurchaseOrder>result=[];
   var paginatedList;
   bool isPaymentStatusSuccessCall=false;
  InventoryRead readObject=InventoryRead();
  int selectedVertical=0;
  String inventoryId="";
  int? invoiceId;
  int? veritiaclid=0;
  bool select=false;
  bool updateCheck=false;
  List<Lines> additionalVariants = [];
  TextEditingController itemsearch=TextEditingController();
  late AutoScrollController recieveController;
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }
  tableAssign(List<Lines> table1) {
    print("ethito");
    additionalVariants = table1;
    setState(() {
      addition();
    });
  }
  addition() {
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    if(additionalVariants.isNotEmpty)
      for (var i = 0; i < additionalVariants.length; i++) {
        if (additionalVariants[i].isInvoiced == true) {
          var unicost1= additionalVariants[i].unitCost??0;
          var vatValue1= additionalVariants[i].vat??0;
          var grands1= additionalVariants[i].grandTotal??0;
          var actualValue1= additionalVariants[i].actualCost??0;
          var discountValue1= additionalVariants[i].discount??0;
          var focValue1= additionalVariants[i].foc??0;
          var VatableValue1= additionalVariants[i].variableAmount??0;
          var excessTAxValue1= additionalVariants[i].excessTax??0;
          unitcost = unitcost +unicost1;
          grands = grands + grands1;
          actualValue = actualValue + actualValue1;
          vatValue = vatValue + vatValue1;
          discountValue = discountValue + discountValue1;
          focValue = focValue + focValue1;
          VatableValue = VatableValue + VatableValue1;
          excessTAxValue = excessTAxValue + excessTAxValue1;
        }
      }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    grandTotalController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();
    print("foc value"+focValue.toString());

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    exciseTaxController.text = excessTAxValue.toString();
    variableAmountController.text = VatableValue.toString();
    // _value=false;
  }

  clear(){
    actualCostController.clear();
    discountController.clear();
    exciseTaxController.clear();
    focController.clear();
    isPaymentStatusSuccessCall=false;
    invoiceId=0;
    grandTotalController.clear();
    invoiceCodeController.clear();
     invoiceStatusController.clear();
     noteController.clear();
    orderedDateController.clear();
     orderStatusController.clear();
     paymentCodeController.clear();
     paymentMethodController.clear();
     paymentStatusController.clear();
     purchaseCodeController.clear();
   remarksController.clear();
    unitCostController.clear();
   variableAmountController.clear();
 vatController.clear();
    additionalVariants.clear();
  }



  @override
  void initState() {
    context.read<InventorysearchCubit>().getInventorySearch("code",tab:"II");

    int verticalScrollIndex = 0;
    recieveController = AutoScrollController(
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InventorysearchCubit()..getInventorySearch("code",tab:"II"),
          ),
          BlocProvider(
            create: (context) => InventoryReadCubit(),

          ),
          BlocProvider(
            create: (context) => InventorypostCubit(),
          ),



        ],
        child: Builder(
            builder: (context) {
              return MultiBlocListener(
                listeners: [
                  BlocListener<PaymentSalePostCubit, PaymentSalePostState>(
                    listener: (context, state) {
                      state.maybeWhen(orElse: () {
                        // context.
                        context.showSnackBarError("Loading");
                      }, error: () {
                        showDailogPopUp(
                            context,
                            FailiurePopup(
                              content: Variable.errorMessege,
                            ));

                      }, success: (data) {
                        if (data.data1) {
                         if( isPaymentStatusSuccessCall)context.read<PaymentTransactionSuccessPostCubit>().postPaymentTransactionSuccess(invoiceId,Variable.methodCode, data.data2,1);
                         else
                        showDailogPopUp(
                            context,
                            SuccessPopup(
                              content: "success",
                              // table:table,
                            ));
                        }
                        else {
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
                    },
                  ),
                  BlocListener<PaymentTransactionSuccessPostCubit, PaymentTransactionSuccessPostState>(
                    listener: (context, state) {
                      state.maybeWhen(orElse: () {
                        // context.
                        context.showSnackBarError("Loading");
                      }, error: () {
                        showDailogPopUp(
                            context,
                            FailiurePopup(
                              content: Variable.errorMessege,
                              // table:table,
                            ));


                        // context.showSnackBarError(Variable.errorMessege);
                      }, success: (data) {
                        if (data.data1) {
                          showDailogPopUp(
                              context,
                              SuccessPopup(
                                content: data.data2.toString(),
                                // table:table,
                              ));




                        }
                        else {
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
                    },
                  ),
                  BlocListener<InventoryReadCubit, InventoryReadState>(
                    listener: (context, state) {

                      state.maybeWhen(
                          orElse: () {},
                          error: () {
                            print("error");
                          },
                          success: (data) {

                            setState(() {

                              readObject=data;
                              if(data.invoicedata!=null){

                                setState(() {
                                  invoiceId=data.invoicedata?.id;
                                  purchaseCodeController.text=data.invoicedata?.orderCode??"";
                                  inventoryId=data.invoicedata?.inventoryId??"";
                                  invoiceCodeController.text=data.invoicedata?.invoicedCode??"";
                                  invoiceStatusController.text=data.invoicedata?.invoiceStatus??"";
                                  noteController.text=data.invoicedata?.notes??"";
                                  remarksController.text=data.invoicedata?.remarks??"";
                                  paymentMethodController.text=data.invoicedata?.paymentMethod??"";
                                  unitCostController.text=data.invoicedata?.unitCost.toString()??"";
                                  focController.text=data.invoicedata?.foc.toString()??"";
                                  discountController.text=data.invoicedata?.discount.toString()??"";
                                  grandTotalController.text=data.invoicedata?.grandtotal.toString()??"";
                                  variableAmountController.text=data.invoicedata?.vatableAmount.toString()??"";
                                  exciseTaxController.text=data.invoicedata?.excessTax.toString()??"";
                                  actualCostController.text=data.invoicedata?.actualCost.toString()??"";
                                  vatController.text=data.invoicedata?.vat.toString()??"";
                                  vatController.text=data.invoicedata?.vat.toString()??"";
                                  paymentStatusController.text=data.invoicedata?.payementStatus??"";
                                  paymentCodeController.text=data.invoicedata?.paymentCode??"";
                                  orderStatusController.text=data.invoicedata?.orderStatus??"";
                                  data.invoicedata?.invoiceLines != null
                                      ? additionalVariants = List.from(data.invoicedata?.invoiceLines ?? [])
                                      : additionalVariants = [];
                                });
                              }
                              else{
                                print("entered 2ndst position");
                                purchaseCodeController.text=data.orderCode??"";



                                inventoryId=data.inventoryId??"";
                                orderedDateController=TextEditingController(text:data.orderDate==null?"": DateFormat('dd-MM-yyyy').format(DateTime.parse(data.orderDate??"")));
                                paymentCodeController.text=data.paymentCode??"";
                                paymentStatusController.text=data.payementStatus??"";
                                orderStatusController.text=data.orderStatus??"";
                                unitCostController.text=data.calculationData?.unitCost.toString()??"";
                                discountController.text=data.calculationData?.discount.toString()??"";
                                variableAmountController.text=data.calculationData?.vatableAmount.toString()??"";
                                variableAmountController.text=data.calculationData?.vatableAmount.toString()??"";
                                grandTotalController.text=data.calculationData?.grandtotal.toString()??"";
                                focController.text=data.calculationData?.foc.toString()??"";
                                vatController.text=data.calculationData?.vat.toString()??"";
                                actualCostController.text=data.calculationData?.actualCost.toString()??"";
                                unitCostController.text=data.calculationData?.unitCost.toString()??"";
                                exciseTaxController.text=data.calculationData?.excessTax.toString()??"";
                                data.lines != null
                                    ? additionalVariants = List.from(data.lines ?? [])
                                    : additionalVariants =List.from( []);
                                setState(() {

                                });






                              }



                            });
                          });
                    },
                  ),
                  BlocListener<InventorysearchCubit, InventorysearchState>(
                    listener: (context, state) {
                      state.maybeWhen(orElse:(){},
                          error: (){
                            print("error");
                          },
                          success: (list){
                            print("listtt"+list.toString());
                            result=list.data;setState(() {
                              if(result.isNotEmpty){
                                Variable.verticalid=result[0].id;
                                veritiaclid=result[0].id;
                                selectedVertical=0;
                                context.read<InventoryReadCubit>().getInventoryRead(veritiaclid!);
                                print("Variable.verticalid"+Variable.verticalid.toString());
                                setState(() {

                                });
                              }
                            });

                          }
                      );
                    },
                  ),
                  BlocListener<InventorypostCubit, InventorypostState>(
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
                          // context.read<InventorysearchCubit>().getInventorySearch("code",tab:"II");
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
                child: IntrinsicHeight(
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VerticalList(selectedVertical: selectedVertical,
                          tab:"II",
                          itemsearch: itemsearch,ontap: (int index){
                            setState(() {
                              print("taped");
                              select=false;
                              clear();
                              _myWidgetState.currentState?.tableClear();
                              selectedVertical=index;

                              veritiaclid = result[index].id;
                              context
                                  .read<InventoryReadCubit>().getInventoryRead(veritiaclid!);
                            });
                          },result: result,
                          child:     tablePagination(() => context.read<InventorysearchCubit>().refresh(),
                            back: paginatedList?.previousUrl == null
                                ? null
                                : () {context.read<InventorysearchCubit>().previuosslotSectionPageList();
                            },
                            next:paginatedList?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context.read<InventorysearchCubit>().nextslotSectionPageList("");
                            },
                          ),
                        ),
                        Expanded(child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  TextButtonLarge(
                                    marginCheck: true,
                                    clr: Colors.green,
                                    onPress: () {
                                      if(readObject.invoicedata!=null){
                                        showDailogPopUp(
                                          context,
                                          PurchaseReturnInvoicePaymentPopUp(type: '"',
                                            customerCode: Variable.created_by,
                                            customerName: Variable.username,
                                            orderId: veritiaclid.toString(),
                                            status: paymentStatusController.text,
                                            totalPrice: double.tryParse(grandTotalController.text)??0,
                                            transactionCode: "",
                                            paymentCompletedFunc:(){
                                              setState(() {

                                                isPaymentStatusSuccessCall=true;
                                              });
                                              PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                                  contact: Variable.mobileNumber,
                                                  customerCode: Variable.created_by,
                                                  customerName: Variable.username,
                                                  methodCode: Variable.methodCode,
                                                  orderId:  veritiaclid.toString(),
                                                  status: "payment_completed",
                                                  totalAmount: double.tryParse(grandTotalController.text)??0,
                                                  tranSactionCode: "");

                                              print(model);
                                              context
                                                  .read<PaymentSalePostCubit>()
                                                  .postSaleOrderPaymentPost(model);
                                            } ,
                                            transactionPendingFunc: (){
                                              setState(() {

                                                isPaymentStatusSuccessCall=false;
                                              });
                                              PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                                  contact: Variable.mobileNumber,
                                                  customerCode: Variable.created_by,
                                                  customerName: Variable.username,
                                                  methodCode: Variable.methodCode,
                                                  orderId:  veritiaclid.toString(),
                                                  status: "payment_pending",
                                                  totalAmount: double.tryParse(grandTotalController.text)??0,
                                                  tranSactionCode: "");
                                              print(model);
                                              context
                                                  .read<PaymentSalePostCubit>()
                                                  .postSaleOrderPaymentPost(model);
                                            },

                                          ),
                                        );
                                      }
                                      else{
                                        context.showSnackBarError("The Order Does Not Invoiced");
                                      }

                                    },
                                    text: "PAYMENT",                                  ),


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

                                        } else {

                                        }
                                      });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>
                                            PrintScreen(
                                              note: noteController.text,
                                              select: select,
                                              orderDate: orderedDateController.text,
                                              table:additionalVariants,
                                              orderCode: purchaseCodeController.text,
                                              vat: double.tryParse( vatController.text),
                                              actualCost:double.tryParse( actualCostController.text),
                                              variableAmount:double.tryParse( variableAmountController.text) ,
                                              discount:double.tryParse( discountController.text) ,
                                              unitCost:double.tryParse( unitCostController.text) ,
                                              excisetax:double.tryParse( exciseTaxController.text) ,
                                              remarks: remarksController.text ,
                                              model: model,
                                              pageName: "INVOICE",
                                            )),
                                      );


                                    },
                                  ),
                                ],
                              ),

                              PurchaseOrderStabletable(
                                actualCostController: actualCostController,
                                discountController: discountController,
                                exciseTaxController: exciseTaxController,
                                focController: focController,
                                grandTotalController: grandTotalController,
                                invoiceCodeController: invoiceCodeController,
                                invoiceStatusController: invoiceStatusController,
                                noteController: noteController,
                                orderedDateController: orderedDateController,
                                orderStatusController: orderStatusController,
                                paymentCodeController: paymentCodeController,
                                paymentMethodController: paymentMethodController,
                                paymentStatusController: paymentStatusController,
                                purchaseCodeController: purchaseCodeController,
                                remarksController: remarksController,
                                unitCostController: unitCostController,
                                variableAmountController: variableAmountController,
                                vatController: vatController,
                              ),
                              SizedBox(height: height*.1,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextWidget(text: "Receiving lines"),
                                ],
                              ),
                              // Divider(color: Colors.grey,thickness: 1,),
                              SizedBox(height: height*.01,),
                              // Divider(color: Colors.grey,thickness: 1,),
                              PurchaseOrderInvoiceGrowableTable(
                                table:additionalVariants,
                                updateCheck: updateCheckFucction,
                                key: _myWidgetState,
                                updation: tableAssign,
                              ),
                              // CustomScrollBar(
                              //     controller: recieveController,
                              //
                              //     childs:Container(
                              //         color: Colors.white,
                              //         alignment: Alignment.topRight,
                              //
                              //         child:SingleChildScrollView(
                              //           controller: recieveController,
                              //           physics: ScrollPhysics(),
                              //           scrollDirection: Axis.horizontal,
                              //
                              //           child:
                              //           Column(
                              //             crossAxisAlignment: CrossAxisAlignment.start,
                              //             children: [
                              //               SingleChildScrollView(
                              //                 child: Container(
                              //                   width: 2200,
                              //                   // padding: EdgeInsets.all(10),
                              //                   child:customTable(
                              //
                              //                     tableWidth: .5,
                              //                     childrens: [
                              //                       TableRow(
                              //
                              //                           children: [
                              //                             tableHeadtext(
                              //                               'Sl.No',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Receiving Line Id',
                              //                               size: 13,
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Variant Id',
                              //                               size: 13,
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Variant Name',
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //
                              //                             // tableHeadtext('description', size: 10, color: null),
                              //                             tableHeadtext(
                              //                               'Barcode',
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //
                              //
                              //                             tableHeadtext(
                              //                               'Purchase UOM',
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Requested Qty',
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //
                              //
                              //                             tableHeadtext(
                              //                               'Is Received',
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Unit Cost',
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Exccess Tax',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Discount',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'FOC',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Vatable Amount',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //
                              //                             tableHeadtext(
                              //                               'VAT',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Actual Cost',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Grand Total',
                              //                               size: 13,
                              //                               center: true,
                              //                               padding: EdgeInsets.only(bottom:height*.0198),
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Is Invoiced',
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //                             tableHeadtext(
                              //                               'Is Free',
                              //                               size: 13,
                              //                               // color: Palette.containerDarknew,
                              //                               // textColor: Palette.white
                              //                             ),
                              //
                              //                             // if (widget.onAddNew) textPadding(''),
                              //                           ]),
                              //
                              //                       if(additionalVariants.isEmpty)...[
                              //                         TableRow(
                              //                           decoration: BoxDecoration(
                              //                               color: Pellet.tableRowColor,
                              //                               shape: BoxShape.rectangle,
                              //                               border:  Border(
                              //                                   left: BorderSide(
                              //
                              //                                       color: Color(0xff3E4F5B).withOpacity(.1),
                              //                                       width: .4,
                              //                                       style: BorderStyle.solid),
                              //                                   bottom: BorderSide(
                              //
                              //                                       color:   Color(0xff3E4F5B).withOpacity(.1),
                              //                                       style: BorderStyle.solid),
                              //                                   right: BorderSide(
                              //                                       color:   Color(0xff3E4F5B).withOpacity(.1),
                              //                                       width: .4,
                              //
                              //                                       style: BorderStyle.solid))),
                              //
                              //                           children: [
                              //
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             Container(height: 48,),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                             textPadding(""),
                              //                           ],
                              //                         )
                              //
                              //
                              //                       ],
                              //                       if (additionalVariants != null)...[
                              //                         for(var i=0;i<additionalVariants.length;i++)
                              //                           TableRow(
                              //                               decoration: BoxDecoration(
                              //                                   color: Pellet.tableRowColor,
                              //                                   shape: BoxShape.rectangle,
                              //                                   border:  Border(
                              //                                       left: BorderSide(
                              //
                              //                                           color: Color(0xff3E4F5B).withOpacity(.1),
                              //                                           width: .4,
                              //                                           style: BorderStyle.solid),
                              //                                       bottom: BorderSide(
                              //
                              //                                           color:   Color(0xff3E4F5B).withOpacity(.1),
                              //                                           style: BorderStyle.solid),
                              //                                       right: BorderSide(
                              //                                           color:   Color(0xff3E4F5B).withOpacity(.1),
                              //                                           width: .4,
                              //
                              //                                           style: BorderStyle.solid))),
                              //                               children: [
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding((i + 1).toString(),
                              //                                       fontSize: 12,
                              //                                       padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500),
                              //
                              //                                 ),
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].receiveLineCode .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].variantId ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].variantName ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500),
                              //                                 ),
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].barcode ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500),
                              //                                 ),
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].purchaseUom.toString() ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].totalQty.toString() ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: CheckedBoxs(
                              //                                     valueChanger: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                              //                                     onSelection: (bool? value) {
                              //                                       // bool? isRecieved = additionalVariants[i].isReceived;
                              //                                       // setState(() {
                              //                                       //   isRecieved = !isRecieved!;
                              //                                       //   additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                              //                                       //   print(additionalVariants);
                              //                                       // });
                              //                                     },
                              //                                   ),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].unitCost .toString()?? "", fontSize: 12,
                              //
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].excessTax .toString()?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,
                              //                                       alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].discount .toString()?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,
                              //                                       alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].foc .toString()?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,
                              //                                       alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].variableAmount .toString()?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                              //                                 ),
                              //
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].vat.toString() ?? "",
                              //                                       fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                              //                                 ),
                              //
                              //
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(
                              //                                       additionalVariants[i].actualCost.toString() ?? "",fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,
                              //                                       alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: textPadding(additionalVariants[i].grandTotal.toString() ?? "", fontSize: 12,
                              //                                       // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                              //                                       fontWeight: FontWeight.w500,
                              //                                       alighnment: Alignment.topRight),
                              //                                 ),
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: CheckedBoxs(
                              //                                     valueChanger: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                              //                                     onSelection: (bool? value) {
                              //                                       bool? isInvoiced = additionalVariants[i].isInvoiced??false;
                              //                                       setState(() {
                              //                                         isInvoiced = !isInvoiced!;
                              //                                         additionalVariants[i] = additionalVariants[i].copyWith(isInvoiced: isInvoiced);
                              //                                         addition();
                              //
                              //                                       });
                              //                                     },
                              //                                   ),
                              //                                 ),
                              //
                              //
                              //                                 TableCell(
                              //                                   verticalAlignment: TableCellVerticalAlignment.middle,
                              //                                   child: CheckedBoxs(
                              //                                     valueChanger: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                              //                                     onSelection: (bool? value) {
                              //                                       setState(() {});
                              //                                     },
                              //                                   ),
                              //                                 ),
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //
                              //                               ]
                              //                           ),
                              //                       ]
                              //
                              //
                              //                     ],
                              //                     widths: {
                              //                       0: FlexColumnWidth(2),
                              //                       1: FlexColumnWidth(4),
                              //                       2: FlexColumnWidth(4),
                              //                       3: FlexColumnWidth(5),
                              //                       4: FlexColumnWidth(3),
                              //                       5: FlexColumnWidth(3),
                              //                       6: FlexColumnWidth(3),
                              //                       7: FlexColumnWidth(3),
                              //                       8: FlexColumnWidth(3),
                              //                       9: FlexColumnWidth(3),
                              //                       10: FlexColumnWidth(3),
                              //                       11: FlexColumnWidth(3),
                              //                       12: FlexColumnWidth(3),
                              //                       13: FlexColumnWidth(3),
                              //                       14: FlexColumnWidth(3),
                              //                       15: FlexColumnWidth(3),
                              //                       16: FlexColumnWidth(3),
                              //                       17: FlexColumnWidth(3),
                              //                       18: FlexColumnWidth(2),
                              //                       19: FlexColumnWidth(2),
                              //                       20: FlexColumnWidth(2),
                              //                       21: FlexColumnWidth(2.4),
                              //
                              //                     },
                              //
                              //                   ) ,
                              //                 ),
                              //               ),
                              //               SizedBox(height: 20,)
                              //               ,
                              //
                              //             ],
                              //           )
                              //           ,
                              //
                              //         )
                              //     )
                              // ),
                              // ScrollableTable(),
                              SizedBox(height: 20,),
                              SaveUpdateResponsiveButton(
                                  isDelete:true,
                                saveFunction: (){bool confirmationCheck=false;
                                  for(var i=0;i<additionalVariants.length;i++){
                                    if(additionalVariants[i].isInvoiced==false){
                                      confirmationCheck=true;
                                    }



                                  }
                                  // result = additionalVariants.where((o) => o.isInvoiced == true).toList();
                                  if(confirmationCheck){
                                  showDailogPopUp(
                                  context,
                                  LogoutPopup(
                                  message: "Some of lines are not confirmed. Do you want to continue?",
                                  // table:table,
                                  // // clear:clear(),
                                  // verticalId:veritiaclid ,
                                  onPressed:(){
                                    InventoryPostModel model =
                                    InventoryPostModel(
                                      purchaseOrderCode: purchaseCodeController.text??"",
                                      inventoryId: inventoryId??"",
                                      // invoicedBy: ,
                                      notes: noteController.text,
                                      remarks: remarksController.text,
                                      unitCost:double.tryParse( unitCostController.text),
                                      foc:double.tryParse( focController.text),
                                      discount:double.tryParse( discountController.text),
                                      grandtotal:double.tryParse( grandTotalController.text),
                                      vatableAmount:double.tryParse( variableAmountController.text),
                                      excessTax:double.tryParse( exciseTaxController.text),
                                      actualCost:double.tryParse( actualCostController.text),
                                      vat:double.tryParse( vatController.text),
                                      invoicedBy: Variable.created_by,
                                      invoiceLines: additionalVariants??[],
 // orderLines: table,
                                    );


                                    print("sssssssssssssssssss"+model.toString());
                                    context.read<InventorypostCubit>().postInventory(model);
                                    Navigator.pop(context);

                                  },


                                  ));

                                  }
                                  else {
                                    print("additionalvariants" +
                                        additionalVariants.toString());
                                    InventoryPostModel model =
                                    InventoryPostModel(
                                      purchaseOrderCode: purchaseCodeController
                                          .text ?? "",
                                      inventoryId: inventoryId ?? "",
                                      // invoicedBy: ,
                                      notes: noteController.text,
                                      remarks: remarksController.text,
                                      unitCost: double.tryParse(
                                          unitCostController.text),
                                      foc: double.tryParse(focController.text),
                                      discount: double.tryParse(
                                          discountController.text),
                                      grandtotal: double.tryParse(
                                          grandTotalController.text),
                                      vatableAmount: double.tryParse(
                                          variableAmountController.text),
                                      excessTax: double.tryParse(
                                          exciseTaxController.text),
                                      actualCost: double.tryParse(
                                          actualCostController.text),
                                      vat: double.tryParse(vatController.text),
                                      invoicedBy: Variable.created_by,
                                      invoiceLines: additionalVariants ?? [],


                                      // orderLines: table,
                                    );


                                    print("sssssssssssssssssss" +
                                        model.toString());
                                    context.read<InventorypostCubit>()
                                        .postInventory(model);
                                  }  },
                                discardFunction: (){
                                },
                                label: "SAVE",
                              ),
                            ],
                          ),
                        )),
                      ],
                    )

                ),
              );
            }
        ),
      ),
    );
  }
}
