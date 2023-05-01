import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/sales/invoice/model/invoicepostmodel.dart';
import 'package:inventory/Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'package:inventory/Screens/salesreturn/invoice/cubit/invoicepost/salesreturninvoicepost_cubit.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoicepost.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoiceread.dart';
import 'package:inventory/Screens/salesreturn/invoice/pages/sales_return_invoice_growable.dart';
import 'package:inventory/Screens/salesreturn/invoice/pages/sales_return_invoice_stable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'cubit/invoice_read/salesreturninvoiceread_cubit.dart';

class SalesReturnGeneralInvoice extends StatefulWidget {
  @override
  _SalesReturnGeneralInvoiceState createState() =>
      _SalesReturnGeneralInvoiceState();
}

class _SalesReturnGeneralInvoiceState extends State<SalesReturnGeneralInvoice> {
  var paginatedList;
  TextEditingController invoicedDateController=TextEditingController();
  TextEditingController invoiceCodeController=TextEditingController();
  TextEditingController paymentIdController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController paymentMethodController=TextEditingController();
  TextEditingController customerIdController=TextEditingController();
  TextEditingController trnController=TextEditingController();
  TextEditingController orderStatusController=TextEditingController();
  TextEditingController invoiceStatusController=TextEditingController();
  TextEditingController assignToController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  TextEditingController noteController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController discountController=TextEditingController();
  TextEditingController exciseTaxController=TextEditingController();
  TextEditingController vatController=TextEditingController();
  TextEditingController taxableController=TextEditingController();
  TextEditingController sellingPriceController=TextEditingController();
  TextEditingController totalPriceController=TextEditingController();
  TextEditingController inventoryId=TextEditingController();
  String salesReturnOrderCode="";
  List<SalesReturnLinesOrderLines> table = [];
  bool updateCheck=false;
  tableAssign(List<SalesReturnLinesOrderLines> table1 ) {
    print("ethito");
    table = table1;
    setState(() {
      addition();
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
        if (table[i].isInvoiced == true && table[i].updateCheck != true) {
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
    totalPriceController.text = totalAmount.toString();
    taxableController.text = taxableAmount.toString();
    exciseTaxController.text = excessTAxValue.toString();
  }
  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }
  @override
  void initState() {
    context.read<SalesreturnverticalCubit>().getSalesReturnGeneralVertical();

    super.initState();
  }
  int? veritiaclid = 0;
  TextEditingController itemsearch = TextEditingController();
  List<salesOrderTypeModel> result = [];
  InvoicedDatasSalesReturn? object=InvoicedDatasSalesReturn();

  int selectedVertical = 0;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => SalesreturninvoicereadCubit(),
),
    BlocProvider(
      create: (context) => SalesreturninvoicepostCubit(),
    ),


  ],
  child: Builder(
      builder: (context) {
        return MultiBlocListener(
  listeners: [
        BlocListener<SalesreturninvoicereadCubit, SalesreturninvoicereadState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          print("datasssssssssssssssssssssssssssssssssssssssssssss" + data.toString());
          if(data.invoicedData!=null)
          {
            print("not inoiced is here bbbbbbbbbbbbbbbbbb");
            print(data?.invoicedData?.returnInvoicelines.toString()??"");
            object=data.invoicedData;
            // data.invoicedData?.lines != null
            //     ? table =  data.invoicedData?.lines ?? []
            //     : table = [];
            inventoryId.text=data.invoicedData?.inventoryId??"";
            salesReturnOrderCode=data.invoicedData?.salesReturnOrderCode??"";
            invoiceCodeController.text=data.invoicedData?.salesReturnInvoiceCode??"";
            invoicedDateController.text=data.invoicedData?.createdDate??"";

            print(data.invoicedData?.createdDate);
            invoicedDateController=TextEditingController(text:data.invoicedData?.createdDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.invoicedData?.createdDate??"")));
            paymentIdController.text=data.invoicedData?.paymentCode??"";
            paymentStatusController.text=data.invoicedData?.paymentStatus??"";
            paymentMethodController.text=data.invoicedData?.paymentMethod??"";
            customerIdController.text=data.invoicedData?.customerId??"";
            trnController.text=data.invoicedData?.customerTrnNumber??"";

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
            totalPriceController.text=data.invoicedData?.totalPrice.toString()??"";
            data.invoicedData?.returnInvoicelines != null
                ? table =  data.invoicedData?.returnInvoicelines ?? []
                : table = [];





          
       
           


          }
          else{
            print("not ddate is here bbbbbbbbbbbbbbbbbb"+data.returnOrrder.toString());
            // data.lines != null
            //     ? table =  data.lines ?? []
            //     : table = [];
            paymentIdController.text=data.paymentId??"";
            inventoryId.text=data.inventoryId??"";
            salesReturnOrderCode=data.salesReturnOrderCode??"";
            invoicedDateController.text=data.returnedDate??"";

            // remarksController.text=data.rema??"";


            inventoryId.text=data.inventoryId??"";
            paymentStatusController.text=data.paymentStatus??"";
            customerIdController.text=data.customerId??"";
            invoiceStatusController.text=data.invoiceStatus??"";
            trnController.text=data.trnNumber??"";
            orderStatusController.text=data.orderStatus??"";
            orderStatusController.text=data?.orderStatus??"";
            unitCostController.text=data?.unitCost.toString()??"";
            discountController.text=data?.discount.toString()??"";
            exciseTaxController.text=data?.excessTax.toString()??"";
            taxableController.text=data?.taxableAmount.toString()??"";
            vatController.text=data?.vat.toString()??"";
            sellingPriceController.text=data?.sellingPriceTotal.toString()??"";
            totalPriceController.text=data?.totalPrice.toString()??"";
            invoiceCodeController.text=data?.salesReturnOrderCode??"";
            data.returnOrrder != null
                ? table =  data.returnOrrder ?? []
                : table = [];






          }


          // setState(() {
          //   print("taskssss");

          setState(() {});
        });
  },
),
    BlocListener<SalesreturninvoicepostCubit, SalesreturninvoicepostState>(
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
   
  ],
  child: BlocConsumer<SalesreturnverticalCubit, SalesreturnverticalState>(
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
                          .read<SalesreturninvoicereadCubit>().getSalesReturnInvoiceRead(veritiaclid!);
                    } else {
                      print("common");
                      // select = true;
                      // setState(() {
                      // });

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
                          SalesReturnGeneralVerticalList(
                            selectedVertical: selectedVertical,
                            itemsearch: itemsearch,
                            ontap: (int index) {
                              setState(() {
                                selectedVertical = index;
                                // select = false;

                                veritiaclid = result[index].id;
                                // context
                                //     .read<SalesgeneralreadCubit>()
                                //     .getSalesReturnGeneralRead(veritiaclid!);
                                // currentStock.clear();
                                //
                                context
                                    .read<SalesreturninvoicereadCubit>().getSalesReturnInvoiceRead(veritiaclid!);

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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
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
                                                orderCode: invoiceCodeController.text,
                                                orderDate: invoicedDateController.text,
                                                // select: select,

                                                table:table,
                                                vat: double.tryParse( vatController.text),
                                                sellingPrice:double.tryParse( sellingPriceController.text),
                                                taxableAmount:double.tryParse( taxableController.text) ,
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
                                ) ,
                                SalesReturnInvoiceStableTable(
                                  verticalId: object?.id,
                                  invoicedDate: invoicedDateController,
                                    discount: discountController,
                                  remarks: remarksController,
                                  vat: vatController,
                                  invoiceCode: invoiceCodeController,
                                  paymentMethod: paymentMethodController,
                                  note: noteController,
                                  orderStatus: orderStatusController,
                                  customerId: customerIdController,
                                  paymentId: paymentIdController,
                                  unitCost: unitCostController,
                                  invoiceStatus: invoiceStatusController,
                                  paymentStatus: paymentStatusController,
                                    totalPrice: totalPriceController,
                                  sellingPriceTotal: sellingPriceController,
                                  exciseTax: exciseTaxController,
                                  trnNumber: trnController,
                                  taxableAmount: taxableController,
                                  assignto: assignToController,

                                ),
                                SizedBox(height: 35,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextWidget(text: "Invoice Lines"),
                                  ],
                                ),
                                // Divider(color: Colors.grey,thickness: 1,),
                                SizedBox(height: height*.01,),
                                SalesReturnInvoiceGrowableTable(
                                  updation: tableAssign,
                                  updateCheck: updateCheckFucction,
                                ),
                                SizedBox(height: 20,),
                                SaveUpdateResponsiveButton(
                                  isDelete:true ,


                                  saveFunction: (){
                  List<SalesReturnLinesOrderLines>? result;
                  bool confirmationCheck=false;
                  for(var i=0;i<table.length;i++) {
                    if (table[i].isInvoiced == false) {
                      confirmationCheck = true;
                    }
                    result =
                        table.where((o) => o.isInvoiced == true)
                            .toList();
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
                            SalesReturnInvoicePostModel2 model=SalesReturnInvoicePostModel2(
                              inventoryid: inventoryId?.text??"",
                              salesReturnOrderCode: salesReturnOrderCode,
                              customerId:customerIdController?.text??"",
                              customerTrnNumber: trnController.text??"",
                              inVoicedBy: Variable.created_by,
                              notes: noteController.text??"",
                              remarks: remarksController.text??"",
                              discount: double.tryParse(discountController.text??""),
                              unitCost: double.tryParse(unitCostController.text??""),
                              excessTax: double.tryParse(exciseTaxController.text??""),
                              taxableAmount: double.tryParse(taxableController.text??""),
                              vat: double.tryParse(vatController.text??""),
                              sellingPriceTotal: double.tryParse(sellingPriceController.text??""),
                              totalPrice: double.tryParse(totalPriceController.text??""),
                              assignTo: assignToController.text??"",
                              orderLines: result??[],





                            );
                            print(model);


                            context.read<SalesreturninvoicepostCubit>().postSalesReturnInvoice(model);
                            Navigator.pop(context);

                          },


                        ));

                  }
                  else {
                    SalesReturnInvoicePostModel2 model = SalesReturnInvoicePostModel2(
                      inventoryid: inventoryId?.text ?? "",
                      salesReturnOrderCode: salesReturnOrderCode,
                      customerId: customerIdController?.text ?? "",
                      customerTrnNumber: trnController.text ?? "",
                      inVoicedBy: Variable.created_by,
                      notes: noteController.text ?? "",
                      remarks: remarksController.text ?? "",
                      discount: double.tryParse(discountController.text ?? ""),
                      unitCost: double.tryParse(unitCostController.text ?? ""),
                      excessTax: double.tryParse(
                          exciseTaxController.text ?? ""),
                      taxableAmount: double.tryParse(
                          taxableController.text ?? ""),
                      vat: double.tryParse(vatController.text ?? ""),
                      sellingPriceTotal: double.tryParse(
                          sellingPriceController.text ?? ""),
                      totalPrice: double.tryParse(
                          totalPriceController.text ?? ""),
                      assignTo: assignToController.text ?? "",
                      orderLines: result ?? [],


                    );
                    print(model);


                    context.read<SalesreturninvoicepostCubit>()
                        .postSalesReturnInvoice(model);
                  } },
                                  discardFunction: (){


                                  },
                                  label: "SAVE",

                                ),

                                // Container(
                                //   margin: EdgeInsets.only(right:width*.015,),
                                //   child: Row(
                                //     children: [
                                //       Spacer(),
                                //       Button(Icons.delete, Colors.red,ctx: context,
                                //           text: "DISCARD",height: 29,
                                //           onApply: (){print("Akkk");},
                                //           width: 90,labelcolor: Colors.red,iconColor: Colors.red),
                                //       SizedBox(width: width*.008,),
                                //
                                //       Button(Icons.check, Colors.grey,ctx: context,
                                //           bdr: true,
                                //           onApply: (){
                                //             SalesReturnInvoicePostModel2 model=SalesReturnInvoicePostModel2(
                                //                 inventoryid: inventoryId?.text??"",
                                //                 customerId:customerIdController?.text??"",
                                //               customerTrnNumber: trnController.text??"",
                                //               inVoicedBy: "baba",
                                //               notes: noteController.text??"",
                                //               remarks: remarksController.text??"",
                                //               discount: double.tryParse(discountController.text??""),
                                //               unitCost: double.tryParse(unitCostController.text??""),
                                //               excessTax: double.tryParse(exciseTaxController.text??""),
                                //               taxableAmount: double.tryParse(taxableController.text??""),
                                //               vat: double.tryParse(vatController.text??""),
                                //               sellingPriceTotal: double.tryParse(sellingPriceController.text??""),
                                //               totalPrice: double.tryParse(totalPriceController.text??""),
                                //               assignTo: assignToController.text??"",
                                //               orderLines: table??[],
                                //
                                //
                                //
                                //
                                //
                                //             );
                                //
                                //
                                //             context.read<SalesreturninvoicepostCubit>().postSalesReturnInvoice(model);
                                //
                                //           },
                                //           text: "SAVE",height: 29,
                                //           width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
                                //       SizedBox(width: width*.008,),
                                //     ],
                                //   ),
                                // )

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
