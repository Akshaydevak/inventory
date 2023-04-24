import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridcreation/customeridcreation_cubit.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../../../../core/uttils/variable.dart';

class StableTable extends StatefulWidget {
  TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController orderCode;
  final TextEditingController orderDate;
  final TextEditingController invenotryId;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController billingAddressId;
  final TextEditingController shipping;
  final TextEditingController salesQuotesId;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;
  final TextEditingController customerName;
  final TextEditingController billingName;
  final TextEditingController shippingName;

  StableTable(
      {required this.orderType,
        required this.orderCode,
        required this.orderMode,
        required this.orderDate,
        required this.invenotryId,
        required this.customerId,
        required this.trnNumber,
        required this.shippingName,required this.billingName,
        required this.customerName,
        required this.shipping,
        required this.billingAddressId,
        required this.vat,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.note,
        required this.invoiceStatus,
        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.salesQuotesId,
        required this.sellingPriceTotal});

  @override
  _StableTableState createState() => _StableTableState();
}

class _StableTableState extends State<StableTable> {
  TextEditingController? controller = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? mobileController = TextEditingController();
  TextEditingController? fnameController = TextEditingController();
  TextEditingController? lanameController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();
  TextEditingController taxidController = TextEditingController();
  TextEditingController buisnessmodeController = TextEditingController();
  TextEditingController designation = TextEditingController();
  String? customerUserCode="";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CustomeridcreationCubit(),
        ),
        BlocProvider(
          create: (context) => CustomeridcreationCubit(),
        ),
      ],
      child: Builder(
          builder: (context) {
            return
              BlocListener<CustomeridcreationCubit, CustomeridcreationState>(
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
                          // context
                          //     .read<InventorysearchCubit>()
                          //     .getInventorySearch("code");
                          // select=false;
                        });
                      });
                    } else {
                      context.showSnackBarError(data.data2);
                      print(data.data1);
                    }
                    ;
                  });
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            children: [

                              SelectableDropDownpopUp(
                                label: "Order Type",
                                type: "SalesOrder_TypePopUpCall",
                                value: widget.orderType.text,
                                onSelection: (String va) {
                                  print("$va here is");
                                  //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                  setState(() {
                                    widget.orderType.text = va;

                                  });
                                },
                                restricted: false,
                              ),
                              SizedBox(
                                height: height * .030,
                              ),
                              SelectableDropDownpopUp(
                                label: "Order Mode",
                                type: "SalesOrderMode",
                                value: widget.orderMode.text,
                                onSelection: (String va) {
                                  print("+++++++++++++++++++++++");
                                  //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                  setState(() {
                                    widget.orderMode.text = va;

                                    // onChange = true;
                                    // orderType = va!;
                                  });
                                },
                                restricted: true,
                              ),

                              SizedBox(
                                height: height * .030,
                              ),
                              NewInputCard(
                                  readOnly: true,
                                  controller: widget.orderCode,
                                  title: "Order Code"),
                              SizedBox(
                                height: height * .030,
                              ),
                              NewInputCard(
                                  readOnly: true,
                                  controller: widget.orderDate,
                                  title: "Order Date"),
                              // SizedBox(
                              //   height: height * .030,
                              // ),
                              // NewInputCard(
                              //     controller: widget.invenotryId, title: "Inventory id"),
                              SizedBox(
                                height: height * .030,
                              ),

                              NewInputCard(controller: widget.customerId,
                                readOnly: true,
                                icondrop:true,title: "Customer id",ontap: (){
                                  if(widget.customerId.text.isNotEmpty){
                                    setState(() {
                                      widget.customerName.text="";
                                      widget.customerId.text="";
                                      customerUserCode="";
                                      widget.trnNumber.text="";
                                      widget.shipping.text="";
                                      widget.shippingName.text="";
                                      widget.billingAddressId.text="";
                                      widget.billingName.text="";

                                    });
                                  }
                                  else{
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "customerId_ListPopup", valueSelect: (CustomerIdListModel va){
                                        setState(() {
                                          widget.shipping.text="";
                                          widget.shippingName.text="";
                                          widget.billingAddressId.text="";
                                          widget.billingName.text="";
                                          widget.customerName.text=va?.customerName!=""&&va?.customerName!=null?va?.customerName??"":va.businessData?.buisnessMeta?.fullmae??"";
                                          widget.customerId.text=va?.customerUserCode.toString()??"";
                                          customerUserCode=va?.customerUserCode??"";
                                          widget.trnNumber.text=va?.businessData?.taxId??"";
                                        });
                                      },
                                      ),


                                    );
                                  }


                                },),





                              SizedBox(
                                height: height * .030,
                              ),
                              NewInputCard(
                                  readOnly: true,
                                  height: 46,
                                  controller: widget.trnNumber,
                                  title: "TRN Number"),
                              SizedBox(
                                height: height * .030,
                              ),
                              NewInputCard(controller: widget.shipping,
                                readOnly: true,
                                icondrop:true,title: "Shipping Address Id",ontap: (){
                                  if(widget.shipping.text.isNotEmpty){
                                    setState(() {
                                      widget.shipping.text="";
                                      widget.shippingName.text="";

                                    });
                                  }
                                else{
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        code:customerUserCode,

                                        id: int.tryParse(widget.customerId.text),
                                        type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                        setState(() {

                                          widget.shipping.text=va?.id.toString()??"";
                                          widget.shippingName.text=va?.fullName.toString()??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });

                                      },
                                      ),


                                    );
                                  }


                                },),



                              // SelectableDropDownpopUp(
                              //   label: "shipping address id",
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
                              SizedBox(
                                height: height * .15,
                              ),

                              // NewInputCard(
                              //     controller: widget.shipping, title: "shipping address id"),
                            ],
                          )),
                      Expanded(
                          child: Column(
                            children: [

                              NewInputCard(controller: widget.billingAddressId,
                                readOnly: true,
                                icondrop:true,title: "Billing Address Id",ontap: (){
                                  if(widget.billingAddressId.text.isNotEmpty){
                                    setState(() {
                                      widget.billingAddressId.text="";
                                      widget.billingName.text="";

                                    });
                                  }
                                  else{
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        code: customerUserCode,

                                        type: "shippingIdListPopup", valueSelect: (ShippingAddressModel va){

                                        setState(() {
                                          widget.billingAddressId.text=va?.id.toString()??"";
                                          widget.billingName.text=va?.fullName.toString()??"";
                                          setState(() {
                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });

                                      },
                                      ),


                                    );
                                  }


                                },),


                              SizedBox(
                                height: height * .030,
                              ),
                              // NewInputCard(
                              //     controller: widget.salesQuotesId, title: "Sales  Quotes"),
                              // SizedBox(
                              //   height: height * .030,
                              // ),
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
                                controller: widget.note,
                                title: "Note",
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
                              SizedBox(
                                height: height * .1799,
                              ),
                            ],
                          )),
                      Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * .045,
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
                                  title: "Taxable  Amount"),
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
                              SizedBox(
                                height: height * .085,
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              );
          }
      ),
    );
  }
}