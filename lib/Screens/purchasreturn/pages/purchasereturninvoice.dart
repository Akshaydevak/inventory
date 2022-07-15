import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../../../printScreen.dart';
import 'general.dart';

class PurchaseReturnInvoice extends StatefulWidget {
  @override
  _PurchaseReturnInvoiceState createState() => _PurchaseReturnInvoiceState();
}

class _PurchaseReturnInvoiceState extends State<PurchaseReturnInvoice> {
  TextEditingController returnInvoiceCodeController=TextEditingController();
  TextEditingController purchaseReturnOrderCodeController=TextEditingController();
  TextEditingController orderDateController=TextEditingController();
  TextEditingController paymentCodeController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController paymentmethodController=TextEditingController();
  TextEditingController orderStatusController=TextEditingController();
  TextEditingController invoiceStatusController=TextEditingController();
  TextEditingController discountController=TextEditingController();
  TextEditingController focController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController vatableAmountController=TextEditingController();
  TextEditingController excessTaxController=TextEditingController();
  TextEditingController vatController=TextEditingController();
  TextEditingController actualCostController=TextEditingController();
  TextEditingController grandTotalCostController=TextEditingController();


  TextEditingController noteController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  List<PurchaseOrder> result = [];
  int selectedVertical=0;
  TextEditingController itemsearch = TextEditingController();
  int? veritiaclid=0;



  late AutoScrollController recieveController;
  void initState() {
    context.read<VertiacalCubit>().getGeneralVertical();

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
    return BlocConsumer<VertiacalCubit, VertiacalState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (list) {
              print("aaaaayyyiram"+list.data.toString());

              result = list.data;
              setState(() {
                if(result.isNotEmpty){
                  veritiaclid=result[0].id;
                  Variable.verticalid=result[0].id;
                  print("Variable.ak"+Variable.verticalid.toString());
                  // context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                }
                else{
                  print("common");
                  // select=true;
                  setState(() {
                  });

                }


                setState(() {});

              });
            });
      },
  builder: (context, state) {
    return Builder(
      builder: (context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PurchaseVerticalList(

                    selectedVertical: selectedVertical,
                    itemsearch: itemsearch,ontap: (int index){
                    setState(() {
                      selectedVertical=index;


                      veritiaclid = result[index].id;

                      // context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                      setState(() {

                      });
                    });
                  },result: result,
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
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                padding: EdgeInsets.only(top: 15,left: 10),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.blue,
                                      // elevation: 2,
                                      backgroundColor: Colors.white24),
                                  onPressed: () {

                                    setState(() {
                                    });

                                  },
                                  child: Text("Create"),
                                ),
                              ),
                              TextButtonLarge(
                                text: "PREVIEW",
                                onPress: (){
                                  print("Akshay");
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>
                                  //       PrintScreen(
                                  //         // note: note.text,
                                  //         // select: select,
                                  //         // vendorCode:vendorCode.text,
                                  //         // orderCode:ordercode.text ,
                                  //         // orderDate: orderDate.text,
                                  //         // table:table,
                                  //         // vat: double.tryParse( vat.text),
                                  //         // actualCost:double.tryParse( actualcost.text),
                                  //         // variableAmount:double.tryParse( Variableamount.text) ,
                                  //         // discount:double.tryParse( discount.text) ,
                                  //         // unitCost:double.tryParse( unitcourse.text) ,
                                  //         // excisetax:double.tryParse( excesstax.text) ,
                                  //         // remarks: remarks.text ,
                                  //
                                  //
                                  //
                                  //
                                  //
                                  //       )),
                                  // );


                                },
                              ),
                            ],
                          ),


                          InvoiceStableTable(
                            returnInvoiceCode: returnInvoiceCodeController,excessTax: excessTaxController,
                            orderDate: orderDateController,vat: vatController,
                            paymentCode: paymentCodeController,actualCost: actualCostController,
                            paymentStatus: paymentStatusController,grandToatl: grandTotalCostController,
                            paymentMethod: paymentmethodController,note: noteController,
                            orderStatus: orderStatusController,remarks: remarksController,
                            invoiceStatus: invoiceStatusController,
                            discount: discountController,
                            foc: focController,
                            unitCost: unitCostController,
                            vatableAmount: vatableAmountController,
                            purchaseReturnOrderCode: purchaseReturnOrderCodeController,

                          ),
                          Container(
                            color: Colors.white,
                            height: 50,
                          ),
                          Row(children: [
                            TextWidget(text: "order lines"),
                          ],),

                          Divider(color: Colors.grey,thickness: 1,),
                          // GrowableTable(),
                          Scrollbar(
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
                                      child: Container(
                                        width: 2200,
                                        padding: EdgeInsets.all(10),
                                        child: customTable(

                                            border: const TableBorder(

                                              verticalInside: BorderSide(
                                                  width:.5,
                                                  color: Colors.black45,
                                                  style: BorderStyle.solid),
                                              horizontalInside: BorderSide(
                                                  width:.3,
                                                  color: Colors.black45,
                                                  // color: Colors.blue,
                                                  style: BorderStyle.solid),),

                                            tableWidth: .5,

                                            childrens:[
                                              TableRow(

                                                // decoration: BoxDecoration(

                                                //     color: Colors.green.shade200,

                                                //     shape: BoxShape.rectangle,

                                                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                                  children: [

                                                    tableHeadtext(

                                                      'Sno',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white,

                                                    ),
                                                    tableHeadtext(

                                                      'return orderline  Id',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,


                                                    ),



                                                    tableHeadtext(

                                                      'Variant Id',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,


                                                    ),

                                                    tableHeadtext(

                                                      'Variant Name',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    // tableHeadtext('description', size: 10, color: null),





                                                    tableHeadtext(
                                                      'Barcode',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                    ),

                                                    tableHeadtext(

                                                      'Current qty',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Purchase UOM',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Vendor id',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Recieved qty',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Is recieved',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Unitcost',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Excise tax',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Discount',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                    ),
                                                    tableHeadtext(

                                                      'FOC',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),



                                                    tableHeadtext(

                                                      'Vatable Amount',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Vat',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Actual cost',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Grand Total',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Is Invoiced',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,


                                                    ),

                                                    tableHeadtext(
                                                      'Expiry Date',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Free',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Active',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,

                                                    ),
                                                    tableHeadtext(
                                                      '',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                    ),

                                                    // if (widget.onAddNew) textPadding(''),

                                                  ]),
                                            ]
                                        ),
                                      ),

                                    )

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Button(Icons.delete, Colors.red,ctx: context,
                                  text: "Discard",
                                  onApply: (){
                                  },
                                  height: 29,
                                  width: 90,
                                  labelcolor: Colors.red,
                                  iconColor: Colors.red,
                                  bdr: true),
                              SizedBox(
                                width: width * .008,
                              ),
                              Button(Icons.check, Colors.grey,ctx: context,
                                  text: "Save",
                                  height: 29,
                                  Color: Color(0xff3E4F5B),
                                  width: 90,
                                  labelcolor: Colors.white,
                                  iconColor: Colors.white,
                                  onApply: (){}
                              ),
                              SizedBox(
                                width: width * .008,
                              ),

                            ],
                          ),

                        ],
                      ),
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



  InvoiceStableTable({required this.returnInvoiceCode,required this.purchaseReturnOrderCode,required this.orderDate,required this.paymentMethod,
    required this.paymentCode,required this.paymentStatus,required this.invoiceStatus,
   required this.note,required this.remarks,required this.discount,required this.foc,required this.unitCost,
    required this.vatableAmount,required this.excessTax,required this.vat,required this.actualCost,required this.grandToatl,required this.orderStatus});
  @override
  _InvoiceStableTableState createState() => _InvoiceStableTableState();
}

