import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/commonWidget/Colors.dart';

import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/uttils/variable.dart';
import 'cubits/generateqrcode/qrgenerating_cubit.dart';
import 'model/screesns/variant tables.dart';
import 'model/vendormodel.dart';

class Identification extends StatefulWidget {
  final TextEditingController barCode;
  final int? veritiaclid;
  final bool select;
  final TextEditingController qrCode;
  final TextEditingController rfId;
  final List<AlternativeBarcode> alternativeBarcode;
  final List<AlternativeBarcode> alternativeQrCode;
  final Function barQrCodeTableAssign;

  Identification(
      {required this.select,
      required this.barCode,
      required this.veritiaclid,
      required this.qrCode,
      required this.rfId,
      required this.alternativeBarcode,
      required this.alternativeQrCode,
      required this.barQrCodeTableAssign});

  @override
  _IdentificationState createState() => _IdentificationState();
}

class _IdentificationState extends State<Identification> {
  TextEditingController controller = TextEditingController();
  List<AlternativeBarcode> alternativeBarcode = [];
  TextEditingController barCodeTextEditingController = TextEditingController();
  TextEditingController barCode2TextEditingController = TextEditingController();
  TextEditingController qrCodeTextEditingController = TextEditingController();
  List<TextEditingController> bacCodeListTextEditing = [];
  bool barActive = false;
  bool qrActive = false;
  List<bool> upDate = [];
  List<bool> upDateButton = [];
  List<TextEditingController> barcodeTextEditingController = [];

  List<AlternativeBarcode> alterNativeQrCode = [];
  bool onChange = false;
  bool onSaveActive = false;

