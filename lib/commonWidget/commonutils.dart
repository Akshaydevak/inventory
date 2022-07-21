import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';

void showDailogPopUp(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (context) => child,
  );
}
Widget gapWidthColumn({double width = 20}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width),
    child: Column(
      children: [],
    ),
  );
}
class OpenSettings extends StatefulWidget {
  const OpenSettings({Key? key}) : super(key: key);

  @override
  State<OpenSettings> createState() => _OpenSettingsState();
}

class _OpenSettingsState extends State<OpenSettings> {
  List<String>? inventoryList = [
    "test",
    "test1",
    "test2",
    "test3"
  ];
  bool _value = false;
  int selected = 0;
  int grpValue = 0;



  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    Variable.inventory_ID=inventoryList![0];
    return
      AlertDialog(
      content:SizedBox(
        height: 200,
                          width: 300,
                          child: Container(
                            child:ListView.builder(
                                shrinkWrap: true,
                                                        physics: NeverScrollableScrollPhysics(),
                                itemBuilder:  (context, index) =>Container(
                                  child: ListTile(
                                    title:Text(inventoryList?[index]??"") ,
                                    leading:  Radio(
                                    value: index,
                                    groupValue: grpValue,
                                    onChanged: (int? value) {
                                      setState(() {
                                        grpValue = value!;
                                        print("inventory"+Variable.inventory_ID.toString());
                                        // print(inventoryList?[index]
                                        //     .inventoryCode);
                                        Variable.inventory_ID =
                                        inventoryList![index];
                                        setState(() {

                                        });

                                        // print("Value");
                                        // print(value);
                                        // print("grpvalue");
                                        // print(grpValue);
                                        // Navigator.of(context)
                                        //     .push(MaterialPageRoute(
                                        //   builder: (context) =>
                                        //       ModulePage(),
                                        // )
                                        // );
                                      });

                                      // print(Variable.inventory_ID);
                                      // modulePageState.setState(() {});
                                    },
                                    // value: selected == index,
                                    activeColor: Colors.green),
                              ),

                                  ),
                                )) ,

                          )



      // BlocConsumer<InventoryIdListCubit, InventoryIdListState>(
      //   listener: (context, state) {
      //     state.maybeWhen(
      //         orElse: () {},
      //         success: (data) {
      //           print("inventory list");
      //           print(data.data1);
      //           inventoryList = data.data1;
      //           print(Variable.inventory_ID);
      //         });
      //   },
      //   builder: (context, state) {
      //     return SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             state.maybeWhen(orElse: () {
      //               return Column(
      //                 children: [
      //                   CircularProgressIndicator(),
      //                 ],
      //               );
      //             }, success: (d) {
      //               print("length");
      //               if (d.data1.length != null)
      //                 for (var i = 0; i < d.data1.length; i++) {
      //                   print(d.data1.length);
      //
      //                   //   if (inventoryList?[i].inventoryCode ==
      //                   //       Variable.inventory_ID) grpValue = i;
      //                   //   // setState(() {});
      //                   // }
      //
      //                   if (inventoryList?[i] == Variable.inventory_ID)
      //                     grpValue = i;
      //                   // setState(() {});
      //                 }
      //               // if (Variable.inventory_ID.isEmpty && d.data1.isNotEmpty) {
      //               //   // Variable.inventory_ID = inventoryList?[0].inventoryCode ?? "";
      //               //   Variable.inventory_ID = inventoryIdList[0];
      //
      //               // }
      //               return SizedBox(
      //                   height: 200,
      //                   width: 300,
      //                   child: Container(
      //                     child:
      //                     // List.generate(d.data1.length, (index) => Container()).toList();
      //                     ListView.builder(
      //                         shrinkWrap: true,
      //                         physics: NeverScrollableScrollPhysics(),
      //                         itemCount: d.data1.length,
      //                         // inventoryList?.length,
      //                         itemBuilder: (context, index) => Container(
      //                           child:
      //                           // Text("rtytgbhb"),
      //                           ListTile(
      //                             title:
      //                             // Text(inventoryIdList[index]),
      //                             Text(inventoryList?[index]
      //                                 .inventoryName ??
      //                                 ""),
      //                             // Text(inventoryIdList[index]),
      //                             dense: true,
      //                             leading: Radio(
      //                                 value: index,
      //                                 groupValue: grpValue,
      //                                 onChanged: (int? value) {
      //                                   setState(() {
      //                                     grpValue = value!;
      //                                     print("inventory");
      //                                     // print(inventoryList?[index]
      //                                     //     .inventoryCode);
      //                                     Variable.inventory_ID =
      //                                     // inventoryIdList[index];
      //                                     inventoryList?[index]
      //                                         .inventoryCode ??
      //                                         "";
      //                                     print("Value");
      //                                     print(value);
      //                                     print("grpvalue");
      //                                     print(grpValue);
      //                                     Navigator.of(context)
      //                                         .push(MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           ModulePage(),
      //                                     ));
      //                                   });
      //
      //                                   print(Variable.inventory_ID);
      //                                   modulePageState.setState(() {});
      //                                 },
      //                                 // value: selected == index,
      //                                 activeColor: Colors.green),
      //                           ),
      //                         )),
      //                   ));
      //             }),
      //           ],
      //         ));
      //   },
      // ),
    );
  }
}

class VendorPopup extends StatefulWidget {
 final Function? assign;
 VendorPopup({this.assign});


