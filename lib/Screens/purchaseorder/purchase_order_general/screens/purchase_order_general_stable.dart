
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/variant/variantdetails/model/vendormodel.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';

class PurchaseOrderGeneralStableTable extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderCode;
  final TextEditingController oderDate;
  final TextEditingController vendorCode;
  final TextEditingController vendorTrnNumber;
  final TextEditingController vendorName;
  final TextEditingController vendorEmail;
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
  final TextEditingController discount;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController excessTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandTotal;
  final bool isVendorCheck;
  final Function tableDatasClear;
  PurchaseOrderGeneralStableTable({ required this.orderType, required this.orderCode, required this.oderDate, required this.vendorCode, required this.vendorTrnNumber, required this.promisedReceiptDate, required this.promisedReceiptDate2, required this.plannedReceiptDate, required this.plannedReceiptDate2, required this.paymentCode, required this.paymentStatus, required this.orderStatus, required this.receivingStatus, required this.invoiceStatus, required this.note, required this.remarks, required this.discount, required this.foc, required this.unitCost, required this.vatableAmount, required this.excessTax, required this.vat, required this.actualCost, required this.grandTotal, required this.isVendorCheck, required this.vendorName, required this.vendorEmail, required this.tableDatasClear});


  @override
  State<PurchaseOrderGeneralStableTable> createState() => _PurchaseOrderGeneralStableTableState();
}

class _PurchaseOrderGeneralStableTableState extends State<PurchaseOrderGeneralStableTable> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [

                                SelectableDropDownpopUp(
                                  label: "Order Type",

                                  type:"sellingngPrice-basedOn",
                                  value: widget.orderType.text,
                                  onSelection: (String? va) {
                                    print(
                                        "+++++++++++++++++++++++");
                                    //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                    setState(() {
                                      widget.orderType.text= va??"";

                                    });
                                  },

                                  restricted: true,
                                ),
                                // NewInputCard(
                                //     controller: controller, title: "Order type"),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  // colors: Colors.red,
                                  controller: widget.orderCode,
                                  title: "Order Code",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.oderDate,
                                  title: "Order Date",
                                  //label: "Place in setting",
                                  readOnly: true,
                                ),

                                SizedBox(
                                  height: height * .035,
                                ),


                              widget.  isVendorCheck?       NewInputCard(
                                  controller: widget.vendorCode,
                                  title: "Vendor Code",
                                  //label: "Place in setting",
                                  readOnly: true,
                                ):
                                NewInputCard(
                                  controller:  widget.vendorCode,
                                  icondrop: true,
                                  title: "Vendor Code",
                                  readOnly: true,
                                  ontap: () {
                                    if(  widget.vendorCode.text.isNotEmpty){
                                      setState(() {
                                        widget.vendorCode.text = "";
                                        widget.vendorName.text = "";
                                     widget.vendorTrnNumber.text = "";
                                      widget.  vendorEmail.text = "";
                                      widget.  tableDatasClear();
                                      });
                                    }
                                    else{
                                      showDailogPopUp(
                                        context,
                                        TableConfigurePopup(type: "VendorDetails_Popup",
                                          valueSelect: (VendorDetailsModel va) {
                                            setState(() {widget. vendorCode.text=va.manuFactureuserCode ?? "";widget.vendorName.text=va.manuFactureName ?? "";
                                           widget.vendorEmail.text =va?.email==""||va.email==null?va.alternativeEmail??"":va.email??"";
                                            widget.vendorTrnNumber .text=va.trnNumber.toString();
                                            });
                                          },
                                        ),
                                      );
                                    }

                                  },
                                ),


                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                    readOnly: true,
                                    controller: widget.vendorTrnNumber,
                                    title: "Vendor TRN Number"),
                                SizedBox(
                                  height: height * .035,
                                ),
                                PopUpDateFormField(
                                    format:DateFormat('dd-MM-yyyy'),
                                    controller:widget.promisedReceiptDate2,
                                    // initialValue:
                                    //     DateTime.parse(fromDate!),

                                    label: "Promised Receipt Date",
                                    onSaved: (newValue) {
                                      widget.promisedReceiptDate2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                      widget.promisedReceiptDate.text = newValue?.toIso8601String().split("T")[0] ?? "";
                                    },
                                    enable: true),
                                SizedBox(
                                  height: height * .035,
                                ),
                                PopUpDateFormField(
                                    format:DateFormat('dd-MM-yyyy'),
                                    controller: widget.plannedReceiptDate2,
                                    label: "Planned Receipt Date",
                                    onSaved: (newValue) {
                                      widget.plannedReceiptDate2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                      widget.plannedReceiptDate.text = newValue?.toIso8601String().split("T")[0] ?? "";
                                    },
                                    enable: true),
                                SizedBox(
                                  height: height * .093,
                                ),
                              ],
                            )),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                NewInputCard(
                                    controller: widget.paymentCode,
                                    title: "Payment Code",
                                    readOnly: true),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.paymentStatus,
                                  title: "Payment Status",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.orderStatus,
                                  title: "Order Status",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.receivingStatus,
                                  title: "Receiving Status",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.invoiceStatus,
                                  title: "Invoice Status",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.note,
                                  title: "Note",
                                  //label: "R/O",
                                  height: 90,
                                  maxLines: 3,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.remarks,
                                  title: "Remarks",
                                  height: 90,
                                  maxLines: 3,
                                ),
                                SizedBox(
                                  height: height * .028,
                                ),
                              ],
                            )),
                        Expanded(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [

                                NewInputCard(
                                  controller: widget.discount,
                                  title: "Discount",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.foc,
                                  title: "FOC",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.unitCost,
                                  title: "Unit Cost",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                    controller: widget.vatableAmount,
                                    readOnly: true,
                                    title: "Vatable Amount"),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                    controller: widget.excessTax,
                                    readOnly: true,
                                    title: "Excess Tax"),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.vat,
                                  title: "Vat",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.actualCost,
                                  title: "Actual Cost",
                                  readOnly: true,
                                ),
                                SizedBox(
                                  height: height * .035,
                                ),
                                NewInputCard(
                                  controller: widget.grandTotal,
                                  title: "Grand Total",
                                  readOnly: true,
                                ),
                              ],
                            )),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );

  }
}