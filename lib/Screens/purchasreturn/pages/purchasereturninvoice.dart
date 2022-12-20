import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/invoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/invoicepost_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';


import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../../../commonWidget/Colors.dart';
import '../../../printScreen.dart';
import 'general.dart';
import 'model/invoicepost.dart';
import 'model/purchasereturninvoicemodel.dart';

class PurchaseReturnInvoice extends StatefulWidget {
  @override
  _PurchaseReturnInvoiceState createState() => _PurchaseReturnInvoiceState();
}

class _PurchaseReturnInvoiceState extends State<PurchaseReturnInvoice> {
  var paginatedList;
  TextEditingController returnInvoiceCodeController = TextEditingController();
  TextEditingController purchaseReturnOrderCodeController =
      TextEditingController();
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
        if (lines?[i].isInvoiced == true) {
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
                      print("datass" + data.toString());
                      print(data.invoicedata?.orderLiness?.length.toString());

                      if (data.invoicedata?.orderLiness?.isNotEmpty==true) {
                        print("aaaaaaaaa");
                        data.invoicedata?.orderLiness != null
                            ? lines =List.from( data.invoicedata?.orderLiness ?? [])
                            : lines = [];

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
                        vatController.text =
                            data.invoicedata?.vat.toString() ?? "";
                        actualCostController.text =
                            data.invoicedata?.actualCost.toString() ?? "";
                        grandTotalCostController.text =
                            data.invoicedata?.grandTotal.toString() ?? "";
                        noteController.text = data.invoicedata?.notes.toString() ?? "";
                        inventoryContoller.text = data.invoicedata?.inventoryId.toString() ?? "";
                        vendoridContoller.text = data.invoicedata?.vendorId.toString() ?? "";
                        vendorTrnnumberController.text = data.invoicedata?.vendorTrnNumber.toString() ?? "";
                        purchaseInvoiceidController.text = data.invoicedata?.purchaseInvoiceId.toString() ?? "";
                      } else {
                        print("aaaaaaaaa2");
                        data?.orderLiness != null
                            ? lines = data?.orderLiness ?? []
                            : lines = [];
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
                        setState(() {

                        });
                      }
                      // stockCheck=false;
                      //
                      // print("datasssssssssssssss"+data.toString());
                      // data.data?.orderLines != null ? table = data.data?.orderLines ?? [] : table = [];
                      // print("tablsssssssssssssssssse"+table.toString());
                      // Variable.inventory_ID =data.data?.iventoryId??"";
                      // vendortrnnumber.text=data.data?.vendorTrnNumber??"";
                      // vendoraddress.text=data.data?.vendorAddress??"";
                      // note.text=data.data?.note??"";
                      // purchaseUom=data.data?.purchaseOrderType??"";
                      // orderType=data.data?.purchaseOrderType??"";
                      // inventoryId.text=data.data?.iventoryId??"";
                      // orderDate.text=data.data?.orderDate??"";
                      // remarks.text=data.data?.remarks??"";
                      // if(data.data?.unitcost==null||data.data?.unitcost=="null"){
                      //   unitcourse.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     unitcourse.text = data.data?.unitcost.toString()??"";
                      //   });
                      // }
                      // if(data.data?.excessTax==null||data.data?.excessTax=="null"){
                      //   excesstax.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     excesstax.text = data.data?.excessTax.toString()??"";
                      //   });
                      // }
                      // if(data.data?.actualCost==null||data.data?.actualCost=="null"){
                      //   actualcost.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     actualcost.text = data.data?.actualCost.toString()??"";
                      //   });
                      // }
                      // if(data.data?.vat==null||data.data?.vat=="null"){
                      //   vat.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     vat.text = data.data?.vat.toString()??"";
                      //   });
                      // }
                      // if(data.data?.grandTotal==null||data.data?.grandTotal=="null"){
                      //   grandtotal.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     grandtotal.text = data.data?.grandTotal.toString()??"";
                      //   });
                      // }
                      // if(data.data?.variableAmount==null||data.data?.variableAmount=="null"){
                      //   Variableamount.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     Variableamount.text = data.data?.variableAmount.toString()??"";
                      //   });
                      // }
                      // if(data.data?.foc ==null||data.data?.foc =="null"){
                      //   foc.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     foc.text = data.data?.foc.toString()??"";
                      //   });
                      // }
                      // if(data.data?.discount! ==null||data.data?.discount! =="null"){
                      //   discount.text =='';
                      // }
                      // else{
                      //   setState(() {
                      //     discount.text = data.data?.discount.toString()??"";
                      //
                      //   });
                      //
                      // }
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
                      print("Variable.ak" + Variable.verticalid.toString());
                      context
                          .read<InvoiceReadCubit>()
                          .getInvoiceRead(veritiaclid!);
                    } else {
                      print("common");
                      // select=true;
                      setState(() {});
                    }

