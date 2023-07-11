import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridlist/shippingaddresscreation_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/shippingaddress/shippingadrees_cubit.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';
import 'package:inventory/Screens/sales/general/widgets/popup_switchtile.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class WarrantyDetailsPopUp extends StatefulWidget {
  final int? stckQty;
  final String? code;
  // final int? indexValue;
  // final List<ReadWarranty>? warranty;
  // final Function(bool) changeActive;
  // final Function(bool) changeAdditionalWarranty;
  // final Function(bool) changeExtendedWarranty;
  const WarrantyDetailsPopUp({
    Key? key,
    this.stckQty = 0,
    this.code,
    // required this.changeActive,
    // required this.changeAdditionalWarranty,
    // required this.changeExtendedWarranty,
    // this.warranty,
    // this.indexValue
  }) : super(key: key);

  @override
  _WarrantyDetailsPopUpState createState() => _WarrantyDetailsPopUpState();
}

class _WarrantyDetailsPopUpState extends State<WarrantyDetailsPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String countryCode="";
  String stateCode="";
  TextEditingController addresstype = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController streetname = TextEditingController();
  TextEditingController buildingname = TextEditingController();
  TextEditingController landmark = TextEditingController();
  TextEditingController instructions = TextEditingController();
  TextEditingController addresstag = TextEditingController();
  int? newQty = 0;
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShippingaddresscreationCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return BlocListener<ShippingaddresscreationCubit, ShippingaddresscreationState>(
          listener: (context, state) {
            print("postssssssss" + state.toString());
            state.maybeWhen(orElse: () {
              // context.
              // context.showSnackBarError("Loading");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              if (data.data1) {
                Navigator.pop(context);
                context.read<ShippingadreesCubit>().getShippingId(id:widget.code);

                showDailogPopUp(
                    context,
                    SuccessPopup(
                      content: data.data2,
                      // table:table,
                    ));
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    // context
                    //     .read<InventorysearchCubit>()
                    //     .getInventorySearch("code");
                    // select=false;
                  });
                });
              } else {
                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: data.data2,
                      // table:table,
                    ));
                print(data.data1);
              }
              ;
            });
            // TODO: implement listener
          },
          child: AlertDialog(
            content: PopUpHeader(
              label: "Address Creation",

              addNew: false,
              buttonCheck: true,
              isDirectCreate: true,

              onApply: () {

                ShippingAddressCreationModel model=ShippingAddressCreationModel(
                  country: countryCode??"",
                  addressTag: addresstag.text??"",
                  addressType:"buisness",
                  buillingName: buildingname.text??"",
                  city: city.text??"",
                  contact: "+91"+contact.text.toString()??"",
                  fullName: fullname.text??"",
                  instructions: instructions.text??"",
                  landmark: landmark?.text??'',
                  state: state.text??"",
                  streetName: streetname.text??"",
                  userCode: widget.code,
                );
                print("aaaaaaaaaaaaaaa"+model.toString());
                context
                    .read<ShippingaddresscreationCubit>()
                    .postShippinAddress(
                    model);


              },

              onEdit: () {


              },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: SingleChildScrollView(
                    child:Container(
                        height: 600,
                        width: 800,
                        child:Row(
                          children: [
                            Expanded(child: Column(
                              children: [


                                SelectableDropDownpopUp(
                                  row: true,
                                  controller:country,
                                  label: "Country",
                                  type: "ProducedCountryPopUpCall",
                                  // id: base_uom ?? 0,
                                  value: country?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (VariantReadModel? va) {
                                    setState(() {
                                      state.clear();
                                      country?.text = va?.name.toString() ?? "";
                                      countryCode = va?.code.toString() ?? "";

                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),


                                PopUpInputField(
                                  controller:fullname ,
                                  label: "Full Name",
                                ),
                                PopUpInputField(
                                  boarType: "int",

                                  controller:contact ,
                                  label: "Mobile No",
                                ),
                                PopUpInputField(
                                  controller:city ,
                                  label: "City",
                                ),

                                SelectableDropDownpopUp(
                                  row: true,
                                  code: countryCode,
                                  controller:state,
                                  label: "State",
                                  type: "StatePop_UpCall",
                                  value: state?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (StateList? va) {
                                    setState(() {
                                      print(va?.code.toString());
                                      state?.text = va?.name.toString() ?? "";
                                      stateCode = va?.code.toString() ?? "";
                                      setState(() {});
                                    });
                                  },
                                ),

                              ],
                            )),
                            SizedBox(width: 15,),
                            Expanded(child:   Column(
                              children: [
                                PopUpInputField(
                                  controller:streetname ,
                                  label: "Street Name",
                                ),
                                PopUpInputField(
                                  controller:buildingname ,
                                  label: "Building Name",
                                ),
                                PopUpInputField(
                                  controller:landmark ,
                                  label: "Landmark",
                                ),
                                PopUpInputField(
                                  controller:instructions ,
                                  label: "Instruction",
                                ),

                                NewRadioButtonText(
                                  lable: "",
                                  valueAssign:(va){

                                    addresstag.text=va;

                                  },

                                ),




                              ],
                            )),
                          ],
                        )
                    )
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "adjustment lines",
                  //     ),
                  //     Divider(
                  //       color: Colors.grey,
                  //       height: 4.0,
                  //     ),
                  //     SizedBox(height: 10,),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //             controller: stckQty, label: "current quantity"),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: qtyChange,
                  //           label: "quantity change",
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //           boarType: "int",
                  //           //  controller: newQuantity,
                  //           label: "new quantity",
                  //           onChanged: (v) {
                  //             setState(() {
                  //               newQty = int.tryParse(v);
                  //               int? stck = int.tryParse(stckQty.text);
                  //               qtyChange.text = ((stck!) - (newQty!)).toString();
                  //               print("newQty" + newQty.toString());
                  //             });
                  //           },
                  //         ),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: reason,
                  //           label: "reason",
                  //         ),
                  //       ],
                  //     ),
                  //     // PopUpSwitchTile(
                  //     //     value: active,
                  //     //     title: "is Active",
                  //     //     onClick: (gg) {
                  //     //       active = gg;
                  //     //       // widget.changeActive(gg);
                  //     //       onChange = true;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // customTable(tableWidth: .5, childrens: [
                  //     //   TableRow(children: [
                  //     //     tableHeadtext("conditions", size: 10, color: null),
                  //     //     //tableHeadtext("name", size: 10, color: null),
                  //     //   ]),
                  //     //   // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(                        ""),
                  //     //     ]),
                  //     //
                  //     // ]),
                  //     // PopUpSwitchTile(
                  //     //     value: additionalWarranty,
                  //     //     title: "is additional warranty",
                  //     //     onClick: (gg) {
                  //     //       additionalWarranty = gg;
                  //     //       // widget.changeAdditionalWarranty(gg);
                  //     //       onChangeWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // if (onChangeWarranty) Text("Additional Warranty"),
                  //     // gap12(),
                  //     // if (onChangeWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("warranty section", size: 10, color: null),
                  //     //       tableHeadtext("aditional warranty code",
                  //     //           size: 10, color: null),
                  //     //       tableHeadtext("duration", size: 10, color: null),
                  //     //       tableHeadtext("maximum occurence", size: 10, color: null),
                  //     //     ]),
                  //     //     // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     // for (var j = 0;
                  //     //     //     j <
                  //     //     //         widget.warranty![widget.indexValue!]
                  //     //     //             .additionalWarranty!.length;
                  //     //     //     j++)
                  //     //       TableRow(children: [
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(    ""),
                  //     //       ]),
                  //     //     TableRow(children: [
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //
                  //     //   ]),
                  //     // if (!onChangeWarranty) Container(),
                  //     // PopUpSwitchTile(
                  //     //     value: extendedWarranty,
                  //     //     title: "is extended warranty",
                  //     //     onClick: (gg) {
                  //     //       extendedWarranty = gg;
                  //     //       // widget.changeExtendedWarranty(gg);
                  //     //       onChangeExtWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty) Text("Extended Warranty"),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "duration",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.duration
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "description",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.description
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "price",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.price
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "maximum occurence",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.maximumOccurence
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "is active",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "read only field is enabled",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("conditions", size: 10, color: null),
                  //     //
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding('aasssss'),
                  //     //     ]),
                  //     //   ]),
                  //     if (!onChangeExtWarranty) Container(),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
class AdditionalWarrantyPopUp extends StatefulWidget {
  const AdditionalWarrantyPopUp({Key? key}) : super(key: key);

  @override
  _AdditionalWarrantyPopUpState createState() =>
      _AdditionalWarrantyPopUpState();
}

class _AdditionalWarrantyPopUpState extends State<AdditionalWarrantyPopUp> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: PopUpHeader(
        label: "Additional Warranty",
        onApply: () {},
        dataField: SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Additional warranty"),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PopUpInputField(label: "duration"),
                    gapWidthColumn(),
                    PopUpInputField(
                      label: "description",
                      maxLines: 3,
                    )
                  ],
                ),
                PopUpInputField(label: "maximum occurence"),
                PopUpSwitchTile(
                    value: isActive,
                    title: "is active",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                SizedBox(height: 10,),
                PopUpSwitchTile(
                    value: isActive,
                    title: "read only field is enabled",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
                SizedBox(height: 10,),
                customTable(tableWidth: .5, childrens: [
                  TableRow(children: [
                    tableHeadtext("conditions", size: 10, color: null),
                    //tableHeadtext("name", size: 10, color: null),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                  TableRow(children: [
                    //   textPadding(''),
                    textPadding(''),
                  ]),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class WarrantyTypePopUp extends StatefulWidget {
  const WarrantyTypePopUp({Key? key}) : super(key: key);

  @override
  _WarrantyTypePopUpState createState() => _WarrantyTypePopUpState();
}

class _WarrantyTypePopUpState extends State<WarrantyTypePopUp> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: PopUpHeader(
        label: "Warranty Type",
        onApply: () {},
        dataField: SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("warranty type"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    PopUpInputField(
                      label: "code",
                      restricted: true,
                    ),
                    gapWidthColumn(),
                    PopUpInputField(label: "description")
                  ],
                ),
                SizedBox(height: 10,),
                PopUpInputField(label: "title"),
                SizedBox(height: 10,),
                PopUpSwitchTile(
                    value: isActive,
                    title: "is Active",
                    onClick: (gg) {
                      // extendedWarranty = gg;
                      // widget.changeExtendedWarranty(gg);
                      // onChangeExtWarranty = gg;
                      setState(() {});
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomerIdCreationPopUp extends StatefulWidget {

  final TextEditingController? mobile;
  final TextEditingController? fname;
  final TextEditingController? taxId;

  final TextEditingController? country;
  final TextEditingController? gender;


  final Function ontap;

  CustomerIdCreationPopUp({
    Key? key,
    required this.country,
    required this.ontap,
    required this.mobile,
    required this.taxId,

    required this.fname,
    required this.gender,


  }) : super(key: key);

  @override
  _CustomerIdCreationPopUpState createState() => _CustomerIdCreationPopUpState();
}

class _CustomerIdCreationPopUpState extends State<CustomerIdCreationPopUp> {
  bool active = false;
  bool addNew  = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
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

  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShippingaddresscreationCubit(),
        ),

      ],
      child: Builder(builder: (context) {
        return BlocListener<ShippingaddresscreationCubit, ShippingaddresscreationState>(
          listener: (context, state) {
            print("postssssssss" + state.toString());
            state.maybeWhen(orElse: () {
              // context.
              context.showSnackBarError("Loading");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              if (data.data1) {

                showDailogPopUp(
                    context,
                    SuccessPopup(
                      content: data.data2,
                      // table:table,
                    ));
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    // context
                    //     .read<InventorysearchCubit>()
                    //     .getInventorySearch("code");
                    // select=false;
                  });
                });
              } else {

                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: data.data2,
                      // table:table,
                    ));
                print(data.data1);
              }
              ;
            });
            // TODO: implement listener
          },
          child: AlertDialog(

            content: PopUpHeader(
              buttonCheck: true,

              label: "Customer Id Creation",
              onApply: () {
                widget.ontap();
              },
              onTap: () {
                print("akshay");
                addNew = !addNew;
                setState(() {});
              },
              isDirectCreate: true,
              addNew: addNew,
              onEdit: () {





              },
              onAddNew:(bool){
                print("akshay"+bool.toString());
              },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: SingleChildScrollView(
                    child:Container(
                        height: 600,
                        width: 800,
                        child:Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                PopUpInputField(
                                  controller:widget.fname ,
                                  label: "Full Name",
                                ),

                                PopUpInputField(
                                  boarType: "int",
                                  controller:widget.mobile ,
                                  label: "Mobile",
                                ),



                                // PopUpInputField(
                                //   controller:widget.country ,
                                //   label: "country",
                                // ),

                              ],
                            )),
                            SizedBox(width: 15,),
                            Expanded(child:   Column(
                              children: [
                                SelectableDropDownpopUp(
                                  row: true,
                                  controller: widget.country,
                                  label: "Produced Country",
                                  type: "ProducedCountryPopUpCall",
                                  // id: base_uom ?? 0,
                                  value: widget.country?.text??"",
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (VariantReadModel? va) {
                                    setState(() {
                                      widget.country?.text =
                                          va?.name.toString() ?? "";

                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                PopUpInputField(

                                  controller:widget.taxId ,
                                  label: "Tax ID",
                                ),


                              ],
                            )),
                          ],
                        )
                    )
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "adjustment lines",
                  //     ),
                  //     Divider(
                  //       color: Colors.grey,
                  //       height: 4.0,
                  //     ),
                  //     SizedBox(height: 10,),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //             controller: stckQty, label: "current quantity"),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: qtyChange,
                  //           label: "quantity change",
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         PopUpInputField(
                  //           boarType: "int",
                  //           //  controller: newQuantity,
                  //           label: "new quantity",
                  //           onChanged: (v) {
                  //             setState(() {
                  //               newQty = int.tryParse(v);
                  //               int? stck = int.tryParse(stckQty.text);
                  //               qtyChange.text = ((stck!) - (newQty!)).toString();
                  //               print("newQty" + newQty.toString());
                  //             });
                  //           },
                  //         ),
                  //         gapWidthColumn(),
                  //         PopUpInputField(
                  //           controller: reason,
                  //           label: "reason",
                  //         ),
                  //       ],
                  //     ),
                  //     // PopUpSwitchTile(
                  //     //     value: active,
                  //     //     title: "is Active",
                  //     //     onClick: (gg) {
                  //     //       active = gg;
                  //     //       // widget.changeActive(gg);
                  //     //       onChange = true;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // customTable(tableWidth: .5, childrens: [
                  //     //   TableRow(children: [
                  //     //     tableHeadtext("conditions", size: 10, color: null),
                  //     //     //tableHeadtext("name", size: 10, color: null),
                  //     //   ]),
                  //     //   // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(                        ""),
                  //     //     ]),
                  //     //
                  //     // ]),
                  //     // PopUpSwitchTile(
                  //     //     value: additionalWarranty,
                  //     //     title: "is additional warranty",
                  //     //     onClick: (gg) {
                  //     //       additionalWarranty = gg;
                  //     //       // widget.changeAdditionalWarranty(gg);
                  //     //       onChangeWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // if (onChangeWarranty) Text("Additional Warranty"),
                  //     // gap12(),
                  //     // if (onChangeWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("warranty section", size: 10, color: null),
                  //     //       tableHeadtext("aditional warranty code",
                  //     //           size: 10, color: null),
                  //     //       tableHeadtext("duration", size: 10, color: null),
                  //     //       tableHeadtext("maximum occurence", size: 10, color: null),
                  //     //     ]),
                  //     //     // for (var i = 0; i < widget.warranty!.length; i++)
                  //     //     // for (var j = 0;
                  //     //     //     j <
                  //     //     //         widget.warranty![widget.indexValue!]
                  //     //     //             .additionalWarranty!.length;
                  //     //     //     j++)
                  //     //       TableRow(children: [
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(""),
                  //     //         textPadding(    ""),
                  //     //       ]),
                  //     //     TableRow(children: [
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //
                  //     //   ]),
                  //     // if (!onChangeWarranty) Container(),
                  //     // PopUpSwitchTile(
                  //     //     value: extendedWarranty,
                  //     //     title: "is extended warranty",
                  //     //     onClick: (gg) {
                  //     //       extendedWarranty = gg;
                  //     //       // widget.changeExtendedWarranty(gg);
                  //     //       onChangeExtWarranty = gg;
                  //     //       setState(() {});
                  //     //     }),
                  //     // gap12(),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty) Text("Extended Warranty"),
                  //     // gap12(),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "duration",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.duration
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "description",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.description
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   Row(children: [
                  //     //     PopUpInputField(
                  //     //         label: "price",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.price
                  //     //         //         .toString())
                  //     //     ),
                  //     //     gapWidthColumn(),
                  //     //     PopUpInputField(
                  //     //         label: "maximum occurence",
                  //     //         // controller: TextEditingController(
                  //     //         //     text: widget.warranty?[widget.indexValue!]
                  //     //         //         .extenedWarranty?.maximumOccurence
                  //     //         //         .toString())
                  //     //     ),
                  //     //   ]),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "is active",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   PopUpSwitchTile(
                  //     //       value: extendedWarranty,
                  //     //       title: "read only field is enabled",
                  //     //       onClick: (gg) {
                  //     //         extendedWarranty = gg;
                  //     //         // widget.changeExtendedWarranty(gg);
                  //     //         onChangeExtWarranty = gg;
                  //     //         setState(() {});
                  //     //       }),
                  //     // if (onChangeExtWarranty)
                  //     //   customTable(tableWidth: .5, childrens: [
                  //     //     TableRow(children: [
                  //     //       tableHeadtext("conditions", size: 10, color: null),
                  //     //
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding(''),
                  //     //     ]),
                  //     //     TableRow(children: [
                  //     //       //   textPadding(''),
                  //     //       textPadding('aasssss'),
                  //     //     ]),
                  //     //   ]),
                  //     if (!onChangeExtWarranty) Container(),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

