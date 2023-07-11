

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/sales/general/cubit/payment_verticallist/payement_vertical_list_cubit.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/sales/invoice/cubits/payment_patch/payment_pacth_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/searchTextfield.dart';

class SalesPaymentListPActh extends StatefulWidget {
  const SalesPaymentListPActh({Key? key}) : super(key: key);

  @override
  State<SalesPaymentListPActh> createState() => _SalesPaymentListPActhState();
}

class _SalesPaymentListPActhState extends State<SalesPaymentListPActh> {
  bool suffixIconCheck = false;
  TextEditingController searchContoller = TextEditingController();

  var transactionCodeControllers = <TextEditingController>[];
  List<PaymentListSalesModel> table = [];
  var items = [
    'Payment Completed',
    'Payment Pending',
    'Rejected'
  ];
  String selectval = "Tokyo";
  var list1;
  @override
  void initState() {
    context
        .read<PayementVerticalListCubit>()
        .getSalePaymentVerticalList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [

    BlocProvider(
      create: (context) => PaymentPacthCubit(),
    ),
  ],
  child: Builder(

      builder: (context) {

        return MultiBlocListener(
  listeners: [
    BlocListener<PaymentPacthCubit, PaymentPacthState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          print("the payment success method");
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),

  ],
  child: BlocConsumer<PayementVerticalListCubit, PayementVerticalListState>(
  listener: (context, state) {
    print("state" + state.toString());
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("Welcome" + list.data.toString());



            table = list.data;
            if(table.isNotEmpty){
              transactionCodeControllers.clear();
              for(var i=0;i<table.length;i++) {

                var requsted = new TextEditingController(text: table[i]
                    .transactionCode.toString() ?? "");
                transactionCodeControllers.add(requsted);
                list1 = list;
              }
            }


        });
  },
  builder: (context, state) {
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
          body:
             SingleChildScrollView(
               child: Container(
                 margin:  EdgeInsets.symmetric(horizontal:w *.0155 ),
                // color: Colors.red,
                // width: 700,
                child: Column(
                  children: [
                    SizedBox(
                      height: h * .005,
                    ),
                    Container(
                      // margin: EdgeInsets.all(5),
                        child: SearchTextfiled(
                          color: Color(0xffFAFAFA),
                          h: 40,
                          suffixIconCheck: suffixIconCheck,
                          w: MediaQuery.of(context).size.width,
                          hintText: "Search...",
                          ctrlr: searchContoller,
                          onChanged: (va) {
                            print("searching case" + va.toString());
                            context
                                .read<PayementVerticalListCubit>()
                                .getSearchCustomerList(searchContoller.text);
                            suffixIconCheck=true;
                            if (va == "") {
                              context
                                  .read<PayementVerticalListCubit>()
                                  .getSalePaymentVerticalList();;
                              suffixIconCheck=false;
                            }
                          },
                        )),
                    SizedBox(
                      height: h * .005,
                    ),


                    SingleChildScrollView(
                      child: customTable(

                        tableWidth: .5,
                        childrens: [
                          TableRow(
                            children: [
                              tableHeadtext(
                                'Sl.No',

                                size: 13,
                              ),  tableHeadtext(
                                'Order Id',
                                size: 13,
                              ),

                              tableHeadtext(
                                'Transaction Code',
                                size: 13,

                              ),
                              tableHeadtext(
                                'Mobile Number',
                                size: 13,
                                // color: Color(0xffE5E5E5),
                              ),
                              tableHeadtext(
                                'Total Amount',
                                // textColor: Colors.black,
                                // padding: EdgeInsets.all(7),
                                // height: 46,
                                size: 13,
                                // color: Color(0xffE5E5E5),
                              ),
                              tableHeadtext(
                                'Payment Status',
                                // textColor: Colors.black,
                                // padding: EdgeInsets.all(7),
                                // height: 46,
                                size: 13,
                                // color: Color(0xffE5E5E5),
                              ),
                              tableHeadtext(
                                '',

                                size: 13,
                                // color: Color(0xffE5E5E5),
                              ),
                            ],
                          ),
                          if (table?.isNotEmpty == true) ...[
                            for (var i = 0; i < table.length; i++)
                              TableRow(
                                  decoration: BoxDecoration(
                                      color: Pellet.tableRowColor,
                                      shape: BoxShape.rectangle,
                                      border:  Border(
                                          left: BorderSide(

                                              color: Color(0xff3E4F5B).withOpacity(.1),
                                              width: .4,
                                              style: BorderStyle.solid),
                                          bottom: BorderSide(

                                              color:   Color(0xff3E4F5B).withOpacity(.1),
                                              style: BorderStyle.solid),
                                          right: BorderSide(
                                              color:   Color(0xff3E4F5B).withOpacity(.1),
                                              width: .4,

                                              style: BorderStyle.solid))),
                                  children: [
                                    TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment
                                            .middle,
                                        child:
                                        textPadding((i + 1).toString(),alighnment: Alignment.center)
                                      // Text(keys[i].key??"")

                                    ),
                                    TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment
                                            .middle,
                                        child:textOnclickPadding(
    ontap: () {
    },
    text: table[i].order ?? "",)
                                      // Text(keys[i].key??"")

                                    ),

                                    TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(

                                        formatter: false,
                                        textAlighn: TextAlign.left,
                                        alignment: Alignment.topLeft,
                                        controller:transactionCodeControllers[i],
                                        onChanged: (va) {
                                          // widget.updateCheck(true);
                                          table[i] = table[i].copyWith(transactionCode: va,updateCheck: true);
                                                   setState(() {});
                                        },
                                      ),
                                    ),
                                    TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment
                                            .middle,
                                        child: textOnclickPadding(
                                          ontap: () {
                                          },
                                          text: table[i].postResponse?.contact ?? "",),),

                                    TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment
                                            .middle,
                                        child: textOnclickPadding(
                                          ontap: () {
                                          },
                                          text: table[i].totalAmount.toString() ?? "",),),
                                    TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment
                                            .middle,
                                        child:
                                        CustomDropDown(
                                          // border: true,
                                          choosenValue: table[i].paymentStatus=="payment_completed"?"Payment Completed":table[i].paymentStatus=="payment_pending"?"Payment Pending":table[i].paymentStatus=="rejected"?"Rejected":table[i].paymentStatus??"",
                                          onChange: (val) {
                                            setState(() {
                                              String status="";
                                              if(val=="Payment Completed"){
                                                status="payment_completed";
                                              }
                                              else if(val=="Payment Pending"){
                                                status="payment_pending";

                                              }
                                              else if(val=="Rejected"){
                                                status="rejected";

                                              }


                                              table[i]=table[i].copyWith(paymentStatus:status,updateCheck: true );
                                            });

                                            // choosenValue=val;
                                          },
                                          items: items,
                                        ),


                                        // DropdownButton(
                                        //   // underline: Container(color: Colors.transparent),
                                        //
                                        //   // Initial Value
                                        //   value: selectval,
                                        //
                                        //   // Down Arrow Icon
                                        //   icon: const Icon(Icons.keyboard_arrow_down),
                                        //
                                        //   // Array list of items
                                        //   items: items.map((String? items) {
                                        //     return DropdownMenuItem(
                                        //       value: items,
                                        //       child: Text(items??""),
                                        //     );
                                        //   }).toList(),
                                        //   // After selecting the desired option,it will
                                        //   // change button value to selected value
                                        //   onChanged: (String?  newValue) {
                                        //     // setState(() {
                                        //     //   table[i]=table[i].copyWith(paymentStatus:newValue,updateCheck: true );
                                        //     // });
                                        //   },
                                        // ),
                                    ),
                                    TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                      child: TableTextButton(
                                        onPress: () {
                                          setState(() {
                                            if(table[i].updateCheck==true){
                                              table[i] = table[i].copyWith(
                                                  updateCheck: false);
                                              PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                                  processId: table[i].id,
                                                  customerCode: table[i].customerCode,
                                                  orderId: table[i].postResponse?.orderId,
                                                  status: table[i].paymentStatus,
                                                  tranSactionCode: table[i].transactionCode
                                              );
                                              context.read<PaymentPacthCubit>().patchPayment(model);
                                              table[i] = table[i].copyWith(
                                                  updateCheck: false);
                                            }

                                          });
                                        },
                                        textColor: table[i].updateCheck == true
                                            ? Pellet.tableBlueHeaderPrint
                                            : Colors.grey,
                                        label:
                                        table[i].updateCheck == true
                                            ? "UPDATE"
                                            : "",
                                      ),
                                    )
                                  ]),
                          ],
                          if(table.isEmpty)
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Pellet.tableRowColor,
                                    shape: BoxShape.rectangle,
                                    border:  Border(
                                        left: BorderSide(

                                            color: Color(0xff3E4F5B).withOpacity(.1),
                                            width: .4,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(

                                            color:   Color(0xff3E4F5B).withOpacity(.1),
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color:   Color(0xff3E4F5B).withOpacity(.1),
                                            width: .4,

                                            style: BorderStyle.solid))),
                                children: [
                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),
                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),

                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),
                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),

                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),
                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),
                                  TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment
                                          .middle,
                                      child:
                                      textPadding("",alighnment: Alignment.center)
                                    // Text(keys[i].key??"")

                                  ),
                                ]),


                        ],
                        widths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(3),
                          2: FlexColumnWidth(3),
                          3: FlexColumnWidth(2),
                          4: FlexColumnWidth(2),
                          5: FlexColumnWidth(2),

                        },
                      ),
                    ),
                    list1!=null?    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        tablePagination(
                              () => context.read<PayementVerticalListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                            context
                                .read<PayementVerticalListCubit>()
                                .previuosslotSectionPageList();
                          },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                setState(() {
                                  // table.clear();
                                  context
                                      .read<PayementVerticalListCubit>()
                                      .nextslotSectionPageList();
                                });




                          },
                        ),
                      ],
                    ):Container()


                  ],
                ),
            ),
             ),

        );
  },
),
);
      }
    ),
);
  }
}
