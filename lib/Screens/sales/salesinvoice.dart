import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/paymentpost/payment_sale_post_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/sales/invoice/cubits/invoicepost/invoicepost_cubit.dart';
import 'package:inventory/Screens/sales/invoice/cubits/payment_suucess_post/payment_transaction_success_post_cubit.dart';

import 'package:inventory/Screens/sales/invoice/cubits/read/invoiceread_cubit.dart';
import 'package:inventory/Screens/sales/invoice/pages/sales_invoice_growable.dart';
import 'package:inventory/Screens/sales/invoice/pages/sales_invoice_stable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../commonWidget/verticalList.dart';
import '../../core/uttils/variable.dart';
import '../../model/purchaseorder.dart';
import '../../printScreen.dart';
import '../../widgets/customtable.dart';
import 'general/cubit/generalread/salesgeneralread_cubit.dart';
import 'general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'invoice/model/invoice_read.dart';
import 'invoice/model/invoicepostmodel.dart';

class SalesInvoiceScreen extends StatefulWidget {
  @override
  _SalesInvoiceScreenState createState() => _SalesInvoiceScreenState();
}

class _SalesInvoiceScreenState extends State<SalesInvoiceScreen> {
  var paginatedList;
  TextEditingController invoiceCodeController=TextEditingController();
  TextEditingController invoiceDateController=TextEditingController();
  TextEditingController paymentIdController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController paymentMethodController=TextEditingController();
  TextEditingController customerIdController=TextEditingController();
  TextEditingController trnController=TextEditingController();
  TextEditingController orderStatusController=TextEditingController();
  TextEditingController invoiceStatusController=TextEditingController();
  TextEditingController assignToController=TextEditingController();
  TextEditingController noteController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController discountController=TextEditingController();
  TextEditingController exciseTaxController=TextEditingController();
  TextEditingController taxableController=TextEditingController();
  TextEditingController vatController=TextEditingController();
  TextEditingController sellingPriceController=TextEditingController();
  TextEditingController totalPricePriceController=TextEditingController();
  TextEditingController inventoryId=TextEditingController();
  int? veritiaclid=0;
  bool updateCheck=false;
  List<salesOrderTypeModel> result = [];
  int selectedVertical=0;
  bool isPaymentStatusSuccessCall=false;
  SalesReturnInvoiceReadModel readInvoiceObject=SalesReturnInvoiceReadModel();
  List<OrderLinesInvoice>table=List.from([]);
  TextEditingController itemsearch = TextEditingController();
  tableAssign(List<OrderLinesInvoice> table1) {
    print("ethito");
    table = List.from(table1);
    setState(() {
      addition();
    });
  }
  final GlobalKey< SalesInvoiceGrowableTableState> _myWidgetState = GlobalKey< SalesInvoiceGrowableTableState>();
  clear(){
     totalPricePriceController.clear();
    sellingPriceController.clear();
    paymentStatusController.clear();
     invoiceStatusController.clear();
     unitCostController.clear();
   paymentIdController.clear();
     customerIdController.clear();
    orderStatusController.clear();
   remarksController.clear();
  noteController.clear();
    discountController.clear();
    paymentMethodController.clear;
    invoiceDateController.clear();
     invoiceCodeController.clear();
     vatController.clear();
   assignToController.clear();
     exciseTaxController.clear();
     taxableController.clear();
     trnController.clear();
     table.clear();
     updateCheck=false;
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
        if (table[i].isInvoiced == true && table[i].updatecheck == false) {
          var unicost1 = table[i].unitCost ?? 0;
          var vatValue1 = table[i].vat ?? 0;
          var discountValue1 = table[i].discount ?? 0;
          var taxableAmount1 = table[i].taxableAmount ?? 0;
          var excessTAxValue1 = table[i].excessTax ?? 0;
          var sellingprice1 = table[i].sellingPriceTotal ?? 0;
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
    totalPricePriceController.text = totalAmount.toString();
    taxableController.text = taxableAmount.toString();
    exciseTaxController.text = excessTAxValue.toString();

    // _value=false;
  }
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
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
          create: (context) => InvoicereadCubit(),
        ),
        BlocProvider(
          create: (context) => InvoicepostCubit(),
        ),
      ],
      child: MultiBlocListener(
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
                      // table:table,
                    ));


                // context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                if (data.data1) {
                  // showDailogPopUp(
                  //     context,
                  //     SuccessPopup(
                  //       content: data.data2.toString(),
                  //       // table:table,
                  //     ));

             if(isPaymentStatusSuccessCall) {
               context.read<PaymentTransactionSuccessPostCubit>().postPaymentTransactionSuccess(veritiaclid,Variable.methodCode, data.data2,1);
             } else {
               showDailogPopUp(
                    context,
                    SuccessPopup(
                      content: "success",
                      // table:table,
                    ));
             }



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
                print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
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
                      context.read<SalesgeneralverticalCubit>().getSalesGeneralVertical();
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
          BlocListener<InvoicereadCubit, InvoicereadState>(
            listener: (context, state) {
              print("state++++++++++++++++++++++++++++++++");
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (data) {
                    print("data" + data.toString());
                   readInvoiceObject=data;
                    if(data.invoicedData!=null)
                    {
                      data.invoicedData?.lines != null
                          ? table = List.from( data.invoicedData?.lines ?? [])
                          : table =  List.from([]);
                      inventoryId.text=data.invoicedData?.inventoryId??"";
                      invoiceCodeController.text=data.invoicedData?.invoiceCode??"";
                      // invoiceDateController.text=data.invoicedData?.createdDate??"";
                      invoiceDateController=TextEditingController(text:data.invoicedData?.createdDate ==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.invoicedData?.createdDate??"")));
                      noteController.text=data.invoicedData?.notes??"";
                      remarksController.text=data.invoicedData?.remarks??"";
                      invoiceStatusController.text=data.invoicedData?.invoiceStatus??"";
                      assignToController.text=data.invoicedData?.assignedTo??"";
                      discountController.text=data.invoicedData?.discount.toString()??"";
                      unitCostController.text=data.invoicedData?.unitCost.toString()??"";
                      exciseTaxController.text=data.invoicedData?.excessTax.toString()??"";
                      taxableController.text=data.invoicedData?.taxableAmount.toString()??"";
                      vatController.text=data.invoicedData?.vat.toString()??"";
                      sellingPriceController.text=data.invoicedData?.sellingPriceTotal.toString()??"";
                      totalPricePriceController.text=data.invoicedData?.totalPrice.toString()??"";


                    }
                    else{
                      data.lines != null
                          ? table =  List.from( data.lines ?? [])
                          : table = List.from( []);
                      paymentIdController.text=data.paymentId??"";

                      inventoryId.text=data.inventoryId??"";
                      paymentStatusController.text=data.paymentStatus??"";

                      customerIdController.text=data.customerId??"";
                      trnController.text=data.trnNumber??"";
                      orderStatusController.text=data.orderStatus??"";

                      unitCostController.text=data.unitCost.toString()??"";
                      discountController.text=data.discount.toString()??"";
                      exciseTaxController.text=data.excessTax.toString()??"";
                      taxableController.text=data.taxableAmount.toString()??"";
                      vatController.text=data.vat.toString()??"";
                      sellingPriceController.text=data.sellingPriceTotal.toString()??"";
                      totalPricePriceController.text=data.totalPrice.toString()??"";
                      trnController.text=data.trnNumber??"";
                      orderStatusController.text=data.orderStatus??"";
                    }


                    // setState(() {
                    //   print("taskssss");

                    setState(() {});
                  });
            },
          ),

        ],
        child: BlocConsumer<SalesgeneralverticalCubit, SalesgeneralverticalState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (list) {
                  paginatedList=list;
                  print("appuram"+list.data.toString());

                  result = list.data;
                  print("appuram"+result.toString());
                  setState(() {
                    if(result.isNotEmpty){
                      veritiaclid=result[0].id;
                      Variable.verticalid=result[0].id;
                      context.read<InvoicereadCubit>().getSalesInvoiceRead(veritiaclid!);
                    }
                    else{
                      print("common");

                    }


                    setState(() {});

                  });
                });
          },
          builder: (context, state) {
            return Builder(
                builder: (context) {
                  return Scaffold(
                    backgroundColor: Pellet.bagroundColor,
                    body: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SalesGeneralVerticalList(
                            selectedVertical: selectedVertical,
                            itemsearch: itemsearch,ontap: (int index){
                            setState(() {
                              selectedVertical=index;
                              veritiaclid = result[index].id;
                              clear();
                              _myWidgetState.currentState?.table1=List.from([]);
                              context.read<InvoicereadCubit>().getSalesInvoiceRead(veritiaclid!);

                            });
                          },result: result,
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
                                        clr: Colors.green,


                                        onPress: () {
                                          if(readInvoiceObject.invoicedData!=null){
                                            showDailogPopUp(
                                              context,
                                              PurchaseReturnInvoicePaymentPopUp(type: '"',
                                                customerCode: customerIdController.text,
                                                customerName: "",
                                                orderId: veritiaclid.toString(),
                                                status: "",
                                                totalPrice: double.tryParse(totalPricePriceController.text)??0,
                                                transactionCode: "",
                                                paymentCompletedFunc:(){
                                                  setState(() {
                                                    isPaymentStatusSuccessCall=true;
                                                  });
                                                  PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                                      contact: Variable.mobileNumber,
                                                      customerCode: customerIdController.text,
                                                      customerName: "",
                                                      methodCode: Variable.methodCode,
                                                      orderId:  veritiaclid.toString(),
                                                      status: "payment_completed",
                                                      totalAmount: double.tryParse(totalPricePriceController.text)??0,
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
                                                      customerCode: customerIdController.text,
                                                      customerName: "",
                                                      methodCode: Variable.methodCode,
                                                      orderId:  veritiaclid.toString(),
                                                      status: "payment_pending",
                                                      totalAmount: double.tryParse(totalPricePriceController.text)??0,
                                                      tranSactionCode: "");

                                                  print(model);
                                                  context
                                                      .read<PaymentSalePostCubit>()
                                                      .postSaleOrderPaymentPost(model);
                                                },
                                              ),
                                            );
                                          }
                                        },
                                        text: "PAYMENT",                                  ),

                                      TextButtonLarge(
                                        marginCheck: true,
                                        text: "PREVIEW",
                                        onPress: () async {
                                          InventoryListModel model=InventoryListModel();
                                          UserPreferences userPref = UserPreferences();
                                          await userPref.getInventoryList().then((user) {
                                            if (user.isInventoryExist == true) {
                                              model=user;
                                            } else {
                                            }
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) =>
                                                SalePrintScreen(
                                                  note: noteController.text,
                                                  table:table,
                                                  orderCode: invoiceCodeController.text,
                                                  vat: double.tryParse( vatController.text),
                                                  sellingPrice:double.tryParse( sellingPriceController.text),
                                                  taxableAmount:double.tryParse( taxableController.text) ,
                                                  discount:double.tryParse( discountController.text) ,
                                                  unitCost:double.tryParse( unitCostController.text) ,
                                                  excisetax:double.tryParse( exciseTaxController.text) ,
                                                  remarks: remarksController.text ,
                                                  pageName: "INVOICE",
                                                  model: model,
                                                )),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .003,
                                  ),
                                  InvoiceSalesStableTable(
                                    totalPrice: totalPricePriceController,
                                    sellingPrice: sellingPriceController,
                                    paymentStatus: paymentStatusController,
                                    invoiceStatus: invoiceStatusController,
                                    unitCost: unitCostController,
                                    paymentId: paymentIdController,
                                    customerId: customerIdController,
                                    orderStatus: orderStatusController,
                                    remarks: remarksController,
                                    note: noteController,
                                    discount: discountController,
                                    paymentMethod: paymentMethodController,
                                    invoiceDate: invoiceDateController,
                                    invoiceCode: invoiceCodeController,
                                    vat: vatController,
                                    assignedto: assignToController,
                                    excise: exciseTaxController,
                                    taxable: taxableController,
                                    trn: trnController,
                                  ),



                                  Container(
                                    color: Colors.white,
                                    height: 35
                                  ),
                                  Row(children: [
                                    TextWidget(text: "Invoice Lines"),
                                  ],),
                                  SizedBox(height: height*.01,),

                                  // Divider(color: Colors.grey,thickness: 1,),
                                  SalesInvoiceGrowableTable(
                                    table:table,
                                    updateCheck: updateCheckFucction,
                                    key: _myWidgetState,
                                    // table: table,
                                    // select:select,
                                    updation: tableAssign,
                                  ),
                                  SizedBox(height: height*.04,),
                                  SaveUpdateResponsiveButton(
                                    label:"SAVE" ,
                                    saveFunction: (){
                                      if (updateCheck)
                                        context.showSnackBarError(
                                            "please click the update button ");
                                      else {
                                        List<Postlines>  table1=[];
                                        if(table.isNotEmpty){
                                          for(var i=0;i<table.length;i++)
                                            if(table[i].isInvoiced==true){
                                              table1.add(Postlines(
                                                isInvoiced: table[i].isInvoiced??false,
                                                quantity: table[i].quantity ,
                                                isActive: table[i].isInvoiced??false,
                                                totalPrice: table[i].totalPrice,
                                                warrentyPrice: table[i].warrentyPrice,
                                                sellingPrice: table[i].sellingPriceTotal,
                                                vat: table[i].vat,
                                                taxableAmoubt: table[i].taxableAmount,
                                                unitCost: table[i].unitCost,
                                                excessTax: table[i].excessTax,
                                                salesOrderLineCode: table[i].salesOrderLineCode,

                                              ));
                                            }


                                        }
                                        else{
                                          table1=[];
                                        }
                                        SalesReturnInvoicePostModel model = SalesReturnInvoicePostModel(
                                            salesOrderId: veritiaclid,
                                            inventoryId: inventoryId?.text??"",
                                            invoicedBy: Variable.created_by,
                                            notes: noteController?.text??'',
                                            remarks: remarksController?.text??"",
                                            assignedTo: assignToController?.text??"",
                                            discount:double.tryParse( discountController?.text??""),
                                            unitCost:double.tryParse( unitCostController?.text??""),
                                            excessTax:double.tryParse( exciseTaxController?.text??""),
                                            taxableAmount:double.tryParse( taxableController?.text??""),
                                            vat:double.tryParse( vatController?.text??""),
                                            sellingPriceTotal:double.tryParse( sellingPriceController?.text??""),
                                            totalPrice:double.tryParse( totalPricePriceController?.text??""),


                                            ivoiceLines:
                                            table1??[]
                                        );
                                        print("modelllls" + model.toString());

                                        context
                                            .read<InvoicepostCubit>()
                                            .postSalesInvoice(model);

                                      }
                                    },
                                    discardFunction: (){

                                    },
                                  ),
                                  // Container(
                                  //   margin: EdgeInsets.only(right:width*.015,),
                                  //   child: Row(
                                  //     mainAxisAlignment: MainAxisAlignment.end,
                                  //     children: [
                                  //       // Button(Icons.delete, Colors.red,ctx: context,
                                  //       //     text: "Discard",
                                  //       //     onApply: (){
                                  //       //
                                  //       //
                                  //       //
                                  //       //
                                  //       //
                                  //       //     },
                                  //       //     height: 29,
                                  //       //     width: 90,
                                  //       //     labelcolor: Colors.red,
                                  //       //     iconColor: Colors.red,
                                  //       //     bdr: true),
                                  //       SizedBox(
                                  //         width: width * .003,
                                  //       ),
                                  //       Button(Icons.check, Colors.grey,ctx: context,
                                  //           text: "SAVE",
                                  //           height: 29,
                                  //           Color: Color(0xff3E4F5B),
                                  //           width: 90,
                                  //           labelcolor: Colors.white,
                                  //           iconColor: Colors.white,
                                  //           onApply: (){
                                  //             if (updateCheck)
                                  //               context.showSnackBarError(
                                  //                   "please click the update button ");
                                  //             else {
                                  //               List<Postlines>  table1=[];
                                  //               if(table.isNotEmpty){
                                  //                 for(var i=0;i<table.length;i++)
                                  //                   table1.add(Postlines(
                                  //                     isInvoiced: table[i].isInvoiced??false,
                                  //                     quantity: table[i].quantity ,
                                  //                     isActive: table[i].isInvoiced??false,
                                  //                     totalPrice: table[i].totalPrice,
                                  //                     warrentyPrice: table[i].warrentyPrice,
                                  //                     sellingPrice: table[i].sellingPriceTotal,
                                  //                     vat: table[i].vat,
                                  //                     taxableAmoubt: table[i].taxableAmount,
                                  //                     unitCost: table[i].unitCost,
                                  //                     excessTax: table[i].excessTax,
                                  //                     salesOrderLineCode: table[i].salesOrderLineCode,
                                  //
                                  //                   ));
                                  //
                                  //               }
                                  //               else{
                                  //                 table1=[];
                                  //               }
                                  //               SalesReturnInvoicePostModel model = SalesReturnInvoicePostModel(
                                  //                   salesOrderId: veritiaclid,
                                  //                   inventoryId: inventoryId?.text??"",
                                  //                   invoicedBy: "inv",
                                  //                   notes: noteController?.text??'',
                                  //                   remarks: remarksController?.text??"",
                                  //                   assignedTo: assignToController?.text??"",
                                  //                   discount:double.tryParse( discountController?.text??""),
                                  //                   unitCost:double.tryParse( unitCostController?.text??""),
                                  //                   excessTax:double.tryParse( exciseTaxController?.text??""),
                                  //                   taxableAmount:double.tryParse( taxableController?.text??""),
                                  //                   vat:double.tryParse( vatController?.text??""),
                                  //                   sellingPriceTotal:double.tryParse( sellingPriceController?.text??""),
                                  //                   totalPrice:double.tryParse( totalPricePriceController?.text??""),
                                  //
                                  //
                                  //                   ivoiceLines:
                                  //                   table1??[]
                                  //               );
                                  //               print("modelllls" + model.toString());
                                  //
                                  //               context
                                  //                   .read<InvoicepostCubit>()
                                  //                   .postSalesInvoice(model);
                                  //
                                  //             }
                                  //
                                  //
                                  //           }
                                  //       ),
                                  //       SizedBox(
                                  //         width: width * .008,
                                  //       ),
                                  //
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
                }
            );
          },
        ),
      ),
    );
  }
}




