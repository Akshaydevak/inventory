
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';

class PurchaseOrderRequestFormTable extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderCode;
  final TextEditingController oderDate;
  final TextEditingController orderedPerson;
  final TextEditingController promisedReceiptDate;
  final TextEditingController promisedReceiptDate2;
  final TextEditingController plannedReceiptDate;
  final TextEditingController plannedReceiptDate2;
  final TextEditingController paymentCode;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController receivingStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController discound;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController exciseTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandTotal;





  PurchaseOrderRequestFormTable({ required this.orderType, required this.orderCode, required this.oderDate, required this.orderedPerson, required this.promisedReceiptDate, required this.plannedReceiptDate, required this.paymentCode, required this.paymentStatus, required this.orderStatus, required this.receivingStatus, required this.invoiceStatus, required this.note, required this.remarks, required this.discound, required this.foc, required this.unitCost, required this.vatableAmount, required this.exciseTax, required this.vat, required this.actualCost, required this.grandTotal, required this.promisedReceiptDate2, required this.plannedReceiptDate2});


  @override
  State<PurchaseOrderRequestFormTable> createState() => _PurchaseOrderRequestFormTableState();
}

class _PurchaseOrderRequestFormTableState extends State<PurchaseOrderRequestFormTable> {
  String imageEncode="";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child:
          Row(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child:Container(

                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: height*.030,),

                        SelectableDropDownpopUp(
                          label: "Order Type",
                          type:"RequestFormType",
                          value:widget. orderType.text,
                          onSelection: (String? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {


                              // onChange = true;
                              widget.orderType.text = va!;
                            });
                          },
                        ),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller:widget. orderCode, title: "Order Code"),

                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.oderDate, title: "Order Date"),

                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: widget.orderedPerson,
                          icondrop: true,
                          title: "Ordered Person",
                          readOnly: true,
                          ontap: () {
                            showDailogPopUp(
                              context,
                              TableConfigurePopup(

                                type: "RequestFormCstomGroupListPopup",
                                valueSelect: (OrderedPersonModel va) {
                                  print(
                                      "+++++++++++++++++++++++"+va.toString());
                                  //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                  setState(() {
                                    print(va.employeeCode);
                                    widget.orderedPerson.text = va!.employeeCode.toString();


                                    // onChange = true;

                                  });
                                },
                              ),
                            );
                          },
                        ),


                        // SelectableDropDownpopUp(
                        //   label: "Ordered Person",
                        //   type:"RequestFormOrderPerson",
                        //   value: orderedPersonController.text,
                        //   onSelection: (OrderedPersonModel? va) {
                        //     print(
                        //         "+++++++++++++++++++++++"+va.toString());
                        //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                        //     setState(() {
                        //       orderedPersonController.text = va!.organisationCode.toString();
                        //
                        //       // onChange = true;
                        //
                        //     });
                        //   },
                        //   onAddNew: () {},
                        //   restricted: true,
                        // ),
                        SizedBox(height: height*.030,),
                        PopUpDateFormField(

                            format:DateFormat('dd-MM-yyyy'),
                            controller: widget.promisedReceiptDate2,
                            // initialValue:promisedRecieptDate.text!=null||promisedRecieptDate.text!=""||promisedRecieptDate.text!="null"?
                            //     DateTime.parse(promisedRecieptDate.text):DateTime.parse("2022-05-26"),
                            label: "Promised Reciept Date",
                            onSaved: (newValue) {
                              widget.promisedReceiptDate2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                              widget.promisedReceiptDate.text = newValue
                                  ?.toIso8601String()
                                  .split("T")[0] ??
                                  "";
                            },
                            enable: true),
                        SizedBox(height: height*.030,),
                        PopUpDateFormField(

                            format:DateFormat('dd-MM-yyyy'),
                            controller: widget.plannedReceiptDate2,
                            // initialValue:
                            //     DateTime.parse(fromDate!),
                            label: "Planned Reciept Date",
                            onSaved: (newValue) {
                              widget.plannedReceiptDate2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                              widget.plannedReceiptDate.text = newValue
                                  ?.toIso8601String()
                                  .split("T")[0] ??
                                  "";

                            },
                            enable: true),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.194,),
                      ],
                    ),),
                    Expanded(child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        NewInputCard(
                            readOnly: true,
                            controller: widget.paymentCode, title: "Payment Code"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.paymentStatus, title: "Payment Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.orderStatus, title: "Order Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.receivingStatus, title: "Receiving Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.invoiceStatus, title: "Invoice Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: widget.note, title: "Note",height: 90,maxLines: 3,),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: widget.remarks, title: "Remarks",height: 90,maxLines: 3,),
                        SizedBox(height: height*.045,),
                        SizedBox(height: height*.135,),

                      ],
                    ),),
                    Expanded(child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewInputCard(
                            readOnly: true,
                            controller: widget.discound, title: "Discount"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.foc, title: "FOC"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.unitCost, title: "Unit Cost"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.vatableAmount, title: "Variable Amount"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.exciseTax, title: "Excess Tax"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.vat, title: "VAT"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.actualCost, title: "Actual Cost"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.grandTotal, title: "Grand Total"),
                        SizedBox(height: height*.135,),


                      ],
                    ),),


                  ],
                ),
              ) )
            ],
          ),
        ),


      ],
    );

  }
}