                    setState(() {});
                  });
                });
          },
          builder: (context, state) {
            return Builder(builder: (context) {
              return Scaffold(
                backgroundColor: Pellet.bagroundColor,
                body: SingleChildScrollView(
                  child: IntrinsicHeight(
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

                              veritiaclid = result[index].id;

                              context.read<InvoiceReadCubit>().getInvoiceRead(veritiaclid!);
                              setState(() {});
                            });
                          },
                          result: result,
                          child:     tablePagination(
                                () => context
                                .read<VertiacalCubit>()
                                .refresh(),
                            back: paginatedList?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<VertiacalCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next:paginatedList?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<VertiacalCubit>()
                                  .nextslotSectionPageList();
                            },
                          ),
                        ),
                        // VerticalList(
                        //   tab:"RF",
                        //   selectedVertical: selectedVertical,
                        //   itemsearch: itemsearch,ontap: (int index){
                        //   setState(() {
                        //     print("taped");
                        //     select=false;
                        //     clear();
                        //     selectedVertical=index;
                        //     updateCheck=false;
                        //     currentStock.clear();
                        //
                        //     veritiaclid =
                        //         result[index].id;
                        //     Variable.verticalid2=result[index].id;
                        //     context
                        //         .read<
                        //         RequestformreadCubit>()
                        //         .getRequestFormRead(
                        //         veritiaclid!);
                        //   });
                        // },result: result,
                        // ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.end,
                                  children: [
                                    // Container(
                                    //   padding:
                                    //       EdgeInsets.only(top: 15, left: 10),
                                    //   child: TextButton(
                                    //     style: TextButton.styleFrom(
                                    //         primary: Colors.blue,
                                    //         // elevation: 2,
                                    //         backgroundColor: Colors.white24),
                                    //     onPressed: () {
                                    //       setState(() {});
                                    //     },
                                    //     child: Text("Create"),
                                    //   ),
                                    // ),
                                    TextButtonLarge(
                                      text: "PREVIEW",
                                      onPress: () {
                                        print("Akshay");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              PurchaseReturnInvoicePrintScreen(


                                                // vendorCode:vendorCodeController.text,
                                                // orderCode:or.text ,
                                                // orderDate: orderDateController.text,
                                                table:lines,
                                                vat: double.tryParse( vatController.text),
                                                actualCost:double.tryParse( actualCostController.text),
                                                variableAmount:double.tryParse( vatableAmountController.text) ,
                                                discount:double.tryParse( discountController.text) ,
                                                unitCost:double.tryParse( unitCostController.text) ,
                                                excisetax:double.tryParse( excessTaxController.text) ,
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


                                // GrowableTable(),
                                CustomScrollBar(
                                  controller: recieveController,

                                  childs: Container(
                                    color: Colors.white,
                                    alignment: Alignment.topRight,
                                    child: SingleChildScrollView(
                                      controller: recieveController,
                                      physics: ScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            child: Container(
                                              width: 2200,
                                              // padding: EdgeInsets.all(10),
                                              child: customTable(

                                                  tableWidth: .5,
                                                  childrens: [
                                                    TableRow(

                                                        // decoration: BoxDecoration(

                                                        //     color: Colors.green.shade200,

                                                        //     shape: BoxShape.rectangle,

                                                        //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                                        children: [
                                                          tableHeadtext(
                                                            'Sno',

                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white,
                                                          ),
                                                          tableHeadtext(
                                                            'Return Order line Id',

                                                            size: 13,
                                                          ),

                                                          tableHeadtext(
                                                            'Variant Id',

                                                            size: 13,
                                                          ),

                                                          tableHeadtext(
                                                            'Variant Name',


                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          // tableHeadtext('description', size: 10, color: null),

                                                          tableHeadtext(
                                                            'Barcode',

                                                            size: 13,
                                                          ),

                                                          tableHeadtext(
                                                            'Purchase UOM',


                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),
                                                          tableHeadtext(
                                                            ' Qty',



                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Unit Cost',

                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Excess tax',


                                                            size: 13,
                                                            // color: Palette.containerDarknew,
                                                            // textColor: Palette.white
                                                          ),
                                                          tableHeadtext(
                                                            'Discount',
                                                            size: 13,
                                                          ),
                                                          tableHeadtext(
                                                            'FOC',


                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Variable Amount',


                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Vat',


                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Actual cost',
                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Grand Total',

                                                            size: 13,

                                                            // color: Palette.containerDarknew,

                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            'Is Invoiced',
                                                            size: 13,
                                                          ),

                                                          tableHeadtext(
                                                            'Is Free',

                                                            size: 13,
                                                            // color: Palette.containerDarknew,
                                                            // textColor: Palette.white
                                                          ),

                                                          tableHeadtext(
                                                            '',

                                                            size: 13,
                                                          ),

                                                          // if (widget.onAddNew) textPadding(''),
                                                        ]),

                                                    if(lines.isEmpty)...[
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

                                                            textPadding("",height: 55),

                                                          ]
                                                      )


                                                    ],

                                                    if (lines != null) ...[
                                                      for (var i = 0;
                                                          i < lines!.length;
                                                          i++)
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
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    (i + 1)
                                                                        .toString(),
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i].returnOrderLineCode ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i].variantId ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i].variantName ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i].barcode ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i].purchaseUom ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: UnderLinedInput(
                                                                  initialCheck:true,
                                                                  // controller: requestedListControllers[i],
                                                                  last: lines?[i].totalQty.toString()??"",
                                                                  onChanged: (va) {
                                                                    updateCheck=true;
                                                                    print(va);
                                                                    if (va == "") {
                                                                      print("entered");
                                                                      lines[i] = lines[i].copyWith(totalQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                    } else {
                                                                      var qty = int.tryParse(va);
                                                                      var dis = lines[i].discount;
                                                                      var excess = lines[i].excessTax;
                                                                      var unitcost = lines[i].unitCost;
                                                                      var vat = lines[i].vat;
                                                                      var foc = lines[i].foc;
                                                                      if (qty == 0 || unitcost == 0 ||unitcost=="") {
                                                                        lines[i] = lines[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                      }else {
                                                                        var Vamount;
                                                                        var vactualCost;

                                                                        Vamount  = (((unitcost! *
                                                                            qty!) +
                                                                            excess!) -
                                                                            dis!)
                                                                            .toDouble();
                                                                        if(vat==0 ||vat==""){
                                                                          vactualCost=Vamount;
                                                                        }
                                                                        else{
                                                                          vactualCost  = (Vamount! +
                                                                              ((Vamount! *
                                                                                  vat!) /
                                                                                  100));
                                                                        }


                                                                        lines[i] = lines[i].copyWith(
                                                                                vatableAmount: Vamount,
                                                                                actualCost: vactualCost,
                                                                                grandTotal: vactualCost,
                                                                                totalQty: qty);
                                                                      }



                                                                    }

                                                                    setState(() {});
                                                                  },
                                                                ),
                                                              ),

                                                              // TableCell(
                                                              //   verticalAlignment:
                                                              //       TableCellVerticalAlignment
                                                              //           .middle,
                                                              //   child: textPadding(
                                                              //       lines?[i]
                                                              //               .totalQty
                                                              //               .toString() ??
                                                              //           "",
                                                              //       fontSize:
                                                              //           12,
                                                              //       padding: EdgeInsets.only(
                                                              //           left:
                                                              //               11.5,
                                                              //           top:
                                                              //               1.5),
                                                              //       fontWeight:
                                                              //           FontWeight
                                                              //               .w500),
                                                              // ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .unitCost
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .excessTax
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    height: 42,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .discount
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    height: 42,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .foc
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .vatableAmount
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .vat
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .actualCost
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: textPadding(
                                                                    lines?[i]
                                                                            .grandTotal
                                                                            .toString() ??
                                                                        "",
                                                                    fontSize:
                                                                        12,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            11.5,
                                                                        top:
                                                                            1.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: CheckedBoxs(
                                                                    valueChanger:lines![i]
                                                                        .isInvoiced==null?false:lines![i]
                                                                        .isInvoiced,

                                                                    onSelection:(bool ? value){
                                                                      updateCheck=true;
                                                                      bool? isInvoiced = lines?[i].isInvoiced??false;
                                                                      setState(() {

                                                                        isInvoiced = !isInvoiced!;
                                                                        print(isInvoiced);
                                                                        // widget.updation(i,isActive);
                                                                        lines?[i] = lines![i].copyWith(isInvoiced: isInvoiced);
                                                                        addition();

                                                                        setState(() {});
                                                                      });

                                                                    }),
                                                              ),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: CheckedBoxs(
                                                                    valueChanger: lines![i].isFree ==
                                                                            null
                                                                        ? false
                                                                        : lines![i]
                                                                            .isFree,
                                                                    onSelection:
                                                                        (bool?
                                                                            value) {}),
                                                              ),
                                                              TableTextButton(
                                                                label:updateCheck? "update":"",
                                                                onPress: (){
                                                                  updateCheck=false;
                                                                  addition();
                                                                  setState(() {

                                                                  });


                                                                },
                                                              ),
                                                            ])
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
                                Container(
                                  color: Colors.white,
                                  height: 5,
                                ),

                                Container(
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SaveUpdateResponsiveButton(
                                  label:"SAVE" ,
                                  saveFunction: (){
                                    print("apppa"+lines.toString());
                                    if(updateCheck)  context.showSnackBarError("please click the update button");
                                    else{ PurchaseReturnInvoicePostModel model =
                                    PurchaseReturnInvoicePostModel(
                                        purchaseInvoiceId:purchaseInvoiceidController.text??"",
                                        returnOrderCode:purchaseReturnOrderCodeController?.text??"",
                                        inventoryId: inventoryContoller?.text??"",
                                        invoicedBy: 'test',
                                        venderId: vendoridContoller?.text??"",
                                        notes:noteController?.text??"",
                                        remarks: remarksController?.text??"",
                                        unitCost: double.tryParse( unitCostController?.text??""),
                                        foc: double.tryParse( focController?.text??""),
                                        discount: double.tryParse( discountController?.text??""),
                                        grandTotal: double.tryParse( grandTotalCostController?.text??""),
                                        vatableAmount: double.tryParse( vatableAmountController?.text??""),
                                        excessTax: double.tryParse( excessTaxController?.text??""),
                                        actualCost:  double.tryParse( actualCostController?.text??""),
                                        vat:  double.tryParse( vatController?.text??""),
                                        vendorTrnNumber: vendorTrnnumberController?.text??"",
                                        lines: lines
                                      // purchaseReturnOrderId: 1,
                                      // lines:[
                                      //
                                      // Order(
                                      //   returnOrderLineCode: "SZ6VTDTEOH",
                                      //   purchaseInvoiceId:"977FWCJCYP",
                                      //   isInvoiced: true,
                                      //   variantId:"gcvd" ,
                                      //   variantName: "test",
                                      //   totalQty: 1,
                                      //   unitCost: 100.0,
                                      //   isFree: true,
                                      //   purchaseUom: "akskk",
                                      //   suppliercode: "djhcb",
                                      //   barcode: "dchjbdhj",
                                      //   grandTotal: 100.0,
                                      //   vat: 100.0,
                                      //   vatableAmount: 100.0,
                                      //   actualCost: 100.0,
                                      //   excessTax: 100.0,
                                      //   discount: 100.0,
                                      //   foc: 100.0
                                      // )]
                                    );
                                    context.read<InvoicepostCubit>().invoicePost(model);}

                                  },
                                  discardFunction: (){

                                  },

                                )
                                ,
                                // Container(
                                //   margin: EdgeInsets.only(right:width*.015,),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.end,
                                //     children: [
                                //       Button(Icons.delete, Colors.red,
                                //           ctx: context,
                                //           text: "DISCARD",
                                //           onApply: () {},
                                //           height: 29,
                                //           width: 90,
                                //           labelcolor: Colors.red,
                                //           iconColor: Colors.red,
                                //           bdr: true),
                                //       SizedBox(
                                //         width: width * .008,
                                //       ),
                                //       Button(Icons.check, Colors.grey,
                                //           ctx: context,
                                //           text: "SAVE",
                                //           height: 29,
                                //           Color: Color(0xff3E4F5B),
                                //           width: 90,
                                //           labelcolor: Colors.white,
                                //           iconColor: Colors.white, onApply: () {
                                //         print("apppa"+lines.toString());
                                //         if(updateCheck)  context.showSnackBarError("please click the update button");
                                //            else{ PurchaseReturnInvoicePostModel model =
                                //         PurchaseReturnInvoicePostModel(
                                //             purchaseInvoiceId:purchaseInvoiceidController.text??"",
                                //             returnOrderCode:purchaseReturnOrderCodeController?.text??"",
                                //             inventoryId: inventoryContoller?.text??"",
                                //             invoicedBy: 'test',
                                //             venderId: vendoridContoller?.text??"",
                                //             notes:noteController?.text??"",
                                //             remarks: remarksController?.text??"",
                                //             unitCost: double.tryParse( unitCostController?.text??""),
                                //             foc: double.tryParse( focController?.text??""),
                                //             discount: double.tryParse( discountController?.text??""),
                                //             grandTotal: double.tryParse( grandTotalCostController?.text??""),
                                //             vatableAmount: double.tryParse( vatableAmountController?.text??""),
                                //             excessTax: double.tryParse( excessTaxController?.text??""),
                                //             actualCost:  double.tryParse( actualCostController?.text??""),
                                //             vat:  double.tryParse( vatController?.text??""),
                                //             vendorTrnNumber: vendorTrnnumberController?.text??"",
                                //             lines: lines
                                //             // purchaseReturnOrderId: 1,
                                //             // lines:[
                                //             //
                                //             // Order(
                                //             //   returnOrderLineCode: "SZ6VTDTEOH",
                                //             //   purchaseInvoiceId:"977FWCJCYP",
                                //             //   isInvoiced: true,
                                //             //   variantId:"gcvd" ,
                                //             //   variantName: "test",
                                //             //   totalQty: 1,
                                //             //   unitCost: 100.0,
                                //             //   isFree: true,
                                //             //   purchaseUom: "akskk",
                                //             //   suppliercode: "djhcb",
                                //             //   barcode: "dchjbdhj",
                                //             //   grandTotal: 100.0,
                                //             //   vat: 100.0,
                                //             //   vatableAmount: 100.0,
                                //             //   actualCost: 100.0,
                                //             //   excessTax: 100.0,
                                //             //   discount: 100.0,
                                //             //   foc: 100.0
                                //             // )]
                                //         );
                                //         context.read<InvoicepostCubit>().invoicePost(model);}
                                //       }),
                                //       SizedBox(
                                //         width: width * .008,
                                //       ),
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
                ),
              );
            });
          },
        ),
      ),
    );
  }
}

