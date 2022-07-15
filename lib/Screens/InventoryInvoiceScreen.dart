import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
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

import '../printScreen.dart';
import 'GeneralScreen.dart';
import 'inventory_creation_tab/cubits/cubit/inventory_read_cubit.dart';
import 'inventory_creation_tab/cubits/cubit/inventorypost_cubit.dart';
import 'inventory_creation_tab/inventory_read_model.dart';

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
  List<PurchaseOrder>result=[];

  int selectedVertical=0;
  String inventoryId="";
  int? veritiaclid=0;
  bool select=false;
  List<Lines> additionalVariants = [];
  TextEditingController itemsearch=TextEditingController();
  late AutoScrollController recieveController;
  addition() {
    print("enterd");
    print("+==" + additionalVariants.toString());
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
        print("excessTaxvalue"+excessTAxValue.toString());
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
    BlocListener<InventoryReadCubit, InventoryReadState>(
      listener: (context, state) {

        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {

              setState(() {
                print("datasssssssssssssss"+data.toString());
                if(data.invoicedata!.invoiceLines?.isNotEmpty==true){
                  print("entered 1st position");
                  setState(() {
                    purchaseCodeController.text=data.invoicedata?.orderCode??"";
                    inventoryId=data.invoicedata?.inventoryId??"";
                    invoiceCodeController.text=data.invoicedata?.invoicedCode??"";
                    invoiceStatusController.text=data.invoicedata?.invoiceStatus??"";

                    noteController.text=data.invoicedata?.notes??"";
                    remarksController.text=data.invoicedata?.remarks??"";
                    unitCostController.text=data.invoicedata?.unitCost.toString()??"";
                    focController.text=data.invoicedata?.foc.toString()??"";
                    discountController.text=data.invoicedata?.discount.toString()??"";
                    grandTotalController.text=data.invoicedata?.grandtotal.toString()??"";
                    variableAmountController.text=data.invoicedata?.vatableAmount.toString()??"";
                    exciseTaxController.text=data.invoicedata?.excessTax.toString()??"";
                    actualCostController.text=data.invoicedata?.actualCost.toString()??"";
                    vatController.text=data.invoicedata?.vat.toString()??"";
                    vatController.text=data.invoicedata?.vat.toString()??"";
                    data.invoicedata?.invoiceLines != null
                        ? additionalVariants = data.invoicedata?.invoiceLines ?? []
                        : additionalVariants = [];


                  });




                }
                else{
                  print("entered 2ndst position");
                  purchaseCodeController.text=data.orderCode??"";


                  inventoryId=data.inventoryId??"";
                 orderedDateController.text=data.orderDate??"";
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
                     ? additionalVariants = data.lines ?? []
                     : additionalVariants = [];
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
          context.showSnackBarError("Loadingggg");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
            context.read<InventorysearchCubit>().getInventorySearch("code",tab:"II");
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
  child: SingleChildScrollView(
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
                              selectedVertical=index;

                              veritiaclid =
                                  result[index].id;
                              context
                                  .read<
                                  InventoryReadCubit>()
                                  .getInventoryRead(
                                  veritiaclid!);
                            });
                          },result: result,
                        ),
                  Expanded(child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [


                          TextButtonLarge(
                            text: "PREVIEW",
                            onPress: (){
                              print("Akshay");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                   InventoryPrintScreen(
                                      note: noteController.text,
                                      select: select,
                                      // vendorCode:vend.text,
                                      // orderCode:ord.text ,
                                      orderDate: orderedDateController.text,
                                      table:additionalVariants,
                                      vat: double.tryParse( vatController.text),
                                      actualCost:double.tryParse( actualCostController.text),
                                      variableAmount:double.tryParse( variableAmountController.text) ,
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
                      Row(
                        children: [
                                Expanded(child: Column(children: [
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: invoiceCodeController, title: "Invoice code"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: purchaseCodeController, title: "purchase order code"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: orderedDateController, title: "ordered date"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,

                                      controller: paymentCodeController, title: "payment code"),
                                  SizedBox(height: height*.035,),
                                  NewInputCard(
                                    readOnly: true, controller: paymentStatusController, title: "payment status"),
                                  SizedBox(height: height*.035,),
                                  NewInputCard(
                                    readOnly: true, controller: paymentMethodController, title: "payment method"),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),


                                ],)),
                                Expanded(child: Column(children: [
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: orderStatusController, title: "order status"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: invoiceStatusController, title: "invoice status"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                    readOnly: true,
                                      controller: discountController, title: "discount"),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: focController, title: "foc"),
                                  SizedBox(height: height*.035,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: unitCostController, title: "unit cost"),
                                  SizedBox(height: height*.035,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: variableAmountController, title: "variable amount"),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),


                                ],)),
                                Expanded(child: Column(children: [
                                  SizedBox(height: height*.030,),
                                  SizedBox(height: height*.030,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: exciseTaxController, title: "excise tax"),
                                  SizedBox(height: height*.020,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: vatController, title: "vat"),
                                  SizedBox(height: height*.020,),
                                  NewInputCard(    readOnly: true,

                                      controller: actualCostController, title: "actual cost"),
                                  SizedBox(height: height*.020,),
                                  NewInputCard(
                                      readOnly: true,
                                      controller: grandTotalController, title: "grand total"),
                                  SizedBox(height: height*.020,),
                                  NewInputCard(

                                      controller: noteController, title: "note",height: 90,maxLines: 2,),
                                  SizedBox(height: height*.010,),
                                  NewInputCard(

                                      controller: remarksController, title: "remarks",height: 90,maxLines: 2,),




                                ],)),

                        ],
                      ),
                          SizedBox(height: 80,),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextWidget(text: "recieving lines"),
                            ],
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          SizedBox(height: 5,),
                         Scrollbar(
                             controller: recieveController,
                             isAlwaysShown: true,
                             child:Container(
                               color: Colors.white,
                               alignment: Alignment.topRight,

                               child:SingleChildScrollView(
                                 controller: recieveController,
                                 physics: ScrollPhysics(),
                                 scrollDirection: Axis.horizontal,

                                child:
                                Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     SingleChildScrollView(
                                       child: Container(
                                         width: 2200,
                                         padding: EdgeInsets.all(10),
                                         child:customTable(
                                           border: const TableBorder(
                                             verticalInside: BorderSide(
                                                 width:.5,
                                                 color: Colors.black45,
                                                 // color: Colors.blue,
                                                 style:
                                                 BorderStyle.solid),

                                             horizontalInside:
                                             BorderSide(
                                                 width:.3,
                                                 color: Colors.black45,
                                                 // color: Colors.blue,
                                                 style:
                                                 BorderStyle.solid),),
                                           tableWidth: .5,
                                           childrens: [
                                             TableRow(
                                               // decoration: BoxDecoration(
                                               //     color: Colors.green.shade200,
                                               //     shape: BoxShape.rectangle,
                                               //     border: const Border(      top: BorderSide(
                                               //         width: .5,
                                               //         color: Colors.black45,
                                               //         // color: Colors.blue,
                                               //         style: BorderStyle.solid
                                               //     ),)),
                                                 children: [
                                                   tableHeadtext(
                                                     'Sno',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white,
                                                   ),
                                                   tableHeadtext(
                                                     'receiving line id',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Variant Id',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Variant Name',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),

                                                   // tableHeadtext('description', size: 10, color: null),
                                                   tableHeadtext(
                                                     'Barcode',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),


                                                   tableHeadtext(
                                                     'Purchase UOM',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Requested qty',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),


                                                   tableHeadtext(
                                                     'Is Recieved',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Unit Cost',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Excise Tax',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Discount',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'FOC',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Vatable Amount',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),

                                                   tableHeadtext(
                                                     'Vat',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Actual Cost',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Grand Total',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Is Invoiced',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),
                                                   tableHeadtext(
                                                     'Is Free',
                                                     padding:
                                                     EdgeInsets.all(7),
                                                     height: 46,
                                                     size: 13,
                                                     // color: Palette.containerDarknew,
                                                     // textColor: Palette.white
                                                   ),

                                                   // if (widget.onAddNew) textPadding(''),
                                                 ]),
                                 if (additionalVariants != null)...[
                         for(var i=0;i<additionalVariants.length;i++)
                                             TableRow(
                                                 decoration: BoxDecoration(
                                                     color: Colors.grey.shade200,
                                                     shape: BoxShape.rectangle,
                                                     border: const Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid), right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle.solid))),
                                                 children: [
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),

                                                   ),
                                                   // TableCell(
                                                   //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                   //   child: PopUpCall(
                                                   //
                                                   //     type:
                                                   //     "cost-method-list",
                                                   //     value: additionalVariants[i].variantId,
                                                   //     onSelection:
                                                   //         (VariantId? va) {
                                                   //
                                                   //       additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                   //       setState(() {
                                                   //         var  variant=
                                                   //             va?.code;
                                                   //         int? id = va!.id;
                                                   //         Variable.tableindex =i;
                                                   //         Variable.tableedit=true;
                                                   //
                                                   //
                                                   //         // onChange = true;
                                                   //         // context
                                                   //         //     .read<
                                                   //         //     TableDetailsCubitDartCubit>()
                                                   //         //     .getTableDetails(
                                                   //         //     id);
                                                   //         // context
                                                   //         //     .read<PurchaseStockCubit>()
                                                   //         //     .getCurrentStock(1, variant);
                                                   //
                                                   //         // orderType = va!;
                                                   //       });
                                                   //     },
                                                   //     onAddNew: () {},
                                                   //     // restricted: true,
                                                   //   ),
                                                   // ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].receiveLineCode .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].variantName ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),

                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].barcode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),

                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].purchaseUom.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].receivedQty.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: Checkbox(
                                                       value: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                       onChanged: (bool? value) {
                                                         // bool? isRecieved = additionalVariants[i].isReceived;
                                                         // setState(() {
                                                         //   isRecieved = !isRecieved!;
                                                         //   additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                         //   print(additionalVariants);
                                                         // });
                                                       },
                                                     ),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].unitCost .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].excessTax .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].discount .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].foc .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].variableAmount .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),


                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].vat.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                              


                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].actualCost.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: textPadding(additionalVariants[i].grandTotal.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                   ),
                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: Checkbox(
                                                       value: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                       onChanged: (bool? value) {
                                                         bool? isInvoiced = additionalVariants[i].isInvoiced??false;
                                                         setState(() {
                                                           isInvoiced = !isInvoiced!;
                                                           additionalVariants[i] = additionalVariants[i].copyWith(isInvoiced: isInvoiced);
                                                           addition();

                                                         });
                                                       },
                                                     ),
                                                   ),


                                                   TableCell(
                                                     verticalAlignment: TableCellVerticalAlignment.middle,
                                                     child: Checkbox(
                                                       value: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                       onChanged: (bool? value) {
                                                         setState(() {});
                                                       },
                                                     ),
                                                   ),

















                                                 ]
                                             ),
                      ]


                                           ],
                                           widths: {
                                             0: FlexColumnWidth(2),
                                             1: FlexColumnWidth(4),
                                             2: FlexColumnWidth(6),
                                             3: FlexColumnWidth(3),
                                             4: FlexColumnWidth(3),
                                             5: FlexColumnWidth(3),
                                             6: FlexColumnWidth(3),
                                             7: FlexColumnWidth(3),
                                             8: FlexColumnWidth(3),
                                             9: FlexColumnWidth(3),
                                             10: FlexColumnWidth(3),
                                             11: FlexColumnWidth(3),
                                             12: FlexColumnWidth(3),
                                             13: FlexColumnWidth(3),
                                             14: FlexColumnWidth(3),
                                             15: FlexColumnWidth(3),
                                             16: FlexColumnWidth(3),
                                             17: FlexColumnWidth(3),
                                             18: FlexColumnWidth(2),
                                             19: FlexColumnWidth(2),
                                             20: FlexColumnWidth(2),
                                             21: FlexColumnWidth(2.4),

                                           },

                                         ) ,
                                       ),
                                     )
                                     ,

                                   ],
                                 )
                                 ,

                               )
                             )
                         ),
                         // ScrollableTable(),
                          SizedBox(height: 20,),

                          Row(
                            children: [
                              Spacer(),
                              Button(Icons.delete, Colors.red,ctx: context,
                                  text: "Discard",height: 29,
                                  onApply: (){print("Akkk");},
                                  width: 90,labelcolor: Colors.red,iconColor: Colors.red),
                              SizedBox(width: width*.008,),

                              Button(Icons.check, Colors.grey,ctx: context,
                                  onApply: (){
                                for(var i=0;i<additionalVariants.length;i++){
                                  List result = additionalVariants.where((o) => o.isInvoiced == true).toList();


                                }
                                print("additionalvariants"+additionalVariants.toString());
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
                                     invoicedBy: "akshay",
                                     invoiceLines: additionalVariants,





                                     // orderLines: table,
                                    );
                                    context.read<InventorypostCubit>().postInventory(model);








                                  },
                                  text: "Save",height: 29,
                                  width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
                              SizedBox(width: width*.008,),
                            ],
                          )

                    ],
                  )),

                ],
              )
              // Column(
              //   children: [Row(
              //     children: [
              //       // VerticalList(selectedVertical: selectedVertical,
              //       //   itemsearch: itemsearch,ontap: (int index){
              //       //     setState(() {
              //       //       print("taped");
              //       //       select=false;
              //       //       selectedVertical=index;
              //       //
              //       //       veritiaclid =
              //       //           result[index].id;
              //       //       context
              //       //           .read<
              //       //           RequestformreadCubit>()
              //       //           .getRequestFormRead(
              //       //           veritiaclid!);
              //       //     });
              //       //   },result: result,
              //       // ),
              //
              //
              //       Expanded(child: Column(children: [
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "Invoice code"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "purchase order code"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "ordered date"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "payment code"),
              //         SizedBox(height: height*.035,),
              //         NewInputCard(
              //             controller: controller, title: "payment status"),
              //         SizedBox(height: height*.035,),
              //         NewInputCard(
              //             controller: controller, title: "payment method"),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //
              //
              //       ],)),
              //       Expanded(child: Column(children: [
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "order status"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "invoice status"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "discount"),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "foc"),
              //         SizedBox(height: height*.035,),
              //         NewInputCard(
              //             controller: controller, title: "unit cost"),
              //         SizedBox(height: height*.035,),
              //         NewInputCard(
              //             controller: controller, title: "variable amount"),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //
              //
              //       ],)),
              //       Expanded(child: Column(children: [
              //         SizedBox(height: height*.030,),
              //         SizedBox(height: height*.030,),
              //         NewInputCard(
              //             controller: controller, title: "excise tax"),
              //         SizedBox(height: height*.020,),
              //         NewInputCard(
              //             controller: controller, title: "vat"),
              //         SizedBox(height: height*.020,),
              //         NewInputCard(
              //             controller: controller, title: "actual cost"),
              //         SizedBox(height: height*.020,),
              //         NewInputCard(
              //             controller: controller, title: "grand total"),
              //         SizedBox(height: height*.020,),
              //         NewInputCard(
              //             controller: controller, title: "note",height: 90,maxLines: 2,),
              //         SizedBox(height: height*.010,),
              //         NewInputCard(
              //             controller: controller, title: "remarks",height: 90,maxLines: 2,),
              //
              //
              //
              //
              //       ],)),
              //     ],
              //   ),
              //     SizedBox(height: 80,),
              //     Row(mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         TextWidget(text: "recieving lines"),
              //       ],
              //     ),
              //     Divider(color: Colors.grey,thickness: 1,),
              //     SizedBox(height: 5,),
              //    // ScrollableTable(),
              //     SizedBox(height: 100,),
              //
              //     Row(
              //       children: [
              //         Spacer(),
              //         // Button(Icons.delete, Colors.red,ctx: context,
              //         //     text: "Discard",height: 29,
              //         //     onApply: (){print("Akkk");},
              //         //     width: 90,labelcolor: Colors.red,iconColor: Colors.red),
              //         SizedBox(width: width*.008,),
              //
              //         // Button(Icons.check, Colors.grey,ctx: context,
              //         //     onApply: (){print("Akkk");},
              //         //     text: "Discard",height: 29,
              //         //     width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
              //         SizedBox(width: width*.008,),
              //       ],
              //     )
              //   ],
              //
              // ),
            ),
          ),
);
        }
      ),
),
    );
  }
}
class InventoryPrintScreen extends StatefulWidget {
  final String vendorCode;
  final String note;
  final bool select;
  final String orderCode;
  final String orderDate;
  final String remarks;
  final double? discount;
  final double? vat;
  final double? variableAmount;
  final double? actualCost;
  final double? unitCost;
  final double? excisetax;
  final  List<Lines> table;

