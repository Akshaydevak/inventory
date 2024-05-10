import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/Screens/salesreturn/cubit/invoiceraed/generalinvoiceread_cubit.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class SalesReturnGenealStableTable extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController returnOrderCode;
  final TextEditingController orderDate;
  final TextEditingController salesInvoiceCode;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController billingAddressId;
  final TextEditingController shipping;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController reason;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;
  final TextEditingController billingAddresName;
  final TextEditingController shippingName;
  final Function assign;
  bool select;
  SalesReturnGenealStableTable(
      {
        required this.orderType,
        required this.returnOrderCode,
        required this.orderMode,
        required this.orderDate,
        required this.salesInvoiceCode,
        required this.customerId,
        required this.trnNumber,
        required this.shipping,
        required this.billingAddressId,
        required this.vat,
        required this.select,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.reason,
        required this.invoiceStatus,
        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.assign,

        required this.sellingPriceTotal, required this.billingAddresName, required this.shippingName});

  @override
  _SalesReturnGenealStableTableState createState() => _SalesReturnGenealStableTableState();
}

class _SalesReturnGenealStableTableState extends State<SalesReturnGenealStableTable>
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
  List<SalesReturnOrderLines>table=[];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      BlocListener<GeneralinvoicereadCubit, GeneralinvoicereadState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                setState(() {
                  print("Akshay real "+data.toString());
                  if(data.invoicedData!=null){
                    data?.invoicedData?.lines != null
                        ? table = data?.invoicedData?.lines ?? []
                        : table = [];
                    widget.salesInvoiceCode.text=data?.invoicedData?.invoiceCode??"";
                    widget.orderDate.text=data?.invoicedData?.createdDate??"";
                    widget.remarks.text=data?.invoicedData?.remarks??"";
                    widget.reason.text=data?.invoicedData?.notes??"";
                    widget.invoiceStatus.text=data?.invoicedData?.invoiceStatus??"";
                    widget.discount.text=data?.invoicedData?.discount.toString()??"";
                    widget.unitCost.text=data?.invoicedData?.unitCost.toString()??"";
                    widget.exciseTax.text=data?.invoicedData?.excessTax.toString()??"";
                    widget.taxableAmount.text=data?.invoicedData?.taxableAmount.toString()??"";
                    widget.vat.text=data?.invoicedData?.vat.toString()??"";
                    widget.sellingPriceTotal.text=data?.invoicedData?.sellingPriceTotal.toString()??"";
                    widget.totalPrice.text=data?.invoicedData?.totalPrice.toString()??"";
                  }
                  else{
                    print("the null case");
                    widget.customerId.text=data.customerId??"";
                    widget.trnNumber.text=data.trnNumber??"";
                    widget.paymentId.text=data.paymentId??"";
                    widget.paymentStatus.text=data.paymentStatus??"";
                    widget.orderStatus.text=data.orderStatus??"";
                    widget.discount.text=data.discount.toString()??"";
                    widget.unitCost.text=data.unitCost.toString()??"";
                    widget.exciseTax.text=data.excessTax.toString()??"";
                    widget.taxableAmount.text=data.taxableAmount.toString()??"";
                    widget.vat.text=data.vat.toString()??"";
                    widget.sellingPriceTotal.text=data.sellingPriceTotal.toString()??"";
                    widget.totalPrice.text=data.totalPrice.toString()??"";
                    // print( data?.i);
                    data?.lines != null
                        ? table = data?.lines  ?? []
                        : table = [];
                  }
                  widget.assign(table);



                });
              });
        },
        child: Builder(
            builder: (context) {
              return Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.select?
                            SelectableDropDownpopUp(
                              label: "Sales Invoice Code",
                              type:"InvoiceCode-PopUpCall",
                              value: widget.salesInvoiceCode.text,
                              // enable: true,
                              onSelection: (SalesInvoiceCodeModel? va) {
                                print(
                                    "+++++++++++++++++++++++");
                                //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                setState(() {
                                  widget.salesInvoiceCode.text=va?.invoiceCode.toString()??"";
                                  context.read<GeneralinvoicereadCubit>().getSalesReturnGeneralInvoiceRead(va?.id);

                                });
                              },

                            ):NewInputCard(
                                readOnly: true,
                                controller: widget.salesInvoiceCode, title: "Sales Invoice Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            SelectableDropDownpopUp(
                              label: "Order Type",
                              type: "SalesOrder_TypePopUpCall",
                              value: widget.orderType.text,
                              onSelection: (String va) {
                                setState(() {
                                  widget.orderType.text = va;
                                });
                              },
                              restricted: true,
                            ),
                            SizedBox(
                              height: height * .030,
                            ),
                            SelectableDropDownpopUp(
                              label: "Order Mode",
                              apiType:"1",
                              type: "SalesOrderMode",
                              value: widget.orderMode.text,
                              onSelection: (String va) {
                                setState(() {
                                  widget.orderMode.text = va;

                                });
                              },
                              restricted: true,
                            ),

                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.returnOrderCode,
                                title: "Return Order Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderDate,
                                title: "Order Date"),

                            SizedBox(
                              height: height * .030,
                            ),


                            NewInputCard(
                                readOnly: true,
                                controller: widget.customerId, title: "Customer Id"),
                            // SelectableDropDownpopUp(
                            //   label: "shipping address id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.shipping.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.shipping.text=va?.id.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     showDailogPopUp(
                            //         context,
                            //         WarrantyDetailsPopUp(
                            //           // indexValue: temp,
                            //           // changeActive: onChangeActive,
                            //           // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //           // changeExtendedWarranty: onChangeExtendedWarranty,
                            //         ));
                            //   },
                            // ),
                            // NewInputCard(controller: widget.customerId, title: "customer id"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                height: 46,
                                controller: widget.trnNumber,
                                title: "TRN Number"),
                            SizedBox(
                              height: height * .090,
                            ),

                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SelectableDropDownpopUp(
                            //   label: "Billing Address Id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.billingAddresName.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.billingAddressId.text=va?.id.toString()??"";
                            //       widget.billingAddresName.text=va?.fullName.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     // showDailogPopUp(
                            //     //     context,
                            //     //     WarrantyDetailsPopUp(
                            //     //       // indexValue: temp,
                            //     //       // changeActive: onChangeActive,
                            //     //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //     //       // changeExtendedWarranty: onChangeExtendedWarranty,
                            //     //     ));
                            //   },
                            // ),


                            NewInputCard(controller: widget.billingAddressId,
                              readOnly: true,
                              icondrop:true,title: "Billing Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code: widget.customerId.text,
                                    type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                    setState(() {

                                      widget.billingAddressId.text=va?.id.toString()??"";
                                      widget.billingAddresName.text=va?.fullName.toString()??"";
                                      setState(() {

                                      });


                                      // onChange = true;
                                      // orderType.text = va!;
                                    });

                                  },
                                  ),


                                );

                              },),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(controller: widget.shipping,
                              readOnly: true,
                              icondrop:true,title: "Shipping Address Id",ontap: (){
                                showDailogPopUp(
                                  context,
                                  TableConfigurePopup(
                                    code: widget.customerId.text,
                                    type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                    setState(() {

                                      widget.shipping.text=va?.id.toString()??"";
                                      widget.shippingName.text=va?.fullName.toString()??"";
                                      setState(() {
                                      });

                                    });

                                  },
                                  ),


                                );

                              },),




                            // SelectableDropDownpopUp(
                            //   label: "Shipping Address Id",
                            //   type:"ShippingAddressPopUpCall",
                            //   value: widget.shippingName.text,
                            //   enable: true,
                            //   onSelection: (ShippingAddressModel? va) {
                            //     print(
                            //         "+++++++++++++++++++++++");
                            //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            //     setState(() {
                            //       widget.shipping.text=va?.id.toString()??"";
                            //       widget.shippingName.text=va?.fullName.toString()??"";
                            //
                            //
                            //       // onChange = true;
                            //       // orderType.text = va!;
                            //     });
                            //   },
                            //   onAddNew: () {
                            //
                            //     // showDailogPopUp(
                            //     //     context,
                            //     //     WarrantyDetailsPopUp(
                            //     //       // indexValue: temp,
                            //     //       // changeActive: onChangeActive,
                            //     //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            //     //       // changeExtendedWarranty: onChangeExtendedWarranty,
                            //     //     ));
                            //   },
                            // ),
                            // NewInputCard(
                            //     controller: widget.billingAddressId,
                            //     title: "billing address id"),
                            SizedBox(
                              height: height * .030,
                            ),

                            NewInputCard(
                                readOnly: true,
                                controller: widget.paymentId,
                                title: "Payment Id"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.paymentStatus,
                                title: "Payment Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller: widget.orderStatus,
                                title: "Order Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              controller: widget.reason,
                              title: "Reason",
                              height: 90,
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              controller: widget.remarks,
                              title: "Remarks",
                              height: 90,
                              maxLines: 3,
                            ),
                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            NewInputCard(
                                readOnly: true,
                                controller: widget.invoiceStatus,
                                title: "Invoice Status"),
                            SizedBox(
                              height: height * .030,
                            ),
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
                                title: "Excess Tax"),
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
        ),
      );
  }
}