  @override
  State<VendorPopup> createState() => _VendorPopupState();
}

class _VendorPopupState extends State<VendorPopup> {
  List<PartnerOrganizationData>? inventoryList = [];
  VariantDetailsModel? wholeList ;
  bool _value = false;
  int selected = 0;
  int? grpValue ;
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return AlertDialog(
          actions: [
        TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
        )
          ],
          content: BlocConsumer<VendordetailsCubit, VendordetailsState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    print("inventory list"+data.toString());
                    print(data.partnerOrganizationdata);
                    wholeList=data;
                    inventoryList = data.partnerOrganizationdata;
                    if(inventoryList!=null){
                      widget.assign!(wholeList?.partnerAddressdata?[0].addressType??"",inventoryList?[0].trnNumber??"");
                      Variable.vendorAddress=wholeList?.partnerAddressdata?[0].addressType??"";
                      Variable.email=wholeList?.partnerOrganizationdata?[0].email??"";


                    }

                  });
            },
            builder: (context, state) {
              return SingleChildScrollView(
                  child: Column(
                    children: [
                      state.maybeWhen(orElse: () {
                        return Column(
                          children: [
                            CircularProgressIndicator(),
                          ],
                        );
                      }, success: (d) {
                        print("length");
                        if (d.partnerOrganizationdata?.length != null)
                          for (var i = 0; i < d.partnerOrganizationdata!.length; i++) {
                            print(d.partnerOrganizationdata?.length);

                            //   if (inventoryList?[i].inventoryCode ==
                            //       Variable.inventory_ID) grpValue = i;
                            //   // setState(() {});
                            // }

                            // if (inventoryList?[i] == Variable.inventory_ID)
                            //   grpValue = i;
                            // setState(() {});
                          }
                        // if (Variable.inventory_ID.isEmpty && d.data1.isNotEmpty) {
                        //   // Variable.inventory_ID = inventoryList?[0].inventoryCode ?? "";
                        //   Variable.inventory_ID = inventoryIdList[0];

                        // }
                        return SizedBox(
                            height: 200,
                            width: 300,
                            child: Container(
                              child:
                              // List.generate(d.data1.length, (index) => Container()).toList();
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: d.partnerOrganizationdata?.length,
                                  // inventoryList?.length,
                                  itemBuilder: (context, index) => Container(
                                    child:
                                    // Text("rtytgbhb"),
                                    ListTile(
                                      title:
                                      // Text(inventoryIdList[index]),
                                      Text(inventoryList?[index]
                                          .displayName ??
                                          ""),
                                      // Text(inventoryIdList[index]),
                                      dense: true,
                                      leading: Radio(
                                          value: index,
                                          groupValue: grpValue,
                                          onChanged: (int? value) {
                                            setState(() {

                                              grpValue = value!;
                                              print("inventory"+grpValue.toString());
                                              print(inventoryList?[index]
                                                  .displayName);
                                              Variable.trn=inventoryList?[index].trnNumber??"";
                                              Variable.email=inventoryList?[index].email??"";
                                              Variable.vendorAddress=wholeList?.partnerAddressdata?[index].addressType??"";
                                              widget.assign!(wholeList?.partnerAddressdata?[index].addressType??"",inventoryList?[index].trnNumber??"");


                                              // Variable.inventory_ID =
                                              // // inventoryIdList[index];
                                              // inventoryList?[index]
                                              //     .inventoryCode ??
                                                  "";
                                              print("Value");
                                              print(value);
                                              print("grpvalue");
                                              print(grpValue);
                                              // Navigator.of(context)
                                              //     .push(MaterialPageRoute(
                                              //   builder: (context) =>
                                              //       ModulePage(),
                                              // ));
                                            });

                                            // print(Variable.inventory_ID);
                                            // modulePageState.setState(() {});
                                          },
                                          // value: selected == index,
                                          activeColor: Colors.green),
                                    ),
                                  )),
                            ));
                      }),
                    ],
                  ));
            },
          ),
        );
      }
    );
  }
}

class ConfirmationPopup extends StatefulWidget {

  final Function? clear;
  final Function? onPressed;
 final List<OrderLines>? table;
  final int? verticalId;
  ConfirmationPopup({this.verticalId,this.table,this.clear,required this.onPressed});


  @override
  State<ConfirmationPopup> createState() => _ConfirmationPopupState();
}

class _ConfirmationPopupState extends State<ConfirmationPopup> {
  List<PartnerOrganizationData>? inventoryList = [];
  VariantDetailsModel? wholeList ;
  bool _value = false;
  int selected = 0;
  int? grpValue ;
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => PurchaseorderdeleteCubit(),
),
BlocProvider(
create: (context) => InventorysearchCubit(),)
  ],
  child: Builder(
        builder: (context) {
          return AlertDialog(
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: (){
                          widget.onPressed!();
                        }
                          // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);

                      ),
                      TextButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                    content: Text("Do you want to delete the order?")

                  );
        }
    ),
);
  }
}


class CommonIcon extends StatelessWidget {
  final double size;
  final VoidCallback? onTap;
  final IconData? iconData;
  final String? toolTip;
  final Color? color;
  const CommonIcon({
    Key? key,
    required this.size,
    this.onTap,
    this.iconData,
    this.toolTip,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return toolTip==null? Container(
      margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.034,),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          iconData,
          color: color,
          size: size,
        ),
      ),
    ):Container(
      margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.034,),
      child: Tooltip(message: toolTip??"",
        child: InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}