  saveButtonActovde(String barcode, bool isActive) {
    onChange = true;
    if (barcode != "" && isActive == true) {
      setState(() {
        onSaveActive = true;
      });
    } else {
      setState(() {
        onSaveActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      alternativeBarcode = [];
      upDate.clear();
      onSaveActive = false;
      upDateButton.clear();

      bacCodeListTextEditing = [];

      if (widget.alternativeBarcode?.isNotEmpty == true) {
        for (var i = 0; i < widget.alternativeBarcode.length; i++) {
          var value = widget.alternativeBarcode[i].barcode;
          if (value == null) value = "";
          bacCodeListTextEditing.add(TextEditingController(text: value));
          upDate.add(false);
          upDateButton.add(false);
        }

        alternativeBarcode =List.from( widget?.alternativeBarcode ?? []);
      }
      if (widget.alternativeBarcode?.isNotEmpty == true) {
        alterNativeQrCode = widget?.alternativeQrCode ?? [];
      }
    }

    onChange = false;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QrgeneratingCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocListener<QrgeneratingCubit, QrgeneratingState>(
          listener: (context, state) {
            print("postssssssss" + state.toString());
            state.maybeWhen(orElse: () {
              // context.
              context.showSnackBarError("Loadingggg");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              print("Akshayaaaaaaaaaaaa");
              print(data.data1);
              print(data.data2);
              if (data.data1) {
                setState(() {
                  widget.qrCode.text = data.data2;
                });

                // Timer(Duration(seconds: 5), () {
                //   setState(() {
                //     context.read<ListvraiantCubit>().getVariantList();
                //     // select=false;
                //   });
                // });
              } else {
                context.showSnackBarError(data.data2);
                print(data.data1);
              }
              ;
            });
          },
          child: Builder(builder: (context) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            NewInputCard(
                                // readOnly: widget.select ? false : true,
                                controller: widget.barCode,
                                title: "Barcode"),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: Column(
                      //     children: [
                      //       NewInputCreateCard(
                      //           fontColors: Colors.lightBlue,
                      //           height: 55,
                      //           onChange: () async {
                      //             print("akshahahahha");
                      //
                      //             await launch(widget.qrCode.text);
                      //           },
                      //           subTitle: "Generate Qr Code",
                      //           ontap: () {
                      //             context
                      //                 .read<QrgeneratingCubit>()
                      //                 .getQrCodeRead(widget.veritiaclid);
                      //           },
                      //           controller: widget.qrCode,
                      //           title: "Qr code"),
                      //     ],
                      //   ),
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            // NewInputCard(
                            //     controller: widget.rfId, title: "RF Id"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: h * .05,
                  ),
                  Container(
                    width: 2200,
                    margin: EdgeInsets.symmetric(horizontal: w * .02),
                    child: customTable(
                      border: const TableBorder(
                        verticalInside: BorderSide(
                            width: .5,
                            color: Colors.black45,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width: .3,
                            color: Colors.black45,
                            // color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                      tableWidth: .5,
                      childrens: [
                        TableRow(
                          // decoration: BoxDecoration(

                          //     color: Colors.green.shade200,

                          //     shape: BoxShape.rectangle,

                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                          children: [
                            tableHeadtext(
                              'ID',

                              padding: EdgeInsets.all(7),

                              height: 46,
                              textColor: Colors.white,
                              // color: Color(0xffE5E5E5),

                              size: 13,
                            ),
                            tableHeadtext(
                              'Alternative Barcode',
                              textColor: Colors.white,
                              padding: EdgeInsets.all(7),
                              height: 46,
                              size: 13,
                              // color: Color(0xffE5E5E5),
                            ),
                            tableHeadtext(
                              'isActive',
                              textColor: Colors.white,
                              padding: EdgeInsets.all(7),
                              height: 46,
                              size: 13,
                              // color: Color(0xffE5E5E5),
                            ),
                            tableHeadtext(
                              '',
                              textColor: Colors.white,
                              padding: EdgeInsets.all(7),
                              height: 46,
                              size: 13,
                              // color: Color(0xffE5E5E5),
                            ),
                          ],
                        ),
                        if (alternativeBarcode != null) ...[
                          for (var i = 0; i < alternativeBarcode!.length; i++)
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Pellet.tableRowColor,
                                    shape: BoxShape.rectangle,
                                    border: Border(
                                        left: BorderSide(
                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(
                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,
                                            style: BorderStyle.solid))),
                                children: [
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,

                                    child: textPadding((i + 1).toString(),
                                        color: upDate[i]
                                            ? Colors.white
                                            : Colors.transparent,
                                        height: 48),
                                    // UnderLinedInput(),
                                  ),
                                  TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(
                                        readOnly: !upDate[i],
                                        filledColour: upDate[i]
                                            ? Colors.white
                                            : Colors.transparent,
                                        controller: bacCodeListTextEditing[i],
                                        formatter: false,
                                        // controller: TextEditingController(text:alternativeBarcode?[i].barcode??"" ),
                                        // initialCheck: true,
                                        // last:alternativeBarcode?[i].barcode??"",
                                        onChanged: (va) {
                                          onChange = true;
                                          setState(() {
                                            upDateButton[i] = true;
                                          });
                                          alternativeBarcode[i] =
                                              alternativeBarcode[i].copyWith(
                                                  barcode: va.toString());
                                          widget.barQrCodeTableAssign(
                                              type: "1",
                                              list: alternativeBarcode);
                                        },
                                      )),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                        color: upDate[i]
                                            ? Colors.white
                                            : Colors.transparent,
                                        valueChanger:
                                            alternativeBarcode[i].isActive,
                                        onSelection: (va) {
                                          if (upDate[i] == true) {
                                            bool? isActive =
                                                alternativeBarcode[i].isActive;
                                            setState(() {
                                              onChange = true;
                                              setState(() {
                                                upDateButton[i] = true;
                                              });
                                              setState(() {});
                                              isActive = !isActive!;
                                              alternativeBarcode[i] =
                                                  alternativeBarcode[i]
                                                      .copyWith(
                                                          isActive: isActive);
                                              // widget.barQrCodeTableAssign(
                                              //     type: "1", list: alternativeBarcode);
                                            });
                                          }
                                        }),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        TableTextButton(
                                          buttonBagroundColor: upDateButton[i]
                                              ? Pellet.bagroundColor
                                              : Colors.transparent,
                                          textColor: upDateButton[i]
                                              ? Pellet.bagroundColor
                                              : Colors.black,
                                          bagroundColor: upDateButton[i]
                                              ? Pellet.tableBlueHeaderPrint
                                              : Color(0xffe7e7e7),
                                          label: upDateButton[i] == true
                                              ? "Update"
                                              : "Edit",

                                          // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                          onPress: () {
                                            onChange = true;

                                            setState(() {
                                              upDate[i] = !upDate[i];

                                              if (upDateButton[i] == true) {
                                                widget.barQrCodeTableAssign(
                                                    type: "1",
                                                    list: alternativeBarcode);
                                                upDateButton[i] = false;
                                              }
                                            });
                                            setState(() {});
                                          },
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        TableIconTextButton(
                                          label: "",
                                          icon: Icons.delete,
                                          onPress: () {
                                            onChange = true;
                                            setState(() {
                                              alternativeBarcode?.removeAt(i);
                                              upDate.removeAt(i);
                                              upDateButton.removeAt(i);
                                              bacCodeListTextEditing
                                                  .removeAt(i);
                                              widget.barQrCodeTableAssign(
                                                  type: "1",
                                                  list: alternativeBarcode);
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                        ],
                        TableRow(
                            decoration: BoxDecoration(
                                color: Pellet.tableRowColor,
                                shape: BoxShape.rectangle,
                                border: Border(
                                    left: BorderSide(
                                        color:
                                            Color(0xff3E4F5B).withOpacity(.1),
                                        width: .4,
                                        style: BorderStyle.solid),
                                    bottom: BorderSide(
                                        color:
                                            Color(0xff3E4F5B).withOpacity(.1),
                                        style: BorderStyle.solid),
                                    right: BorderSide(
                                        color:
                                            Color(0xff3E4F5B).withOpacity(.1),
                                        width: .4,
                                        style: BorderStyle.solid))),
                            children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: textPadding(
                                    (alternativeBarcode.length + 1)
                                            .toString() ??
                                        "",
                                    fontSize: 12,
                                    padding:
                                        EdgeInsets.only(left: 11.5, top: 1.5),
                                    fontWeight: FontWeight.w500),
                              ),
                              TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: UnderLinedInput(
                                    controller: barCodeTextEditingController,
                                    formatter: false,
                                    onChanged: (va) {
                                      onChange = true;
                                      saveButtonActovde(
                                          barCodeTextEditingController.text,
                                          barActive);
                                    },
                                  )),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: CheckedBoxs(
                                    valueChanger: barActive,
                                    onSelection: (va) {
                                      onChange = true;
                                      saveButtonActovde(
                                          barCodeTextEditingController.text,
                                          barActive);
                                      setState(() {
                                        barActive = !barActive!;
                                      });
                                    }),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: TableTextButton(
                                  buttonBagroundColor: onSaveActive
                                      ? Pellet.bagroundColor
                                      : Colors.transparent,
                                  textColor: onSaveActive
                                      ? Pellet.bagroundColor
                                      : Colors.black,
                                  bagroundColor: onSaveActive
                                      ? Pellet.tableBlueHeaderPrint
                                      : Color(0xffe7e7e7),
                                  label: "Save",
                                  // icon: Icons.add,
                                  onPress: () {
                                    setState(() {
                                      onChange = true;
                                      bacCodeListTextEditing.add(
                                          TextEditingController(
                                              text: barCodeTextEditingController
                                                      ?.text ??
                                                  ""));
                                      upDate.add(false);
                                      upDateButton.add(false);
                                      AlternativeBarcode model =
                                          AlternativeBarcode(
                                              barcode:
                                                  barCodeTextEditingController
                                                          .text ??
                                                      "",
                                              isActive: barActive);
                                      alternativeBarcode.add(model);

                                      widget.barQrCodeTableAssign(
                                          type: "1", list: alternativeBarcode);
                                      barCodeTextEditingController.clear();
                                      barActive = false;
                                      onSaveActive = false;
                                    });
                                  },
                                ),
                              ),
                            ]),
                      ],
                      widths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(5),
                        2: FlexColumnWidth(5),
                        3: FlexColumnWidth(2),
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * .03,
                  ),
                  // Container(
                  //   width: 2200,
                  //   margin: EdgeInsets.symmetric(horizontal: w*.02),
                  //   child: customTable(
                  //
                  //     border: const TableBorder(
                  //
                  //       verticalInside: BorderSide(
                  //           width:.5,
                  //           color: Colors.black45,
                  //           style: BorderStyle.solid),
                  //       horizontalInside: BorderSide(
                  //           width:.3,
                  //           color: Colors.black45,
                  //           // color: Colors.blue,
                  //           style: BorderStyle.solid),),
                  //
                  //     tableWidth: .5,
                  //
                  //     childrens:[
                  //       TableRow(
                  //
                  //         // decoration: BoxDecoration(
                  //
                  //         //     color: Colors.green.shade200,
                  //
                  //         //     shape: BoxShape.rectangle,
                  //
                  //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                  //
                  //         children: [
                  //
                  //           tableHeadtext(
                  //
                  //             'ID',
                  //
                  //             padding: EdgeInsets.all(7),
                  //
                  //             height: 46,
                  //             textColor: Colors.white,
                  //             // color: Color(0xffE5E5E5),
                  //
                  //             size: 13,
                  //
                  //
                  //           ),
                  //
                  //
                  //           tableHeadtext(
                  //             'Alternative QR code',
                  //             textColor: Colors.white,
                  //             padding: EdgeInsets.all(7),
                  //             height: 46,
                  //             size: 13,
                  //             // color: Color(0xffE5E5E5),
                  //           ),
                  //
                  //           tableHeadtext(
                  //             'isActive',
                  //             textColor: Colors.white,
                  //             padding: EdgeInsets.all(7),
                  //             height: 46,
                  //             size: 13,
                  //             // color: Color(0xffE5E5E5),
                  //           ),
                  //           tableHeadtext(
                  //             '',
                  //             textColor: Colors.white,
                  //             padding: EdgeInsets.all(7),
                  //             height: 46,
                  //             size: 13,
                  //             // color: Color(0xffE5E5E5),
                  //           ),
                  //
                  //
                  //         ],
                  //
                  //       ),
                  //           if (alterNativeQrCode != null) ...[
                  //           for (var i = 0; i < alterNativeQrCode!.length; i++)
                  //             TableRow(
                  //                 decoration: BoxDecoration(
                  //                     color: Colors.grey
                  //                         .shade200,
                  //                     shape: BoxShape
                  //                         .rectangle,
                  //                     border:const  Border(
                  //                         left: BorderSide(
                  //                             width: .5,
                  //                             color: Colors
                  //                                 .grey,
                  //                             style: BorderStyle
                  //                                 .solid),
                  //                         bottom: BorderSide(
                  //                             width: .5,
                  //                             color: Colors
                  //                                 .grey,
                  //                             style: BorderStyle
                  //                                 .solid),
                  //                         right: BorderSide(
                  //                             color: Colors
                  //                                 .grey,
                  //                             width: .5,
                  //                             style: BorderStyle
                  //                                 .solid))),
                  //                 children: [
                  //
                  //
                  //
                  //                   TableCell(
                  //                     verticalAlignment: TableCellVerticalAlignment.middle,
                  //
                  //                     child: UnderLinedInput(
                  //                       initialCheck: true,
                  //                       last:alterNativeQrCode?[i].id.toString()??"" ,
                  //                     ),
                  //                     // UnderLinedInput(),
                  //
                  //
                  //                   ),
                  //                   TableCell(
                  //                       verticalAlignment: TableCellVerticalAlignment.middle,
                  //
                  //                       child: UnderLinedInput(
                  //                         initialCheck: true,
                  //                         last:        alterNativeQrCode?[i].qrcode??"",
                  //                         onChanged: (va){
                  //
                  //                           alterNativeQrCode[i]=alterNativeQrCode[i].copyWith(qrcode: va.toString());
                  //                         },
                  //
                  //                       )),
                  //                   TableCell(
                  //                     verticalAlignment: TableCellVerticalAlignment.middle,
                  //
                  //                     child:   CheckedBoxs(
                  //                         valueChanger:   alterNativeQrCode[i].isActive??false,
                  //                         onSelection:(va){
                  //
                  //
                  //                           bool? isActive =
                  //                               alterNativeQrCode[i].isActive;
                  //                           setState(() {
                  //                             setState(() {});
                  //                             isActive = !isActive!;
                  //                             alterNativeQrCode[i] = alterNativeQrCode[i]
                  //                                 .copyWith(
                  //                                 isActive: isActive);
                  //                           });
                  //
                  //                         }
                  //
                  //                     ),),
                  //                   TableTextButton(
                  //
                  //                     label: "upadte",
                  //                     onPress: (){
                  //
                  //
                  //                       widget.barQrCodeTableAssign(type:"2",list:alterNativeQrCode);
                  //                     },
                  //
                  //
                  //
                  //                   ),
                  //
                  //
                  //
                  //                 ]),],
                  //       TableRow(
                  //           decoration: BoxDecoration(
                  //               color: Colors.grey
                  //                   .shade200,
                  //               shape: BoxShape
                  //                   .rectangle,
                  //               border:const  Border(
                  //                   left: BorderSide(
                  //                       width: .5,
                  //                       color: Colors
                  //                           .grey,
                  //                       style: BorderStyle
                  //                           .solid),
                  //                   bottom: BorderSide(
                  //                       width: .5,
                  //                       color: Colors
                  //                           .grey,
                  //                       style: BorderStyle
                  //                           .solid),
                  //                   right: BorderSide(
                  //                       color: Colors
                  //                           .grey,
                  //                       width: .5,
                  //                       style: BorderStyle
                  //                           .solid))),
                  //           children: [
                  //
                  //
                  //
                  //             TableCell(
                  //               verticalAlignment:
                  //               TableCellVerticalAlignment.middle,
                  //               child: textPadding(
                  //                   (alterNativeQrCode.length+1).toString()?? "",
                  //                   fontSize: 12,
                  //                   padding: EdgeInsets.only(
                  //                       left: 11.5, top: 1.5),
                  //                   fontWeight: FontWeight.w500),
                  //             ),
                  //             TableCell(
                  //                 verticalAlignment: TableCellVerticalAlignment.middle,
                  //
                  //                 child: UnderLinedInput(
                  //                   controller: qrCodeTextEditingController,
                  //
                  //
                  //                   onChanged: (va){
                  //
                  //                   },
                  //
                  //                 )),
                  //             TableCell(
                  //               verticalAlignment: TableCellVerticalAlignment.middle,
                  //
                  //               child:   CheckedBoxs(
                  //                   valueChanger: qrActive,
                  //                   onSelection:(va){
                  //
                  //
                  //
                  //                     setState(() {
                  //
                  //                       qrActive = !qrActive!;
                  //
                  //                     });
                  //
                  //                   }
                  //
                  //               ),),
                  //             TableTextButton(
                  //
                  //               label: "Save",
                  //               onPress: (){
                  //                 setState(() {
                  //                   AlternativeBarcode model=AlternativeBarcode(
                  //                       qrcode: qrCodeTextEditingController.text??"",
                  //                       isActive: qrActive
                  //                   );
                  //                   alternativeBarcode.add(model);
                  //
                  //                   widget.barQrCodeTableAssign(type:"2",list:alterNativeQrCode);
                  //                   qrCodeTextEditingController.text="";
                  //                   qrActive=false;
                  //
                  //
                  //                 });
                  //
                  //
                  //
                  //               },
                  //
                  //
                  //
                  //             ),
                  //
                  //
                  //
                  //           ]),
                  //
                  //
                  //     ],
                  //
                  //   ),
                  //
                  //
                  // ),
                ],
              ),
            );
          }),
        );
      }),
    );
  }
}

