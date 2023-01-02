import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/sales/invoice/model/invoicepostmodel.dart';
import 'package:inventory/Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'package:inventory/Screens/salesreturn/invoice/cubit/invoicepost/salesreturninvoicepost_cubit.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoicepost.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoiceread.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
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
        if (table[i].isInvoiced == true) {
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
    totalPriceController.text = totalAmount.toString();
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
    context.read<SalesreturnverticalCubit>().getSalesReturnGeneralVertical();

    super.initState();
  }
  int? veritiaclid = 0;
  TextEditingController itemsearch = TextEditingController();
  List<salesOrderTypeModel> result = [];

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
          print("data" + data.toString());
          if(data.invoicedData?.lines?.isNotEmpty==true)
          {
            // data.invoicedData?.lines != null
            //     ? table =  data.invoicedData?.lines ?? []
            //     : table = [];
            inventoryId.text=data.invoicedData?.inventoryId??"";
            invoiceCodeController.text=data.invoicedData?.salesReturnInvoiceCode??"";
            invoicedDateController.text=data.invoicedData?.createdDate??"";
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
            data.invoicedData?.lines != null
                ? table =  data.invoicedData?.lines ?? []
                : table = [];





          
       
           


          }
          else{
            // data.lines != null
            //     ? table =  data.lines ?? []
            //     : table = [];
            paymentIdController.text=data.paymentId??"";
            inventoryId.text=data.inventoryId??"";


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
          context.showSnackBarError("Loadingggg");
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
                                      onPress: (){
                                        print("Akshay");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              SalePrintScreen(
                                                note: noteController.text,
                                                // select: select,
                                                // vendorCode:vend.text,
                                                // orderCode:ordereCodeController.text ,
                                                // orderDate: orderDateController.text,
                                                table:table,
                                                vat: double.tryParse( vatController.text),
                                                sellingPrice:double.tryParse( sellingPriceController.text),
                                                taxableAmount:double.tryParse( taxableController.text) ,
                                                discount:double.tryParse( discountController.text) ,
                                                unitCost:double.tryParse( unitCostController.text) ,
                                                excisetax:double.tryParse( exciseTaxController.text) ,
                                                remarks: remarksController.text ,





                                              )),
                                        );


                                      },
                                    ),
                                  ],
                                ) ,
                                SalesReturnInvoiceStableTable(
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
                                  saveFunction: (){
                                    SalesReturnInvoicePostModel2 model=SalesReturnInvoicePostModel2(
                                      inventoryid: inventoryId?.text??"",
                                      customerId:customerIdController?.text??"",
                                      customerTrnNumber: trnController.text??"",
                                      inVoicedBy: "baba",
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
                                      orderLines: table??[],





                                    );


                                    context.read<SalesreturninvoicepostCubit>().postSalesReturnInvoice(model);
                                  },
                                  discardFunction: (){
                                    print("Akkk");

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
class SalesReturnInvoiceStableTable extends StatefulWidget {
  final TextEditingController invoiceCode;
  final TextEditingController invoicedDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignto;
  final TextEditingController note;
  final TextEditingController remarks;

  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;

  SalesReturnInvoiceStableTable(
      {
        required this.invoiceCode,
        required this.assignto,
        required this.paymentMethod,
        required this.invoiceStatus,
        required this.invoicedDate,
        required this.customerId,
        required this.trnNumber,
        required this.vat,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.note,

        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.sellingPriceTotal});

  @override
  _SalesReturnInvoiceStableTableState createState() => _SalesReturnInvoiceStableTableState();
}

class _SalesReturnInvoiceStableTableState extends State<SalesReturnInvoiceStableTable>
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
  // List<SalesReturnOrderLines>table=[];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
            return Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                        children: [
                          NewInputCard(
                              readOnly: true,
                              controller: widget.invoiceCode,
                              title: " Invoice Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.invoicedDate,
                              title: " Invoiced Date"),

                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.paymentId,
                              title: " Payment Id"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.paymentStatus,
                              title: "Payment Status"),

                          SizedBox(
                            height: height * .030,
                          ),NewInputCard(
                              controller: widget.paymentMethod, title: "Payment Method"),

                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              controller: widget.customerId, title: "Customer Id"),
                          SizedBox(
                            height: height * .090,
                          ),



                          // NewInputCard(
                          //     controller: widget.shipping, title: "shipping address id"),
                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [

                          NewInputCard(
                              readOnly: true,
                              height: 46,
                              controller: widget.trnNumber,
                              title: " TRN Number"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.orderStatus,
                              title: " Order Status"),
                          // NewInputCard(
                          //     controller: widget.billingAddressId,
                          //     title: "billing address id"),
                          SizedBox(
                            height: height * .030,
                          ),

                          NewInputCard(
                              readOnly: true,
                              controller: widget.invoiceStatus,
                              title: "Invoiced Status "),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.assignto,
                              title: "Assign To"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              maxLines: 3,
                              height: 90,
                              controller: widget.remarks,
                              title: "Remarks"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            controller: widget.note,
                            title: "Note",
                            height: 90,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: height * .010,
                          ),

                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [

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
                              title: "Excise Tax"),
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
      );
  }
}
class SalesReturnInvoiceGrowableTable extends StatefulWidget {
  // final List<SalesReturnOrderLines>? table;
  // // final List<int?> currenStock;
  // // bool select;
  final Function updation;
  final Function updateCheck;
  SalesReturnInvoiceGrowableTable(
      {
        // required this.table,
        required this.updation,
        // required this.select,
        required this.updateCheck,
        // required this.currenStock
      });