  InventoryPrintScreen({
    this.vendorCode="",
    this.orderCode="",
    this.note="",
    this.remarks="",
    this.orderDate="",
    required this.table,
    this.actualCost=0.00,
    this.variableAmount=0.00,
    this.select=false,
    this.discount=0.00,
    this.vat=0.00,
    this.unitCost=0.00,
    this.excisetax=0.00,




  });

  @override
  _InventoryPrintScreenState createState() => _InventoryPrintScreenState();
}

class _InventoryPrintScreenState extends State<InventoryPrintScreen> {
  late AutoScrollController _scrollController;
  @override
  void initState() {

    _scrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body:PdfPreview(
        build: (format) => _generatePdf(format,"title",widget.orderDate, widget.orderCode,context,widget.vendorCode,
            widget.discount,widget.actualCost,widget.variableAmount,widget.unitCost,widget.excisetax,widget.vat,widget.note,widget.remarks,widget.table),
      ),

    );
  }
}
Future<Uint8List> _generatePdf(PdfPageFormat format, String title,String orderDate,String orderCode,BuildContext context,String vendorCode,
    double? discount,double? actualCost,double? variableAmount,double? unitCost
    ,double? excisetax,double? vat,String note,String remarks,List<Lines> table) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  // final font = await PdfGoogleFonts.nunitoExtraLight();
  //  final logo = await networkImage('https://rgcdynamics-logos.s3.ap-south-1.amazonaws.com/Ahlan%20New-03.png');
  //  _printPdfAsHtml() async {
  //   print('Print ...');
  //   await Printing.layoutPdf(onLayout: (PdfPageFormat format) async {
  //     return await Printing.convertHtml(
  //         format: format,
  //         html:
  //         '<html><body><table><tr><td><img src="asset/ahlanpdflogo.png" alt="Avatar"></td><td>Purple</td></tr></table></body></html>');
  //   });
  // }

  // final image = await imageFromAssetBundle('assets/image.png');
  pdf.addPage(
    pw.Page(
      pageFormat:    format.copyWith(marginLeft: 0, marginTop: 0, marginRight: 0, marginBottom: 0),
      build: (context) {
        return
          pw. Container(
            // backgroundColor: Colors.white,
            child:pw.Column(
              children: [
                pw.  Container(
                  height:height*.155 ,
                  color: PdfColor.fromInt(0xAAF7F7F7),
                  child:pw. Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      // PDF.assets(
                      //   "assets/demo.pdf",
                      //   // height: MediaQuery.of(context).size.height,
                      //   // width: MediaQuery.of(context).size.width,
                      //   placeHolder: Image.asset("assets/images/pdf.png",
                      //       height: 200, width: 100),
                      // ),
                      // pw.  Container(
                      //     height: 16,
                      //     width: 16,
                      //     // decoration: pw. BoxDecoration(
                      //     //     image:pw. DecorationImage(
                      //     //         image:pw. Image("https://i.pinimg.com/736x/d2/53/fb/d253fbcb29b2c743b57816b23746fe12--portugal-national-team-cristiano-ronaldo-portugal.jpg")
                      //     //     )
                      //     // ),
                      //     child: pw. Container(
                      //         child: pw.Image(image)),
                      //   ),
                      // _printPdfAsHtml,
                      pw. Spacer(),
                      pw. Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        // padding:pw. EdgeInsets.only(right: width*.01),

                        child:pw. Column(
                          crossAxisAlignment:pw. CrossAxisAlignment.end,
                          children: [
                            pw.  SizedBox(height: height*.06,),
                            pw.  Text("8606200441",
                              style: pw.TextStyle(
                                // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                            pw.  SizedBox(height: height*.005,),
                            pw. Text("akshaygmail,com",
                              style:pw. TextStyle(
                                // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                            pw.   SizedBox(height: height*.009,),
                            pw. Text("PURCHASE ORDER",
                              style:pw. TextStyle(

                                color: PdfColor.fromInt(0xAA1F6BA9),
                                fontSize:height*.029,fontWeight: pw.FontWeight.bold ,  letterSpacing: 2.0,),),
                            pw.  SizedBox(height: height*.009,)

                          ],
                        ),
                      ),




                    ],
                  ),
                ),

                // pw.   PrintTitleScreen(),


                pw.   Container(
                  // color:pw. Colors.white,
                  child:pw. Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pw.  SizedBox(height: 10,),
                      pw.  Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:pw. Row(
                          mainAxisAlignment:  pw.MainAxisAlignment.start,
                          children: [
                            pw. Container(
                              height: 70,
                              child: pw.Column(
                                crossAxisAlignment:pw. CrossAxisAlignment.start,
                                children: [
                                  pw.   Text("Ahlan cart company Limed",
                                    style:  pw.TextStyle( fontSize:15,fontWeight:pw. FontWeight.bold ),),
                                  pw.  SizedBox(height: 2,),
                                  pw.  Text("Shop no. 514 5th floor aditya arcademall",
                                    style:  pw.TextStyle( fontSize:7 ),),
                                  pw.   SizedBox(height: 2,),
                                  pw. Text("road mumai MUMBAI,400004",
                                    style:  pw.TextStyle(fontSize:7),)

                                ],
                              ),
                            ),
                            pw.  Spacer(),

                            pw.   Container(
                              height: 70,
                              child: pw. Row(
                                children: [
                                  pw.  Column(
                                    crossAxisAlignment:  pw.CrossAxisAlignment.end,
                                    children: [
                                      pw. Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("Date :",style:  pw.TextStyle(fontSize:9))),
                                      pw.  Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("purchase order code :",style:  pw.TextStyle(fontSize:9))),

                                    ],
                                  ),
                                  pw. Column(
                                    children: [
                                      pw. Container(
                                          padding:  pw.EdgeInsets.only(top: 9),
                                          decoration:  pw.BoxDecoration(
                                              border: pw.Border(
                                                bottom:pw. BorderSide(width: .5,),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderDate==""?DateTime.now()
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "".toString():orderDate.toString(),style:  pw.TextStyle(fontSize:9))
                                      ),
                                      pw.  Container(
                                          padding:  pw.EdgeInsets.only(top: 9),
                                          decoration: pw. BoxDecoration(
                                              border: pw.Border(
                                                bottom: pw. BorderSide(width: .5,
                                                  // color: Color(0xffACACAC66).withOpacity(.4)
                                                ),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderCode==""?" Empty":orderCode,style:  pw.TextStyle(fontSize:9))
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      // pw. SizedBox(height: 30,),
                      pw. Container(
                        width: width,
                        height: height*.15,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        decoration: pw. BoxDecoration(

                            border: pw. Border.all(
                              width: .6,

                              color: PdfColor.fromInt(0xAAACACAC),


                            )
                        ),
                        child:  pw.Column(
                          crossAxisAlignment:  pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                              height:height*.04,
                              width: width,
                              color: PdfColor.fromInt(0xAA1F6BA9),
                              child:  pw.Center(
                                child: pw. Container(
                                    alignment:  pw.Alignment.topLeft,


                                    margin:pw. EdgeInsets.only(left: width*.01,top: 8),
                                    child: pw.Text("Basic Details",style:pw. TextStyle(fontSize:8,color: PdfColors.white,),)),
                              ),

                            ),
                            pw. Expanded(child: pw. Container(
                              //color: Colors.red,
                              child: pw.Center(
                                child: pw. Row(

                                  mainAxisAlignment: pw. MainAxisAlignment.spaceAround,
                                  children: [
                                    pw. Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("Supplier",
                                            style:
                                            pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                            )),

                                        pw.SizedBox(height: 3,),
                                        pw.Text(vendorCode,style:  pw.TextStyle(fontWeight:pw. FontWeight.bold,fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment:  pw.MainAxisAlignment.center,
                                      crossAxisAlignment: pw. CrossAxisAlignment.start,
                                      children: [
                                        pw.Text("ORDER CODE",style: pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                          // color:Color(0xff565555),
                                        )),
                                        pw. SizedBox(height: 3,),
                                        pw. Text(orderCode??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            // color: Colors.black,
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("ORDER DATE",style:pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                        ),),
                                        pw.SizedBox(height: 3,),
                                        pw.  Text(orderDate??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            // color: pw.C.black,
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw. SizedBox(width: 12,)
                                  ],
                                ),
                              ) ,
                            ))
                          ],
                        ),
                      ),
                      pw.SizedBox(height: 3),
                      pw.Container(
                        // height: 400,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:  pw.Table(
                          border: pw. TableBorder(
                            bottom:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            right:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            left:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            verticalInside: pw.BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            // horizontalInside:
                            // pw.   BorderSide(
                            //
                            //     width: .5,
                            //     color: PdfColors.grey,
                            //     style:
                            //     pw.  BorderStyle.solid)
                          ),
                          // tableWidth:.5,
                          columnWidths: {

                            0: pw.FlexColumnWidth(2),
                            1:pw. FlexColumnWidth(3),
                            2:pw. FlexColumnWidth(5),
                            3: pw.FlexColumnWidth(3),
                            4:pw. FlexColumnWidth(3),
                            5:pw. FlexColumnWidth(2),
                            6: pw.FlexColumnWidth(2),
                            7:pw. FlexColumnWidth(2),
                            8: pw.FlexColumnWidth(3),
                            9: pw.FlexColumnWidth(2),
                            10:pw. FlexColumnWidth(2),
                            11:pw. FlexColumnWidth(4),
                            12: pw.FlexColumnWidth(4),
                            13:pw. FlexColumnWidth(4),
                            14:pw. FlexColumnWidth(4),
                            15:pw. FlexColumnWidth(3),
                            16:pw. FlexColumnWidth(3),
                            17: pw.FlexColumnWidth(3),


                          },
                          children: [
                            pw. TableRow(

                                children: [
                                  pw. Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Sl.No',style:pw. TextStyle(fontSize:height*.013, color: PdfColors.white,)),
                                    height: 35,

                                  ),
                                  pw. Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(  'Variant Id ',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),


                                  pw.  Container(
                                    color: PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(   'Barcode',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Purchase UOM',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,

                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Requested Qty',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),



                                  pw.   Container(
                                    color: PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(   'Unit cost',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(  'Exsise tax',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color: PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('Discount',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,

                                  ),

                                  pw.  Container(
                                    color: PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Vatable amount',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.       Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Vat',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                                    height: 35,

                                  ),
                                  pw. Container(
                                    color:  PdfColor.fromInt(0xAA1F6BA9),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Actual cost',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                                    height: 35,
                                  ),


                                  // tableHeadtext(
                                  //   'Is free',
                                  //   padding:
                                  //   EdgeInsets.all(15),
                                  //   height: 80,
                                  //   size: 13,
                                  //     color:  Color(0xff1F6BA9)
                                  // ),


                                ]),
                            if (table != null)...[
                              for (var i = 0;
                              i < table.length;
                              i++)
                                pw. TableRow(
                                    children: [

                                      pw.    Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,

                                        child: pw.Text(   (i + 1)
                                            .toString(),style:pw. TextStyle(fontSize: height*.013)),


                                      ),

                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top:height*.014),
                                        alignment:pw. Alignment.center,
                                        height: 40,
                                        child:pw. Text(
                                            table[i].variantId??"",style:pw. TextStyle(fontSize: height*.013)),
                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.014),
                                        alignment:pw. Alignment.center,
                                        height: 40,
                                        child:pw. Text(
                                            table[i].barcode??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].purchaseUom??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].receivedQty.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),

                                      pw. Container(
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].unitCost.toString()??"",style:pw. TextStyle(fontSize:height*.013)),


                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),

                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].excessTax.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                        // fontSize: 12,


                                      ),
                                      pw. Container(
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].discount.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                      ),

                                      pw. Container(
                                        alignment:pw. Alignment.center,
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        child:pw. Text(
                                            table[i].variableAmount.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                        // fontSize: 12,
                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].vat.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                        // fontSize: 12,

                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            actualCost.toString()??"",style:pw. TextStyle(fontSize:height*.013)),

                                      ),






                                    ]
                                )
                            ]

                          ],
                        ),
                        // width: width,

                      ),
                      pw.SizedBox(height: 3),

                      pw.  Container(
                          margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                          width: width,
                          height: 27,

                          decoration:pw. BoxDecoration(

                            color:  PdfColor.fromInt(0xAAF7F7F7),


                          ),
                          child:pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                            children: [
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw.Text("Discount:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw. Text(discount.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),)
                                  ],
                                ),
                              ),

                              pw. Container(
                                child: pw.Row(
                                  children: [
                                    pw. Text("UnitCost:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),),
                                    pw. Text(unitCost.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),)
                                  ],
                                ),
                              ),
                              pw.  Container(
                                child:pw. Row(
                                  children: [
                                    pw.  Text("Excise Tax:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw. Text(excisetax.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("VAT Amount:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(vat.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw.  Text("Vatable Amount:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw.Text(variableAmount.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("Actual cost:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(actualCost.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      //calculation
                      pw.  SizedBox(height: height*0.15,),
                      //
                      pw.  Row(
                        children: [

                          pw.  Container(
                            margin: pw.EdgeInsets.symmetric(horizontal: width*.02),
                            child:pw. Column(
                              crossAxisAlignment:pw. CrossAxisAlignment.start,
                              children: [
                                pw. Text("Remarks:",style: pw.TextStyle(fontWeight:pw. FontWeight.normal, fontSize: height*.018,),),
                                pw. SizedBox(height: height*0.01,),
                                pw.Container(
                                  child:pw. Column(
                                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                                    children: [
                                      pw. Row(
                                        children: [


                                          pw.Text(remarks??"",style: pw.TextStyle(
                                            // color: Color(0xff252525),
                                              fontSize: height*.015),),

                                        ],
                                      ),
                                      pw.  SizedBox(width: width*.009,),

                                    ],
                                  ),
                                ),
                                pw.  SizedBox(height: height*.009,),
                                pw. Text("Note:",style:pw. TextStyle(fontWeight: pw.FontWeight.normal,fontSize: height*.018,),),
                                pw. SizedBox(height: height*0.01,),
                                pw. Container(
                                  child:pw. Column(
                                    crossAxisAlignment:pw. CrossAxisAlignment.start,
                                    children: [
                                      pw.  Row(
                                        children: [


                                          pw.  Text(note??"",style: pw.TextStyle(
                                            // color: Color(0xff252525),
                                              fontSize: height*.015),),

                                        ],
                                      ),
                                      pw.  SizedBox(width: width*.009,),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          pw.  Spacer(),
                          pw. Container(
                            margin: pw.EdgeInsets.only(right: width*.02),
                            height: height*.12,
                            width:width*.14,
                            decoration:pw. BoxDecoration(

                              // Red border with the width is equal to 5
                                border:pw. Border.all(
                                    width: .6,


                                    color: PdfColor.fromInt(0xAAACACAC)
                                )
                            ),
                            child:pw. Column(
                              crossAxisAlignment:pw. CrossAxisAlignment.start,
                              children: [
                                pw. Container(
                                    margin:pw. EdgeInsets.only(
                                      top:height*.018,
                                      left:height*.015,
                                    ),
                                    child: pw.Text("Authorized by:",style:pw. TextStyle(
                                      // color: Colors.black,
                                      fontWeight:pw. FontWeight.normal,fontSize:height*.016,),)),
                                //
                                // Row(
                                //   children: [
                                //     Text("Aftabu rahman",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,height: 19),),
                                //
                                //   ],
                                // )

                              ],
                            ),

                          )

                        ],
                      )
                      //last section



                    ],
                  ),

                ),
                pw.   SizedBox(height: height*.03,)

              ],
            ) ,
          );

        //   pw.Column(
        //   children: [
        //     pw.SizedBox(
        //       width: double.infinity,
        //       child: pw.FittedBox(
        //         child: pw.Text(title, style: pw.TextStyle(font: font)),
        //       ),
        //     ),
        //     pw.SizedBox(height: 20),
        //     pw.Flexible(child: pw.FlutterLogo())
        //   ],
        // );
      },
    ),
  );

  return pdf.save();
}