
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchaseinvoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class TopStableTable extends StatefulWidget {
  final TextEditingController inventory;
  final TextEditingController vendorMailId;
  final TextEditingController orderType;
  final TextEditingController orderCode;
  final TextEditingController orderDate;
  final TextEditingController purchaseInvoiceId;
  final TextEditingController vendorCode;
  final TextEditingController vendorAddress;
  final TextEditingController vendorTRNnumber;
  final TextEditingController paymentCode;
  final TextEditingController paymentStatus;
  final TextEditingController returnOrderStatus;
  final TextEditingController returnOrederInvoicetStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController discount;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController excessTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandToatl;
  final bool select;
  List<Liness>? liness;
  final Function? assign;
  final Function currentUser;


  TopStableTable({required this.orderType,required this.orderCode,required this.orderDate,required this.purchaseInvoiceId,this.liness,required this.inventory,
    required this.vendorCode,required this.vendorAddress,required this.vendorTRNnumber,required this.paymentCode,required this.paymentStatus,required this.vendorMailId,
    required this.returnOrederInvoicetStatus,required this.note,required this.remarks,required this.discount,required this.foc,required this.unitCost,required this.currentUser,
    required this.vatableAmount,this.assign,required this.excessTax,required this.select,required this.vat,required this.actualCost,required this.grandToatl,required this.returnOrderStatus});
  @override
  _TopStableTableState createState() => _TopStableTableState();
}