class InvoiceStableTable extends StatefulWidget {
  final TextEditingController returnInvoiceCode;
  final TextEditingController purchaseReturnOrderCode;
  final TextEditingController orderDate;
  final TextEditingController paymentCode;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController discount;
  final TextEditingController excessTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandToatl;
  final TextEditingController note;
  final TextEditingController remarks;

  InvoiceStableTable(
      {required this.returnInvoiceCode,
      required this.purchaseReturnOrderCode,
      required this.orderDate,
      required this.paymentMethod,
      required this.paymentCode,
      required this.paymentStatus,
      required this.invoiceStatus,
      required this.note,
      required this.remarks,
      required this.discount,
      required this.foc,
      required this.unitCost,
      required this.vatableAmount,
      required this.excessTax,
      required this.vat,
      required this.actualCost,
      required this.grandToatl,
      required this.orderStatus});
  @override
  _InvoiceStableTableState createState() => _InvoiceStableTableState();
}

class _InvoiceStableTableState extends State<InvoiceStableTable> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                  controller: widget.returnInvoiceCode,
                  title: "Return Invoice Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.purchaseReturnOrderCode,
                  title: "Purchase Return Order Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(controller: widget.orderDate, title: "Ordered Date"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.paymentCode, title: "Payment Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                  controller: widget.paymentStatus, title: "Payment Status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.paymentMethod,
                  title: "Payment Method"),
              SizedBox(
                height: height * .05,
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [

              NewInputCard(
                  readOnly: true,
                  controller: widget.orderStatus,
                  title: "Order Status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.invoiceStatus,
                  title: "Invoice Status"),
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
                  readOnly: true, controller: widget.foc, title: "FOC"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                controller: widget.unitCost,
                title: "Unit Cost",
              ),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                controller: widget.vatableAmount,
                title: "Variable Amount",
              ),
              SizedBox(
                height: height * .046,
              ),

            ],
          )),
          Expanded(
              child: Column(
            children: [

              NewInputCard(
                  readOnly: true,
                  controller: widget.excessTax,
                  title: "Excess Tax"),
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
                  controller: widget.actualCost,
                  title: "Actual Cost"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.grandToatl,
                  title: "Grand Total"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                height: 90,
                controller: widget.note,
                title: "Note",
                maxLines: 3,
              ),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  height: 80,
                maxLines: 3,
                   controller: widget.remarks, title: "Remarks"),

            ],
          ))
        ],
      ),
    );
  }
}
