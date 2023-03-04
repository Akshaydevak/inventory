

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
  List<PaymentListSalesModel> table = [];
  var items = [
    'payment_completed',
    'payment_pending',
  ];
  String selectval = "Tokyo";
  var list1;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => PayementVerticalListCubit()..getSalePaymentVerticalList(),
),
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
          print("Welcome" + list.toString());
          table = list.data;
          list1 = list;
        });
  },
  builder: (context, state) {
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
          body:
             Container(
               margin:  EdgeInsets.symmetric(horizontal:w *.0155 ),
              // color: Colors.red,
              // width: 700,
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  // Container(
                  //   // margin: EdgeInsets.all(5),
                  //     child: SearchTextfiled(
                  //       color: Color(0xffFAFAFA),
                  //       h: 40,
                  //       // suffixIconCheck: suffixIconCheck,
                  //       w: MediaQuery.of(context).size.width/2.11,
                  //       hintText: "Search Transaction Id..",
                  //       ctrlr: searchContoller,
                  //       onChanged: (va) {
                  //         print("searching case" + va.toString());
                  //         // context
                  //         //     .read<DevisionListCubit>()
                  //         //     .searchDevisionList(searchContoller.text);
                  //         suffixIconCheck=true;
                  //         if (va == "") {
                  //           // context
                  //           //     .read<DevisionListCubit>()
                  //           //     .getDevisionList();
                  //           suffixIconCheck=false;
                  //         }
                  //       },
                  //     )),
                  SizedBox(height: 20,),
                  Container(
                    height: h / 1.86,
                    // width: w/7,
                    margin: EdgeInsets.symmetric(horizontal: w*.006),
                    child: SingleChildScrollView(
                      child: customTable(
                        // border: const TableBorder(
                        //   verticalInside: BorderSide(
                        //       width: .5,
                        //       color: Colors.black45,
                        //       style: BorderStyle.solid),
                        //   horizontalInside: BorderSide(
                        //       width: .3,
                        //       color: Colors.black45,
                        //       // color: Colors.blue,
                        //       style: BorderStyle.solid),
                        // ),
                        tableWidth: .5,
                        childrens: [
                          TableRow(
                            // decoration: BoxDecoration(

                            //     color: Colors.green.shade200,

                            //     shape: BoxShape.rectangle,

                            //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                            children: [
                              tableHeadtext(
                                'Sl No',
                                // padding: EdgeInsets.all(7),
                                //
                                // height: 44,
                                // textColor: Colors.black,
                                // color: Color(0xffE5E5E5),
                                size: 13,
                              ),

                              tableHeadtext(
                                'Transaction Code',
                                // textColor: Colors.black,
                                // padding: EdgeInsets.all(7),
                                // height: 44,
                                size: 13,
                                // color: Color(0xffE5E5E5),
                              ),
                              tableHeadtext(
                                'Mobile Number',
                                // textColor: Colors.black,
                                // padding: EdgeInsets.all(7),
                                // height: 46,
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
                                // textColor: Colors.black,
                                // padding: EdgeInsets.all(7),
                                // height: 46,
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
                                        textPadding((i + 1).toString(),)
                                      // Text(keys[i].key??"")

                                    ),

                                    TableCell(
                                      verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(
                                        initialCheck:true,
                                        formatter: false,

                                        last: table[i].transactionCode  ?? "",
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
                                          choosenValue: table[i].paymentStatus??"",
                                          onChange: (val) {
                                            setState(() {
                                              table[i]=table[i].copyWith(paymentStatus:val,updateCheck: true );
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
                                            // widget.updateCheck(false);
                                            table[i] = table[i].copyWith(
                                                updateCheck: false);
                                            PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                              processId: table[i].id,
                                              customerCode: table[i].customerCode,
                                              orderId: table[i].postResponse?.orderId,
                                              status: table[i].paymentStatus,
                                              tranSactionCode: table[i].transactionCode


                                            );

                                     if(  table[i].updateCheck == true)   context.read<PaymentPacthCubit>().patchPayment(model);


                                            table[i] = table[i].copyWith(
                                                updateCheck: false);
                                            // widget.updation(table);


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
                        ],
                        widths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(2),
                          3: FlexColumnWidth(3),
                          4: FlexColumnWidth(3),
                          5: FlexColumnWidth(2),

                        },
                      ),
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
                          // print(data.nextPageUrl);
                          context
                              .read<PayementVerticalListCubit>()
                              .nextslotSectionPageList();
                        },
                      ),
                    ],
                  ):Container()


                ],
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
