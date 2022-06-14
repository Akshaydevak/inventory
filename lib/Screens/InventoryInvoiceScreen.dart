import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

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
    for (var i = 0; i < additionalVariants.length; i++) {
      if (additionalVariants[i].isInvoiced == true) {

        unitcost = unitcost + additionalVariants[i].unitCost!;

        grands = grands + additionalVariants[i].grandTotal!;
        actualValue = actualValue + additionalVariants[i].actualCost!;
        vatValue = vatValue + additionalVariants[i].vat!;
        discountValue = discountValue + additionalVariants[i].discount!;
        focValue = focValue + additionalVariants[i].foc!;

        VatableValue = VatableValue + additionalVariants[i].variableAmount!;
        print("excessTaxvalue"+excessTAxValue.toString());
        excessTAxValue = excessTAxValue + additionalVariants[i].excessTax!;
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
    context.read<InventorysearchCubit>().getInventorySearch("code");

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
      create: (context) => InventoryReadCubit()..getInventoryRead(Variable.verticalid!),

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
          if (data.data1)
            context.showSnackBarSuccess(data.data2);
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
            child: Container(
              height: 3000,
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VerticalList(selectedVertical: selectedVertical,
                          itemsearch: itemsearch,ontap: (int index){
                            setState(() {
                              print("taped");
                              select=false;
                              selectedVertical=index;

                              veritiaclid =
                                  result[index].id;
                              context
                                  .read<
                                  RequestformreadCubit>()
                                  .getRequestFormRead(
                                  veritiaclid!);
                            });
                          },result: result,
                        ),
                  Expanded(child: Column(
                    children: [
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
                                    readOnly: true,
                                      controller: paymentStatusController, title: "payment status"),
                                  SizedBox(height: height*.035,),
                                  NewInputCard(
                                    readOnly: true,

                                      controller: paymentMethodController, title: "payment method"),
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
                               height: 300,
                               child:ListView(
                                 controller: recieveController,
                                 physics: ScrollPhysics(),
                                 scrollDirection: Axis.horizontal,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     SingleChildScrollView(
                                       child: Container(
                                         width: MediaQuery.of(context)
                                             .size
                                             .width,
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
                                                     height: 50,
                                                     size: 12,
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
                                                     child: textPadding(additionalVariants[i].receiveLineId .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
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
                                                         bool? isRecieved = additionalVariants[i].isReceived;
                                                         setState(() {
                                                           isRecieved = !isRecieved!;
                                                           additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                           print(additionalVariants);
                                                         });
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
                                                         bool? isInvoiced = additionalVariants[i].isInvoiced;
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


                                           ]

                                         ) ,
                                       ),
                                     )
                                     ,

                                   ],
                                 )],

                               )
                             )
                         ),
                         // ScrollableTable(),
                          SizedBox(height: 100,),

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