class _InvoiceStableTableState extends State<InvoiceStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Column(
            children: [
              SizedBox(
                height: height * .045,
              ),
              SizedBox(
                height: height * .045,
              ),

              NewInputCard(
                  readOnly: true,
                  controller: widget.returnInvoiceCode,
                  title: "return invoice code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.purchaseReturnOrderCode, title: "Purchase return order code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.orderDate, title: "order date"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.paymentCode, title: "Payment Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.paymentStatus, title: "payment Status"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                  readOnly: true,
                  controller: widget.paymentMethod, title: "Payment Method"),
              SizedBox(
                height: height * .030,
              ),



            ],
          )),
          Expanded(child: Column(children: [

            SizedBox(
              height: height * .045,
            ),

            NewInputCard(
                readOnly: true,
                controller: widget.orderStatus, title: "Order Status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.invoiceStatus, title: "Invoice Status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
              readOnly: true,
                controller: widget.discount, title: "Discount"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
              readOnly: true,
                controller: widget.foc, title: "FOC"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
              readOnly: true,
              controller: widget.unitCost, title: "UnitCost",
            ),
            SizedBox(
              height: height * .002,
            ),
            NewInputCard(
              readOnly: true,
              controller: widget.vatableAmount, title: "Vatable Amount",

             ),




          ],)),
          Expanded(child: Column(children: [
            SizedBox(
              height: height * .065,
            ),


            NewInputCard(
                readOnly: true,
                controller: widget.excessTax, title: "Excise Tax"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.vat, title: "VAT"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.actualCost, title: "Actual Cost"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.grandToatl, title: "Grand Total"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(

                controller: widget.note, title: "Note",
            maxLines: 3,),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.remarks, title: "Remarks"),
            SizedBox(
              height: height * .030,
            ),


          ],))

        ],
      ),
    );
  }
}