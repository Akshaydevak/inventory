import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

class GeneralScreen extends StatefulWidget {
  final bool isCollapsed;
  GeneralScreen(this.isCollapsed);
  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {

  TextEditingController inventoryId = TextEditingController();
  TextEditingController vendortrnnumber = TextEditingController();
  TextEditingController ordercode = TextEditingController();
  ScrollController? _scrollController = ScrollController();
  TextEditingController vendoraddress = TextEditingController();
  TextEditingController planned_receipt_date = TextEditingController();
  TextEditingController promised_receipt_date = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController foc = TextEditingController();
  TextEditingController Variableamount = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController orderDate = TextEditingController();
  TextEditingController vendorCode = TextEditingController();
  TextEditingController Paymentcode = TextEditingController();
  TextEditingController Paymentstatus = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController Recievingstatus = TextEditingController();
  TextEditingController invoicestatus = TextEditingController();
  TextEditingController unitcourse = TextEditingController(text: "0");
  TextEditingController excesstax = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController actualcost = TextEditingController();
  TextEditingController grandtotal = TextEditingController();
  TextEditingController discount = TextEditingController();
  NavigationProvider ak=NavigationProvider();

  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;
  String? salesUOM;
  String? purchaseUom;
  int unitcost=0;
  int grands=0;




  bool onChange = false;
  String orderType = "";

  @override
  void initState() {
    super.initState();
    // employees = getEmployeeData();
    //employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override

  Widget build(BuildContext context) {
    ak = Provider.of<NavigationProvider>(context);
    print("unitcost"+unitcost.toString());
    Future totalUnitcost(int? value,int grandTotal)async{
      print("grandTotal"+grandTotal.toString());


      print("value isssss$value");

  unitcost=value!;
grands=grandTotal;
      print("unit cost is$unitcost");
      // unitcourse.text=unitcost.toString();
      print(unitcourse.text);
      // setState(() {
      //
      // });







    }
print("checking"+unitcost.toString());
     unitcourse.text=unitcost.toString();
     grandtotal.text=grands.toString();


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
            body:BlocProvider<PurchaseorderpostCubit>(

              create: (context) => PurchaseorderpostCubit(),
  child:  BlocListener<PurchaseorderpostCubit, PurchaseorderpostState>(
    listener: (context, state) {
      state.maybeWhen(orElse: (){},
          error: (){print("error");},success: (data){if(data.data1){print(data.data2);}else{print(data.data1);};});
    },
  child: SingleChildScrollView(
                      // physics: ScrollPhysics(),
                      child:
                      Container(

                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //SizedBox(height: height*.030,),


                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      SelectableDropDownpopUp(
                                        label: "purchase UOM",
                                        type: "sellingngPrice-basedOn",
                                        value: purchaseUom,
                                        onSelection: (String? va) {
                                          print("+++++++++++++++++++++++");
                                          //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                          setState(() {
                                            purchaseUom = va;

                                            onChange = true;
                                            orderType = va!;
                                          });
                                        },
                                        onAddNew: () {},
                                        restricted: true,
                                      ),
                                      // NewInputCard(
                                      //     controller: controller, title: "Order type"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: ordercode
                                          , title: "Order code"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                        controller: orderDate,
                                        title: "Order date",
                                        colors: Color(0xff3E4F5B),
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                        controller: inventoryId,
                                        title: "Inventory id",
                                        label: "Place in setting",
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller:vendorCode, title: "Vender code"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                        controller: vendoraddress,
                                        title: "Vender Address",
                                        height: 90,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: vendortrnnumber,
                                          title: "Vender TRN number"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: promised_receipt_date,
                                          title: "Promised reciept date"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      SizedBox(
                                        height: height * .018,
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: planned_receipt_date,
                                          title: "Planned reciept date"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: Paymentcode, title: "Payment code"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: Paymentstatus, title: "Payment status"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: orderStatus, title: "Order status"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: Recievingstatus,
                                          title: "Recieving status"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: invoicestatus, title: "Invoice status"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                        controller: note,
                                        title: "Note",
                                        label: "R/O",
                                        height: 90,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(controller: discount, title: "Discount"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [

                                      NewInputCard(
                                        controller: remarks,
                                        title: "Remarks",
                                        height: 90,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(controller: foc, title: "Foc"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: unitcourse, title: "Unit course"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: Variableamount,
                                          title: "Variable amount"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: excesstax, title: "Excess tax"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(controller: vat, title: "Vat"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: actualcost, title: "Actual cost"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: grandtotal, title: "Grand total"),
                                      SizedBox(
                                        height: height * .008,
                                      ),
                                      SizedBox(
                                        height: height * .008,
                                      ),
                                      SizedBox(
                                        height: height * .018,
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 50,
                            ),
                            Scrollbar(
                              controller: _scrollController,
                              isAlwaysShown: true,
                              child: Container(
                                height: 410,
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  controller: _scrollController,
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    //   Container(
                                    //     height: 500,
                                    //      width: MediaQuery.of(context).size.height-10,
                                    //   padding: EdgeInsets.all(10),
                                    //   child: customTable(
                                    //     border: TableBorder(
                                    //         verticalInside: BorderSide(
                                    //             width: 1,
                                    //             color: Colors.black45,
                                    //             // color: Colors.blue,
                                    //             style: BorderStyle.solid),
                                    //         horizontalInside: BorderSide.none),
                                    //     tableWidth: .5,
                                    //     childrens: [
                                    //       TableRow(
                                    //         // decoration: BoxDecoration(
                                    //         //     color: Colors.green.shade200,
                                    //         //     shape: BoxShape.rectangle,
                                    //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                                    //           children: [
                                    //             tableHeadtext(
                                    //               'Picking Line Code',
                                    //               padding: EdgeInsets.all(7),
                                    //               height: 30,
                                    //               size: 13,
                                    //               // color: Palette.containerDarknew,
                                    //               // textColor: Palette.white,
                                    //             ),
                                    //             tableHeadtext('Orderline ID',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Variant ID',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Quantity',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             // tableHeadtext('description', size: 10, color: null),
                                    //             tableHeadtext('Product Verified',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Quantity Verified',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Picking Verified',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Ready to pack',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Picked By',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             tableHeadtext('Move To',
                                    //                 padding: EdgeInsets.all(7),
                                    //                 height: 30,
                                    //                 size: 13,
                                    //                 // color: Palette.containerDarknew,
                                    //                 // textColor: Palette.white
                                    //             ),
                                    //             // if (widget.onAddNew) textPadding(''),
                                    //           ]),
                                    //       // if (!widget.onAddNew &&
                                    //       //     widget.order?.orderLines != null &&
                                    //       //     widget.order!.orderLines!.isNotEmpty) ...[
                                    //       //   for (var i = 0; i < widget.order!.orderLines!.length; i++)
                                    //       TableRow(
                                    //           decoration: BoxDecoration(
                                    //               color: Colors.grey.shade200,
                                    //               shape: BoxShape.rectangle,
                                    //               border: Border(
                                    //                   left: BorderSide(
                                    //                       width: 1,
                                    //                       color: Colors.black45,
                                    //                       style: BorderStyle.solid),
                                    //                   right: BorderSide(
                                    //                       color: Colors.black45,
                                    //                       width: 1,
                                    //                       style: BorderStyle.solid))),
                                    //           children: [
                                    //             textPadding("841",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("01",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             InkWell(
                                    //               onTap: () {
                                    //                // isClicked1 = !isClicked1;
                                    //                 setState(() {});
                                    //               },
                                    //               child: Card(
                                    //                 color:  Colors.green ,
                                    //                 child: Container(
                                    //                   // color: isClicked1 ? Colors.green : Colors.grey.shade100,
                                    //                     width: 200,
                                    //                     height: 300,
                                    //                     decoration: BoxDecoration(
                                    //                         border: Border.all(color: Colors.black12)),
                                    //                     child: Row(
                                    //                       children: [
                                    //                         Icon(
                                    //                           Icons.check,
                                    //                           color:  Colors.black,
                                    //                         ),
                                    //                      SizedBox(height: 1,),
                                    //                         Text(
                                    //                           "Packing",
                                    //                           style: TextStyle(
                                    //                             color:  Colors.black,
                                    //                           ),
                                    //                         ),
                                    //                       ],
                                    //                     )),
                                    //               ),
                                    //             )
                                    //             // padding: EdgeInsets.all(7), fontSize: 12
                                    //
                                    //             // textPadding(""),
                                    //             // textPadding("${widget.order?.orderLines?[i].id}", fontSize: 10),
                                    //             // textPadding("${widget.order?.orderLines?[i].variantId}",
                                    //             //     fontSize: 10),
                                    //             // textPadding("${widget.order?.orderLines?[i].totalQuantity} ${widget.order?.orderLines?[i].meta?.uom}",
                                    //             //     fontSize: 10),
                                    //             // textPadding("${widget.order?.orderLines?[i].meta?.name}",
                                    //             //     fontSize: 10),
                                    //             //     textPadding("${widget.order?.orderLines?[i].meta?.description}",
                                    //             //     fontSize: 10,),
                                    //             // TableFileViewField(fileUrl: ""
                                    //             //     // "${widget.order?.orderLines?[i].meta?.image}"
                                    //             //     ),
                                    //             // TableFileUploadField(
                                    //             //   onChange: (p0) {},
                                    //             // ),
                                    //             // if (widget.onAddNew) textPadding(''),
                                    //           ]),
                                    //       TableRow(
                                    //           decoration: BoxDecoration(
                                    //             color: Colors.grey.shade100,
                                    //             shape: BoxShape.rectangle,
                                    //             border: Border(
                                    //                 left: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid),
                                    //                 right: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid)),
                                    //             // border: Border(
                                    //             //     bottom: BorderSide(
                                    //             //         color: Colors.black87,
                                    //             //         width: 1,
                                    //             //         style: BorderStyle.solid))
                                    //           ),
                                    //           children: [
                                    //             textPadding("841",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("01",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             Padding(
                                    //               padding: const EdgeInsets.only(top: 5),
                                    //               child: InkWell(
                                    //                 onTap: () {
                                    //                   // isClicked2 = !isClicked2;
                                    //                   setState(() {});
                                    //                 },
                                    //                 child: Card(
                                    //                   color: Colors.grey.shade200,
                                    //                   child: Container(
                                    //                       width: 200,
                                    //                       height:300,
                                    //                       decoration: BoxDecoration(
                                    //                           border: Border.all(color: Colors.black12)),
                                    //                       child: Row(
                                    //                         children: [
                                    //                           Icon(
                                    //                             Icons.check,
                                    //                             color:  Colors.black,
                                    //                           ),
                                    //                           SizedBox(width: 1,),
                                    //                           Text(
                                    //                             "Packing",
                                    //                             style: TextStyle(
                                    //                               color:
                                    //                                Colors.black,
                                    //                             ),
                                    //                           ),
                                    //                         ],
                                    //                       )),
                                    //                 ),
                                    //               ),
                                    //             )
                                    //             // if (widget.onAddNew) textPadding(''),
                                    //           ]),
                                    //       TableRow(
                                    //           decoration: BoxDecoration(
                                    //             color: Colors.grey.shade200,
                                    //             shape: BoxShape.rectangle,
                                    //             border: Border(
                                    //                 left: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid),
                                    //                 right: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid)),
                                    //           ),
                                    //           children: [
                                    //             textPadding("841",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("01",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             Padding(
                                    //               padding: const EdgeInsets.only(top: 5),
                                    //               child: InkWell(
                                    //                 onTap: () {
                                    //                   // isClicked3 = !isClicked3;
                                    //                   setState(() {});
                                    //                 },
                                    //                 child: Card(
                                    //                   color:  Colors.grey.shade200,
                                    //                   child: Container(
                                    //                       width: 200,
                                    //                       height: 300,
                                    //                       decoration: BoxDecoration(
                                    //                           border: Border.all(color: Colors.black12)),
                                    //                       child: Row(
                                    //                         children: [
                                    //                           Icon(
                                    //                             Icons.check,
                                    //                             color:  Colors.black,
                                    //                           ),
                                    //                           SizedBox(width: 1,),
                                    //                           Text(
                                    //                             "Packing",
                                    //                             style: TextStyle(
                                    //                               color:
                                    //                               Colors.black,
                                    //                             ),
                                    //                           ),
                                    //                         ],
                                    //                       )),
                                    //                 ),
                                    //               ),
                                    //             )
                                    //             // if (widget.onAddNew) textPadding(''),
                                    //           ]),
                                    //       TableRow(
                                    //           decoration: BoxDecoration(
                                    //             color: Colors.grey.shade100,
                                    //             shape: BoxShape.rectangle,
                                    //             border: Border(
                                    //                 left: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid),
                                    //                 bottom: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid),
                                    //                 right: BorderSide(
                                    //                     color: Colors.black45,
                                    //                     width: 1,
                                    //                     style: BorderStyle.solid)),
                                    //           ),
                                    //           children: [
                                    //             textPadding("841",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("842",
                                    //                 fontSize: 12,
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("01",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             textPadding("Lorem",
                                    //                 padding: EdgeInsets.only(left: 11.5, top: 11.5),
                                    //                 fontWeight: FontWeight.w500),
                                    //             Padding(
                                    //               padding: const EdgeInsets.only(top: 5),
                                    //               child: InkWell(
                                    //                 onTap: () {
                                    //                   // isClicked4 = !isClicked4;
                                    //                   setState(() {});
                                    //                 },
                                    //                 child: Card(
                                    //                   color: Colors.grey.shade200,
                                    //                   child: Container(
                                    //                       width: 200,
                                    //                       height:  300,
                                    //                       decoration: BoxDecoration(
                                    //                           border: Border.all(color: Colors.black12)),
                                    //                       child: Row(
                                    //                         children: [
                                    //                           Icon(
                                    //                             Icons.check,
                                    //                             color: Colors.black,
                                    //                           ),
                                    //                          SizedBox(width: 1,),
                                    //                           Text(
                                    //                             "Packing",
                                    //                             style: TextStyle(
                                    //                               color:
                                    //                               Colors.black,
                                    //                             ),
                                    //                           ),
                                    //                         ],
                                    //                       )),
                                    //                 ),
                                    //               ),
                                    //             )
                                    //             // if (widget.onAddNew) textPadding(''),
                                    //           ]),
                                    //       // ],
                                    //       // if (widget.onAddNew &&
                                    //       //     widget.order != null &&
                                    //       //     widget.order!.orderLines != null &&
                                    //       //     widget.order!.orderLines!.isNotEmpty) ...[
                                    //       //   for (var i = 0; i < widget.order!.orderLines!.length; i++)
                                    //       //     TableRow(children: [
                                    //       //       textPadding("${widget.order?.orderLines?[i].id}", fontSize: 10),
                                    //
                                    //       //       textPadding("${widget.order?.orderLines?[i].skuId}",
                                    //       //           fontSize: 10),
                                    //       //       textPadding("${widget.order?.orderLines?[i].totalQuantity}",
                                    //       //           fontSize: 10),
                                    //
                                    //       //     ]),
                                    //       // ],
                                    //     ],
                                    //     widths: {
                                    //       // 0: FractionColumnWidth(.9),
                                    //       // 1: FractionColumnWidth(.9),
                                    //       // 2: FractionColumnWidth(.9),
                                    //       // 3: FractionColumnWidth(.9),
                                    //       // 4: FractionColumnWidth(.9),
                                    //       // 5: FractionColumnWidth(.9),
                                    //       // 6: FractionColumnWidth(.9),
                                    //       // 7: FractionColumnWidth(.9),
                                    //       // 8: FractionColumnWidth(.9),
                                    //       // 9: FractionColumnWidth(.19),
                                    //     },
                                    //   ),
                                    // ),

                                    ScrollableTable(
                                        onTotal: totalUnitcost,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .008,
                            ),
                            Row(
                              children: [
                                Spacer(),
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
                                InkWell(
                                  onTap: (){

                                    PurchaseOrderPost model=PurchaseOrderPost(
                                      purchaseOrderType:orderType,
                                      iventoryId:inventoryId.text,
                                      vendorId: vendorCode.text,
                                      vendorTrnNumber: vendortrnnumber.text,
                                      vendorMailId: "Akkkkk@gmail.com",
                                      vendorAddress: vendoraddress.text,
                                      address1: "Akshhy",
                                      address2: "parammal",
                                      promisedReceiptdate: promised_receipt_date.text,
                                      plannedRecieptDate: planned_receipt_date.text,
                                      note: note.text,
                                      remarks: remarks.text,
                                      discount:int.parse( discount.text),
                                      foc:int.parse( foc.text),unitcost:int.parse( unitcourse.text),
                                      excessTax: int.parse(excesstax.text),
                                      actualCost:int.parse(actualcost.text),


                                      vat:int.parse( vat.text),
                                      grandTotal: int.parse(grandtotal.text),
                                      variableAmount:int.parse( Variableamount.text),
                                      createdBy: "www",
                                      orderLines: [],


                                    );
                                    print("akkkkk");
                                    context.read<PurchaseorderpostCubit>().postPurchase(model);

                                 //   BlocProvider.of<PurchaseorderpostCubit>(context).postPurchase(model);


                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 29,
                                    width: 90,
                                    // decoration: BoxDecoration(
                                    //     color: Color,
                                    //     border: bdr
                                    //         ? Border.all(
                                    //       color: border, //color of border
                                    //       width: 1,
                                    //     )
                                    //         : Border() //Border
                                    // ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.save,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "save",
                                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ), //BoxDecoration
                                  ),
                                ),
//                     BlocProvider(
//   create: (context) => PurchaseorderpostCubit(),
//   child: Button(Icons.check, Colors.grey,ctx: context,
//                         text: "Save",
//                         height: 29,
//                         width: 90,
//                         labelcolor: Colors.white,
//                         iconColor: Colors.white,
//                         onApply: (){
//     print("pppp");
//     PurchaseOrderPost model=PurchaseOrderPost(
//                           purchaseOrderType:orderType,iventoryId:inventoryId.text,vendorId: vendorCode.text,
//                           vendorTrnNumber: vendortrnnumber.text,
//                           vendorMailId: "Akkkkk@gmail.com",
//                           vendorAddress: vendoraddress.text,
//                           address1: "Akshhy",
//                           address2: "parammal",
//                           promisedReceiptdate: promised_receipt_date.text,
//                           plannedRecieptDate: planned_receipt_date.text,
//                           note: note.text,
//                           remarks: remarks.text,
//                           discount:int.parse( discount.text),
//                           foc:int.parse( foc.text),unitcost:int.parse( unitcourse.text),
//                           excessTax: int.parse(excesstax.text),actualCost:int.parse(actualcost.text),
//                           vat:int.parse( vat.text),
//                           grandTotal: int.parse(grandtotal.text),
//                           variableAmount:int.parse( Variableamount.text),
//                           createdBy: "www",
//                           orderLines: [],
//
//
//                         );
//                         BlocProvider.of<PurchaseorderpostCubit>(context).postPurchase(model);
//
//                         },
//
//
//
//
//
//                         Color: Color(0xff3E4F5B)),
// ),
                                SizedBox(
                                  width: width * .008,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
),
),
          );
  }
}

Widget Button(IconData icon, Color border,
    {Color Color = Colors.transparent,required BuildContext ctx,
    required String text,
    double height = 30,
    double width = 30,
    Color labelcolor = Colors.white,
    Color iconColor = Colors.black,
      required  Function onApply,
    bool bdr = false}) {
  return InkWell(
    onTap: (){
      onApply(ctx);
    },
    child: Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color,
          border: bdr
              ? Border.all(
                  color: border, //color of border
                  width: 1,
                )
              : Border() //Border
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            text,
            style: TextStyle(color: labelcolor, fontWeight: FontWeight.bold),
          )
        ],
      ), //BoxDecoration
    ),
  );
}
