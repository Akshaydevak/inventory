import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/sales/invoice/cubits/invoicepost/invoicepost_cubit.dart';

import 'package:inventory/Screens/sales/invoice/cubits/read/invoiceread_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
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
  List<OrderLinesInvoice>table=[];
  TextEditingController itemsearch = TextEditingController();
  tableAssign(List<OrderLinesInvoice> table1) {
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
        if (table[i].isActive == true) {
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
          BlocListener<InvoicepostCubit, InvoicepostState>(
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
                    if(data.invoicedData?.lines?.isNotEmpty==true)
                    {
                      data.invoicedData?.lines != null
                          ? table =  data.invoicedData?.lines ?? []
                          : table = [];
                      inventoryId.text=data.invoicedData?.inventoryId??"";
                      invoiceCodeController.text=data.invoicedData?.invoiceCode??"";
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
                          ? table =  data.lines ?? []
                          : table = [];
                      paymentIdController.text=data.paymentId??"";

                      inventoryId.text=data.inventoryId??"";
                      paymentStatusController.text=data.paymentStatus??"";
                      customerIdController.text=data.customerId??"";
                      trnController.text=data.trnNumber??"";
                      orderStatusController.text=data.orderStatus??"";
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
                      print("Variable.ak"+Variable.verticalid.toString());
                      context.read<InvoicereadCubit>().getSalesInvoiceRead(veritiaclid!);
                    }
                    else{
                      print("common");
                      // select=true;
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
                    body: SingleChildScrollView(
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SalesGeneralVerticalList(

                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,ontap: (int index){
                              setState(() {
                                selectedVertical=index;
                                // select=false;



                                veritiaclid = result[index].id;
                                // currentStock.clear();
                                //
                                context.read<InvoicereadCubit>().getSalesInvoiceRead(veritiaclid!);
                                setState(() {

                                });
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
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
                                    height: 50,
                                  ),
                                  Row(children: [
                                    TextWidget(text: "Invoice Lines"),
                                  ],),

                                  Divider(color: Colors.grey,thickness: 1,),
                                  SalesInvoiceGrowableTable(
                                    table:table,
                                    updateCheck: updateCheckFucction,
                                    // table: table,
                                    // select:select,
                                    updation: tableAssign,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Button(Icons.delete, Colors.red,ctx: context,
                                      //     text: "Discard",
                                      //     onApply: (){
                                      //
                                      //
                                      //
                                      //
                                      //
                                      //     },
                                      //     height: 29,
                                      //     width: 90,
                                      //     labelcolor: Colors.red,
                                      //     iconColor: Colors.red,
                                      //     bdr: true),
                                      SizedBox(
                                        width: width * .003,
                                      ),
                                      Button(Icons.check, Colors.grey,ctx: context,
                                          text: "SAVE",
                                          height: 29,
                                          Color: Color(0xff3E4F5B),
                                          width: 90,
                                          labelcolor: Colors.white,
                                          iconColor: Colors.white,
                                          onApply: (){
                                            if (updateCheck)
                                              context.showSnackBarError(
                                                  "please click the update button ");
                                            else {
                                              List<Postlines>  table1=[];
                                              if(table.isNotEmpty){
                                                for(var i=0;i<table.length;i++)
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
                                              else{
                                                table1=[];
                                              }
                                              SalesReturnInvoicePostModel model = SalesReturnInvoicePostModel(
                                                  salesOrderId: veritiaclid,
                                                  inventoryId: inventoryId?.text??"",
                                                  invoicedBy: "inv",
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


                                          }
                                      ),
                                      SizedBox(
                                        width: width * .008,
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
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
class SalesInvoiceGrowableTable extends StatefulWidget {
  List<OrderLinesInvoice> table;
  final Function updation;
  final Function updateCheck;
  // final Function updation;
  SalesInvoiceGrowableTable({required this.table,required this.updation,required this.updateCheck});

  @override
  _SalesInvoiceGrowableTableState createState() => _SalesInvoiceGrowableTableState();
}

class _SalesInvoiceGrowableTableState extends State<SalesInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  bool editionchek=false;


  double taxableUpdateMethod(
      int reqQty, double unitCst, double exTaxx, double disct, String? type) {
    double taxableAmounts = 0;
    if (type == "price") {
      taxableAmounts =double.parse (((((reqQty * unitCst) + exTaxx) - disct)).toStringAsFixed(2));
    } else if (type == "percentage") {
      double total = 0;
      total = (reqQty * unitCst) + exTaxx;
      taxableAmounts = double.parse((total - ((total * disct) / 100)).toStringAsFixed(2));
    }
    return taxableAmounts;
  }



  double sellingPriceUpdation(double taxableAmount, double vatt) {
    double sellingPrice1 = 0;
    sellingPrice1 = double.parse((taxableAmount + ((taxableAmount * vatt) / 100)).toStringAsFixed(2));

    setState(() {});
    return sellingPrice1;
  }



  double totalPriceUpdation(double sellingprice, double warrentyprice) {
    double totalPrice1;
    totalPrice1 = sellingprice + warrentyprice;
    setState(() {});
    return totalPrice1;
  }
  List<OrderLinesInvoice> table1=[];
  void initState() {

    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return
      BlocListener<InvoicereadCubit, InvoicereadState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                print("algorithm" + data.toString());
                if(data.invoicedData?.lines?.isNotEmpty==true)
                {
                  print("algorithm1" + data.toString());
                  print(data?.invoicedData?.lines.toString());
                  data.invoicedData?.lines != null
                      ? table1 =List.from(  data.invoicedData?.lines ?? [])
                      : table1 = [];


                }
                else{
                  print("algorithm2" + data.toString());
                  print(  data.lines.toString());
                  data.lines != null
                      ? table1 = List.from( data.lines ?? [])
                      : table1 = [];
                  print("algorithm2" + table1[0].quantity.toString());






                }


                // setState(() {
                //   print("taskssss");

                setState(() {});
              });
          // TODO: implement listener
        },
        child: Builder(
                  builder: (context) {
                    return Scrollbar(
                      controller: recieveController,
                      isAlwaysShown: true,
                      child: Container(
                        color: Colors.white,
                        alignment: Alignment.topRight,
                        child: SingleChildScrollView(
                          controller:recieveController ,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                child:
                                Container(
                                  width: 2200,
                                  padding: EdgeInsets.all(10),
                                  child: customTable(



                                      tableWidth: .5,

                                      childrens:[
                                        TableRow(

                                          // decoration: BoxDecoration(

                                          //     color: Colors.green.shade200,

                                          //     shape: BoxShape.rectangle,

                                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                            children: [

                                              tableHeadtext('Variant Id',  size: 13,),
                                              tableHeadtext('Barcode',  size: 13,
                                              ),
                                              tableHeadtext('Sales Order Line Code', size: 13,
                                              ),

                                              tableHeadtext('Return Based On', size: 13,),
                                              tableHeadtext(
                                                'Return time ',

                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                ' Is Invoiced',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Sales UOM',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

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

                                                'Excess Tax',


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
                                                'Is Active',

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
                                        if (table1 != null)...[
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

                                style: BorderStyle.solid))),

                                                children: [

                                                  TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1?[i].variantId??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),    TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1?[i].barcode??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),    TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1[i].salesOrderLineCode??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),    TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1[i].returnType??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),    TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1[i].returnTime.toString()??""??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),

                                                  TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: CheckedBoxs(
                                                        valueChanger:table1[i].isInvoiced??false,

                                                        onSelection:(bool ? value){
                                                          editionchek=true;
                                                          // widget.updateCheck(true);
                                                          bool isinvoiced =table1[i].isInvoiced??false;
                                                          setState(() {
                                                            isinvoiced = !isinvoiced!;
                                                            table1[i] = table1[i].copyWith(isInvoiced: isinvoiced);
                                                            setState(() {});
                                                          });
                                                        }),
                                                  ),   TableCell(
                                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                                    child: textPadding(table1[i].salesUom??"", fontSize: 12,
                                                        padding: EdgeInsets.only(left: 11.5, top:
                                                        1.5), fontWeight: FontWeight.w500),
                                                  ),

                                                  TableCell(
                                                    verticalAlignment:
                                                    TableCellVerticalAlignment.middle,
                                                    child: UnderLinedInput(
                                                      initialCheck:true,
                                                      // controller: requestedListControllers[i],
                                                      last: table1[0]?.totalQuantity
                                                          .toString() ??
                                                          "",
                                                      onChanged: (va) {
                                                        widget.updateCheck(true);
                                                        // table1[i] = table1[i].copyWith(updatecheck: true);
                                                        // // table[i] = table[i].copyWith(updateCheck: true);
                                                        // setState(() {
                                                        //
                                                        // });
                                                        // print(va);
                                                        if (va == "") {
                                                          print("entered");
                                                          // assignCheck = true;
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
                                                                sellingPriceTotal:
                                                                sellingPrice,
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
                                                        // table1[i] = table[i].copyWith(updateCheck: true);
                                                        // setState(() {
                                                        //
                                                        // });
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
                                                  PopUpCall(
                                                    type: "PriceTypePopUpCall",
                                                    value: table1[i].discountType??"price",
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
                                                      table1?[i].discount.toString()
                                                          ,
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
                                                        // table[i] = table[i].copyWith(updateCheck: true);
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
                                                    child: CheckedBoxs(
                                                        valueChanger:
                                                        table1?[i].isActive == null
                                                            ? false
                                                            : table1?[i].isActive,
                                                        onSelection: (bool? value) {
                                                          bool? isActive =
                                                              table1[i].isActive;
                                                          setState(() {
                                                            widget.updateCheck(true);
                                                            // table1[i] = table1[i].copyWith(updatecheck: true);
                                                            // table1[i] = table1[i].copyWith(updateCheck: true);
                                                            setState(() {});
                                                            isActive = !isActive!;
                                                            table1[i] = table1[i]
                                                                .copyWith(
                                                                isActive: isActive);
                                                          });
                                                        }),
                                                  ),
                                                  TableTextButton(
                                                    onPress: () {
                                                      widget.updateCheck(false);
                                                      widget.updation(table1);
                                                      // table1[i].copyWith(updatecheck: false);
                                                    },
                                                    label: "UPDATE",
                                                  )


                                                ]
                                            )
                                        ],

                                      if(table1.isEmpty==true)
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
                      textPadding(""),
                      textPadding(""),
                      textPadding(""),

                      Container(height: 50,)


                    ])


                                        ]

                                  ),
                                ),

                              )

                            ],
                          ),

                        ),
                      ),
                    );
                  }
              ),
      );
  }
}
class InvoiceSalesStableTable extends StatefulWidget {
  final TextEditingController invoiceCode;
  final TextEditingController invoiceDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trn;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignedto;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController excise;
  final TextEditingController taxable;
  final TextEditingController vat;
  final TextEditingController sellingPrice;
  final TextEditingController totalPrice;
  InvoiceSalesStableTable({required this.invoiceCode,required this.invoiceDate,required this.totalPrice,required this.discount,required this.orderStatus,
    required this.customerId,required this.paymentStatus,required this.paymentId,required this.sellingPrice,required this.vat,required this.invoiceStatus,required this.note,
    required this.remarks,required this.paymentMethod,required this.trn,required this.assignedto,required this.excise,required this.taxable,required this.unitCost,});
  @override
  _InvoiceSalesStableTableState createState() => _InvoiceSalesStableTableState();
}

class _InvoiceSalesStableTableState extends State<InvoiceSalesStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Column(
              children: [

                NewInputCard(
                    controller: widget.invoiceCode
                    , title: "Invoice Code"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: widget.invoiceDate, title: "Invoice Date"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: widget.paymentId, title: "Payment Id"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: widget.paymentStatus, title: "Payment Status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: widget.paymentMethod, title: "Payment Method"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: widget.customerId, title: "Customer Id"),
                SizedBox(
                  height: height * .119,
                ),



              ],
            )),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .015,
              ),
              NewInputCard(
                  controller: widget.trn, title: "TRN Number"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.orderStatus, title: "Order Status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.invoiceStatus, title: "Invoice Status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.assignedto, title: "Assigned To"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                controller: widget.note, title: "Note",
                height: 90,
                maxLines: 3,),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                controller: widget.remarks, title: "Remarks",
                height: 90,
                maxLines: 3,),




            ],)),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .015,
              ),



              NewInputCard(
                  controller: widget.unitCost, title: "Unit Cost"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.discount, title: "Discount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.excise, title: "Exccess Tax"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                  controller: widget.taxable, title: "Taxable  Amount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.vat, title: "VAT"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.sellingPrice, title: "Selling Price Total"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.totalPrice, title: "Total Price"),

            ],))

          ],
        ),
      );
  }
}