class ProductTables extends StatefulWidget {
  final Storage? aboutProducts;
  final bool addNew;
  ProductFeatures? productDetails;
  ProductFeatures? productFeatures;
  ProductFeatures? additionalInfo;
  ProductFeatures? nutriantsFacts;
  ProductFeatures? imPorantInfo;
  Storage? ingredians;
  final Storage? usageDirection;
  final Storage? storage;
  final List<productBehaviour>? inforMationList;
  final Function storageTableEdit;
  final Function productTableEdit;
  final Function productFeaturesableAssign;

  // final TextEditingController qrCode;
  // final TextEditingController rfId;
  ProductTables(
      {required this.aboutProducts,
      required this.imPorantInfo,
      required this.ingredians,
      required this.productDetails,
      required this.productFeatures,
      required this.additionalInfo,
      required this.usageDirection,
      required this.nutriantsFacts,
      required this.storage,
      required this.storageTableEdit,
      required this.productTableEdit,
      required this.addNew,
      this.inforMationList,
      required this.productFeaturesableAssign});

  @override
  ProductTablesState createState() => ProductTablesState();
}

class ProductTablesState extends State<ProductTables> {
  TextEditingController controller = TextEditingController();

  bool onChange = false;
  List<Storage>? aboutProducts = [];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ProductTable(
                    aboutProducts: widget.aboutProducts,
                    storageTableEdit: widget.storageTableEdit,
                    key: widget.key,
                    addNew: widget.addNew,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: VariantProductDetails(
                    productDetails: widget.productDetails,
                    productTableEdit: widget.productTableEdit,
                  ),
                )
              ],
            ),
            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: PrtoductFeatures(
                    productFeatures: widget.productFeatures,
                    productTableEdit: widget.productTableEdit,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: AdditionaslInfo(
                    additionalInfo: widget.additionalInfo,
                    productTableEdit: widget.productTableEdit,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: NeutrialFacts(
                    nutriantsFacts: widget.nutriantsFacts,
                    productTableEdit: widget.productTableEdit,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: Ingredians(
                    ingredians: widget.ingredians,
                    storageTableEdit: widget.storageTableEdit,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: UsageDirection(
                    usageDirection: widget.usageDirection,
                    storageTableEdit: widget.storageTableEdit,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .05,
            ),
            Row(
              children: [
                Expanded(
                  child: StoragesWidget(
                    storage: widget.storage,
                    storageTableEdit: widget.storageTableEdit,
                  ),
                )
              ],
            ),
            Row(children: [
              Expanded(
                child: ImportantInfo(
                  importantInfo: widget.imPorantInfo,
                  productTableEdit: widget.productTableEdit,
                ),
              ),
            ]),
            SizedBox(
              height: h * .05,
            ),
            //
            //
            //     // Container(
            //     //   width: w/2.2,
            //     //   margin: EdgeInsets.symmetric(horizontal: w*.02),
            //     //   child: customTable(
            //     //
            //     //     border: const TableBorder(
            //     //
            //     //       verticalInside: BorderSide(
            //     //           width:.5,
            //     //           color: Colors.black45,
            //     //           style: BorderStyle.solid),
            //     //       horizontalInside: BorderSide(
            //     //           width:.3,
            //     //           color: Colors.black45,
            //     //           // color: Colors.blue,
            //     //           style: BorderStyle.solid),),
            //     //
            //     //     tableWidth: .5,
            //     //
            //     //     childrens:[
            //     //       TableRow(
            //     //
            //     //         // decoration: BoxDecoration(
            //     //
            //     //         //     color: Colors.green.shade200,
            //     //
            //     //         //     shape: BoxShape.rectangle,
            //     //
            //     //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
            //     //
            //     //         children: [
            //     //
            //     //           tableHeadtext(
            //     //
            //     //             'Gender Group',
            //     //
            //     //             padding: EdgeInsets.all(7),
            //     //
            //     //             height: 46,
            //     //             textColor: Colors.black,
            //     //             color: Color(0xffE5E5E5),
            //     //
            //     //             size: 13,
            //     //
            //     //
            //     //           ),
            //     //
            //     //
            //     //           tableHeadtext(
            //     //             'Age Group',
            //     //             textColor: Colors.black,
            //     //             padding: EdgeInsets.all(7),
            //     //             height: 46,
            //     //             size: 13,
            //     //             color: Color(0xffE5E5E5),
            //     //           ),
            //     //
            //     //           tableHeadtext(
            //     //             'Etinlk',
            //     //             textColor: Colors.black,
            //     //             padding: EdgeInsets.all(7),
            //     //             height: 46,
            //     //             size: 13,
            //     //             color: Color(0xffE5E5E5),
            //     //           ),
            //     //           tableHeadtext(
            //     //             'Countries',
            //     //             textColor: Colors.black,
            //     //             padding: EdgeInsets.all(7),
            //     //             height: 46,
            //     //             size: 13,
            //     //             color: Color(0xffE5E5E5),
            //     //           ),
            //     //           tableHeadtext(
            //     //             'Purpose',
            //     //             textColor: Colors.black,
            //     //             padding: EdgeInsets.all(7),
            //     //             height: 46,
            //     //             size: 13,
            //     //             color: Color(0xffE5E5E5),
            //     //           ),
            //     //           tableHeadtext(
            //     //             '',
            //     //             textColor: Colors.black,
            //     //             padding: EdgeInsets.all(7),
            //     //             height: 46,
            //     //             size: 13,
            //     //             color: Color(0xffE5E5E5),
            //     //           ),
            //     //
            //     //
            //     //         ],
            //     //
            //     //       ),
            //     //       if(inforMationList?.isNotEmpty==true)...[
            //     //         for(var i=0;i<inforMationList!.length;i++)
            //     //           TableRow(
            //     //               decoration: BoxDecoration(
            //     //                   color: Colors.grey
            //     //                       .shade200,
            //     //                   shape: BoxShape
            //     //                       .rectangle,
            //     //                   border:const  Border(
            //     //                       left: BorderSide(
            //     //                           width: .5,
            //     //                           color: Colors
            //     //                               .grey,
            //     //                           style: BorderStyle
            //     //                               .solid),
            //     //                       bottom: BorderSide(
            //     //                           width: .5,
            //     //                           color: Colors
            //     //                               .grey,
            //     //                           style: BorderStyle
            //     //                               .solid),
            //     //                       right: BorderSide(
            //     //                           color: Colors
            //     //                               .grey,
            //     //                           width: .5,
            //     //                           style: BorderStyle
            //     //                               .solid))),
            //     //               children: [
            //     //
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child:  CustomDropDown(choosenValue: inforMationList?[i].gender??"",onChange: (val){
            //     //                     inforMationList[i].gender=val;
            //     //                     print(inforMationList);
            //     //
            //     //                   }, ),
            //     //
            //     //
            //     //                 ),
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child:  UnderLinedInput(
            //     //
            //     //                     initialCheck: true,
            //     //                     last: inforMationList[i].age,
            //     //                     formatter: false,
            //     //                     onChanged: (val){
            //     //                       inforMationList[i].age=val;
            //     //                     },
            //     //
            //     //
            //     //
            //     //                   ),
            //     //
            //     //
            //     //                 ),
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child:  UnderLinedInput(
            //     //                     formatter: false,
            //     //                     initialCheck: true,
            //     //                     last: inforMationList[i].ethlink,
            //     //                     onChanged: (val){
            //     //                       inforMationList[i].ethlink=val;
            //     //                     },
            //     //
            //     //
            //     //                   ),
            //     //
            //     //
            //     //                 ),
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child: Container(
            //     //
            //     //                     // width: 100,
            //     //                     child: DropdownSearch<String>(
            //     //                       dropdownSearchDecoration:InputDecoration(
            //     //                         border: InputBorder.none,
            //     //
            //     //                       ),
            //     //
            //     //
            //     //                       // mode of dropdown
            //     //                       mode: Mode.DIALOG,
            //     //                       //to show search box
            //     //                       showSearchBox: true,
            //     //                       showSelectedItem: true,
            //     //
            //     //                       //list of dropdown items
            //     //                       items: [
            //     //                         "India",
            //     //                         "USA",
            //     //                         "Brazil",
            //     //                         "Canada",
            //     //                         "Australia",
            //     //                         "Singapore"
            //     //                       ],
            //     //                       // label: "Country",
            //     //                       onChanged: (String? va){
            //     //                         print(va);
            //     //                         inforMationList[i].countries=va;
            //     //
            //     //                       },
            //     //                       //show selected item
            //     //                       selectedItem: inforMationList[i].countries??"",
            //     //                     ),
            //     //                   ),),
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child:   UnderLinedInput(
            //     //                     formatter: false,
            //     //                     initialCheck: true,
            //     //                     last: inforMationList[i].purpose,
            //     //                     onChanged: (val){
            //     //                       inforMationList[i].purpose=val;
            //     //                     },
            //     //
            //     //
            //     //
            //     //                   ),),
            //     //                 TableCell(
            //     //                   verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                   child:   TableTextButton(
            //     //                     label: "Add",
            //     //                     onPress: (){
            //     //                       // inforMationList?.add(InformationClass(
            //     //                       //   gender: choosenValue,
            //     //                       //   age: ageGroupController.text,
            //     //                       //    ,
            //     //                       //   countries:countryController.text,
            //     //                       //   purpose: purposeController.text,
            //     //                       //
            //     //                       // ));
            //     //                       setState(() {
            //     //
            //     //                       });
            //     //                       print(inforMationList!.length);
            //     //
            //     //
            //     //                     },
            //     //
            //     //
            //     //                   ),),
            //     //
            //     //
            //     //               ]),
            //     //
            //     //       ],
            //     //
            //     //       TableRow(
            //     //           decoration: BoxDecoration(
            //     //               color: Colors.grey
            //     //                   .shade200,
            //     //               shape: BoxShape
            //     //                   .rectangle,
            //     //               border:const  Border(
            //     //                   left: BorderSide(
            //     //                       width: .5,
            //     //                       color: Colors
            //     //                           .grey,
            //     //                       style: BorderStyle
            //     //                           .solid),
            //     //                   bottom: BorderSide(
            //     //                       width: .5,
            //     //                       color: Colors
            //     //                           .grey,
            //     //                       style: BorderStyle
            //     //                           .solid),
            //     //                   right: BorderSide(
            //     //                       color: Colors
            //     //                           .grey,
            //     //                       width: .5,
            //     //                       style: BorderStyle
            //     //                           .solid))),
            //     //           children: [
            //     //
            //     //             TableCell(
            //     //               verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //               child:  CustomDropDown(choosenValue: choosenValue,onChange:(val){
            //     //                 choosenValue=val;
            //     //
            //     //               } ),
            //     //
            //     //
            //     //             ),
            //     //             TableCell(
            //     //               verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //               child:  UnderLinedInput(
            //     //                 formatter: false,
            //     //
            //     //                 controller: ageGroupController,
            //     //
            //     //               ),
            //     //
            //     //
            //     //             ),
            //     //             TableCell(
            //     //               verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //               child:  UnderLinedInput(
            //     //                 formatter: false,
            //     //                 controller: ethlinkController,
            //     //
            //     //               ),
            //     //
            //     //
            //     //             ),
            //     //             TableCell(
            //     //                 verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //                 child: Container(
            //     //
            //     //                   // width: 100,
            //     //                   child: DropdownSearch<String>(
            //     //                     dropdownSearchDecoration:InputDecoration(
            //     //                       border: InputBorder.none,
            //     //
            //     //                     ),
            //     //
            //     //
            //     //                     // mode of dropdown
            //     //                     mode: Mode.DIALOG,
            //     //                     //to show search box
            //     //                     showSearchBox: true,
            //     //                     showSelectedItem: true,
            //     //
            //     //                     //list of dropdown items
            //     //                     items: [
            //     //                       "India",
            //     //                       "USA",
            //     //                       "Brazil",
            //     //                       "Canada",
            //     //                       "Australia",
            //     //                       "Singapore"
            //     //                     ],
            //     //                     // label: "Country",
            //     //                     onChanged: (String? va){
            //     //                       print(va);
            //     //                     },
            //     //                     //show selected item
            //     //                     selectedItem: "India",
            //     //                   ),
            //     //                 ),),
            //     //             TableCell(
            //     //               verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //               child:   UnderLinedInput(
            //     //                 formatter: false,
            //     //                 controller: purposeController,
            //     //
            //     //
            //     //
            //     //               ),),
            //     //             TableCell(
            //     //               verticalAlignment: TableCellVerticalAlignment.middle,
            //     //
            //     //               child:   TableTextButton(
            //     //                 label: "Add",
            //     //                 onPress: (){
            //     //                   setState(() {
            //     //                     inforMationList?.add(InformationClass(
            //     //                       gender: choosenValue,
            //     //                       age: ageGroupController.text??'',
            //     //                       ethlink: ethlinkController.text,
            //     //                       countries:countryController.text,
            //     //                       purpose: purposeController.text,
            //     //
            //     //                     ));
            //     //                     choosenValue='';
            //     //                     ageGroupController.text="";
            //     //                     countryController.text="";
            //     //                     purposeController.text="";
            //     //                     ethlinkController.text="";
            //     //
            //     //
            //     //
            //     //                     print(inforMationList?[0].gender);
            //     //
            //     //                   });
            //     //
            //     //
            //     //
            //     //
            //     //                 },
            //     //
            //     //
            //     //               ),),
            //     //
            //     //
            //     //           ]),
            //     //
            //     //
            //     //     ],
            //     //
            //     //   ),
            //     //
            //     //
            //     // ),
            //
            //
            //
            //   ],
            // ),
            //
            //
            // SizedBox(height: h*.04,),

            Row(
              children: [
                Expanded(
                  child: ProductBehaviour(
                      inforMationList: widget.inforMationList,
                      productFeaturesableAssign:
                          widget.productFeaturesableAssign),
                ),
              ],
            ),
          ],
        ));
  }
}

class VariantStabletable extends StatefulWidget {
  final TextEditingController itemId;
  final TextEditingController length;
  final TextEditingController width;
  final TextEditingController height;
  final TextEditingController variantCode;
  final TextEditingController variantName;
  final TextEditingController variantValue;
  final TextEditingController variantFrameWork;
  final TextEditingController searchName;
  final TextEditingController displayName;
  final TextEditingController manuFactureId;
  final TextEditingController manuFactureName;
  final TextEditingController saftyStock;
  final TextEditingController reorderPoint;
  final TextEditingController reorderQuantity;
  final bool salesBlock;
  final TextEditingController image1;
  final TextEditingController image2;
  final TextEditingController image3;
  final TextEditingController image4;
  final TextEditingController image5;
  final TextEditingController catalog1;
  final TextEditingController catalog2;
  final TextEditingController catalog3;
  final TextEditingController catalog4;
  final TextEditingController catalog5;
  final TextEditingController catalog6;
  final TextEditingController catalog7;
  final TextEditingController catalog8;
  final TextEditingController description;
  final TextEditingController arabicDescription;
  final TextEditingController additionDescription;
  final TextEditingController uomGroupName;
  final TextEditingController baseGroupName;
  final TextEditingController salesUomName;
  final TextEditingController purchaseUomName;
  final TextEditingController posName;
  final TextEditingController uomGroup;
  final TextEditingController baseuom;
  final TextEditingController salesUom;
  final TextEditingController purchaseUom;
  final TextEditingController grossWeight;
  final TextEditingController netWeight;
  final TextEditingController unitCost;
  final TextEditingController landingCost;
  final TextEditingController actualCost;
  final TextEditingController unitPrize;
  final TextEditingController basePrize;
  final TextEditingController producedCountry;
  final TextEditingController ratioEccomerce;
  final TextEditingController minMax;
  final TextEditingController wholeSaleStock;
  final TextEditingController minSalesOrderLimit;
  final TextEditingController maxSalesOrderLimit;
  final TextEditingController sellingId;
  final TextEditingController relatedItem;
  final TextEditingController linkedItem;
  final TextEditingController videoUrl;
  final TextEditingController minimumGp;
  final TextEditingController maximumGp;
  final TextEditingController seblingNameController;
  final TextEditingController averageGp;
  final TextEditingController weightUom;
  final TextEditingController weight;
  final TextEditingController targetedgp;
  final TextEditingController minPurchaseOrderLimit;
  final TextEditingController maxPurchaseOrderLimit;
  final TextEditingController vat;
  final TextEditingController exciseTax;
  final TextEditingController returnType;
  final TextEditingController returnTime;
  final TextEditingController status;
  final TextEditingController shelfType;
  final TextEditingController shelfTime;

  final bool purchaseBlock;
  final int? veritiaclid;
  final bool stockWarning;
  final bool itmCatelog;
  final bool haveGiftOption;
  final bool haveWrapOption;
  final bool itmImage;
  final bool active;
  final int ? baseUomId;
  final bool needMultipleIntegration;
  final Function({String type}) imagePostCheck;
  final Function({String type, bool val}) trueOrFalseChange;

  VariantStabletable({
    required this.weightUom,
    required this.imagePostCheck,
    required this.itemId,
    required this.weight,
    required this.baseUomId,
    required this.image3,
    required this.seblingNameController,
    required this.needMultipleIntegration,
    required this.image2,
    required this.actualCost,
    required this.landingCost,
    required this.unitPrize,
    required this.image1,
    required this.searchName,
    required this.variantFrameWork,
    required this.displayName,
    required this.variantName,
    required this.image4,
    required this.image5,
    required this.manuFactureId,
    required this.manuFactureName,
    required this.reorderPoint,
    required this.reorderQuantity,
    required this.saftyStock,
    required this.salesBlock,
    required this.variantCode,
    required this.variantValue,
    required this.description,
    required this.arabicDescription,
    required this.additionDescription,
    required this.posName,
    required this.uomGroup,
    required this.baseuom,
    required this.salesUom,
    required this.purchaseUom,
    required this.grossWeight,
    required this.netWeight,
    required this.unitCost,
    required this.basePrize,
    required this.producedCountry,
    required this.purchaseBlock,
    required this.ratioEccomerce,
    required this.minMax,
    required this.wholeSaleStock,
    required this.minSalesOrderLimit,
    required this.maxSalesOrderLimit,
    required this.stockWarning,
    required this.itmCatelog,
    required this.itmImage,
    required this.active,
    required this.sellingId,
    required this.relatedItem,
    required this.linkedItem,
    required this.videoUrl,
    required this.minimumGp,
    required this.maximumGp,
    required this.averageGp,
    required this.targetedgp,
    required this.minPurchaseOrderLimit,
    required this.maxPurchaseOrderLimit,
    required this.vat,
    required this.exciseTax,
    required this.returnType,
    required this.returnTime,
    required this.status,
    required this.trueOrFalseChange,
    required this.catalog1,
    required this.catalog2,
    required this.catalog3,
    required this.catalog4,
    required this.catalog5,
    required this.catalog6,
    required this.catalog7,
    required this.catalog8,
    required this.veritiaclid,
    required this.uomGroupName,
    required this.baseGroupName,
    required this.salesUomName,
    required this.purchaseUomName,
    required this.length,
    required this.width,
    required this.height, required this.shelfType, required this.shelfTime, required this.haveGiftOption, required this.haveWrapOption,
  });

  @override
  _VariantStabletableState createState() => _VariantStabletableState();
}

class _VariantStabletableState extends State<VariantStabletable> {
  TextEditingController controller = TextEditingController();
  TextEditingController codecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  TextEditingController parentIdcontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController brandIdentifiercontroller = TextEditingController();
  TextEditingController brandcontroller = TextEditingController();
  String imageName1 = "";
  String imageName2 = "";
  String imageName3 = "";
  String imageName4 = "";
  String imageName5 = "";
  String imageName6 = "";
  String imageName7 = "";
  String imageName8 = "";
  String imageEncode = "";
  int? base_uom = 0;

  @override
  Widget build(BuildContext context) {
    print("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiii${widget.width}");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    NewInputCard(
                        readOnly: true,
                        controller: widget.itemId,
                        title: "Item"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.variantCode,
                        title: "Variant Code"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.variantName,
                        title: "Variant Name"),
                    SizedBox(
                      height: height * .030,
                    ),
                    // NewInputCard(
                    //     readOnly: true,
                    //     controller: widget.variantValue,
                    //     title: "Variant Value"),
                    // SizedBox(
                    //   height: height * .030,
                    // ),
                    NewInputCard(
                        readOnly: true,
                        controller: widget.variantFrameWork,
                        title: "Variant Framework"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.searchName, title: "Search Name"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.displayName, title: "Display Name"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.description, title: "Description"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.arabicDescription,
                        title: " Arabic Description"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.additionDescription,
                        title: "Addition Description"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(controller: widget.posName, title: "Pos Name"),
                    SizedBox(
                      height: height * .030,
                    ),

                    // NewInputCard(
                    //   readOnly: true,
                    //   controller: widget.uomGroupName,
                    //   // icondrop: true,
                    //   title: "Uom Group",
                    //   // ontap: () {
                    //   //   showDailogPopUp(
                    //   //     context,
                    //   //     TableConfigurePopup(
                    //   //
                    //   //       type: "UOMPopup",
                    //   //       valueSelect: (BrandListModel va) {
                    //   //         setState(() {
                    //   //           print(va?.id ?? "");
                    //   //           widget.uomGroup.text = va?.id.toString() ?? "";
                    //   //           widget.uomGroupName.text = va?.name.toString() ?? "";
                    //   //           Variable.uomGroupId = va?.id;
                    //   //           setState(() {});
                    //   //           setState(() {});
                    //   //
                    //   //           // onChange = true;
                    //   //           // orderType.text = va!;
                    //   //         });
                    //   //       },
                    //   //     ),
                    //   //   );
                    //   // },
                    // ),
                    // SelectableDropDownpopUp(
                    //   controller: widget.uomGroupName,
                    //   label: "Uom Group",
                    //   type: "Uomgroup_PopUpCall",
                    //   value: widget.uomGroupName.text,
                    //   onchange: (vale) {
                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                    //   },
                    //   enable: true,
                    //   onSelection: (BrandListModel? va) {
                    //     setState(() {
                    //       widget.uomGroup.text = va?.id.toString() ?? "";
                    //       widget.uomGroupName.text = va?.name.toString() ?? "";
                    //       Variable.uomGroupId = va?.id;
                    //       setState(() {});
                    //
                    //       // onChange = true;
                    //       // orderType.text = va!;
                    //     });
                    //   },
                    //   onAddNew: () {},
                    // ),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                      controller: widget.baseGroupName,
                      readOnly: true,
                      // icondrop:true,
                      title: "Base UOM",
                      // ontap: (){
                      //   showDailogPopUp(
                      //     context,
                      //     TableConfigurePopup(
                      //       type: "baseUomTabalePopup", valueSelect: (BrandListModel va){
                      //
                      //       setState(() {
                      //         print(va?.uomCode);
                      //         print(va);
                      //
                      //
                      //
                      //         widget.baseuom.text = va?.id.toString() ?? "";
                      //         widget.baseGroupName.text = va?.name.toString() ?? "";
                      //         base_uom = va?.id;
                      //         Variable.uomId = va?.id;
                      //         setState(() {
                      //
                      //         });
                      //
                      //
                      //         // onChange = true;
                      //         // orderType.text = va!;
                      //       });
                      //
                      //     },
                      //     ),
                      //
                      //
                      //   );
                      //
                      // },
                    ),
                    // SelectableDropDownpopUp(
                    //   controller: widget.baseGroupName,
                    //   label: "Base Uom",
                    //   type: "Uom_PopUpCall",
                    //   value: widget.baseGroupName.text,
                    //   onchange: (vale) {
                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                    //   },
                    //   enable: true,
                    //   onSelection: (BrandListModel? va) {
                    //     setState(() {
                    //       widget.baseuom.text = va?.id.toString() ?? "";
                    //       widget.baseGroupName.text = va?.name.toString() ?? "";
                    //       base_uom = va?.id;
                    //       Variable.uomId = va?.id;
                    //       setState(() {});
                    //
                    //       // onChange = true;
                    //       // orderType.text = va!;
                    //     });
                    //   },
                    // ),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                      controller: widget.salesUomName,
                      icondrop: true,
                      readOnly: true,
                      title: "Sales Uom",
                      ontap: () {
                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            id: widget.baseUomId,
                            type: "SalesUomTabalePopup",
                            valueSelect: (BrandListModel va) {
                              setState(() {
                                print(va?.uomCode);
                                print(va);

                                widget.salesUom.text = va?.id.toString() ?? "";
                                widget.salesUomName.text =
                                    va?.name.toString() ?? "";
                                base_uom = va?.id;
                                Variable.uomId = va?.id;
                                setState(() {});

                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                          ),
                        );
                      },
                    ),
                    // SelectableDropDownpopUp(
                    //   controller: widget.salesUomName,
                    //   label: "Sales Uom",
                    //   type: "SalesUom_PopUpCall",
                    //   id: base_uom ?? 0,
                    //   value: widget.salesUomName.text,
                    //   onchange: (vale) {
                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                    //   },
                    //   enable: true,
                    //   onSelection: (BrandListModel? va) {
                    //     setState(() {
                    //       widget.salesUom.text = va?.id.toString() ?? "";
                    //       widget.salesUomName.text = va?.name.toString() ?? "";
                    //       setState(() {});
                    //
                    //       // onChange = true;
                    //       // orderType.text = va!;
                    //     });
                    //   },
                    // ),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                      controller: widget.purchaseUomName,
                      icondrop: true,
                      readOnly: true,
                      title: "Purchase UOM",
                      ontap: () {
                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            id: widget.baseUomId,
                            type: "SalesUomTabalePopup",
                            valueSelect: (BrandListModel va) {
                              setState(() {
                                print(va?.uomCode);
                                print(va);

                                widget.purchaseUom.text =
                                    va?.id.toString() ?? "";
                                widget.purchaseUomName.text =
                                    va?.name.toString() ?? "";
                                setState(() {});

                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                          ),
                        );
                      },
                    ),
                    // SelectableDropDownpopUp(
                    //   controller: widget.purchaseUomName,
                    //   label: "Purchase Uom",
                    //   type: "SalesUom_PopUpCall",
                    //   id: base_uom ?? 0,
                    //   value: widget.purchaseUomName.text,
                    //   onchange: (vale) {
                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                    //   },
                    //   enable: true,
                    //   onSelection: (BrandListModel? va) {
                    //     setState(() {
                    //       widget.purchaseUom.text = va?.id.toString() ?? "";
                    //       widget.purchaseUomName.text =
                    //           va?.name.toString() ?? "";
                    //       setState(() {});
                    //
                    //       // onChange = true;
                    //       // orderType.text = va!;
                    //     });
                    //   },
                    // ),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.grossWeight,
                        title: "Gross Weight"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.netWeight,
                        title: "Net Weight"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.unitCost,
                        title: "Unit Cost"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.landingCost,
                        title: "Landing Cost"),

                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(controller: widget.length, title: "Length"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.height,
                        title: "Height(meter)"),


                    SizedBox(
                      height: height * .259,
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
widget.width.text !="null"?
                    NewInputCard(
                        formatter: true,
                        controller:

                        widget.width, title: "Width(meter)"):
                    Container(color:Colors.green,width:10,height:10),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.weight,
                        title: "Weight(kg)"),

                    SizedBox(
                      height: height * .030,
                    ),
                    // NewInputCard(
                    //     formatter: true,
                    //     controller: widget.weightUom,
                    //     title: "Weight UOM Id"),

                    // SizedBox(
                    //   height: height * .030,
                    // ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.actualCost,
                        title: "Actual Cost"),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                        formatter: true,
                        controller: widget.basePrize,
                        title: "Base Price"),
                    SizedBox(
                      height: height * .030,
                    ),

                    SelectableDropDownpopUp(
                      controller: widget.producedCountry,
                      label: "Produced Country",
                      type: "ProducedCountryPopUpCall",
                      id: base_uom ?? 0,
                      value: widget.producedCountry.text,
                      onchange: (vale) {
                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                      },
                      enable: true,
                      onSelection: (VariantReadModel? va) {
                        setState(() {
                          widget.producedCountry.text =
                              va?.name.toString() ?? "";

                          setState(() {});

                          // onChange = true;
                          // orderType.text = va!;
                        });
                      },
                    ),

                    SizedBox(
                      height: height * .030,
                    ),

                    // NewInputCard(
                    //     formatter: true,
                    //     controller: widget.manuFactureId,
                    //     title: "Manufacture Id"),

                    // NewInputCard(
                    //     controller: widget.manuFactureName,
                    //     title: "Manufacture Name"),
                    NewInputCard(
                      readOnly: true,
                      controller: widget.manuFactureName,
                      icondrop: true,
                      title: "Manufacture Name",
                      ontap: () {
                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            type: "ManuFacturedPopup",
                            valueSelect: (VendorDetailsModel va) {
                              setState(() {
                                print(va?.id ?? "");
                                widget.manuFactureId.text =
                                    va?.id.toString() ?? "";
                                widget.manuFactureName.text =
                                    va?.manuFactureName.toString() ?? "";

                                setState(() {});
                                setState(() {});

                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                          ),
                        );
                      },
                    ),

                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.saftyStock,
                        title: "Safety Stock"),

                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.reorderPoint,
                        title: "Reorder Point"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.reorderQuantity,
                        title: "Reorder  QTY"),
                    SizedBox(
                      height: height * .030,
                    ),

                    // NewInputCard(
                    //     controller: widget.ratioEccomerce,
                    //     title: "Ratio to Ecommerce"),
                    //
                    // SizedBox(
                    //   height: height * .030,
                    // ),
                    // NewInputCard(
                    //     formatter: true,
                    //     controller: widget.minMax,
                    //     title: "Min Max Ratio"),
                    // SizedBox(
                    //   height: height * .030,
                    // ),
                    // NewInputCard(
                    //   formatter: true,
                    //     controller: widget.wholeSaleStock,
                    //     title: "Whole Sale Stock"),
                    // SizedBox(
                    //   height: height * .030,
                    // ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.minSalesOrderLimit,
                        title: "Min Order Sale Limit"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.maxSalesOrderLimit,
                        title: "Max Sales Order Limit"),
                    SizedBox(
                      height: height * .030,
                    ),
                    SelectableDropDownpopUp(
                      controller: widget.seblingNameController,
                      label: "Sebling Name",
                      type: "Sebling_ListPopUpCall",
                      value: widget.seblingNameController.text,
                      onchange: (vale) {
                        print(vale);
                        context
                            .read<ListvraiantCubit>()
                            .getSearchVariantList(vale);
                      },
                      enable: true,
                      onSelection: (BrandListModel? va) {
                        setState(() {
                          widget.sellingId.text = va?.code ?? "";
                          widget.seblingNameController.text = va?.name ?? "";

                          setState(() {});

                          // onChange = true;
                          // orderType.text = va!;
                        });
                      },
                    ),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCreateCard(
                      title: "Linked Item",
                      controller: widget.linkedItem,
                      ontap: () {
                        costingTypeMethodeCheck=true;
                        showDailogPopUp(
                          context,
                          ConfigurePopup(
                            veritiaclid: widget.veritiaclid,
                            type: "LinkedItemCreatePopUp",
                            listAssign: (String va) {
                              setState(() {
                                widget.linkedItem.text = va;
                              });
                            },
                          ),
                        );
                      },
                    ),
                    // SelectableDropDownpopUp(
                    //
                    //   controller: widget.linkedItem,
                    //   label: "Linked Item",
                    //   // type: "Pricing_PopUpCall",
                    //   value: widget.linkedItem.text,
                    //
                    //   onchange: (vale) {
                    //
                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                    //   },
                    //   enable: true,
                    //   onSelection: (PricingTypeListModel? va) {
                    //
                    //   },
                    //   onAddNew: () {
                    //
                    //   },
                    // ),

                    // NewInputCard(
                    //     controller: widget.linkedItem, title: "Linked Item"),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                        formatter: true,
                        controller: widget.minimumGp,
                        title: "Minimum Gp"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.maximumGp,
                        title: "Maximum Gp"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.averageGp,
                        title: "Average Gp"),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                        formatter: true,
                        controller: widget.targetedgp,
                        title: "Targeted Gp"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.minPurchaseOrderLimit,
                        title: "Min purchase  Order Limit"),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                        formatter: true,
                        controller: widget.maxPurchaseOrderLimit,
                        title: "Max Purchase Order Limit"),



                    SizedBox(
                      height: height * .239,
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [


                    NewInputCard(
                        formatter: true, controller: widget.vat, title: "VAT"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.exciseTax,
                        title: "Excise Tax"),
                    SizedBox(
                      height: height * .030,
                    ),

                    SelectableDropDownpopUp(
                      id: widget.veritiaclid,
                      label: "Return Type",
                      type: "ReturnTypePopupCall",
                      value: widget.returnType.text,
                      onSelection: (String? va) {
                        print("+++++++++++++++++++++++");
                        //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                        setState(() {
                          widget.returnType.text = va ?? "";
                        });
                      },
                      restricted: true,
                    ),
                    // NewInputCard(
                    //     controller: widget.returnType, title: "Return Type"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        formatter: true,
                        controller: widget.returnTime,
                        title: "Return Time"),
                    SizedBox(
                      height: height * .030,
                    ),
                    SelectableDropDownpopUp(
                      id: widget.veritiaclid,
                      label: "Shelf Type",
                      type: "ReturnTypePopupCall",
                      value: widget.shelfType.text,
                      onSelection: (String? va) {
                        print("+++++++++++++++++++++++");
                        //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                        setState(() {
                          widget.shelfType.text = va ?? "";
                        });
                      },
                      restricted: true,
                    ),
                    // NewInputCard(
                    //     controller: widget.returnType, title: "Return Type"),
                    SizedBox(
                      height: height * .030,
                    ),

                    NewInputCard(
                        formatter: true,
                        controller: widget.shelfTime,
                        title: "Shelf Time"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.image1.text,
                        fileUrl: widget.image1.text,
                        onCancel: () {
                          setState(() {
                            widget.image1.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "1");
                          widget.image1.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "image1");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 130kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Image1"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.image2.text,
                        fileUrl: widget.image2.text,
                        onCancel: () {
                          setState(() {
                            widget.image2.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "2");
                          widget.image2.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "image2");

                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 130kb");
                          ;
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Image2"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.image3.text,
                        fileUrl: widget.image3.text,
                        onCancel: () {
                          setState(() {
                            widget.image3.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "3");
                          widget.image3.text = myFile?.fileName ?? "";
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.mobileBannerImage = myFile.toUint8List();

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "image3");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Image3"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.image4.text,
                        fileUrl: widget.image4.text,
                        onCancel: () {
                          setState(() {
                            widget.image4.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "4");
                          widget.image4.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "image4");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Image4"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.image5.text,
                        fileUrl: widget.image5.text,
                        onCancel: () {
                          setState(() {
                            widget.image5.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "5");
                          widget.image5.text = myFile?.fileName ?? "";
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.mobileBannerImage = myFile.toUint8List();

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "image5");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Image5"),
                    SizedBox(
                      height: height * .030,
                    ),
                    NewInputCard(
                        controller: widget.videoUrl, title: "Video Url"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog1.text,
                        fileUrl: widget.catalog1.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog1.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "6");
                          widget.catalog1.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "1");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Iamge of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog1"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog2.text,
                        fileUrl: widget.catalog2.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog2.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "7");
                          widget.catalog2.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "2");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Iamge of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog2"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog3.text,
                        fileUrl: widget.catalog3.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog3.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "8");
                          widget.catalog3.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "3");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Iamge of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog3"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog4.text,
                        fileUrl: widget.catalog4.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog4.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "9");
                          widget.catalog4.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "4");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Iamge of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog4"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog5.text,
                        fileUrl: widget.catalog5.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog5.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "10");
                          widget.catalog5.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "5");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog5"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog6.text,
                        fileUrl: widget.catalog6.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog6.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "11");
                          widget.catalog6.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "6");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Iamge of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog6"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog7.text,
                        fileUrl: widget.catalog7.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog7.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "12");
                          widget.catalog7.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "7");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog7"),
                    SizedBox(
                      height: height * .030,
                    ),
                    FileUploadField(
                        fileName: widget.catalog8.text,
                        fileUrl: widget.catalog8.text,
                        onCancel: () {
                          setState(() {
                            widget.catalog8.clear();
                          });
                        },
                        onChangeTap: (p0) {
                          // loading = true;
                          setState(() {});
                        },
                        onChange: (myFile) {
                          widget.imagePostCheck(type: "13");
                          widget.catalog8.text = myFile?.fileName ?? "";
                          // Variable.mobileBannerImage = myFile.toUint8List();
                          var imageEncode = myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)

                          // Variable.bannerEncodedMobileBannerImage =
                          //     myFile.toBase64();
                          // widget.fileMobileNameCtrl.text =
                          //     myFile.fileName ?? "";
                          // if (Variable.bannerimage!.length <= 240000)
                          //   context
                          //       .read<CreateWebImageCubit>()
                          //       .createMobImage();
                          // else
                          //   context.showSnackBarError(
                          //       "Please upload Banner of size Lesser than 230kb");
                        },
                        onImageChange: (newFile) async {
                          // Variable.popUp = false;

                          if (newFile.length <= 150000) {
                            context.read<ImagepostCubit>().postImage(
                                Variable.imageName, imageEncode,
                                type: "8");
                            // loading
                            //     ? showDailogPopUp(context, DialoguePopUp())
                            //     : Navigator.pop(context);
                            // context
                            //     .read<CreateWebImageCubit>()
                            //     .createMobImage();
                          } else
                            context.showSnackBarError(
                                "Please upload Image of size Lesser than 150kb");
                          setState(() {});
                        },
                        onCreate: true,
                        label: "Catalog8"),

                    SizedBox(
                      height: height * .129,
                    ),
                    // SizedBox(
                    //   height: height * .140,
                    // ),
                    // SizedBox(
                    //   height: height * .262,
                    // ),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PopUpSwitchTile(
                paddingCheck: false,
                  value: widget?.salesBlock ?? false,
                  title: "Sales Block",
                  onClick: (gg) {
                    bool val = widget.salesBlock;
                    val = !val;
                    widget.trueOrFalseChange(type: "Sales", val: val);

                    // widget.activeChange(!widget.active);

                    // extendedWarranty = gg;
                    // widget.changeExtendedWarranty(gg);
                    // onChangeExtWarranty = gg;
                    setState(() {});
                  }),
              PopUpSwitchTile(
                  paddingCheck: false,
                  value: widget?.purchaseBlock ?? false,
                  title: "Purchase Block",
                  onClick: (gg) {
                    bool val = widget.purchaseBlock;
                    val = !val;
                    widget.trueOrFalseChange(type: "Purchase", val: val);

                    // extendedWarranty = gg;
                    // widget.changeExtendedWarranty(gg);
                    // onChangeExtWarranty = gg;
                    setState(() {});
                  }),
              PopUpSwitchTile(
                  paddingCheck: false,
                  value: widget?.stockWarning ?? false,
                  title: "Stock Warning",
                  onClick: (gg) {
                    bool val = widget.stockWarning;
                    val = !val;
                    widget.trueOrFalseChange(type: "Stock", val: val);

                    // extendedWarranty = gg;
                    // widget.changeExtendedWarranty(gg);
                    // onChangeExtWarranty = gg;
                    setState(() {});
                  }),
              PopUpSwitchTile(
                  paddingCheck: false,
                  value: widget?.itmCatelog ?? false,
                  title: "Itemm Catalog",
                  onClick: (gg) {
                    bool val = widget.itmCatelog;
                    val = !val;
                    widget.trueOrFalseChange(type: "Catalog", val: val);

                    // extendedWarranty = gg;
                    // widget.changeExtendedWarranty(gg);
                    // onChangeExtWarranty = gg;
                    setState(() {});
                  }),
            ],
          ),
          SizedBox(
            height: height * .035,
          ),
          Container(
            // width: MediaQuery.of(context).size.width / 1.9,
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopUpSwitchTile(
                    paddingCheck: false,
                    value: widget?.itmImage ?? false,
                    title: "Item Image",
                    onClick: (gg) {
                      bool val = widget.itmImage;
                      val = !val;
                      widget.trueOrFalseChange(type: "Image", val: val);

                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                PopUpSwitchTile(
                    paddingCheck: false,
                    value: widget.active ?? false,
                    title: "Active",
                    onClick: (gg) {
                      bool val = widget.active;
                      val = !val;
                      widget.trueOrFalseChange(type: "Active", val: val);
                      // widget.activeChange(!widget.active);

                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                PopUpSwitchTile(
                    paddingCheck: false,
                    value: widget.needMultipleIntegration ?? false,
                    title: "Need Multiple Integration",
                    onClick: (gg) {
                      bool val = widget.needMultipleIntegration;
                      val = !val;
                      widget.trueOrFalseChange(type: "Multiple", val: val);
                      // widget.activeChange(!widget.active);

                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                PopUpSwitchTile(
                    paddingCheck: false,
                    value: widget.haveGiftOption ?? false,
                    title: "Have Gift Option",
                    onClick: (gg) {
                      bool val = widget.haveGiftOption;
                      val = !val;
                      widget.trueOrFalseChange(type: "GiftOption", val: val);
                      // widget.activeChange(!widget.active);

                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                PopUpSwitchTile(
                    paddingCheck: false,
                    value: widget.haveWrapOption ?? false,
                    title: "Have Wrap Option",
                    onClick: (gg) {
                      bool val = widget.haveWrapOption;
                      val = !val;
                      widget.trueOrFalseChange(type: "GiftWrap", val: val);
                      // widget.activeChange(!widget.active);

                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
              ],
            ),
          )
        ],
      );
    });
  }
}

class VendorDetailsVarient extends StatefulWidget {
  final List<VendorDetails>? vendorDetails;
  final Function vendorTableEdit;

  VendorDetailsVarient(
      {required this.vendorDetails, required this.vendorTableEdit});

  @override
  _VendorDetailsVarientState createState() => _VendorDetailsVarientState();
}

class _VendorDetailsVarientState extends State<VendorDetailsVarient> {
  bool onChange = false;
  List<VendorDetails> vendorDetails = [];
  List<bool> upDate = [];
  List<bool> upDateButton = [];

  String vendoeCode = "";
  TextEditingController code = TextEditingController();
  TextEditingController refCode = TextEditingController();
  List<TextEditingController> codeListTextEditingController = [];
  List<TextEditingController> refCodeListTextEditingController = [];

  bool onSaveActive = false;

  saveButtonActovde(String name, String ref) {
    onChange = true;
    if (name != "" && ref != "") {
      setState(() {
        onSaveActive = true;
      });
    } else {
      setState(() {
        onSaveActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (onChange == false) {
      upDate.clear();
      vendorDetails.clear();
      upDateButton.clear();
      onSaveActive = false;
      codeListTextEditingController.clear();
      refCodeListTextEditingController.clear();

      print("welcome to the entire place");

      if (widget.vendorDetails?.isNotEmpty == true) {
        print(vendorDetails);
        if (widget.vendorDetails?.isNotEmpty == true) {
          for (var i = 0; i < widget.vendorDetails!.length - 1; i++) {
            if (widget.vendorDetails?[i].vendorName != null &&
             widget.vendorDetails?[i].vendorCode != null) {
              upDate.add(false);
              upDateButton.add(false);
              var nameValue = new TextEditingController(
                  text: vendorDetails[i].vendorName == null
                      ? ""
                      : vendorDetails[i].vendorName);
              codeListTextEditingController.add(nameValue);
              var refValue = new TextEditingController(
                  text: vendorDetails[i].vendorReerenceCode == null
                      ? ""
                      : vendorDetails[i].vendorReerenceCode);
              refCodeListTextEditingController.add(refValue);
              vendorDetails.add(widget.vendorDetails![i]);
            }
          }
        }
      }
    }
    onChange = false;
    return Container(
      // width: width / 2,
      margin: EdgeInsets.symmetric(horizontal: width * .02),
      child: customTable(
        border: const TableBorder(
          verticalInside: BorderSide(
              width: .5, color: Colors.black45, style: BorderStyle.solid),
          horizontalInside: BorderSide(
              width: .3,
              color: Colors.black45,
              // color: Colors.blue,
              style: BorderStyle.solid),
        ),
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

                padding: EdgeInsets.only(left: 13, top: 13),

                height: 46,
                textColor: Colors.white,
                // color: Color(0xffE5E5E5),

                size: 13,
              ),
              tableHeadtext(
                'Vendor Name',
                textColor: Colors.white,
                padding: EdgeInsets.only(left: 13, top: 13),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Vendor reference code',
                textColor: Colors.white,
                padding: EdgeInsets.only(left: 13, top: 13),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                '',
                textColor: Colors.white,
                padding: EdgeInsets.only(left: 13, top: 13),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
            ],
          ),
          if (vendorDetails?.isNotEmpty == true) ...[
            for (var i = 0; i < vendorDetails!.length; i++)
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border: Border(
                          left: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),
                              width: .4,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),
                              width: .4,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding(
                        (i + 1).toString(),
                        height: 50,
                        color: upDate[i] ? Colors.white : Colors.transparent,
                      ),
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                          readOnly: !upDate[i],
                          filledColour:
                              upDate[i] ? Colors.white : Colors.transparent,
                          controller: codeListTextEditingController[i],
                          // initialCheck: true,
                          // last: vendorDetails?[i].vendorName ?? "" ?? "",
                          formatter: false,
                          onComplete: () {},
                          onChanged: (va) {
                            onChange = true;
                            print(va);
                            upDateButton[i] = true;
                            vendorDetails[i] =
                                vendorDetails[i].copyWith(vendorCode: va);
                            widget.vendorTableEdit(list: vendorDetails);
                          },
                        )),
                    UnderLinedInput(
                      readOnly: !upDate[i],
                      filledColour:
                          upDate[i] ? Colors.white : Colors.transparent,
                      controller: refCodeListTextEditingController[i],
                      // initialCheck: true,
                      // last: vendorDetails?[i].vendorReerenceCode ?? "" ?? "",
                      formatter: false,
                      onChanged: (va) {
                        onChange = true;
                        setState(() {
                          upDateButton[i] = true;
                          print(va);
                          vendorDetails[i] =
                              vendorDetails[i].copyWith(vendorReerenceCode: va);
                          widget.vendorTableEdit(list: vendorDetails);
                        });
                      },
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Row(
                        children: [
                          TableTextButton(
                            buttonBagroundColor: upDateButton[i]
                                ? Pellet.bagroundColor
                                : Colors.transparent,
                            textColor: upDateButton[i]
                                ? Pellet.bagroundColor
                                : Colors.black,
                            bagroundColor: upDateButton[i]
                                ? Pellet.tableBlueHeaderPrint
                                : Color(0xffe7e7e7),
                            label: upDateButton[i] == true ? "Update" : "Edit",

                            // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                            onPress: () {
                              onChange = true;

                              setState(() {
                                upDate[i] = !upDate[i];

                                if (upDateButton[i] == true) {
                                  widget.vendorTableEdit(list: vendorDetails);
                                  upDateButton[i] = false;
                                }
                              });
                              setState(() {});
                            },
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          TableIconTextButton(
                            icon: Icons.delete,
                            onPress: () {
                              onChange = true;
                              setState(() {
                                vendorDetails?.removeAt(i);
                                upDate.removeAt(i);
                                upDateButton.removeAt(i);
                                codeListTextEditingController.removeAt(i);
                                refCodeListTextEditingController.removeAt(i);

                                widget.vendorTableEdit(list: vendorDetails);
                              });
                            },
                            label: "",
                          ),
                        ],
                      ),
                    )
                  ])
          ],
          TableRow(
              decoration: BoxDecoration(
                  color: Pellet.tableRowColor,
                  shape: BoxShape.rectangle,
                  border: Border(
                      left: BorderSide(
                          color: Color(0xff3E4F5B).withOpacity(.1),
                          width: .4,
                          style: BorderStyle.solid),
                      bottom: BorderSide(
                          color: Color(0xff3E4F5B).withOpacity(.1),
                          style: BorderStyle.solid),
                      right: BorderSide(
                          color: Color(0xff3E4F5B).withOpacity(.1),
                          width: .4,
                          style: BorderStyle.solid))),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: textPadding(
                    (vendorDetails.length + 1).toString(),
                    height: 50,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child:
                  UnderLinedInput(
                    suffixIconEnable: true,
                    formatter: false,
                    controller: code,
                    onClick: () {
                      showDailogPopUp(
                        context,
                        ConfigurePopup(
                          listAssign: (VendorDetailsModel model) {
                            print("akkk");
                            print(model.toString());
                            setState(() {
                              onChange = true;
                              code.text = model.manuFactureName ?? "";
                              vendoeCode = model.manuFactureuserCode ?? "";
                              saveButtonActovde(code.text, refCode.text);
                            });
                          },
                          type: "vendorDetailList_popup",
                        ),
                      );
                    },
                  ),
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: UnderLinedInput(
                      formatter: false,
                      controller: refCode,
                      onChanged: (va) {
                        onChange = true;
                        saveButtonActovde(code.text, refCode.text);
                      },
                    )),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: TableTextButton(
                    buttonBagroundColor: onSaveActive
                        ? Pellet.bagroundColor
                        : Colors.transparent,
                    textColor:
                        onSaveActive ? Pellet.bagroundColor : Colors.black,
                    bagroundColor: onSaveActive
                        ? Pellet.tableBlueHeaderPrint
                        : Color(0xffe7e7e7),
                    onPress: () {
                      widget.vendorTableEdit(list: vendorDetails);
                      VendorDetails model = VendorDetails(
                          vendorName: code.text ?? "",
                          vendorReerenceCode: refCode.text ?? "",
                          vendorCode: vendoeCode);
                      onChange = true;
                      setState(() {
                        vendorDetails.add(model);
                        upDate.add(false);
                        upDateButton.add(false);
                        var name = new TextEditingController(text: code.text);
                        var ref = new TextEditingController(text: refCode.text);

                        codeListTextEditingController.add(name);
                        refCodeListTextEditingController.add(ref);
                        widget.vendorTableEdit(list: vendorDetails);
                        code.text = "";
                        refCode.text = "";
                        onSaveActive = false;
                      });
                    },
                    label: "Save",
                  ),
                )
              ]),
        ],
        widths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(5),
          2: FlexColumnWidth(5),
          3: FlexColumnWidth(2),
        },
      ),
    );
  }
}

class InformationClass {
  String? gender;
  String? age;
  String? countries;
  String? ethlink;
  String? purpose;

  InformationClass(
      {required this.gender,
      required this.age,
      required this.countries,
      required this.purpose,
      required this.ethlink});
}
