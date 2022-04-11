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
  int discountValue=0;
  int grands=0;
  int focValue=0;
  int VatableValue=0;
  int excessTax=0;
  int vatValue=0;
  int actualValue=0;
  int excessTAxValue=0;
  int vatableValue=0;
  List<OrderLines>orderLisnes=[];





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

    Future totalUnitcost(int? value,int? grand,int? foc,int?
    actualCost, int? vat,List<OrderLines> orderLines,int ? discount,int ? excesstax,int ?vatableAmount)async{

  unitcost=value!;
  discountValue=discount!;
  grands=grand!;
  focValue=foc!;
  orderLisnes=orderLines;
  VatableValue=vatableAmount!;
  excessTAxValue=excesstax!;

  print("+++++++++++++++");
  print(orderLines);

  vatValue=vat!;
  actualValue=actualCost!;




      print("unit cost is$unitcost");
      // unitcourse.text=unitcost.toString();
      print(unitcourse.text);
      // setState(() {
      //
      // });


    }



     unitcourse.text=unitcost.toString();
     grandtotal.text=grands.toString();
     vat.text=vatValue.toString();
    actualcost.text=actualValue.toString();
    foc.text=focValue.toString();
    discount.text=discountValue.toString();
    excesstax.text=excessTAxValue.toString();
    Variableamount.text=VatableValue.toString();



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
                                      SizedBox(
                                        height: height * .035,
                                      ),

                                      SelectableDropDownpopUp(
                                        label: "order type",
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
                                          , title: "Order code",
                                        readOnly: true,
                                      ),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      BuildDateFormField(
                                        label: "Order date",
                                        onSaved: (newValue) {
                                          print(newValue);
                                      orderDate.text = newValue.toString();
                                        },
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
                                      BuildDateFormField(
                                        label: "Promised reciept date",
                                        onSaved: (newValue) {
                                          print(newValue);
                                          promised_receipt_date.text = newValue.toString();
                                        },
                                      ),
                                      // NewInputCard(
                                      //     controller: promised_receipt_date,
                                      //     title: "Promised reciept date"),
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
                                        height: height * .040,
                                      ),

                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      BuildDateFormField(
                                        label: "Planned reciept date",
                                        onSaved: (newValue) {
                                          print(newValue);
                                          planned_receipt_date.text = newValue.toString();
                                        },
                                      ),
                                      // NewInputCard(
                                      //     controller: planned_receipt_date,
                                      //     title: "Planned reciept date"),
                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      NewInputCard(
                                          controller: Paymentcode, title: "Payment code"),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: Paymentstatus, title: "Payment status",readOnly: true,),
                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      NewInputCard(
                                          controller: orderStatus, title: "Order status",readOnly: true,),
                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      NewInputCard(
                                          controller: Recievingstatus,
                                          title: "Recieving status",readOnly: true,),
                                      SizedBox(
                                        height: height * .030,
                                      ),
                                      NewInputCard(
                                          controller: invoicestatus, title: "Invoice status",readOnly: true,),
                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      NewInputCard(
                                        controller: note,
                                        title: "Note",
                                        label: "R/O",
                                        height: 90,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: height * .020,
                                      ),
                                      NewInputCard(
                                        controller: remarks,
                                        title: "Remarks",
                                        height: 90,
                                        maxLines: 3,
                                      ),

                                      SizedBox(
                                        height: height * .020,
                                      ),

                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [

                                      NewInputCard(controller: discount, title: "Discount",readOnly: true,),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(controller: foc, title: "Foc"),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(
                                          controller: unitcourse, title: "Unit cost",readOnly: true,),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(
                                          controller: Variableamount,readOnly: true,
                                          title: "Vartable amount"),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(
                                          controller: excesstax,
                                          readOnly: true,
                                          title: "Excess tax"),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(controller: vat, title: "Vat",readOnly: true,),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(
                                          controller: actualcost, title: "Actual cost",readOnly: true,),
                                      SizedBox(
                                        height: height * .035,
                                      ),
                                      NewInputCard(
                                          controller: grandtotal, title: "Grand total",readOnly: true,),
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
                                      orderLines:orderLisnes,


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