class _TopStableTableState extends State<TopStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocListener(
      listeners: [
        BlocListener<PurchaseinvoiceReadCubit, PurchaseinvoiceReadState>(
          listener: (context, state) {
            print("state++++++++++++++++++++++++++++++++");
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (data) {
                  setState(() {
                    print("Akshay real "+data.toString());
                    widget.vendorCode.text=data.vendorId??"";
                    widget.vendorAddress.text=data.vendorAddress??"";
                    widget.vendorTRNnumber.text=data.vendorTrnNumber??"";
                    widget.orderType.text=data.orderType??"";
                    widget.inventory.text=data.inventoryId??"";
                    widget.vendorMailId.text=data.vendorMailId??"";


                    data.lines != null ? widget.liness = data.lines ?? [] : widget.liness  = [];
                    if(widget.liness!=null)
                      widget?.assign!(widget.liness);
                    if(data.actualCost==null||data.actualCost=="null"){
                      widget.actualCost.text =='';
                    }
                    else{
                      setState(() {
                        widget.actualCost.text = data.actualCost.toString()??"";
                      });
                    }
                    if(data.foc==null||data.foc=="null"){
                      widget.foc.text =='';
                    }
                    else{
                      setState(() {
                        widget.foc.text = data.foc.toString()??"";
                      });
                    }
                    if(data.discount==null||data.discount=="null"){
                      widget.discount.text =='';
                    }
                    else{
                      setState(() {
                        widget.discount.text = data.discount.toString()??"";
                      });
                    }
                    if(data.vat==null||data.vat=="null"){
                      widget.vat.text =='';
                    }
                    else{
                      setState(() {
                        widget.vat.text = data.vat.toString()??"";
                      });
                    }
                    if(data.unitCost==null||data.unitCost=="null"){
                      widget.unitCost.text =='';
                    }
                    else{

                      widget.unitCost.text = data.unitCost.toString()??"";

                    }
                    if(data.grandTotal==null||data.grandTotal=="null"){
                      widget.grandToatl.text =='';
                    }
                    else{

                      widget.grandToatl.text = data.grandTotal.toString()??"";

                    }
                    if(data.vatableAmount==null||data.vatableAmount=="null"){
                      widget.vatableAmount.text =='';
                    }
                    else{

                      widget.vatableAmount.text = data.vatableAmount.toString()??"";

                    }
                    if(data.excessTax==null||data.excessTax=="null"){
                      widget.excessTax.text =='';
                    }
                    else{

                      widget.excessTax.text = data.excessTax.toString()??"";
                    }
                    widget.currentUser();



                  });
                });
          },
        ),

      ],
      child: Builder(
          builder: (context) {
            return Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Column(
                    children: [

                      NewInputCard(
                          readOnly: true,
                          controller: widget.orderType,
                          title: "Order Type"),
                      SizedBox(
                        height: height * .030,
                      ),
                      NewInputCard(
                          readOnly: true,
                          controller: widget.orderCode, title: "Order Code"),
                      SizedBox(
                        height: height * .030,
                      ),
                      NewInputCard(
                          readOnly: true,

                          controller: widget.orderDate, title: "Order Date"),
                      // PopUpDateFormField(
                      //
                      //
                      //     format:DateFormat('yyyy-MM-dd'),
                      //     controller: widget.orderDate,
                      //     // initialValue:
                      //     //     DateTime.parse(fromDate!),
                      //     label: "Order Date",
                      //     onSaved: (newValue) {
                      //       widget.orderDate.text = newValue
                      //           ?.toIso8601String()
                      //           .split("T")[0] ??
                      //           "";
                      //       print("promised_receipt_date.text"+widget.orderDate.text.toString());
                      //     },
                      //     enable: true),
                      // NewInputCard(
                      //     controller: widget.orderDate, title: "order date"),
                      SizedBox(
                        height: height * .030,
                      ),
                      widget.select? SelectableDropDownpopUp(
                        label: "PurchaseInvoice Id",
                        type:"PurchaseInvoices",
                        value: widget.purchaseInvoiceId.text??"",
                        onSelection: (PurchaseInvoice? va) {

                          print(
                              "+++++++++++++++++++++++"+va.toString());
                          //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                          // setState(() {
                          widget.purchaseInvoiceId.text=va?.invoiceCode??"";
                          print("widget.purchaseInvoiceId.text"+widget.purchaseInvoiceId.text.toString());

                          setState(() {
                            context.read<
                                PurchaseinvoiceReadCubit>()
                                .getGeneralInvoiceRead(
                                va?.id);

                          });


                        },

                      ): NewInputCard(
                          readOnly: true,
                          controller: widget.purchaseInvoiceId, title: "Purchase Invoice Id"),

                      // NewInputCard(
                      //     controller: widget.purchaseInvoiceId, title: "PurchaseInvoice id"),
                      SizedBox(
                        height: height * .030,
                      ),
                      NewInputCard(
                          readOnly: true,
                          controller: widget.vendorCode, title: "Vendor Code"),
                      SizedBox(
                        height: height * .030,
                      ),

                      NewInputCard(
                          readOnly: true,
                          controller: widget.vendorAddress, title: "Vendor Address "),
                      SizedBox(
                        height: height * .030,
                      ),
                      NewInputCard(
                          readOnly: true,
                          controller: widget.vendorTRNnumber, title: "Vendor TRN Number"),
                      SizedBox(
                        height: height * .065,
                      ),
                      SizedBox(
                        height: height * .068,
                      ),


                    ],
                  )),
                  Expanded(child: Column(children: [



                    NewInputCard(
                        readOnly: true,
                        controller: widget.paymentCode, title: "Payment Code"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.paymentStatus, title: "Payment  Status"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.returnOrderStatus, title: "Return Order Status"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.returnOrederInvoicetStatus, title: "Return Order Invoice Status"),
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

                    SizedBox(
                      height: height * .080,
                    ),
                    SizedBox(
                      height: height * .078,
                    ),




                  ],)),
                  Expanded(child: Column(children: [


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
                        controller: widget.unitCost, title: "Unit Cost"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.vatableAmount, title: "Vatable Amount"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.excessTax, title: "Excess Tax"),
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
                      height: height * .012,
                    ),

                  ],))

                ],
              ),
            );
          }
      ),
    );
  }
}