  @override
  _SalesReturnInvoiceGrowableTableState createState() =>
      _SalesReturnInvoiceGrowableTableState();
}

class _SalesReturnInvoiceGrowableTableState extends State<SalesReturnInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  bool assignCheck = false;

  // PurchaseOrderTableModel? purchaseTable;
  List<SalesReturnLinesOrderLines> table1 = [];
  String? variantId = "";
  String? varinatname = "";
  String? returntype = "";
  String? returntime = "";
  String? barcode = "";
  String? salesUom = "";
  int? stock = 0;
  int? stockId ;
  String? discountPrice = "price";
  // PurchaseCureentStockQty? purchaseCurrentStock;


  bool? clear = true;
  String? supplierRefCode = "";

  double totalPrice = 0;
  TextEditingController unicostController = TextEditingController();


  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts =double.parse ((((reqQty * unitCst) + exTaxx) - disct).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmounts =double.parse ((total - ((total * disct) / 100)).toStringAsFixed(2));
    }
    return taxableAmounts;
  }



  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

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
    // if (assignCheck == false) table1 = widget.table ?? [];
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
    BlocListener<SalesreturninvoicereadCubit, SalesreturninvoicereadState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          print("data" + data.toString());
          if(data.invoicedData?.lines?.isNotEmpty==true)
          {
            data.invoicedData?.lines != null
                ? table1 = List.from( data.invoicedData?.lines ?? [])
                : table1 = [];





          }
          else{
            data.returnOrrder != null
                ? table1 =  List.from(data.returnOrrder ?? [])
                : table1 = [];







          }


          // setState(() {
          //   print("taskssss");

          setState(() {});
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
                                    'Sales Order Line Code',

                                    size: 13,
                                  ),


                                  tableHeadtext(
                                    'Invoiced',


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

                                  tableHeadtext(
                                    'Warranty Price',

                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Total Price',

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

        style: BorderStyle.solid)))
        ,
                                    children: [
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table1?[i].variantId ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),


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
                                            table1?[i].salesReturnOrderLineCode.toString()?? "",
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
                                            onSelection: (bool? value) {
                                              bool? isInvoiced =
                                                  table1[i].isInvoiced;
                                              setState(() {
                                                widget.updateCheck(true);
                                                // table1[i] = table1[i].copyWith(updatecheck: true);
                                                // table1[i] = table1[i].copyWith(updateCheck: true);
                                                setState(() {});
                                                isInvoiced = !isInvoiced!;
                                                table1[i] = table1[i]
                                                    .copyWith(
                                                    isInvoiced: isInvoiced);
                                              });
                                            }),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: textPadding(
                                            table1[i].salesUOM ?? "",
                                            fontSize: 12,
                                            padding: EdgeInsets.only(
                                                left: 11.5, top: 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),



                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck: true,
                                          // controller: requestedListControllers[i],
                                          last: table1?[i]
                                              .quantity
                                              .toString() ??
                                              "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            // table1[i] = table1[i].copyWith(updatecheck: true);

                                            if (va == "") {
                                              print("entered");
                                              assignCheck = true;
                                              table1[i] = table1[i].copyWith(
                                                  quantity: 0,
                                                  taxableAmount: 0,
                                                  sellingPriceTotal: 0,
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
                                                    sellingPriceTotal: 0,
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
                                                    sellingPriceTotal: sellingPrice,
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
                                          //controller: unitcostListControllers[i],
                                          last: table1?[i]
                                              .unitCost
                                              .toString() ??
                                              "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            // table1[i] = table1[i].copyWith(updatecheck: true);

                                            double? unitcost;
                                            if (va == "") {
                                              print("entered");
                                              unitcost = 0;
                                              print("disc" +
                                                  unitcost.toString());
                                              table1[i] = table1[i].copyWith(
                                                  taxableAmount: 0,
                                                  unitCost: 0,
                                                  sellingPriceTotal: 0,
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
                                                  sellingPriceTotal: 0,
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
                                                  sellingPriceTotal: sellingPrice,
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

                                          // controller: excesstListControllers[i],
                                          last: table1?[i]
                                              .excessTax
                                              .toString() ??
                                              "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            // table1[i] = table1[i].copyWith(updatecheck: true);

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
                                                  sellingPriceTotal: 0,
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
                                                  sellingPriceTotal: sellingPrice,
                                                  totalPrice: totalprice,
                                                  excessTax: excess);
                                              setState(() {});
                                            }
                                          },
                                        ),
                                      ),
                                      PopUpCall(
                                        type: "PriceTypePopUpCall",
                                        value: table1[i].discountType??"",
                                        onSelection: (String va) {
                                          print("+++++++++++++++++++++++");

                                          setState(() {
                                            // table1[i] = table1[i].copyWith(updatecheck: true);
                                            table1[i] = table1[i]
                                                .copyWith(discountType: va);
                                            widget.updateCheck(true);
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
                                                  sellingPriceTotal: 0,
                                                  totalPrice: 0);
                                            } else {
                                              if (qty == 0 || unitcost == 0) {
                                                table1[i] =
                                                    table1[i].copyWith(
                                                      taxableAmount: 0,
                                                      sellingPriceTotal: 0,
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
                                                      sellingPriceTotal: sellingPrice,
                                                      totalPrice: totalPrice,
                                                    );
                                                setState(() {});
                                              }
                                            }

                                            // onChange = true;
                                            // orderType = va!;
                                          });
                                        },
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: UnderLinedInput(
                                          initialCheck: true,
                                          last:
                                          table1?[i].discount.toString() ??
                                              "",
                                          onChanged: (va) {
                                            widget.updateCheck(true);
                                            // table1[i] = table1[i].copyWith(updatecheck: true);
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
                                                  sellingPriceTotal: 0,
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
                                                  sellingPriceTotal: sellingPrice,
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
                                                .sellingPriceTotal
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
                                            table1?[i]
                                                .warrentyPrice
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
                                        child: TableTextButton(
                                          onPress: () {
                                            widget.updateCheck(false);
                                            widget.updation(table1);
                                            // table1[i].copyWith(updatecheck: false);
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