import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuom_creation/baseuomcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomread/readbaseuom_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/branddelete/branddelete_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/brandread/brandread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createbrand/createbrand_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createcategory/createcategory_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/divisioncreate/divisioncreate_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/divisionread/divisionread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/framework_list/frameworklist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/groupcreation/groupcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/groupread/groupread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';

import 'package:inventory/Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/materialRead/materialread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/materialcreation/materialcraetion_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/readFrameWork/frameworkread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgroupread/uomgroupread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/heirarchy/general/screens.dart';
import 'package:inventory/Screens/logi/inventorylist/inventorylist_cubit.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingcreatelist/costingcreatelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingtype/costingtype_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingtypelist/costingtypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/deletion/deletioncosting_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricinggrouppost/pricinggrouppost_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricinglist/pricinglist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricingread/pricingread_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/readcosting/readcosting_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/readcostingtype/readcostingtype_cubit.dart';
import 'package:inventory/Screens/variant/channels2allocation/cubits/channellistread/channel_list_read_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/createlinkeditem/createlinkeditem_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/createlinkeditem/linkeditemlistread_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/linkeditemcreation/linked_itemcreation_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/linkedlistvertica/linkedlistverticallist_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/read_linkeditem/readlinkeditem_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/commonWidget/buttons.dart';

import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Screens/heirarchy/general/cubits/categoryread/categoryread_cubit.dart';
import '../Screens/heirarchy/general/cubits/devision_list/materialdelete_cubit.dart';
import '../Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import '../Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import '../Screens/heirarchy/general/cubits/uomGroupcreation/uomgroup_creation_cubit.dart';
import '../Screens/heirarchy/general/cubits/variantframeworkpost/variantframeworkpost_cubit.dart';
import '../Screens/heirarchy/general/model/brandreadmodel.dart';
import '../Screens/heirarchy/general/model/frameworklistmodel.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricinggrouppatch/pricinggrouppatch_cubit.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricinggroupread/readpricingroupread_cubit.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricingrouplist/pricingroupcreate_cubit.dart';
import '../Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';


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
  List<InventoryListModel>? inventoryList = [];
  bool _value = false;
  int selected = 0;
  int grpValue = 0;

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    // Variable.inventory_ID = inventoryList![0].businessUnitCode.toString();
    return AlertDialog(
        content: BlocConsumer<InventorylistCubit, InventorylistState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            success: (data) {
              print("inventory list");
              print(data.data);
              inventoryList = data.data;
              // if(inventoryList?.isNotEmpty==true){
              //   Variable.inventory_ID=inventoryList![0]?.businessUnitCode??"";
              // }
              print(Variable.inventory_ID);
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
                if (d.data.length != null)
                  for (var i = 0; i < d.data.length; i++) {
                    print(d.data.length);

                    //   if (inventoryList?[i].inventoryCode ==
                    //       Variable.inventory_ID) grpValue = i;
                    //   // setState(() {});
                    // }

                    if (inventoryList?[i].businessUnitCode ==
                        Variable.inventory_ID) grpValue = i;
                    // setState(() {});
                  }
                return SizedBox(
                  height: 200,
                  width: 300,
                  child: Container(
                      child: ListView.builder(
                    itemCount: inventoryList?.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      child: ListTile(
                        title: Text(inventoryList?[index].name ?? ""),
                        leading: Radio(
                            value: index,
                            groupValue: grpValue,
                            onChanged: (int? value) {
                              setState(() async {
                                grpValue = value!;
                                print("inventory" +
                                    Variable.inventory_ID.toString());
                                // print(inventoryList?[index]
                                //     .inventoryCode);
                                Variable.inventory_ID = inventoryList![index].businessUnitCode.toString();
                                Variable.inventory_Name = inventoryList![index].name.toString();
                                setState(() {});
                                final SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setString("inventory", inventoryList![index].businessUnitCode.toString());
                                prefs.setString("inventory_name", inventoryList![index].name.toString());

                                // print("Value");
                                // print(value);
                                // print("grpvalue");
                                // print(grpValue);
                                // Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context) => DashBoard(),
                                // ));
                              });

                              // print(Variable.inventory_ID);
                              // modulePageState.setState(() {});
                            },
                            // value: selected == index,
                            activeColor: Colors.green),
                      ),
                    ),
                  )),
                );
              }),
            ],
          ),
        );
      },
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
  VariantDetailsModel? wholeList;

  bool _value = false;
  int selected = 0;
  int? grpValue;

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
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
                  print("inventory list" + data.toString());
                  print(data.partnerOrganizationdata);
                  wholeList = data;
                  inventoryList = data.partnerOrganizationdata;
                  if (inventoryList != null) {
                    widget.assign!(
                        wholeList?.partnerAddressdata?[0].addressType ?? "",
                        inventoryList?[0].trnNumber ?? "");
                    Variable.vendorAddress =
                        wholeList?.partnerAddressdata?[0].addressType ?? "";
                    Variable.email =
                        wholeList?.partnerOrganizationdata?[0].email ?? "";
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
                    for (var i = 0;
                        i < d.partnerOrganizationdata!.length;
                        i++) {
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
                                                print("inventory" +
                                                    grpValue.toString());

                                                Variable.trn =
                                                    inventoryList?[index]
                                                            .trnNumber ??
                                                        "";
                                                Variable.email =
                                                    inventoryList?[index]
                                                            .email ??
                                                        "";
                                                Variable
                                                    .vendorAddress = wholeList
                                                        ?.partnerAddressdata?[
                                                            index]
                                                        .addressType ??
                                                    "";
                                                widget.assign!(
                                                    wholeList
                                                            ?.partnerAddressdata?[
                                                                index]
                                                            .addressType ??
                                                        "",
                                                    inventoryList?[index]
                                                            .trnNumber ??
                                                        "");

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
    });
  }
}

class ConfirmationPopup extends StatefulWidget {
  final Function? clear;
  final Function? onPressed;
  final List<OrderLines>? table;
  final int? verticalId;

  ConfirmationPopup(
      {this.verticalId, this.table, this.clear, required this.onPressed});

  @override
  State<ConfirmationPopup> createState() => _ConfirmationPopupState();
}

class _ConfirmationPopupState extends State<ConfirmationPopup> {
  List<PartnerOrganizationData>? inventoryList = [];
  VariantDetailsModel? wholeList;

  bool _value = false;
  int selected = 0;
  int? grpValue;

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PurchaseorderdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => InventorysearchCubit(),
        )
      ],
      child: Builder(builder: (context) {
        return AlertDialog(actions: [
          TextButton(
              child: Text("OK"),
              onPressed: () {
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
        ], content: Text("Do you want to delete the order?"));
      }),
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
    return toolTip == null
        ? Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .034,
            ),
            child: InkWell(
              onTap: onTap,
              child: Icon(
                iconData,
                color: color,
                size: size,
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .034,
            ),
            child: Tooltip(
              message: toolTip ?? "",
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

// ignore: must_be_immutable
class ConfigurePopup extends StatelessWidget {
  final String type;
  final Function? listAssign;
  final int? veritiaclid;

  final bool onAddNew;
  final VoidCallback? onBack;

  ConfigurePopup(
      {Key? key, required this.type, this.onBack, this.onAddNew = false,this.listAssign,this.veritiaclid})
      : super(key: key);
  late Widget data;

  @override
  Widget build(BuildContext context) {
    // data = BrandConfigurePopUp(
    //   type: type,
    // );
    switch (type) {
      case "uom-group":
        {
          data = CreateMaterialPopUp(
            type: type,
          );
        }
        break;
      case "brand-group":
        {
          data = CreateBrandPopUp(
            type: type,
          );
        }
        break;     case "CreateSearchLinkedItem-group":
        {
          data = CreateSearchLinkedItem(
            listAssign:listAssign,
            type: type,
          );
        }
        break;
      case "patchbrand-group":
        {
          data = PatchBrandPopUp(
            type: type,
          );
        }
        break;

      case "patchUom-group":
        {
          data = PatchMaterialPopUp(
            type: type,
          );
        }
        break;

      case "devision-group":
        {
          data = CreateDevisionPopUp(
            type: type,
          );
        }
        break;

      case "Static-group":
        {
          data = CreateStaticPopUp(
            type: type,
          );
        }
        break;
      case "StaticPatch-group":
        {
          data = PatchStaticPopUp(
            type: type,
          );
        }
        break;

      case "uomgroup":
        {
          data = UomGroupCreatePopUp(
            type: type,
          );
        }
        break;
      case "category_group":
        {
          data = CategoryCreatePopUp(
            type: type,
          );
        }
        break;    case "Subcategory_group":
        {
          data = SubCategoryCreatePopUp(
            type: type,
          );
        }
        break;

      case "categoryPatch_group":
        {
          data = CategoryPopUp(
            type: type,
          );
        }
        break;

      case "Group_PopUp":
        {
          data = GroupPopUp(
            type: type,
          );
        }
        break;
      case "GroupPatch_PopUp":
        {
          data = GroupPatchPopUp(
            type: type,
          );
        }
        break;
      case "base_uom":
        {
          data = UomCreatePopUp(
            type: type,
          );
        }
        break;
      case "uomGroup_patch":
        {
          data = UomGroupPopUp(
            type: type,
          );
        }
        break;

      case "uom_patch":
        {
          data = UomPopUp(
            type: type,
          );
        }
        break;
      case "division_patch":
        {
          data = PatchDevisionPopUp(
            type: type,
          );
        }
        break;
      case "create_framework":
        {
          data = CreateFrameWorkPopUp(
            type: type,
          );
        }
        break;
      case "create_costingtype":
        {
          data = CreateCostingMethodeTypePopUp(
            type: type,
          );
        }
        break;
      case "create_costingCreate":
        {
          data = CreateCostingMethodeCreatePopUp(
            type: type,
          );
        }
        break;
      case "create_pricing":
        {
          data = PricingGroupCreatePopUp(
            type: type,
          );
        }
        break;
      case "PricingCreatePopUp":
        {
          data = PricingCreatePopUp(
            type: type,
          );
        }
        break; case "LinkedItemCreatePopUp":
        {
          data = LinkedItemCreatePopUp(
            veritiaclid:veritiaclid,
            type: type,
          );
        }
        break;
    }

    return data;
  }
}

//create brand
class CreateBrandPopUp extends StatefulWidget {
  final String type;

  // final Function onTap;
  // final TextEditingController country;
  // final TextEditingController gender;
  // final TextEditingController accesssite;
  // final TextEditingController buisnessuser;
  // final TextEditingController taxid;
  // final TextEditingController buisnessmode;
  // final TextEditingController buisnessname;
  // final TextEditingController designation;
  // final Function ontap;

  CreateBrandPopUp({Key? key, required this.type
      // required this.onTap,

      })
      : super(key: key);

  @override
  _CreateBrandPopUpState createState() => _CreateBrandPopUpState();
}

class _CreateBrandPopUpState extends State<CreateBrandPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  BrandReadModel? group;
  int? veritiaclid = 0;
  TextEditingController codeController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController imageController = TextEditingController();
  TextEditingController parentIdController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController brandIdentifierUrl = TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";

  TextEditingController controller = TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) => addNew = va;

  void initState() {
    context.read<Listbrand2Cubit>().getSlotSectionPage();

    super.initState();
  }

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
          create: (context) => CreatebrandCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<CreatebrandCubit, CreatebrandState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {


                    setState(() {
                      context.read<Listbrand2Cubit>().getSlotSectionPage();
                    });
                    context.showSnackBarSuccess(data.data2);
                    Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageController.text = data.data2.toString();
                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.verticalid = result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<BrandreadCubit>()
                            .getBrandRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    addNew: false,
                    buttonCheck: true,
                    isDirectCreate: true,

                    // buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    label: "Create Brand",
                    onApply: () {
                      BrandCreationtModel model = BrandCreationtModel(
                        name: nameController?.text ?? "",
                        description: descriptionController?.text ?? "",
                        image: int.tryParse(imageController.text),
                        brandIdentifierUrl: brandIdentifierUrl?.text ?? "",
                        parentCode: parentIdController.text ?? "",
                      );

                      context.read<CreatebrandCubit>().postCreateBrand(model);
                      setState(() {});
                    },
                    onEdit: () {},
                    onCancel: () {},

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: nameController,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context
                                          .read<ImagepostCubit>()
                                          .postImage(imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                SelectableDropDownpopUp(
                                  label: "Parent Id",
                                  // row: true,

                                  type: "BrandPopUpCall",
                                  value: parentName,
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;
                                      parentName = va?.name ?? "";
                                      parentIdController.text = va?.code ?? "";

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionController,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: brandIdentifierUrl,
                                  title: "Brand identifier URL",
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//patch brand

class PatchBrandPopUp extends StatefulWidget {
  final String type;

  // final Function onTap;
  // final TextEditingController country;
  // final TextEditingController gender;
  // final TextEditingController accesssite;
  // final TextEditingController buisnessuser;
  // final TextEditingController taxid;
  // final TextEditingController buisnessmode;
  // final TextEditingController buisnessname;
  // final TextEditingController designation;
  // final Function ontap;

  PatchBrandPopUp({Key? key, required this.type
      // required this.onTap,

      })
      : super(key: key);

  @override
  _PatchBrandPopUpState createState() => _PatchBrandPopUpState();
}

class _PatchBrandPopUpState extends State<PatchBrandPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  BrandReadModel? group;
  int? veritiaclid = 0;
  TextEditingController codeController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController imageController = TextEditingController();
  TextEditingController parentIdController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController brandIdentifierUrl = TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";

  TextEditingController controller = TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) => addNew = va;

  void initState() {
    context.read<Listbrand2Cubit>().getSlotSectionPage();

    super.initState();
  }

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
          create: (context) => BrandreadCubit(),
        ),
        BlocProvider(
          create: (context) => BranddeleteCubit(),
        ),
        BlocProvider(
          create: (context) => CreatebrandCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<CreatebrandCubit, CreatebrandState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<BrandreadCubit, BrandreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        nameController.text = data.name ?? "";

                        imageController.text = data.image ?? "";
                        parentIdController.text = data.parentCode ?? "";
                        descriptionController.text = data.description ?? "";
                        brandIdentifierUrl.text = data.brandIdentifierUrl ?? "";
                        parentName = data.parentCode ?? "";
                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<BranddeleteCubit, BranddeleteState>(
              listener: (context, state) {
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("checkingdata" + data.data1.toString());
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<Listbrand2Cubit>().getSlotSectionPage();

                    // select = true;
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageController.text = data.data2.toString();
                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.verticalid = result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<BrandreadCubit>()
                            .getBrandRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    addNew: false,

                    // buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    label: "Create Brand",
                    onApply: () {},
                    onEdit: () {
                      BrandCreationtModel model = BrandCreationtModel(
                        parentCode: parentIdController?.text ?? "",
                        name: nameController.text ?? "",
                        brandIdentifierUrl: brandIdentifierUrl.text ?? "",
                        image: int.tryParse(imageController.text),
                        description: descriptionController.text,
                        isActive: active,
                      );
                      print(model);
                      context
                          .read<CreatebrandCubit>()
                          .postBrandPatch(veritiaclid!, model);
                    },
                    onCancel: () {
                      context.read<BranddeleteCubit>().brandDelete(veritiaclid);
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BrandVerticalList(
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  context
                                      .read<BrandreadCubit>()
                                      .getBrandRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: nameController,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context
                                          .read<ImagepostCubit>()
                                          .postImage(imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                SelectableDropDownpopUp(
                                  label: "Parent Id",
                                  // row: true,

                                  type: "BrandPopUpCall",
                                  value: parentName,
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      parentName = va?.name ?? "";
                                      parentIdController.text = va?.code ?? "";

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionController,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: brandIdentifierUrl,
                                  title: "Brand identifier URL",
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//create material

class CreateMaterialPopUp extends StatefulWidget {
  final String type;

  CreateMaterialPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateMaterialPopUpState createState() => _CreateMaterialPopUpState();
}

class _CreateMaterialPopUpState extends State<CreateMaterialPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  MaterialReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context
    //     .read<MaterialListCubit>()
    //     .getMaterialList();
    super.initState();
  }

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
          create: (context) => MaterialcraetionCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
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
                    context.read<MaterialListCubit>().getMaterialList();
                    Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<MaterialListCubit, MaterialListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<MaterialreadCubit>()
                            .getMaterialRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Create Material",
                    onApply: () {
                      MaterialCreationtModel model = MaterialCreationtModel(
                        description: descriptionContollercontroller?.text ?? "",
                        image: int.tryParse(imageContollercontroller.text),
                        searchNmae: searchNamecontroller?.text ?? "",
                        name: namecontroller?.text ?? "",
                      );
                      context
                          .read<MaterialcraetionCubit>()
                          .postCreateMaterial(model);

                      // widget.onTap();
                      setState(() {});
                    },
                    onEdit: () {
                      MaterialReadModel model = MaterialReadModel(
                        name: namecontroller?.text ?? "",
                        image: imageContollercontroller?.text ?? "",
                        description: descriptionContollercontroller?.text ?? "",
                        searchNmae: searchNamecontroller?.text ?? "",
                        isActive: active,
                      );
                      // print(model);
                      context
                          .read<MaterialcraetionCubit>()
                          .postmaterialPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"material");
                    },
                    onAddNew: (v) {
                      print("Akshay" + v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //       // if(!addNew)
                                //       //   active=!active!;
                                //
                                //       // extendedWarranty = gg;
                                //       // widget.changeExtendedWarranty(gg);
                                //       // onChangeExtWarranty = gg;
                                //       setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}



class CreateSearchLinkedItem extends StatefulWidget {
  final String type;
  final Function? listAssign;

  CreateSearchLinkedItem({
    Key? key,
    required this.type,
    required this.listAssign,
  }) : super(key: key);

  @override
  _CreateSearchLinkedItem createState() => _CreateSearchLinkedItem();
}

class _CreateSearchLinkedItem extends State<CreateSearchLinkedItem> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  MaterialReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller = TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<LinkedItemListIdModel>table=[];
  List<int>list=[];
  List<LinkedItemListIdModel>list1=[];

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context
    //     .read<MaterialListCubit>()
    //     .getMaterialList();
    super.initState();
  }

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
          create: (context) => MaterialcraetionCubit(),
        ),
        BlocProvider(
          create: (context) => LinkeditemlistreadCubit()..getLinkedItemListRead("code"),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<LinkeditemlistreadCubit, LinkeditemlistreadState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("the real Akshay"+data.toString());
                  if(data.isNotEmpty){
                    setState(() {
                      table=data;
                    });

                  }


                    // context.showSnackBarSuccess(data.data2);

                  ;
                });
              },
            ),
            BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
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
                    context.read<MaterialListCubit>().getMaterialList();
                    Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<MaterialListCubit, MaterialListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<MaterialreadCubit>()
                            .getMaterialRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Linked Item",
                    onApply: () {
                      MaterialCreationtModel model = MaterialCreationtModel(
                        description: descriptionContollercontroller?.text ?? "",
                        image: int.tryParse(imageContollercontroller.text),
                        searchNmae: searchNamecontroller?.text ?? "",
                        name: namecontroller?.text ?? "",
                      );
                      context
                          .read<MaterialcraetionCubit>()
                          .postCreateMaterial(model);

                      // widget.onTap();
                      setState(() {});
                    },
                    onEdit: () {
                      MaterialReadModel model = MaterialReadModel(
                        name: namecontroller?.text ?? "",
                        image: imageContollercontroller?.text ?? "",
                        description: descriptionContollercontroller?.text ?? "",
                        searchNmae: searchNamecontroller?.text ?? "",
                        isActive: active,
                      );
                      // print(model);
                      context
                          .read<MaterialcraetionCubit>()
                          .postmaterialPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"material");
                    },
                    onAddNew: (v) {
                      print("Akshay" + v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Container(
                      // height: 500,
                      child: Column(
                        children: [

                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                h: 40,
                                hintText: "Search...",
                                ctrlr:searchContoller,
                                onChanged: (va) {
                                  // print("searching case"+va.toString());
                                  // context
                                  //     .read<InventorysearchCubit>()
                                  //     .getSearch(widget.itemsearch.text,tab: widget.tab);
                                  // if(va==""){
                                  //   context
                                  //       .read<InventorysearchCubit>()
                                  //       .getInventorySearch("code",tab: widget.tab);

                                  // }

                                },
                              )),
                          Container(
                            // width: w/7,
                            // margin: EdgeInsets.symmetric(horizontal: w*.02),
                            child: customTable(

                              border: const TableBorder(

                                verticalInside: BorderSide(
                                    width:.5,
                                    color: Colors.black45,
                                    style: BorderStyle.solid),
                                horizontalInside: BorderSide(
                                    width:.3,
                                    color: Colors.black45,
                                    // color: Colors.blue,
                                    style: BorderStyle.solid),),

                              tableWidth: .5,

                              childrens:[
                                TableRow(

                                  // decoration: BoxDecoration(

                                  //     color: Colors.green.shade200,

                                  //     shape: BoxShape.rectangle,

                                  //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                  children: [

                                    tableHeadtext(

                                      '',

                                      padding: EdgeInsets.all(7),

                                      height: 46,
                                      // textColor: Colors.black,
                                      // color: Color(0xffE5E5E5),

                                      size: 13,


                                    ),


                                    tableHeadtext(
                                      'Item Name',
                                      // textColor: Colors.black,
                                      padding: EdgeInsets.all(7),
                                      height: 46,
                                      size: 13,
                                      // color: Color(0xffE5E5E5),
                                    ),
                                    // tableHeadtext(
                                    //   '',
                                    //   textColor: Colors.black,
                                    //   padding: EdgeInsets.all(7),
                                    //   height: 46,
                                    //   size: 13,
                                    //   // color: Color(0xffE5E5E5),
                                    // ),



                                  ],

                                ),
                                if (table?.isNotEmpty==true ) ...[


                                  for (var i = 0; i <table.length; i++)



                                    TableRow(
                                        decoration: BoxDecoration(
                                            color: Colors.grey
                                                .shade200,
                                            shape: BoxShape
                                                .rectangle,
                                            border:const  Border(
                                                left: BorderSide(
                                                    width: .5,
                                                    color: Colors
                                                        .grey,
                                                    style: BorderStyle
                                                        .solid),
                                                bottom: BorderSide(
                                                    width: .5,
                                                    color: Colors
                                                        .grey,
                                                    style: BorderStyle
                                                        .solid),
                                                right: BorderSide(
                                                    color: Colors
                                                        .grey,
                                                    width: .5,
                                                    style: BorderStyle
                                                        .solid))),
                                        children: [

                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,

                                            child:CustomCheckBox(
                                              key: UniqueKey(),
                                              value: list1.contains(table![i]),
                                              onChange: (p0) {
                                                if (p0)
                                                  list1.add(LinkedItemListIdModel(id:table![i].id,name: table[i].name ));
                                                else
                                                  list1.removeWhere((element) => element == list1[i]);
                                                  // list1.remove(table![i]);

                                                  widget.listAssign!(list1);


                                                print(list1);
                                              },


                                            ),
                                            // Text(keys[i].key??"")



                                          ),
                                          TableCell(

                                              verticalAlignment: TableCellVerticalAlignment.middle,

                                              child:textPadding(table[i].name??"",
                                              height: 45)
                                              // Text(keys[i].value??"",)

                                          ),



                                        ]),
                                ],
                                //
                                // TableRow(
                                //     decoration: BoxDecoration(
                                //         color: Colors.grey
                                //             .shade200,
                                //         shape: BoxShape
                                //             .rectangle,
                                //         border:const  Border(
                                //             left: BorderSide(
                                //                 width: .5,
                                //                 color: Colors
                                //                     .grey,
                                //                 style: BorderStyle
                                //                     .solid),
                                //             bottom: BorderSide(
                                //                 width: .5,
                                //                 color: Colors
                                //                     .grey,
                                //                 style: BorderStyle
                                //                     .solid),
                                //             right: BorderSide(
                                //                 color: Colors
                                //                     .grey,
                                //                 width: .5,
                                //                 style: BorderStyle
                                //                     .solid))),
                                //     children: [
                                //
                                //       TableCell(
                                //         verticalAlignment: TableCellVerticalAlignment.middle,
                                //
                                //         child: UnderLinedInput(
                                //           onChanged: (va){
                                //             key.text=va;
                                //
                                //           },
                                //
                                //           formatter: false,
                                //
                                //         ),
                                //
                                //
                                //       ),
                                //       TableCell(
                                //         verticalAlignment: TableCellVerticalAlignment.middle,
                                //
                                //         child:
                                //
                                //         UnderLinedInput(
                                //           onChanged: (va){
                                //             value.text=va;
                                //           },
                                //           formatter: false,
                                //         ),
                                //
                                //
                                //       ),
                                //       TableTextButton(label: "", onPress: (){
                                //         if(key.text.isNotEmpty==true && value.text.isNotEmpty){
                                //           Keys model=Keys(
                                //             key: key.text??"",
                                //             value: value.text??'',
                                //           );
                                //           setState(() {
                                //             onChange=true;
                                //
                                //
                                //             keys?.add(model);
                                //
                                //
                                //             productFeatures?.add(ProductFeatures(
                                //
                                //                 keyValues: keys
                                //             ));
                                //             widget.productTableEdit(type:"3",list:productFeatures);
                                //             key.text="";
                                //             value.text="";
                                //           });
                                //
                                //
                                //
                                //
                                //         }
                                //
                                //       })
                                //
                                //
                                //     ])

                              ],
                              widths: {

                                0: FlexColumnWidth(2),
                                1: FlexColumnWidth(5),


                              },),


                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

// patch material
class PatchMaterialPopUp extends StatefulWidget {
  final String type;

  PatchMaterialPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _PatchMaterialPopUpState createState() => _PatchMaterialPopUpState();
}

class _PatchMaterialPopUpState extends State<PatchMaterialPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  MaterialReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<MaterialListCubit>().getMaterialList();
    super.initState();
  }

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
          create: (context) => MaterialcraetionCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialreadCubit, MaterialreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        descriptionContollercontroller.text =
                            data.description ?? "";
                        searchNamecontroller.text = data.searchNmae ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<MaterialListCubit>().getMaterialList();
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<MaterialListCubit, MaterialListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<MaterialreadCubit>()
                            .getMaterialRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    buttonCheck: true,
                    addNew: addNew,
                    label: "Create Material",
                    onApply: () {},
                    onEdit: () {
                      MaterialReadModel model = MaterialReadModel(
                        name: namecontroller?.text ?? "",
                        image: imageContollercontroller?.text ?? "",
                        description: descriptionContollercontroller?.text ?? "",
                        searchNmae: searchNamecontroller?.text ?? "",
                        isActive: active,
                      );
                      // print(model);
                      context
                          .read<MaterialcraetionCubit>()
                          .postmaterialPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "material");
                    },
                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialVerticalList(
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = false;

                                  context
                                      .read<MaterialreadCubit>()
                                      .getMaterialRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

// class CreateMaterialPopUp extends StatefulWidget {
//   final String type;
//
//
//   CreateMaterialPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _CreateMaterialPopUpState createState() => _CreateMaterialPopUpState();
// }
//
// class _CreateMaterialPopUpState extends State<CreateMaterialPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   MaterialReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController searchNamecontroller=TextEditingController();
//   TextEditingController imageContollercontroller=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   bool addNew = false;
//
//
//   void changeAddNew(bool va){addNew =va;
//   onChange=false;}
//   void initState() {
//     context
//         .read<MaterialListCubit>()
//         .getMaterialList();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     // descriptionController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].description == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].description);
//     // durationController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].duration == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].duration.toString());
//     return MultiBlocProvider(
//   providers: [
//     BlocProvider(
//   create: (context) => MaterialcraetionCubit(),
// ),    BlocProvider(
//       create: (context) => MaterialreadCubit(),
//     ),
//     BlocProvider(
//       create: (context) => MaterialdeleteCubit(),
//     ),
//
//   ],
//   child: Builder(
//         builder: (context) {
//           return MultiBlocListener(
//   listeners: [
//
//     BlocListener<ImagepostCubit, ImagepostState>(
//       listener: (context, state) {
//         print("postssssssss" + state.toString());
//         state.maybeWhen(orElse: () {
//           // context.
//           context.showSnackBarError("Loadingggg");
//         }, error: () {
//           context.showSnackBarError(Variable.errorMessege);
//         }, success: (data) {
//           if (data.data1) {
//             print("dataAkshay"+data.data2.toString());
//             imageContollercontroller.text=data.data2.toString();
//
//             // context.showSnackBarSuccess(data.data2);
//
//           }
//           else {
//             // context.showSnackBarError(data.data2);
//             // print(data.data1.toString());
//           }
//           ;
//         });
//       },
//     ),
//     BlocListener<MaterialreadCubit, MaterialreadState>(
//       listener: (context, state) {
//         print("nnnnop"+state.toString());
//         state.maybeWhen(
//             orElse: () {},
//             error: () {
//               print("error");
//             },
//             success: (data) {
//               setState(() {
//                 group=data;
//                 codeController.text=data.code??"";
//                 namecontroller.text=data.name??"";
//                 descriptionContollercontroller.text=data.description??"";
//                 searchNamecontroller.text=data.searchNmae??"";
//
//                 active=data.isActive??false;
//
//               });
//             });
//
//
//
//       },
//     ),
//     BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
//   listener: (context, state) {
//     print("postssssssss" + state.toString());
//     state.maybeWhen(orElse: () {
//       // context.
//       context.showSnackBarError("Loading");
//     }, error: () {
//       context.showSnackBarError(Variable.errorMessege);
//     }, success: (data) {
//       if (data.data1) {
//         context.showSnackBarSuccess(data.data2);
//
//       }
//       else {
//         context.showSnackBarError(data.data2);
//         print(data.data1);
//       }
//       ;
//     });
//   },
// ),
//     BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//       listener: (context, state) {
//         print("delete" + state.toString());
//         state.maybeWhen(orElse: () {
//           // context.
//           context.showSnackBarError("Loading");
//         }, error: () {
//           context.showSnackBarError(Variable.errorMessege);
//         }, success: (data) {
//           if (data.data1) {
//             context.showSnackBarSuccess(data.data2);
//
//           }
//           else {
//             context.showSnackBarError(data.data2);
//             print(data.data1);
//           }
//           ;
//         });
//       },
//     ),
//
//   ],
//   child: BlocConsumer<MaterialListCubit, MaterialListState>(
//             listener: (context, state) {
//               print("state"+state.toString());
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error");
//                   },
//                   success: (list) {
//                     print("aaaaayyyiram"+list.data.toString());
//
//                     result = list.data;
//                     setState(() {
//                       if(result.isNotEmpty){
//                         veritiaclid=result[0].id;
//                         // Variable.verticalid=result[0].id;
//                         print("Variable.ak"+Variable.verticalid.toString());
//                         context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
//                       }
//                       else{
//                         print("common");
//                         // select=true;
//                         setState(() {
//                         });
//
//                       }
//
//
//                       setState(() {});
//
//                     });
//                   });
//             },
//             builder: (context, state) {
//               return Builder(builder: (context) {
//
//                 if (!onChange) {
//                   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
//                   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
//                   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
//                   imageContollercontroller = TextEditingController(text: addNew ? "" : group?.image);
//                   searchNamecontroller = TextEditingController(text: addNew ? "" : group?.searchNmae);
//                   active=addNew?false:group?.isActive;
//                 }
//                 onChange = false;
//                 return AlertDialog(
//                   content: PopUpHeader(
//
//                     functionChane: true,
//                     onTap: () { addNew=!addNew;
//                     setState(() {
//
//                     });},
//                     isDirectCreate:true,
//                     addNew: addNew,
//
//                     label: "Create Material",
//                     onApply: () {
//                       MaterialCreationtModel model=MaterialCreationtModel(
//
//                         description: descriptionContollercontroller?.text??"",
//                         image:int.tryParse(imageContollercontroller.text),
//                         searchNmae: searchNamecontroller?.text??"",
//                         name: namecontroller?.text??"",
//                       );
//                       context.read<MaterialcraetionCubit>().postCreateMaterial(model);
//
//                       // widget.onTap();
//                       setState(() {
//
//                       });
//                     },
//                     onEdit: () {
//                       MaterialReadModel model=MaterialReadModel(
//
//                         name: namecontroller?.text??"",
//
//                         image:imageContollercontroller?.text??"",
//                         description: descriptionContollercontroller?.text??"",
//                         searchNmae: searchNamecontroller?.text??"",
//                         isActive: active,
//
//
//                       );
//                       // print(model);
//                       context.read<MaterialcraetionCubit>().postmaterialPatch(veritiaclid,model);
//
//
//                     },
//                     onCancel: (){
//                       context
//                           .read<MaterialdeleteCubit>()
//                           .materialDelete(veritiaclid,"material");
//
//                     },
//
//                     onAddNew: (v) {
//                       print("Akshay"+v.toString());
//                       changeAddNew(v);
//                       setState(() {});
//
//                       setState(() {});
//                     },
//                     dataField: Expanded(
//                       // height: MediaQuery.of(context).size.height * .6,
//                       child: IntrinsicHeight(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             MaterialVerticalList(
//
//                               selectedVertical: selectedVertical,
//                               itemsearch: itemsearch,ontap: (int index){
//                               setState(() {
//                                 selectedVertical=index;
//                                 addNew=false;
//                                 // select=false;
//                                 // updateCheck=false;
//
//
//                                 veritiaclid = result[index].id;
//                                 changer=false;
//
//                                 context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
//
//
//                                 setState(() {
//
//                                 });
//                               });
//                             },result: result,
//                             ),
//
//                             Expanded(child: Column(
//                               children: [
//                                 NewInputCard(
//                                     controller: codeController, title: "Code"),
//                                 gapWidthColumn(),
//                                 NewInputCard(
//                                   controller:namecontroller ,
//                                   title: "Name",
//                                 ),
//                                 gapWidthColumn(),
//                                 NewInputCard(
//                                   controller:searchNamecontroller ,
//                                   title: "Search Name",
//                                 ),
//
//
//
//
//                               ],
//                             )),
//
//                             Expanded(child:   Column(
//                               children: [
//                                 FileUploadField(
//
//                                     fileName: imageName,
//                                     fileUrl:imageName,
//                                     onChangeTap: (p0) {
//                                       onChange=true;
//                                       // loading = true;
//                                       setState(() {});
//                                     },
//                                     onChange: (myFile) {
//                                       onChange=true;
//
//                                       // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                       imageEncode =
//                                           myFile.toBase64();
//                                       // widget.fileMobileNameCtrl.text =
//                                       //     myFile.fileName ?? "";
//                                       // if (Variable.bannerimage!.length <= 240000)
//                                       context
//                                           .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
//                                       // else
//                                       //   context.showSnackBarError(
//                                       //       "Please upload Banner of size Lesser than 230kb");
//                                     },
//                                     onImageChange: (newFile) async {
//                                       onChange=true;
//                                       // Variable.popUp = false;
//
//                                       if (newFile.length <= 240000) {
//                                         // loading
//                                         //     ? showDailogPopUp(context, DialoguePopUp())
//                                         //     : Navigator.pop(context);
//                                         // context
//                                         //     .read<CreateWebImageCubit>()
//                                         //     .createMobImage();
//                                       } else
//                                         context.showSnackBarError(
//                                             "Please upload Banner of size Lesser than 230kb");
//                                       setState(() {});
//                                     },
//                                     onCreate: true,
//                                     label: "Image"),
//
//
//                                 SizedBox(height: 10,),
//                                 NewInputCard(
//                                   controller:descriptionContollercontroller,
//                                   title: "Description",
//                                 ),
//                                 SizedBox(height: 10,),
//
//
//
//                               ],
//                             )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               });
//             },
//           ),
// );
//         }
//     ),
// );
//   }
// }

class UOMGroupConfigurePopUp extends StatefulWidget {
  final String type;

  UOMGroupConfigurePopUp({Key? key, required this.type}) : super(key: key);

  @override
  State<UOMGroupConfigurePopUp> createState() => _UOMGroupConfigurePopUpState();
}

class _UOMGroupConfigurePopUpState extends State<UOMGroupConfigurePopUp> {
  TextEditingController nameContrlr = TextEditingController();

  TextEditingController codeContrlr = TextEditingController();

  TextEditingController idContrlr = TextEditingController();

  TextEditingController descContrlr = TextEditingController();

  TextEditingController displayContrlr = TextEditingController();

  TextEditingController alterContrlr = TextEditingController();
  TextEditingController shortContrlr = TextEditingController();

  bool isActive = true;
  bool addNew = false;

  void changeAddNew(bool va) => addNew = va;
  int? groupId;
  int? first;
  int selectedIndex = 0;
  String? groupName;
  bool onChange = false;

  // UOMGroup? group;
  @override
  void initState() {
    // Variable.bannerimage = null;
    // Variable.divisionValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      // if (!onChange) {
      //   nameContrlr =
      //       TextEditingController(text: addNew ? "" : group?.name);
      //   idContrlr = TextEditingController(
      //       text: addNew ? "" : group?.id.toString());
      //   codeContrlr =
      //       TextEditingController(text: addNew ? "" : group?.code);
      //   descContrlr =
      //       TextEditingController(text: addNew ? "" : group?.description);
      //   // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
      //   shortContrlr =
      //       TextEditingController(text: addNew ? "" : group?.shortName);
      // }
      onChange = false;
      // if (first != null && group == null) {
      //   selectedIndex = first!;
      //   context.read<ManageUomGroupCubit>()
      //     ..getUOMGroup(first.toString());
      // }

      return AlertDialog(
        content: PopUpHeader(
          onTap: () {
            addNew = !addNew;
            setState(() {});
          },
          onApply: () {
            // context.read<CreateUomGroupCubit>().createUOMGroup(UOMGroup(
            //     name: nameContrlr.text,
            //     description: descContrlr.text,
            //     image: null,
            //     isActive: true,
            //     shortName: shortContrlr.text));
          },
          onEdit: first == null
              ? null
              : () {
                  // context.read<ManageUomGroupCubit>().updateUOMGroup(
                  //     selectedIndex.toString(),
                  //     UOMGroup(
                  //       name: nameContrlr.text,
                  //       description: descContrlr.text,
                  //       id: int.tryParse(idContrlr.text),
                  //       code: codeContrlr.text,
                  //       image: null,
                  //       shortName: shortContrlr.text,
                  //       isActive: true,
                  //     ));
                },
          onAddNew: (v) {
            changeAddNew(v);
            setState(() {});
          },
          label: "UOMGroup List ",
          dataField: Expanded(
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ConfigureVerticalList(
                    //   type: widget.type,
                    //   refresh: () {
                    //     // print("on refresh");
                    //     setState(() {});
                    //   },
                    //   onClick: (UOMGroup v) {
                    //     group = v;
                    //     if (group?.id != selectedIndex) {
                    //       selectedIndex = group!.id!;
                    //
                    //       context.read<ManageUomGroupCubit>()
                    //         ..getUOMGroup(selectedIndex.toString());
                    //     }
                    //
                    //     // print(v);
                    //   },
                    // ),
                    gapWidthColumn(),
                    IntrinsicWidth(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            PopUpInputField(
                              label: "ID",
                              controller: idContrlr,
                              restricted: true,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Code",
                              controller: codeContrlr,
                              restricted: true,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Name",
                              controller: nameContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Description",
                              controller: descContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Short Name",
                              controller: shortContrlr,
                              required: true,
                              enable: true,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

//create division
class CreateDevisionPopUp extends StatefulWidget {
  final String type;

  CreateDevisionPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateDevisionPopUpState createState() => _CreateDevisionPopUpState();
}

class _CreateDevisionPopUpState extends State<CreateDevisionPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController displayContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context
    //     .read<DevisionListCubit>()
    //     .getDevisionList();
    super.initState();
  }

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
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<DivisioncreateCubit, DivisioncreateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    context.read<DevisionListCubit>().getDevisionList();
                    Navigator.pop(context);

                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<DevisionListCubit, DevisionListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        // context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"division");
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    isDirectCreate: true,
                    functionChane: true,
                    addNew: addNew,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    // isDirectCreate:changer,

                    label: "Create division",
                    onApply: () {
                      print("save");
                      MaterialCreationtModel model = MaterialCreationtModel(
                          description:
                              descriptionContollercontroller?.text ?? "",
                          image: int.tryParse(imageContollercontroller.text),
                          searchNmae: searchNamecontroller?.text ?? "",
                          name: namecontroller?.text ?? "",
                          displayName: displayContollercontroller.text ?? "",
                          status: "akskks");
                      print(model);
                      context
                          .read<DivisioncreateCubit>()
                          .postCreateDevision(model, "division");

                      // widget.onTap();
                    },
                    onEdit: () {
                      // DevisionReadModel model=DevisionReadModel(
                      //   name: namecontroller?.text??"",
                      //   image:imageContollercontroller?.text??"",
                      //   displayName: displayContollercontroller.text??"",
                      //   description: descriptionContollercontroller?.text??"",
                      //   searchNmae: searchNamecontroller?.text??"",
                      //   isActive: active,
                      // );
                      // // print(model);
                      // context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"division");
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"division");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: displayContollercontroller,
                                  title: "Dispaly Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      print("imabbabba" +
                                          Variable.imageName.toString());
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //
                                //       setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//patch division

class PatchDevisionPopUp extends StatefulWidget {
  final String type;

  PatchDevisionPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _PatchDevisionPopUpState createState() => _PatchDevisionPopUpState();
}

class _PatchDevisionPopUpState extends State<PatchDevisionPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController displayContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<DevisionListCubit>().getDevisionList();
    super.initState();
  }

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
          create: (context) => DivisionreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<DivisionreadCubit, DivisionreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        imageContollercontroller.text = data.image ?? "";
                        descriptionContollercontroller.text =
                            data.description ?? "";
                        searchNamecontroller.text = data.searchNmae ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<DivisioncreateCubit, DivisioncreateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<DevisionListCubit>().getDevisionList();
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  Navigator.pop(context);
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
          child: BlocConsumer<DevisionListCubit, DevisionListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<DivisionreadCubit>()
                            .getDivisionRead(veritiaclid!, "division");
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                // if (!onChange) {
                //   print("onchange"+onChange.toString());
                //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                //   imageContollercontroller = TextEditingController(text: addNew ? "" : group?.image);
                //   displayContollercontroller=TextEditingController(text: addNew ? "" : group?.displayName);
                //   searchNamecontroller = TextEditingController(text: addNew ? "" : group?.searchNmae);
                //   active=addNew?false:group?.isActive;
                // }
                // onChange = false;
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    functionChane: true,
                    addNew: addNew,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    // isDirectCreate:changer,

                    label: "Create division",
                    onApply: () {
                      // print("save");
                      // MaterialCreationtModel model=MaterialCreationtModel(
                      //
                      //     description: descriptionContollercontroller?.text??"",
                      //     image:int.tryParse(imageContollercontroller.text),
                      //     searchNmae: searchNamecontroller?.text??"",
                      //     name: namecontroller?.text??"",
                      //     displayName: displayContollercontroller.text??"",
                      //     status: "akskks"
                      // );
                      // print(model);
                      // context.read<DivisioncreateCubit>().postCreateDevision(model,"division");
                      //
                      // // widget.onTap();
                    },
                    onEdit: () {
                      DevisionReadModel model = DevisionReadModel(
                        name: namecontroller?.text ?? "",
                        image: imageContollercontroller?.text ?? "",
                        displayName: displayContollercontroller.text ?? "",
                        description: descriptionContollercontroller?.text ?? "",
                        searchNmae: searchNamecontroller?.text ?? "",
                        isActive: active,
                      );
                      print(model);
                      context
                          .read<DivisioncreateCubit>()
                          .postDivisionPatch(veritiaclid, model, "division");
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "division");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DebvisionVerticalList(
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = true;

                                  context
                                      .read<DivisionreadCubit>()
                                      .getDivisionRead(
                                          veritiaclid!, "division");

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                                NewInputCard(
                                  controller: displayContollercontroller,
                                  title: "Dispaly Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      print("imabbabba" +
                                          Variable.imageName.toString());
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//static creation+++++++++++++++++++++++++++++++++++++

class CreateStaticPopUp extends StatefulWidget {
  final String type;

  CreateStaticPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateStaticPopUpState createState() => _CreateStaticPopUpState();
}

class _CreateStaticPopUpState extends State<CreateStaticPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController displayContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    super.initState();
  }

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
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<DivisioncreateCubit, DivisioncreateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.read<ListstaticCubit>().getStaticList();
                    context.showSnackBarSuccess(data.data2);
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<ListstaticCubit, ListstaticState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        // context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create Static Group",
                    onApply: () {
                      print("save");
                      MaterialCreationtModel model = MaterialCreationtModel(
                        description: descriptionContollercontroller?.text ?? "",
                        image: int.tryParse(imageContollercontroller.text),
                        searchNmae: searchNamecontroller?.text ?? "",
                        name: namecontroller?.text ?? "",
                      );

                      context
                          .read<DivisioncreateCubit>()
                          .postCreateDevision(model, "static");

                      // widget.onTap();
                    },
                    onEdit: () {},
                    onCancel: () {},

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      print("imabbabba" +
                                          Variable.imageName.toString());
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //       if (!addNew) active = !active!;
                                //
                                //       // extendedWarranty = gg;
                                //       // widget.changeExtendedWarranty(gg);
                                //       // onChangeExtWarranty = gg;
                                //       setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class CreateFrameWorkPopUp extends StatefulWidget {
  final String type;

  CreateFrameWorkPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateFrameWorkPopUpState createState() => _CreateFrameWorkPopUpState();
}

class _CreateFrameWorkPopUpState extends State<CreateFrameWorkPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  VariantFrameWorkPostModel? group;
  int? veritiaclid = 0;
  var list;

  List<FrameWorkListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  TextEditingController categoryController = TextEditingController();
  TextEditingController categoryNameController = TextEditingController();
  int? categoryid;
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }
  @override
  void initState() {
    // if (costingTypeMethodeCheck != true)
      context.read<FrameworklistCubit>().getFrameWorklist();
    super.initState();
  }

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
          create: (context) => VariantframeworkpostCubit(),
        ),   BlocProvider(
          create: (context) => FrameworkreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
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


            BlocListener<FrameworkreadCubit, FrameworkreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("the frame work read"+data.toString());
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        table=data.lines??[];

                        descriptionContollercontroller.text =
                            data.description ?? "";


                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<VariantframeworkpostCubit, VariantframeworkpostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("here after  creation");

                    setState(() {
                      context.showSnackBarSuccess(data.data2);
                      context.read<FrameworklistCubit>().getFrameWorklist();
                      print("here after  creation next call");

                    });

                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<FrameworklistCubit, FrameworklistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        // if (costingTypeMethodeCheck != true)
                        // context.read<FrameworkreadCubit>().getFrameWorkRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: costingTypeMethodeCheck,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Variant FrameWork Code Details",
                    onApply: () {
                      print("save");
                      VariantFrameWorkPostModel model =
                          VariantFrameWorkPostModel(
                        description: descriptionContollercontroller?.text ?? "",
                        categoryId: categoryid,
                        variantListModel: table,
                        // image:int.tryParse(imageContollercontroller.text),
                        // searchNmae: searchNamecontroller?.text??"",
                        name: namecontroller?.text ?? "",
                      );
                      context
                          .read<VariantframeworkpostCubit>()
                          .postCreateFrameWork(model);

                      // widget.onTap();
                    },
                    onEdit: () {
                      VariantFrameWorkPostModel model =
                          VariantFrameWorkPostModel(
                        description: descriptionContollercontroller?.text ?? "",
                        categoryId: categoryid,
                        variantListModel: table,
                        isActive: active,
                        name: namecontroller?.text ?? "",
                      );
                      context
                          .read<VariantframeworkpostCubit>()
                          .postPatchFrameWork(model, veritiaclid);
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "framework_delete");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (costingTypeMethodeCheck != true)
                                    FrameWorkVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid = result[index].id;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context.read<FrameworkreadCubit>().getFrameWorkRead(veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  Expanded(
                                    child: Container(
                                        // height: 400,
                                      // width: 400,
                                      child: Column(
                                          children: [
                                            Container(
                                              // width: 400,
                                                height: 200,
                                                child:Row(
                                                  children: [
                                                    Expanded(

                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                              child: Column(
                                                                children: [
                                                                  NewInputCard(
                                                                      readOnly: true,
                                                                      controller: codeController,
                                                                      title: "Code"),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  NewInputCard(
                                                                    controller: namecontroller,
                                                                    title: "Name",
                                                                  ),
                                                                ],
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        child: Column(
                                                          children: [
                                                            NewInputCard(
                                                              controller:
                                                              descriptionContollercontroller,
                                                              title: "Description",
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            SelectableDropDownpopUp(
                                                              apiType: "all",
                                                              controller: categoryNameController,
                                                              label: "category",
                                                              type: "Category_PopUpCall",
                                                              value: categoryNameController.text,
                                                              onchange: (vale) {
                                                                // print("searching for search"+vale.toString());
                                                                // context.read<CategorylistCubit>().searchCategoryist(vale);
                                                              },
                                                              enable: true,
                                                              onSelection: (BrandListModel? va) {
                                                                setState(() {
                                                                  categoryNameController.text = va?.name ?? "";
                                                                  categoryController.text = va?.code ?? "";
                                                                  categoryid = va?.id;
                                                                  Variable.categoryId = va?.id;
                                                                  setState(() {});

                                                                  // onChange = true;
                                                                  // orderType.text = va!;
                                                                });
                                                              },
                                                              // onAddNew: () {
                                                              //   showDailogPopUp(
                                                              //     context,
                                                              //     ConfigurePopup(
                                                              //       type: "category_group",
                                                              //     ),
                                                              //   );
                                                              // },
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            PopUpSwitchTile(
                                                                value: active ?? false,
                                                                title: "isActive",
                                                                onClick: (gg) {
                                                                  onChange = true;
                                                                  if (!addNew) active = !active!;

                                                                  // extendedWarranty = gg;
                                                                  // widget.changeExtendedWarranty(gg);
                                                                  // onChangeExtWarranty = gg;
                                                                  setState(() {});
                                                                }),
                                                          ],
                                                        )),

                                                  ],
                                                )


                                            ),
                                            SizedBox(height: 10,),

                                            SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height:200,
                                                      // color: Colors.red,
                                                      child: VariantFrameWorkBottomTable(listAssign:listAssign,table:table)),
                                                ],
                                              ),
                                            ),

                                          ],
                                      ),
                                    ),
                                  ),
                                  // Expanded(
                                  //
                                  //   child: Column(
                                  //     children: [
                                  //       Expanded(
                                  //           child: Column(
                                  //         children: [
                                  //           NewInputCard(
                                  //               readOnly: true,
                                  //               controller: codeController,
                                  //               title: "Code"),
                                  //           SizedBox(
                                  //             height: 10,
                                  //           ),
                                  //           NewInputCard(
                                  //             controller: namecontroller,
                                  //             title: "Name",
                                  //           ),
                                  //         ],
                                  //       )),
                                  //     ],
                                  //   ),
                                  // ),
                                  // Expanded(
                                  //     child: Column(
                                  //   children: [
                                  //     NewInputCard(
                                  //       controller:
                                  //           descriptionContollercontroller,
                                  //       title: "Description",
                                  //     ),
                                  //     SizedBox(
                                  //       height: 10,
                                  //     ),
                                  //     SelectableDropDownpopUp(
                                  //       controller: categoryNameController,
                                  //       label: "category",
                                  //       type: "Category_PopUpCall",
                                  //       value: categoryNameController.text,
                                  //       onchange: (vale) {
                                  //         // print("searching for search"+vale.toString());
                                  //         // context.read<CategorylistCubit>().searchCategoryist(vale);
                                  //       },
                                  //       enable: true,
                                  //       onSelection: (BrandListModel? va) {
                                  //         setState(() {
                                  //           categoryNameController.text = va?.name ?? "";
                                  //           categoryController.text = va?.code ?? "";
                                  //           categoryid = va?.id;
                                  //           Variable.categoryId = va?.id;
                                  //           setState(() {});
                                  //
                                  //           // onChange = true;
                                  //           // orderType.text = va!;
                                  //         });
                                  //       },
                                  //       // onAddNew: () {
                                  //       //   showDailogPopUp(
                                  //       //     context,
                                  //       //     ConfigurePopup(
                                  //       //       type: "category_group",
                                  //       //     ),
                                  //       //   );
                                  //       // },
                                  //     ),
                                  //     SizedBox(
                                  //       height: 10,
                                  //     ),
                                  //     PopUpSwitchTile(
                                  //         value: active ?? false,
                                  //         title: "isActive",
                                  //         onClick: (gg) {
                                  //           onChange = true;
                                  //           if (!addNew) active = !active!;
                                  //
                                  //           // extendedWarranty = gg;
                                  //           // widget.changeExtendedWarranty(gg);
                                  //           // onChangeExtWarranty = gg;
                                  //           setState(() {});
                                  //         }),
                                  //   ],
                                  // )),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class CreateCostingMethodeTypePopUp extends StatefulWidget {
  final String type;

  CreateCostingMethodeTypePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateCostingMethodeTypePopUpState createState() =>
      _CreateCostingMethodeTypePopUpState();
}

bool costingTypeMethodeCheck = true;

class _CreateCostingMethodeTypePopUpState
    extends State<CreateCostingMethodeTypePopUp> {
  bool? active = costingTypeMethodeCheck != true?false:true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  int? veritiaclid = 0;
  CostingMetodTypePostModel? group;
  List<CostingMetodTypePostModel> result = [];

  TextEditingController itemsearch = TextEditingController();

  var list;
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = true;
  }

  void initState() {
    if (costingTypeMethodeCheck != true){ context.read<CostingtypelistCubit>().getCostingTypeList();}


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          create: (context) => CostingtypeCubit(),
        ),
        BlocProvider(
          create: (context) => DeletioncostingCubit(),
        ),
        BlocProvider(
          create: (context) => ReadcostingtypeCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadcostingtypeCubit, ReadcostingtypeState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.typeCode ?? "";
                        namecontroller.text = data.typeName ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<DeletioncostingCubit, DeletioncostingState>(
              listener: (context, state) {
                print("delete" + state.toString());
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
            BlocListener<CostingtypeCubit, CostingtypeState>(
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
                    context.read<CostingtypelistCubit>().getCostingTypeList();

                    Navigator.pop(context);
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<CostingtypelistCubit, CostingtypelistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        print("the deleting errpr" + result[0].id.toString());
                        veritiaclid = result[0].id;
                        // setState(() {
                        //
                        // });

                        // // Variable.verticalid=result[0].id;
                        // print("Variable.ak"+Variable.verticalid.toString());
                        if (costingTypeMethodeCheck != true)
                        context
                            .read<ReadcostingtypeCubit>()
                            .getCostMethodTypeRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: costingTypeMethodeCheck,

                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Costing Method Type Create",
                    onApply: () {
                      print("save");
                      // VariantFrameWorkPostModel model=VariantFrameWorkPostModel(
                      //
                      //   description: descriptionContollercontroller?.text??"",
                      //   categoryId:categoryid,
                      //   variantListModel:table ,
                      //   // image:int.tryParse(imageContollercontroller.text),
                      //   // searchNmae: searchNamecontroller?.text??"",
                      //   name: namecontroller?.text??"",
                      // );
                      context.read<CostingtypeCubit>().postCreateCostingType(


                          namecontroller.text,
                          descriptionContollercontroller.text,
                          "afy",);

                      // widget.onTap();
                    },
                    onEdit: () {
                      context.read<CostingtypeCubit>().postPatchCostingType(
                          veritiaclid,
                          namecontroller.text,
                          descriptionContollercontroller.text,
                          "afy",
                          active);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "1");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   color: Colors.red,
                                //   width: 300,
                                // ),

                                // if(costingTypeMethodeCheck==true)
                                //

                                if (costingTypeMethodeCheck != true)
                                  Container(
                                    // width: width * .112,
                                    height: 400,
                                    child: CostingTypeVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid = result[index].id;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<ReadcostingtypeCubit>()
                                                .getCostMethodTypeRead(
                                                    veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  ),

                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),

                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller:
                                          descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    PopUpSwitchTile(
                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                          if (costingTypeMethodeCheck != true) active = !active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // VariantFrameWorkBottomTable(listAssign:listAssign),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class CreateCostingMethodeCreatePopUp extends StatefulWidget {
  final String type;

  CreateCostingMethodeCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateCostingMethodeCreatePopUpState createState() =>
      _CreateCostingMethodeCreatePopUpState();
}

class _CreateCostingMethodeCreatePopUpState
    extends State<CreateCostingMethodeCreatePopUp> {
  bool? active = costingTypeMethodeCheck != true?false:true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  CostingCreatePostModel? group;
  int? veritiaclid = 0;
  int? typeId;
  List<CostingCreatePostModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController costingMethodcontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    if (costingTypeMethodeCheck != true)
      context.read<CostingcreatelistCubit>().getCostingCreateList();

    super.initState();
  }

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
          create: (context) => CostingtypeCubit(),
        ),
        BlocProvider(
          create: (context) => ReadcostingCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadcostingCubit, ReadcostingState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.methodCode ?? "";
                        namecontroller.text = data.methodName ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<CostingtypeCubit, CostingtypeState>(
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
                    context.read<CostingcreatelistCubit>().getCostingCreateList();
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<CostingcreatelistCubit, CostingcreatelistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        if (costingTypeMethodeCheck != true)   context
                            .read<ReadcostingCubit>()
                            .getCostMethodRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: costingTypeMethodeCheck,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Costing Method  Create",
                    onApply: () {
                      print("save");
                      // VariantFrameWorkPostModel model=VariantFrameWorkPostModel(
                      //
                      //   description: descriptionContollercontroller?.text??"",
                      //   categoryId:categoryid,
                      //   variantListModel:table ,
                      //   // image:int.tryParse(imageContollercontroller.text),
                      //   // searchNmae: searchNamecontroller?.text??"",
                      //   name: namecontroller?.text??"",
                      if(typeId==null){
                        Navigator.pop(context);
                        context.showSnackBarError("plaease select costing type");
                      }
                      else{
                        context.read<CostingtypeCubit>().postCreateCostingType(
                            namecontroller.text,
                            descriptionContollercontroller.text,
                            "afy",
                            id: typeId);
                      }
                      // );


                      // widget.onTap();
                    },
                    onEdit: () {
                      context.read<CostingtypeCubit>().postPatchCostingCreate(
                          veritiaclid,
                          namecontroller.text,
                          descriptionContollercontroller.text,
                          "afy",
                          active);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "2");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (costingTypeMethodeCheck != true)
                                  Container(
                                    // width: width * .112,
                                    height: 400,
                                    child: CostingCreateVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid = result[index].id;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<ReadcostingCubit>()
                                                .getCostMethodRead(
                                                    veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    SelectableDropDownpopUp(
                                      // bindType: "static",
                                      controller: costingMethodcontroller,
                                      label: "Costing Method Type Id",
                                      type: "CostingMethodTypePopUpCall",
                                      value: costingMethodcontroller.text,
                                      onchange: (vale) {
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection:
                                          (CostingMetodTypePostModel? va) {
                                        setState(() {
                                          costingMethodcontroller.text =
                                              va?.typeName ?? "";
                                          typeId = va?.id;
                                          setState(() {});

                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                      onAddNew: () {
                                        setState(() {
                                          costingTypeMethodeCheck = true;
                                        });

                                        showDailogPopUp(
                                          context,
                                          ConfigurePopup(
                                            type: "create_costingtype",
                                          ),
                                        );
                                      },
                                    ),
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller:
                                          descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    PopUpSwitchTile(
                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                          if (costingTypeMethodeCheck != true) active = !active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // VariantFrameWorkBottomTable(listAssign:listAssign),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class PricingGroupCreatePopUp extends StatefulWidget {
  final String type;

  PricingGroupCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _PricingGroupCreatePopUp createState() => _PricingGroupCreatePopUp();
}

class _PricingGroupCreatePopUp extends State<PricingGroupCreatePopUp> {
  bool? active =costingTypeMethodeCheck != true? false:true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  PricingGroupListModel? group;
  int? veritiaclid = 0;
  int? typeId;
  List<PricingGroupListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController costingMethodcontroller = TextEditingController();
  TextEditingController customerGroupcontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    if (costingTypeMethodeCheck != true)
      context.read<PricingroupcreateCubit>().getPricingGroupList();

    super.initState();
  }

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
          create: (context) => CostingtypeCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppostCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppatchCubit(),
        ),
        BlocProvider(
          create: (context) => ReadpricingroupreadCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadpricingroupreadCubit, ReadpricingroupreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.pricingTypeCode ?? "";
                        namecontroller.text = data.pricingTypeName ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<PricinggrouppostCubit, PricinggrouppostState>(
              listener: (context, state) {
                print("chaps" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  // Navigator.pop(context);

                  if (data.data1) {

                    setState(() {
                      context.showSnackBarSuccess(data.data2);
                    });


                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);  Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<PricinggrouppatchCubit, PricinggrouppatchState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  Navigator.pop(context);  Navigator.pop(context);
                  if (data.data1) {

                    context.showSnackBarSuccess(data.data2);
                    // Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<PricingroupcreateCubit, PricingroupcreateState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        if (costingTypeMethodeCheck != true) context
                            .read<ReadpricingroupreadCubit>()
                            .getPricingRead(veritiaclid);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: costingTypeMethodeCheck,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Pricing Typoe Create",
                    onApply: () {
                      print("save");
                      // VariantFrameWorkPostModel model=VariantFrameWorkPostModel(
                      //
                      //   description: descriptionContollercontroller?.text??"",
                      //   categoryId:categoryid,
                      //   variantListModel:table ,
                      //   // image:int.tryParse(imageContollercontroller.text),
                      //   // searchNmae: searchNamecontroller?.text??"",
                      //   name: namecontroller?.text??"",
                      // );
                      PricingGroupListModel model = PricingGroupListModel(
                          pricingTypeName: namecontroller.text,
                          description: descriptionContollercontroller.text,
                          createdBy: "afy");
                      context
                          .read<PricinggrouppostCubit>()
                          .postPricingGroupType(model, type: 1);

                      // widget.onTap();
                    },
                    onEdit: () {
                      PricingGroupListModel model = PricingGroupListModel(
                        pricingTypeName: namecontroller.text,
                        description: descriptionContollercontroller.text,
                        createdBy: "afy",
                        isActive: active,
                      );
                      context
                          .read<PricinggrouppatchCubit>()
                          .patchPricingGroupType(model, veritiaclid, type: 1);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "3");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (costingTypeMethodeCheck != true)
                                  Container(
                                    // width: width * .112,
                                    height: 400,
                                    child: PricingGroupVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid = result[index].id;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<
                                                    ReadpricingroupreadCubit>()
                                                .getPricingRead(veritiaclid);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller:
                                          descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    PopUpSwitchTile(
                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                         if( costingTypeMethodeCheck != true) active = !active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // VariantFrameWorkBottomTable(listAssign:listAssign),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class PricingCreatePopUp extends StatefulWidget {
  final String type;

  PricingCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _PricingCreatePopUp createState() => _PricingCreatePopUp();
}

class _PricingCreatePopUp extends State<PricingCreatePopUp> {
  bool? active =   costingTypeMethodeCheck != true? false:true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  PricingTypeListModel? group;
  int? veritiaclid = 0;
  int? typeId;
  List<PricingTypeListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController customerGroup = TextEditingController();
  TextEditingController costingMethodcontroller = TextEditingController();
  TextEditingController customerGroupcontroller = TextEditingController();
  TextEditingController pricingTypecontroller = TextEditingController();
  TextEditingController pricingTypeNamecontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    if (costingTypeMethodeCheck != true)
      context.read<PricinglistCubit>().getPricingList();

    super.initState();
  }

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
          create: (context) => CostingtypeCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppostCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppatchCubit(),
        ),
        BlocProvider(
          create: (context) => PricingreadCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<PricingreadCubit, PricingreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.pricingCroupCode ?? "";
                        namecontroller.text = data.pricingGroupName ?? "";
                        pricingTypecontroller.text = data.pricingTypeId.toString() ?? "";
                        pricingTypeNamecontroller.text = data.pricingGroupName.toString() ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<PricinggrouppostCubit, PricinggrouppostState>(
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
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<PricinggrouppatchCubit, PricinggrouppatchState>(
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
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<PricinglistCubit, PricinglistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].pricingTypeId;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<PricingreadCubit>()
                            .getPricingGroupRead(veritiaclid);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    isDirectCreate: costingTypeMethodeCheck,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Pricing Group Create",
                    onApply: () {
                      print("save");
                      // VariantFrameWorkPostModel model=VariantFrameWorkPostModel(
                      //
                      //   description: descriptionContollercontroller?.text??"",
                      //   categoryId:categoryid,
                      //   variantListModel:table ,
                      //   // image:int.tryParse(imageContollercontroller.text),
                      //   // searchNmae: searchNamecontroller?.text??"",
                      //   name: namecontroller?.text??"",
                      // );
                      PricingTypeListModel model = PricingTypeListModel(
                        pricingTypeId: int.tryParse(pricingTypecontroller.text),
                        pricingGroupName: namecontroller.text,
                        customerGrouCode: customerGroupcontroller.text,
                        description: descriptionContollercontroller.text,
                        createdBy: "afy",
                        isActive: active,
                      );
                      context
                          .read<PricinggrouppostCubit>()
                          .postPricingGroup(model, type: 1);

                      // widget.onTap();
                    },
                    onEdit: () {
                      PricingTypeListModel model = PricingTypeListModel(
                        pricingTypeId: int.tryParse(pricingTypecontroller.text),
                        pricingGroupName: namecontroller.text,
                        customerGrouCode: customerGroupcontroller.text,
                        description: descriptionContollercontroller.text,
                        createdBy: "afy",
                        isActive: active,
                      );
                      context
                          .read<PricinggrouppatchCubit>()
                          .patchPricingGroup(model, veritiaclid);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "4");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (costingTypeMethodeCheck != true)
                                  Container(
                                    // width: width * .112,
                                    height: 400,
                                    child: PricingVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid =
                                              result[index].pricingTypeId;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<PricingreadCubit>()
                                                .getPricingGroupRead(
                                                    veritiaclid);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    SelectableDropDownpopUp(
                                      controller: pricingTypeNamecontroller,
                                      label: "Pricing Type Id",
                                      type: "Pricing_GroupPopUpCall",
                                      value: pricingTypeNamecontroller.text,
                                      onchange: (vale) {
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (PricingGroupListModel? va) {
                                        setState(() {
                                          costingTypeMethodeCheck = true;
                                        });
                                        setState(() {
                                          pricingTypecontroller.text = va?.id.toString() ?? "";
                                          pricingTypeNamecontroller.text = va?.pricingTypeName.toString() ?? "";
                                          setState(() {});

                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                      onAddNew: () {
                                        costingTypeMethodeCheck = true;
                                        showDailogPopUp(
                                          context,
                                          ConfigurePopup(
                                            type: "create_pricing",
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                        readOnly: true,
                                        controller: customerGroup,
                                        title: "Customer Group"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),

                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller:
                                          descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    PopUpSwitchTile(
                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                          if (costingTypeMethodeCheck != true)active = !active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // VariantFrameWorkBottomTable(listAssign:listAssign),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}


class LinkedItemCreatePopUp extends StatefulWidget {
  final String type;
  final int? veritiaclid;

  LinkedItemCreatePopUp({
    Key? key,
    required this.type,
    this.veritiaclid
  }) : super(key: key);

  @override
  _LinkedItemCreatePopUp createState() => _LinkedItemCreatePopUp();
}

class _LinkedItemCreatePopUp extends State<LinkedItemCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  LinkedItemPostModel? group;
  int? veritiaclid = 0;
  int? typeId;

  List<LinkedItemListIdModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController customerGroup = TextEditingController();
  TextEditingController costingMethodcontroller = TextEditingController();
  TextEditingController customerGroupcontroller = TextEditingController();
  TextEditingController pricingTypecontroller = TextEditingController();

  TextEditingController descriptionContollercontroller = TextEditingController();
  List<LinkedItemListModel>?table=[];
  bool addNew = false;


  listAssign(List<LinkedItemListIdModel> list) {
    table!.clear();
    // onChange = true;
    setState(() {
      print("the list is here"+list.toString());
      if(list.isNotEmpty){
        for(var i=0;i<list.length;i++){
          table?.add(LinkedItemListModel(id: list[i].id,code: list[i].code,name:  list[i].name
          ));
        }
      }
    //
    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
  GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    if (costingTypeMethodeCheck != true)
      context.read<LinkedlistverticallistCubit>().getLinkedItemList();

    super.initState();
  }

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
          create: (context) => CostingtypeCubit(),
        ),
        BlocProvider(
          create: (context) => CreatelinkeditemCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppatchCubit(),
        ),
        BlocProvider(
          create: (context) => ReadlinkeditemCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadlinkeditemCubit, ReadlinkeditemState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("the data is here");
                        group = data;
                        // codeController.text = data.pricingCroupCode ?? "";
                        titleController.text = data.title ?? "";
                        descriptionContollercontroller.text = data.description ?? "";
                        table=data.linkedItemListModel;

                        // pricingTypecontroller.text =
                        //     data.pricingTypeId.toString() ?? "";
                        //
                        // descriptionContollercontroller.text =
                        //     data.description ?? "";
                        //
                        // active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<CreatelinkeditemCubit, CreatelinkeditemState>(
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
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<PricinggrouppatchCubit, PricinggrouppatchState>(
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
                    Navigator.pop(context);
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<LinkedlistverticallistCubit, LinkedlistverticallistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        // print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<ReadlinkeditemCubit>()
                            .getLinkedItem(veritiaclid);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                // double w=Med
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,

                    isDirectCreate: costingTypeMethodeCheck,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Linked Item",
                    onApply: () {
                      print("save");

                      LinkedItemPostModel model = LinkedItemPostModel(
                        variantId:widget.veritiaclid,
                        inventoryId: Variable.inventory_ID,
                        title: titleController.text
                        ,
                        linkedItemListModel:table ,
                        description: descriptionContollercontroller.text,

                      );
                      print("the model is"+model.toString());
                      context
                          .read<CreatelinkeditemCubit>()
                          .postLinkedItem(model);

                      // widget.onTap();
                    },
                    onEdit: () {
                      LinkedItemPostModel model = LinkedItemPostModel(
                        title: titleController.text,
                        linkedItemListModel: table,

                        description: descriptionContollercontroller.text,

                        isActive: active,
                      );
                      print("the model is"+model.toString());
                      context
                          .read<CreatelinkeditemCubit>()
                          .patchLinkedItem(veritiaclid,model);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "5");
                    },

                    onAddNew: (v) {},
                    dataField:
                    Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (costingTypeMethodeCheck != true)
                                  Container(
                                    // width: width * .112,
                                    height: 400,
                                    child: LinkedItemVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;

                                          // select=false;
                                          // clear();
                                          // exportCheck=false;
                                          // addNew=true;

                                          // updateCheck=false;
                                          // print("rijina" +
                                          //     // result[index].id.toString());

                                          veritiaclid =
                                              result[index].id;
                                          // clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<ReadlinkeditemCubit>()
                                                .getLinkedItem(veritiaclid);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        // print(va);
                                        // context
                                        //     .read<ListvraiantCubit>()
                                        //     .getSearchVariantList(va);
                                        // if (va == "") {
                                        //   context
                                        //       .read<ListvraiantCubit>()
                                        //       .getVariantList();
                                        // }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(

                                        // height: 300,
                                        width:  costingTypeMethodeCheck != true? MediaQuery.of(context).size.width/3.15: MediaQuery.of(context).size.width/3.15,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Column(
                                                  children: [


                                                    NewInputCard(

                                                        controller: titleController,
                                                        title: "title"),
                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    PopUpSwitchTile(
                                                        value: active ?? false,
                                                        title: "isActive",
                                                        onClick: (gg) {
                                                          onChange = true;
                                                          if (!addNew) active = !active!;

                                                          // extendedWarranty = gg;
                                                          // widget.changeExtendedWarranty(gg);
                                                          // onChangeExtWarranty = gg;
                                                          setState(() {});
                                                        }),


                                                  ],
                                                )),
                                            Expanded(
                                                child: Column(
                                                  children: [
                                                    NewInputCard(
                                                      controller:
                                                      descriptionContollercontroller,
                                                      title: "Description",
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    TextButtonLarge(onPress: (){

                                                      showDailogPopUp(
                                                        context,
                                                        ConfigurePopup(
                                                          listAssign:listAssign,
                                                          type: "CreateSearchLinkedItem-group",
                                                        ),


                                                      );





                                                    },text: "choose",)

                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width/3.15,
                                        // width: w/7,
                                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
                                        child: customTable(

                                          border: const TableBorder(

                                            verticalInside: BorderSide(
                                                width:.5,
                                                color: Colors.black45,
                                                style: BorderStyle.solid),
                                            horizontalInside: BorderSide(
                                                width:.3,
                                                color: Colors.black45,
                                                // color: Colors.blue,
                                                style: BorderStyle.solid),),

                                          tableWidth: .5,

                                          childrens:[
                                            TableRow(

                                              // decoration: BoxDecoration(

                                              //     color: Colors.green.shade200,

                                              //     shape: BoxShape.rectangle,

                                              //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                              children: [




                                                tableHeadtext(
                                                  'Item Name',
                                                  // textColor: Colors.black,
                                                  padding: EdgeInsets.all(7),
                                                  height: 46,
                                                  size: 13,
                                                  // color: Color(0xffE5E5E5),
                                                ),
                                                tableHeadtext(

                                                  '',

                                                  padding: EdgeInsets.all(7),

                                                  height: 46,
                                                  // textColor: Colors.black,
                                                  // color: Color(0xffE5E5E5),

                                                  size: 13,


                                                ),
                                                // tableHeadtext(
                                                //   '',
                                                //   textColor: Colors.black,
                                                //   padding: EdgeInsets.all(7),
                                                //   height: 46,
                                                //   size: 13,
                                                //   // color: Color(0xffE5E5E5),
                                                // ),



                                              ],

                                            ),
                                            if(table!.isEmpty)...[
                                              TableRow(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey
                                                          .shade200,
                                                      shape: BoxShape
                                                          .rectangle,
                                                      border:const  Border(
                                                          left: BorderSide(
                                                              width: .5,
                                                              color: Colors
                                                                  .grey,
                                                              style: BorderStyle
                                                                  .solid),
                                                          bottom: BorderSide(
                                                              width: .5,
                                                              color: Colors
                                                                  .grey,
                                                              style: BorderStyle
                                                                  .solid),
                                                          right: BorderSide(
                                                              color: Colors
                                                                  .grey,
                                                              width: .5,
                                                              style: BorderStyle
                                                                  .solid))),
                                                  children: [
                                                    TableCell(

                                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                                        child:Container(
                                                          height: 44,
                                                        )

                                                      // Text(keys[i].value??"",)

                                                    ),

                                                    TableCell(
                                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                                        child:textPadding("")
                                                      // CustomCheckBox(
                                                      //   key: UniqueKey(),
                                                      //   value: list1.contains(table![i]),
                                                      //   onChange: (p0) {
                                                      //     if (p0)
                                                      //       list1.add(LinkedItemListIdModel(id:table![i].id,name: table[i].name ));
                                                      //     else
                                                      //       list1.removeWhere((element) => element == list1[i]);
                                                      //     list1.remove(table![i]);
                                                      //
                                                      //     widget.listAssign!(list1);
                                                      //
                                                      //
                                                      //     print(list1);
                                                      //   },
                                                      //
                                                      //
                                                      // ),
                                                      // Text(keys[i].key??"")



                                                    ),




                                                  ]),

                                            ],


                                            if (table?.isNotEmpty==true ) ...[


                                              for (var i = 0; i <table!.length; i++)



                                                TableRow(
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey
                                                            .shade200,
                                                        shape: BoxShape
                                                            .rectangle,
                                                        border:const  Border(
                                                            left: BorderSide(
                                                                width: .5,
                                                                color: Colors
                                                                    .grey,
                                                                style: BorderStyle
                                                                    .solid),
                                                            bottom: BorderSide(
                                                                width: .5,
                                                                color: Colors
                                                                    .grey,
                                                                style: BorderStyle
                                                                    .solid),
                                                            right: BorderSide(
                                                                color: Colors
                                                                    .grey,
                                                                width: .5,
                                                                style: BorderStyle
                                                                    .solid))),
                                                    children: [
                                                      TableCell(

                                                          verticalAlignment: TableCellVerticalAlignment.middle,

                                                          child:textPadding(table?[i].name??"",
                                                              height: 45)
                                                        // Text(keys[i].value??"",)

                                                      ),

                                                      TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,

                                                          child:TableTextButton(onPress: (){
                                                            setState(() {
                                                              table?.removeWhere((element) => element == table?[i]);
                                                            });


                                                          },
                                                            label: "",
                                                          )
                                                        // CustomCheckBox(
                                                        //   key: UniqueKey(),
                                                        //   value: list1.contains(table![i]),
                                                        //   onChange: (p0) {
                                                        //     if (p0)
                                                        //       list1.add(LinkedItemListIdModel(id:table![i].id,name: table[i].name ));
                                                        //     else
                                                        //       list1.removeWhere((element) => element == list1[i]);
                                                        //     list1.remove(table![i]);
                                                        //
                                                        //     widget.listAssign!(list1);
                                                        //
                                                        //
                                                        //     print(list1);
                                                        //   },
                                                        //
                                                        //
                                                        // ),
                                                        // Text(keys[i].key??"")



                                                      ),




                                                    ]),
                                            ],

                                            //
                                            // TableRow(
                                            //     decoration: BoxDecoration(
                                            //         color: Colors.grey
                                            //             .shade200,
                                            //         shape: BoxShape
                                            //             .rectangle,
                                            //         border:const  Border(
                                            //             left: BorderSide(
                                            //                 width: .5,
                                            //                 color: Colors
                                            //                     .grey,
                                            //                 style: BorderStyle
                                            //                     .solid),
                                            //             bottom: BorderSide(
                                            //                 width: .5,
                                            //                 color: Colors
                                            //                     .grey,
                                            //                 style: BorderStyle
                                            //                     .solid),
                                            //             right: BorderSide(
                                            //                 color: Colors
                                            //                     .grey,
                                            //                 width: .5,
                                            //                 style: BorderStyle
                                            //                     .solid))),
                                            //     children: [
                                            //
                                            //       TableCell(
                                            //         verticalAlignment: TableCellVerticalAlignment.middle,
                                            //
                                            //         child: UnderLinedInput(
                                            //           onChanged: (va){
                                            //             key.text=va;
                                            //
                                            //           },
                                            //
                                            //           formatter: false,
                                            //
                                            //         ),
                                            //
                                            //
                                            //       ),
                                            //       TableCell(
                                            //         verticalAlignment: TableCellVerticalAlignment.middle,
                                            //
                                            //         child:
                                            //
                                            //         UnderLinedInput(
                                            //           onChanged: (va){
                                            //             value.text=va;
                                            //           },
                                            //           formatter: false,
                                            //         ),
                                            //
                                            //
                                            //       ),
                                            //       TableTextButton(label: "", onPress: (){
                                            //         if(key.text.isNotEmpty==true && value.text.isNotEmpty){
                                            //           Keys model=Keys(
                                            //             key: key.text??"",
                                            //             value: value.text??'',
                                            //           );
                                            //           setState(() {
                                            //             onChange=true;
                                            //
                                            //
                                            //             keys?.add(model);
                                            //
                                            //
                                            //             productFeatures?.add(ProductFeatures(
                                            //
                                            //                 keyValues: keys
                                            //             ));
                                            //             widget.productTableEdit(type:"3",list:productFeatures);
                                            //             key.text="";
                                            //             value.text="";
                                            //           });
                                            //
                                            //
                                            //
                                            //
                                            //         }
                                            //
                                            //       })
                                            //
                                            //
                                            //     ])

                                          ],
                                          widths: {

                                            0: FlexColumnWidth(5),
                                            1: FlexColumnWidth(2),


                                          },),


                                      ),

                                    ],


                                  ),
                                ),
                                // Expanded(
                                //     child: Column(
                                //       children: [
                                //
                                //
                                //         NewInputCard(
                                //             readOnly: true,
                                //             controller: titleController,
                                //             title: "title"),
                                //         SizedBox(
                                //           height: 10,
                                //         ),
                                //
                                //         PopUpSwitchTile(
                                //             value: active ?? false,
                                //             title: "isActive",
                                //             onClick: (gg) {
                                //               onChange = true;
                                //               if (!addNew) active = !active!;
                                //
                                //               // extendedWarranty = gg;
                                //               // widget.changeExtendedWarranty(gg);
                                //               // onChangeExtWarranty = gg;
                                //               setState(() {});
                                //             }),
                                //
                                //
                                //       ],
                                //     )),
                                // Expanded(
                                //     child: Column(
                                //       children: [
                                //         NewInputCard(
                                //           controller:
                                //           descriptionContollercontroller,
                                //           title: "Description",
                                //         ),
                                //         SizedBox(
                                //           height: 10,
                                //         ),
                                //         TextButtonLarge(onPress: (){
                                //
                                //             showDailogPopUp(
                                //               context,
                                //               ConfigurePopup(
                                //                 listAssign:listAssign,
                                //                 type: "CreateSearchLinkedItem-group",
                                //               ),
                                //
                                //
                                //             );
                                //
                                //
                                //
                                //
                                //
                                //         },text: "choose",)
                                //
                                //       ],
                                //     )),
                              ],
                            ),

                            
                            // VariantFrameWorkBottomTable(listAssign:listAssign),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}









class PatchStaticPopUp extends StatefulWidget {
  final String type;

  PatchStaticPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _PatchStaticPopUpState createState() => _PatchStaticPopUpState();
}

class _PatchStaticPopUpState extends State<PatchStaticPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController displayContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<ListstaticCubit>().getStaticList();
    super.initState();
  }

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
          create: (context) => DivisionreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageContollercontroller.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<DivisionreadCubit, DivisionreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        imageContollercontroller.text = data.image ?? "";
                        descriptionContollercontroller.text =
                            data.description ?? "";
                        searchNamecontroller.text = data.searchNmae ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<DivisioncreateCubit, DivisioncreateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<DevisionListCubit>().getDevisionList();
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
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
          child: BlocConsumer<ListstaticCubit, ListstaticState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<DivisionreadCubit>()
                            .getDivisionRead(veritiaclid!, "static");
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,

                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create Static Group",
                    onApply: () {},
                    onEdit: () {
                      DevisionReadModel model = DevisionReadModel(
                        name: namecontroller?.text ?? "",
                        image: imageContollercontroller?.text ?? "",
                        description: descriptionContollercontroller?.text ?? "",
                        searchNmae: searchNamecontroller?.text ?? "",
                        isActive: active,
                      );
                      print("Rijina" + model.toString());
                      context
                          .read<DivisioncreateCubit>()
                          .postDivisionPatch(veritiaclid, model, "static");
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "static");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StaticVerticalList(
                              type: "static",
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = true;

                                  context
                                      .read<DivisionreadCubit>()
                                      .getDivisionRead(veritiaclid!, "static");

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      print("imabbabba" +
                                          Variable.imageName.toString());
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

// class CreateStaticPopUp extends StatefulWidget {
//   final String type;
//
//
//   CreateStaticPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _CreateStaticPopUpState createState() => _CreateStaticPopUpState();
// }
//
// class _CreateStaticPopUpState extends State<CreateStaticPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   DevisionReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController searchNamecontroller=TextEditingController();
//   TextEditingController imageContollercontroller=TextEditingController();
//   TextEditingController displayContollercontroller=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   bool addNew = false;
//
//   final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
//   void changeAddNew(bool va) { addNew = va;
//   onChange=false;
//   }
//   void initState() {
//     context.read<ListstaticCubit>().getStaticList();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     // descriptionController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].description == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].description);
//     // durationController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].duration == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].duration.toString());
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => DivisionreadCubit(),
//         ),
//         BlocProvider(
//           create: (context) => MaterialdeleteCubit(),
//         ),
//         BlocProvider(
//           create: (context) => DivisioncreateCubit(),
//         ),
//
//       ],
//       child: Builder(
//           builder: (context) {
//             return MultiBlocListener(
//               listeners: [
//
//                 BlocListener<ImagepostCubit, ImagepostState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         print("dataAkshay"+data.data2.toString());
//                         imageContollercontroller.text=data.data2.toString();
//
//                         // context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         // context.showSnackBarError(data.data2);
//                         // print(data.data1.toString());
//                       }
//                       ;
//                     });
//                   },
//                 ),
//                 BlocListener<DivisionreadCubit, DivisionreadState>(
//                   listener: (context, state) {
//                     print("nnnnop"+state.toString());
//                     state.maybeWhen(
//                         orElse: () {},
//                         error: () {
//                           print("error");
//                         },
//                         success: (data) {
//                           setState(() {
//                             group=data;
//                             codeController.text=data.code??"";
//                             namecontroller.text=data.name??"";
//                             imageContollercontroller.text=data.image??"";
//                             descriptionContollercontroller.text=data.description??"";
//                             searchNamecontroller.text=data.searchNmae??"";
//
//                             active=data.isActive??false;
//
//                           });
//                         });
//
//
//
//                   },
//                 ),
//                 BlocListener<DivisioncreateCubit, DivisioncreateState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//                         context
//                             .read<DevisionListCubit>()
//                             .getDevisionList();
//                         setState(() {
//
//                         });
//
//                       }
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//                 BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//                   listener: (context, state) {
//                     print("delete" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//
//
//               ],
//               child: BlocConsumer<ListstaticCubit, ListstaticState>(
//                 listener: (context, state) {
//                   print("state"+state.toString());
//                   state.maybeWhen(
//                       orElse: () {},
//                       error: () {
//                         print("error");
//                       },
//                       success: (list) {
//                         print("aaaaayyyiram"+list.data.toString());
//
//                         result = list.data;
//                         print("seee"+result.toString());
//                         setState(() {
//                           if(result.isNotEmpty){
//
//                             veritiaclid=result[0].id;
//                             // Variable.verticalid=result[0].id;
//                             print("Variable.ak"+Variable.verticalid.toString());
//                             context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
//                           }
//                           else{
//                             print("common");
//                             // select=true;
//                             setState(() {
//                             });
//
//                           }
//
//
//                           setState(() {});
//
//                         });
//                       });
//                 },
//                 builder: (context, state) {
//                   return Builder(builder: (context) {
//
//
//                     return AlertDialog(
//                       content: PopUpHeader(
//                         functionChane: true,
//                         onTap: () { addNew=!addNew;
//                         setState(() {
//
//                         });},
//                         key: _myWidgetState,
//                         addNew: addNew,
//                         // isDirectCreate:changer,
//
//                         label: "Create Static Group",
//                         onApply: () {
//                           print("save");
//                           MaterialCreationtModel model=MaterialCreationtModel(
//
//                               description: descriptionContollercontroller?.text??"",
//                               image:int.tryParse(imageContollercontroller.text),
//                               searchNmae: searchNamecontroller?.text??"",
//                               name: namecontroller?.text??"",
//                           );
//
//                           context.read<DivisioncreateCubit>().postCreateDevision(model,"static");
//
//                           // widget.onTap();
//
//                         },
//                         onEdit: () {
//                           DevisionReadModel model=DevisionReadModel(
//                             name: namecontroller?.text??"",
//                             image:imageContollercontroller?.text??"",
//
//                             description: descriptionContollercontroller?.text??"",
//                             searchNmae: searchNamecontroller?.text??"",
//                             isActive: active,
//                           );
//                           print("Rijina"+model.toString());
//                           context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"static");
//                         },
//                         onCancel: (){
//                           context
//                               .read<MaterialdeleteCubit>()
//                               .materialDelete(veritiaclid,"static");
//
//                         },
//
//                         onAddNew: (v) {
//                           print("Akshay"+v.toString());
//                           changeAddNew(v);
//                           setState(() {});
//
//                           setState(() {});
//                         },
//                         dataField: Expanded(
//                           // height: MediaQuery.of(context).size.height * .6,
//                           child: IntrinsicHeight(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//
//                                 StaticVerticalList(
//                                   type: "static",
//
//                                   selectedVertical: selectedVertical,
//                                   itemsearch: itemsearch,ontap: (int index){
//                                   setState(() {
//                                     selectedVertical=index;
//                                     addNew=false;
//                                     // select=false;
//                                     // updateCheck=false;
//
//
//                                     veritiaclid = result[index].id;
//                                     changer=true;
//
//                                     context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
//
//
//
//
//                                     setState(() {
//
//                                     });
//                                   });
//                                 },result: result,
//                                 ),
//
//                                 Expanded(child: Column(
//                                   children: [
//                                     NewInputCard(
//                                         readOnly: true,
//                                         controller: codeController, title: "Code"),
//                                     gapWidthColumn(),
//                                     NewInputCard(
//                                       controller:namecontroller ,
//                                       title: "Name",
//                                     ),
//                                     gapWidthColumn(),
//                                     NewInputCard(
//                                       controller:searchNamecontroller ,
//                                       title: "Search Name",
//                                     ),
//                                   ],
//                                 )),
//
//                                 Expanded(child:   Column(
//                                   children: [
//                                     NewInputCard(
//                                       controller:descriptionContollercontroller,
//                                       title: "Description",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     FileUploadField(
//
//                                         fileName: imageName,
//                                         fileUrl:imageName,
//                                         onChangeTap: (p0) {
//                                           onChange=true;
//                                           // loading = true;
//                                           setState(() {});
//                                         },
//                                         onChange: (myFile) {
//                                           onChange=true;
//                                           // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                           imageEncode =
//                                               myFile.toBase64();
//                                           // widget.fileMobileNameCtrl.text =
//                                           //     myFile.fileName ?? "";
//                                           // if (Variable.bannerimage!.length <= 240000)
//                                           print("imabbabba"+Variable.imageName.toString());
//                                           context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
//                                           // else
//                                           //   context.showSnackBarError(
//                                           //       "Please upload Banner of size Lesser than 230kb");
//                                         },
//                                         onImageChange: (newFile) async {
//                                           onChange=true;
//                                           // Variable.popUp = false;
//
//                                           if (newFile.length <= 240000) {
//                                             // loading
//                                             //     ? showDailogPopUp(context, DialoguePopUp())
//                                             //     : Navigator.pop(context);
//                                             // context
//                                             //     .read<CreateWebImageCubit>()
//                                             //     .createMobImage();
//                                           } else
//                                             context.showSnackBarError(
//                                                 "Please upload Banner of size Lesser than 230kb");
//                                           setState(() {});
//                                         },
//                                         onCreate: true,
//                                         label: "Image"),
//
//
//                                     SizedBox(height: 10,),
//                                     PopUpSwitchTile(
//                                         value: active??false,
//                                         title: "isActive",
//                                         onClick: (gg) {
//                                           onChange=true;
//                                           if(!addNew)
//                                             active=!active!;
//
//                                           // extendedWarranty = gg;
//                                           // widget.changeExtendedWarranty(gg);
//                                           // onChangeExtWarranty = gg;
//                                           setState(() {});
//                                         }),
//
//
//
//
//
//                                   ],
//                                 )),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             );
//           }
//       ),
//     );
//   }
// }

class UomGroupCreatePopUp extends StatefulWidget {
  final String type;

  UomGroupCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _UomGroupCreatePopUpState createState() => _UomGroupCreatePopUpState();
}

class _UomGroupCreatePopUpState extends State<UomGroupCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController shortNamecontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    super.initState();
  }

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
          create: (context) => UomgroupreadCubit(),
        ),
        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<UomgroupreadCubit, UomgroupreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        shortNamecontroller.text = data.shortName ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),

            BlocListener<UomgroupCreationCubit, UomgroupCreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    setState(() {
                      context.read<UomgruoplistCubit>().getUomGroupist();
                    });
                    context.showSnackBarSuccess(data.data2);
                    Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<UomgroupreadCubit>()
                            .getUomGroupRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    functionChane: true,
                    isDirectCreate: true,
                    addNew: addNew,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    // isDirectCreate:changer,

                    label: "Create UOM Group",
                    onApply: () {
                      print("save");

                      context.read<UomgroupCreationCubit>().postCreateUomGroup(
                          descriptionContollercontroller.text ?? "",
                          namecontroller.text ?? "",
                          shortNamecontroller.text ?? "");

                      // widget.onTap();
                    },
                    onEdit: () {
                      // DevisionReadModel model=DevisionReadModel(
                      //   name: namecontroller?.text??"",
                      //   shortName: shortNamecontroller.text??'',
                      //
                      //
                      //   description: descriptionContollercontroller?.text??"",
                      //
                      //   isActive: active,
                      // );
                      // print("Rijina"+model.toString());
                      // context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"Uom_goup");
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"Uom_group");
                    },

                    onAddNew: (v) {
                      print("Akshay" + v.toString());
                      changeAddNew(v);
                      setState(() {});

                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(height: 10,),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(height: 10,),
                                NewInputCard(
                                  controller: shortNamecontroller,
                                  title: "Short Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //
                                //       setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class UomGroupPopUp extends StatefulWidget {
  final String type;

  UomGroupPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _UomGroupPopUpState createState() => _UomGroupPopUpState();
}

//create uom group

class _UomGroupPopUpState extends State<UomGroupPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  DevisionReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  bool buttonCheck = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController shortNamecontroller = TextEditingController();

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<UomgruoplistCubit>().getUomGroupist();
    super.initState();
  }

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
          create: (context) => UomgroupreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<UomgroupreadCubit, UomgroupreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        shortNamecontroller.text = data.shortName ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<DivisioncreateCubit, DivisioncreateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<UomgroupCreationCubit, UomgroupCreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<UomgruoplistCubit>().getUomGroupist();
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    context.read<UomgruoplistCubit>().getUomGroupist();
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<UomgroupreadCubit>()
                            .getUomGroupRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                // if (!onChange) {
                //   print("onchange"+onChange.toString());
                //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                //   shortNamecontroller = TextEditingController(text: addNew ? "" : group?.description);
                //   //
                //   active=addNew?true:group?.isActive;
                // }
                // onChange = false;
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    functionChane: true,
                    addNew: addNew,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    // isDirectCreate:changer,

                    label: "Create UOM Group",
                    onApply: () {
                      print("save");

                      // context.read<UomgroupCreationCubit>().postCreateUomGroup(descriptionContollercontroller.text??"",namecontroller.text??"",shortNamecontroller.text??"");
                      // setState(() {

                      // });

                      // widget.onTap();
                    },
                    onEdit: () {
                      DevisionReadModel model = DevisionReadModel(
                        name: namecontroller?.text ?? "",
                        shortName: shortNamecontroller.text ?? '',
                        description: descriptionContollercontroller?.text ?? "",
                        isActive: active,
                      );
                      print("Rijina" + model.toString());
                      context
                          .read<DivisioncreateCubit>()
                          .postDivisionPatch(veritiaclid, model, "Uom_goup");
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "Uom_group");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});

                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UomGroupVerticalList(
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = true;

                                  context
                                      .read<UomgroupreadCubit>()
                                      .getUomGroupRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: shortNamecontroller,
                                  title: "Short Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//create baseuom

class UomCreatePopUp extends StatefulWidget {
  final String type;

  UomCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _UomCreatePopUpState createState() => _UomCreatePopUpState();
}

class _UomCreatePopUpState extends State<UomCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  BaseUomCreationtModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController uomGroupController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController shortNamecontroller = TextEditingController();
  TextEditingController standardCodecontroller = TextEditingController();
  TextEditingController conversionfactorcontroller = TextEditingController();
  TextEditingController baseEquivalentcontroller = TextEditingController();

  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context.read<BaseuomlistCubit>().getUomist();
    super.initState();
  }

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
          create: (context) => BaseuomcreationCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<BaseuomcreationCubit, BaseuomcreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    context.read<BaseuomlistCubit>().getUomist();
                    Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<ReadbaseuomCubit>()
                            .getBaseUomRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    isDirectCreate: true,
                    functionChane: true,
                    key: _myWidgetState,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create UOM Group",
                    onApply: () {
                      print("save");
                      BaseUomCreationtModel model = BaseUomCreationtModel(
                        name: namecontroller?.text ?? "",
                        shortName: shortNamecontroller.text ?? '',
                        baseEquivalent: baseEquivalentcontroller.text ?? "",
                        uomGroupCode: uomGroupController.text ?? "",
                        standardCode: standardCodecontroller.text ?? "",
                        conversionFactor:
                            int.tryParse(conversionfactorcontroller.text),
                      );
                      print("model" + model.toString());
                      context
                          .read<BaseuomcreationCubit>()
                          .postCreateBaseUom(model);
                    },
                    onEdit: () {
                      // BaseUomCreationtModel model=BaseUomCreationtModel(
                      //     name: namecontroller?.text??"",
                      //     shortName: shortNamecontroller.text??'',
                      //     baseEquivalent: baseEquivalentcontroller.text??"",uomGroupCode: uomGroupController.text??"",
                      //     standardCode: standardCodecontroller.text??"",
                      //     conversionFactor:int.tryParse(conversionfactorcontroller.text),
                      //     isActive: active
                      //
                      // );
                      // print("model"+model.toString());
                      // context.read<BaseuomcreationCubit>().postUomPatch(veritiaclid,model);
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"Uom");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: " Uom Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(
                                  controller: uomGroupController,
                                  label: "Uom Group Code",
                                  type: "Uomgroup_PopUpCall",
                                  value: uomGroupController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;

                                      uomGroupController.text = va?.code ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: shortNamecontroller,
                                  title: "Short Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: standardCodecontroller,
                                  title: "Standard code",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                 formatter: true,
                                  controller: conversionfactorcontroller,
                                  title: "Conversion Factor",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  formatter: true,
                                  controller: baseEquivalentcontroller,
                                  title: "Base Equivalent",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //       if (!addNew)
                                //         // extendedWarranty = gg;
                                //         // widget.changeExtendedWarranty(gg);
                                //         // onChangeExtWarranty = gg;
                                //         setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//patch base uom
class UomPopUp extends StatefulWidget {
  final String type;

  UomPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _UomPopUpState createState() => _UomPopUpState();
}

class _UomPopUpState extends State<UomPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  BaseUomCreationtModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController uomGroupController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController shortNamecontroller = TextEditingController();
  TextEditingController standardCodecontroller = TextEditingController();
  TextEditingController conversionfactorcontroller = TextEditingController();
  TextEditingController baseEquivalentcontroller = TextEditingController();

  bool addNew = false;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<BaseuomlistCubit>().getUomist(type: "all");
    super.initState();
  }

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
          create: (context) => ReadbaseuomCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => BaseuomcreationCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadbaseuomCubit, ReadbaseuomState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.uomCode ?? "";
                        namecontroller.text = data.name ?? "";
                        uomGroupController.text = data.uomGroupCode ?? "";
                        shortNamecontroller.text = data.shortName ?? "";
                        conversionfactorcontroller.text =
                            data.conversionFactor.toString() ?? "";
                        baseEquivalentcontroller.text =
                            data.baseEquivalent.toString() ?? "";
                        standardCodecontroller.text =
                            data.standardCode.toString() ?? "";
                        active = data.isActive ?? false;

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<BaseuomcreationCubit, BaseuomcreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);
                  Navigator.pop(context);

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    context.read<BaseuomlistCubit>().getUomist();
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
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
          child: BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<ReadbaseuomCubit>()
                            .getBaseUomRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    key: _myWidgetState,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create UOM Group",
                    onApply: () {
                      print("save");
                      BaseUomCreationtModel model = BaseUomCreationtModel(
                        name: namecontroller?.text ?? "",
                        shortName: shortNamecontroller.text ?? '',
                        baseEquivalent: baseEquivalentcontroller.text ?? "",
                        uomGroupCode: uomGroupController.text ?? "",
                        standardCode: standardCodecontroller.text ?? "",
                        conversionFactor:
                            int.tryParse(conversionfactorcontroller.text),
                      );
                      print("model" + model.toString());
                      context
                          .read<BaseuomcreationCubit>()
                          .postCreateBaseUom(model);
                    },
                    onEdit: () {
                      BaseUomCreationtModel model = BaseUomCreationtModel(
                          name: namecontroller?.text ?? "",
                          shortName: shortNamecontroller.text ?? '',
                          baseEquivalent: baseEquivalentcontroller.text ?? "",
                          uomGroupCode: uomGroupController.text ?? "",
                          standardCode: standardCodecontroller.text ?? "",
                          conversionFactor:
                              int.tryParse(conversionfactorcontroller.text),
                          isActive: active);
                      print("model" + model.toString());
                      context
                          .read<BaseuomcreationCubit>()
                          .postUomPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "Uom");
                    },

                    onAddNew: (v) {
                      print("Akshay" + v.toString());
                      changeAddNew(v);
                      setState(() {});

                      setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BaseUomVerticalList(
                              list: list,
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = true;

                                  context
                                      .read<ReadbaseuomCubit>()
                                      .getBaseUomRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: " Uom Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(
                                  controller: uomGroupController,
                                  label: "Uom Group Code",
                                  type: "Uomgroup_PopUpCall",
                                  value: uomGroupController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;

                                      uomGroupController.text = va?.code ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: shortNamecontroller,
                                  title: "Short Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: standardCodecontroller,
                                  title: "Standard code",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  keyboardType: "int",
                                  controller: conversionfactorcontroller,
                                  title: "Conversion Factor",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: baseEquivalentcontroller,
                                  title: "Base Equivalent",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//patch category

class CategoryPopUp extends StatefulWidget {
  final String type;

  CategoryPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CategoryPopUpState createState() => _CategoryPopUpState();
}

class _CategoryPopUpState extends State<CategoryPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  CategoryReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController parentCodeController = TextEditingController();
  TextEditingController parentNameController = TextEditingController();
  TextEditingController divisionCodeController = TextEditingController();
  TextEditingController divisionNameController = TextEditingController();
  TextEditingController imageCodeController = TextEditingController();
  TextEditingController alternativeController = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  var list;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<CategorylistCubit>().getCategoryist(type: "all");
    super.initState();
  }

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
          create: (context) => CategoryreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => CreatecategoryCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageCodeController.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<CategoryreadCubit, CategoryreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        parentCodeController.text = data.parentCode ?? '';
                        divisionCodeController.text = data.divisionCode ?? '';
                        imageCodeController.text = data.image ?? '';
                        alternativeController.text = data.alternativename ?? "";
                        // shortNamecontroller.text=data.shortName??"";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<CreatecategoryCubit, CreatecategoryState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context
                        .read<CategorylistCubit>()
                        .getCategoryist(type: "all");
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
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
          child: BlocConsumer<CategorylistCubit, CategorylistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<CategoryreadCubit>()
                            .getCategoryRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    functionChane: true,
                    key: _myWidgetState,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create category",
                    onApply: () {
                      print("save");

                      //
                      // CategoryCreationtModel model=CategoryCreationtModel(
                      //   description: descriptionContollercontroller?.text??"",
                      //   alternativeName: alternativeController?.text??"",
                      //   parentCode: parentCodeController?.text??"",
                      //   divisionCode: divisionCodeController?.text??"",
                      //   name: namecontroller?.text??'',
                      //   image:int.tryParse( imageCodeController.text)
                      // );
                      // context.read<CreatecategoryCubit>().postCreateCategory(model!);
                    },
                    onEdit: () {
                      CategoryCreationtModel model = CategoryCreationtModel(
                        name: namecontroller?.text ?? "",
                        alternativeName: alternativeController?.text ?? "",
                        parentCode: parentCodeController?.text ?? "",
                        divisionCode: divisionCodeController?.text ?? "",
                        code: codeController?.text ?? "",
                        image: int.tryParse(imageCodeController.text),
                        isActive: active,
                        description: descriptionContollercontroller?.text ?? "",
                      );
                      print("Rijina" + model.toString());
                      context
                          .read<CreatecategoryCubit>()
                          .postcategoryPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "Category_Popup");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoryVerticalList(
                              list: list,
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  changer = true;
                                  Variable.divisionId = result[index].id;
                                  //
                                  context
                                      .read<CategoryreadCubit>()
                                      .getCategoryRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                gapWidthColumn(),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),

                                SelectableDropDownpopUp(
                                  controller: divisionNameController,
                                  label: "Division code",
                                  type: "Division_ListPopUpCall",
                                  value: divisionNameController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;

                                      print(va?.id ?? "");
                                      // divisionid=va?.id;
                                      Variable.divisionId = va?.id;

                                      divisionCodeController.text = va?.code ?? "";
                                      divisionNameController.text = va?.name ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(

                                  controller: parentNameController,
                                  label: "Parent Code",
                                  type: "Category_PopUpCall",
                                  value: parentNameController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;
                                      parentCodeController.text = va?.code ?? "";
                                      parentNameController.text = va?.name ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),

                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: alternativeController,
                                  title: "Alternative Name",
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//create category
class CategoryCreatePopUp extends StatefulWidget {
  final String type;

  CategoryCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CategoryCreatePopUpState createState() => _CategoryCreatePopUpState();
}

class _CategoryCreatePopUpState extends State<CategoryCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  CategoryReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController parentCodeController = TextEditingController();
  TextEditingController parentCodeNameController = TextEditingController();
  TextEditingController divisionCodeController = TextEditingController();
  TextEditingController divisionCodeNameController = TextEditingController();
  TextEditingController imageCodeController = TextEditingController();
  TextEditingController alternativeController = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  bool addNew = false;
  var list;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context.read<CategorylistCubit>().getCategoryist(type: "all");
    super.initState();
  }

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
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => CreatecategoryCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageCodeController.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<CreatecategoryCubit, CreatecategoryState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {


                    setState(() {});
                    context.showSnackBarSuccess(data.data2);
                    context.read<CategorylistCubit>().getCategoryist(type:Variable.divisionId.toString());
                    Navigator.pop(context); Navigator.pop(context);
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<CategorylistCubit, CategorylistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<CategoryreadCubit>()
                            .getCategoryRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                // if (!onChange) {
                //   print("onchange"+onChange.toString());
                //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                //
                //   parentCodeController = TextEditingController(text: addNew ? "" : group?.parentCode);
                //   divisionCodeController = TextEditingController(text: addNew ? "" : group?.divisionCode);
                //   imageCodeController = TextEditingController(text: addNew ? "" : group?.image);
                //   alternativeController = TextEditingController(text: addNew ? "" : group?.alternativename);
                //   active=addNew?true:group?.isActive;
                // }
                // onChange = false;
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    isDirectCreate: true,
                    functionChane: true,
                    key: _myWidgetState,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create category",
                    onApply: () {
                      print("save");

                      CategoryCreationtModel model = CategoryCreationtModel(
                          description:
                              descriptionContollercontroller?.text ?? "",
                          alternativeName: alternativeController?.text ?? "",
                          parentCode: parentCodeController?.text ?? "",
                          divisionCode: divisionCodeController?.text ?? "",
                          name: namecontroller?.text ?? '',
                          image: int.tryParse(imageCodeController.text));
                      context
                          .read<CreatecategoryCubit>()
                          .postCreateCategory(model!);
                    },
                    onEdit: () {
                      // CategoryCreationtModel model=CategoryCreationtModel(
                      //   name: namecontroller?.text??"",
                      //   alternativeName: alternativeController?.text??"",
                      //   parentCode: parentCodeController?.text??"",
                      //   divisionCode: divisionCodeController?.text??"",
                      //   code: codeController?.text??"",
                      //   image:int.tryParse( imageCodeController.text),
                      //   isActive:active,
                      //   description: descriptionContollercontroller?.text??"",
                      //
                      // );
                      // print("Rijina"+model.toString());
                      // context.read<CreatecategoryCubit>().postcategoryPatch(veritiaclid,model);
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"Category_Popup");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),


                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(
                                  controller:divisionCodeNameController,
                                  label: "Division",
                                  type:"Division_ListPopUpCall",
                                  value: divisionCodeNameController.text,
                                  onchange: (vale){
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {


                                      // print(va?.id??"");
                                      // divisionid=va?.id;
                                      // Variable.divisionId=va?.id;

                                      divisionCodeController.text=va?.code??"";
                                      Variable.divisionId=va?.id;
                                      divisionCodeNameController.text=va?.name??"";
                                      // widget.divisionName.text=va?.name??"";
                                      setState(() {

                                      });


                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                  // onAddNew: () {
                                  //
                                  //   showDailogPopUp(
                                  //     context,
                                  //     ConfigurePopup(
                                  //       type: "devision-group",
                                  //     ),
                                  //
                                  //
                                  //   );
                                  // },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(

                                  controller: parentCodeNameController,
                                  label: "Parent Code",
                                  type: "Category_PopUpCall",
                                  value: parentCodeNameController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;
                                      parentCodeController.text = va?.code ?? "";
                                      parentCodeNameController.text = va?.name ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),



                                // SelectableDropDownpopUp(
                                //   controller: divisionCodeController,
                                //   label: "Division code",
                                //   type: "DivisionListPopUpCall",
                                //   value: divisionCodeController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //
                                //       print("divv${divisionCodeController.text}");
                                //       // divisionid=va?.id;
                                //       Variable.divisionId = va?.id;
                                //
                                //       divisionCodeController.text =
                                //           va?.code ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: alternativeController,
                                  title: "Alternative Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //       // if(!addNew)
                                //       //   active=!active!;
                                //
                                //       // extendedWarranty = gg;
                                //       // widget.changeExtendedWarranty(gg);
                                //       // onChangeExtWarranty = gg;
                                //       setState(() {});
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}




class SubCategoryCreatePopUp extends StatefulWidget {
  final String type;

  SubCategoryCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _SubCategoryCreatePopUpState createState() => _SubCategoryCreatePopUpState();
}

class _SubCategoryCreatePopUpState extends State<SubCategoryCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  CategoryReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController parentCodeController = TextEditingController();
  TextEditingController parentCodeNameController = TextEditingController();
  TextEditingController divisionCodeController = TextEditingController();
  TextEditingController divisionCodeNameController = TextEditingController();
  TextEditingController imageCodeController = TextEditingController();
  TextEditingController alternativeController = TextEditingController();
  TextEditingController descriptionContollercontroller =
  TextEditingController();
  bool addNew = false;
  var list;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
  GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    // context.read<CategorylistCubit>().getCategoryist(type: "all");
    super.initState();
  }

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
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => CreatecategoryCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageCodeController.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<CreatecategoryCubit, CreatecategoryState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    context.read<CategorylistCubit>().getCategoryist(type:Variable.divisionId.toString());
                    Navigator.pop(context);

                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<CategorylistCubit, CategorylistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<CategoryreadCubit>()
                            .getCategoryRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                // if (!onChange) {
                //   print("onchange"+onChange.toString());
                //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                //
                //   parentCodeController = TextEditingController(text: addNew ? "" : group?.parentCode);
                //   divisionCodeController = TextEditingController(text: addNew ? "" : group?.divisionCode);
                //   imageCodeController = TextEditingController(text: addNew ? "" : group?.image);
                //   alternativeController = TextEditingController(text: addNew ? "" : group?.alternativename);
                //   active=addNew?true:group?.isActive;
                // }
                // onChange = false;
                return AlertDialog(
                  content: PopUpHeader(
                    buttonCheck: true,
                    isDirectCreate: true,
                    functionChane: true,
                    key: _myWidgetState,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Create Subcategory",
                    onApply: () {
                      print("save");

                      CategoryCreationtModel model = CategoryCreationtModel(
                          description:
                          descriptionContollercontroller?.text ?? "",
                          alternativeName: alternativeController?.text ?? "",
                          parentCode: parentCodeController?.text ?? "",
                          divisionCode: divisionCodeController?.text ?? "",
                          name: namecontroller?.text ?? '',
                          image: int.tryParse(imageCodeController.text));
                      context
                          .read<CreatecategoryCubit>()
                          .postCreateCategory(model!);
                    },
                    onEdit: () {
                      // CategoryCreationtModel model=CategoryCreationtModel(
                      //   name: namecontroller?.text??"",
                      //   alternativeName: alternativeController?.text??"",
                      //   parentCode: parentCodeController?.text??"",
                      //   divisionCode: divisionCodeController?.text??"",
                      //   code: codeController?.text??"",
                      //   image:int.tryParse( imageCodeController.text),
                      //   isActive:active,
                      //   description: descriptionContollercontroller?.text??"",
                      //
                      // );
                      // print("Rijina"+model.toString());
                      // context.read<CreatecategoryCubit>().postcategoryPatch(veritiaclid,model);
                    },
                    onCancel: () {
                      // context
                      //     .read<MaterialdeleteCubit>()
                      //     .materialDelete(veritiaclid,"Category_Popup");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SelectableDropDownpopUp(
                                      controller:divisionCodeNameController,
                                      label: "Division",
                                      type:"Division_ListPopUpCall",
                                      value: divisionCodeNameController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {


                                          // print(va?.id??"");
                                          // divisionid=va?.id;
                                          // Variable.divisionId=va?.id;

                                          divisionCodeController.text=va?.code??"";
                                          Variable.divisionId=va?.id;
                                          divisionCodeNameController.text=va?.name??"";
                                          // widget.divisionName.text=va?.name??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                      // onAddNew: () {
                                      //
                                      //   showDailogPopUp(
                                      //     context,
                                      //     ConfigurePopup(
                                      //       type: "devision-group",
                                      //     ),
                                      //
                                      //
                                      //   );
                                      // },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SelectableDropDownpopUp(

                                      controller: parentCodeNameController,
                                      label: "Parent Code",
                                      type: "Category_PopUpCall",
                                      value: parentCodeNameController.text,
                                      onchange: (vale) {
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange = true;
                                          parentCodeController.text = va?.code ?? "";
                                          parentCodeNameController.text = va?.name ?? "";
                                          setState(() {});

                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                    ),





                                    // SelectableDropDownpopUp(
                                    //   controller: divisionCodeController,
                                    //   label: "Division code",
                                    //   type: "DivisionListPopUpCall",
                                    //   value: divisionCodeController.text,
                                    //   onchange: (vale) {
                                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                    //   },
                                    //   enable: true,
                                    //   onSelection: (BrandListModel? va) {
                                    //     setState(() {
                                    //       onChange = true;
                                    //
                                    //       print("divv${divisionCodeController.text}");
                                    //       // divisionid=va?.id;
                                    //       Variable.divisionId = va?.id;
                                    //
                                    //       divisionCodeController.text =
                                    //           va?.code ?? "";
                                    //       setState(() {});
                                    //
                                    //       // onChange = true;
                                    //       // orderType.text = va!;
                                    //     });
                                    //   },
                                    // ),
                                  ],
                                )),
                            Expanded(
                                child: Column(
                                  children: [
                                    FileUploadField(
                                        fileName: imageName,
                                        fileUrl: imageName,
                                        onChangeTap: (p0) {
                                          onChange = true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange = true;
                                          imageName = myFile?.fileName ?? "";

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode = myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context.read<ImagepostCubit>().postImage(
                                              Variable.imageName, imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange = true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: alternativeController,
                                      title: "Alternative Name",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    // PopUpSwitchTile(
                                    //     value: active ?? false,
                                    //     title: "isActive",
                                    //     onClick: (gg) {
                                    //       onChange = true;
                                    //       // if(!addNew)
                                    //       //   active=!active!;
                                    //
                                    //       // extendedWarranty = gg;
                                    //       // widget.changeExtendedWarranty(gg);
                                    //       // onChangeExtWarranty = gg;
                                    //       setState(() {});
                                    //     }),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

//create group

class GroupPopUp extends StatefulWidget {
  final String type;

  GroupPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _GroupPopUpState createState() => _GroupPopUpState();
}

class _GroupPopUpState extends State<GroupPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  MaterialReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController imageCodeController = TextEditingController();
  TextEditingController categoryCodeController = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchNameContollercontroller = TextEditingController();
  TextEditingController displayNameContollercontroller =
      TextEditingController();
  bool addNew = false;
  var list;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    super.initState();
  }

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
          create: (context) => GroupcreationCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageCodeController.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<GroupcreationCubit, GroupcreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);

                    context.read<GrouplistCubit>().getGroupListList();
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<GrouplistCubit, GrouplistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<GroupreadCubit>()
                            .getGroupRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    key: _myWidgetState,
                    isDirectCreate: true,
                    changer: changer,
                    buttonCheck: true,
                    // isDirectCreate:changer,

                    label: "Create Group",
                    onApply: () {
                      print("save");

                      MaterialCreationtModel model = MaterialCreationtModel(
                          name: namecontroller?.text ?? "",
                          searchNmae: searchNameContollercontroller?.text ?? "",
                          description:
                              descriptionContollercontroller?.text ?? "",
                          image: int.tryParse(imageCodeController.text),
                          displayName:
                              displayNameContollercontroller?.text ?? "",
                          categoryCode: categoryCodeController.text ?? "");
                      context
                          .read<GroupcreationCubit>()
                          .postCreateGroup(model!);
                    },
                    onEdit: () {},
                    onCancel: () {
                      // context.read<MaterialdeleteCubit>().materialDelete(veritiaclid,"Group_popup");
                    },

                    onAddNew: (v) {
                      // print("Akshay"+v.toString());
                      // changeAddNew(v);
                      // setState(() {});
                      //
                      // setState(() {});
                    },
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(
                                  apiType: "all",
                                  controller: categoryCodeController,
                                  label: "Category Code",
                                  type: "Category_PopUpCall",
                                  value: categoryCodeController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    // onChange=true;
                                    categoryCodeController.text =
                                        va?.code ?? "";
                                    setState(() {});

                                    // onChange = true;
                                    // orderType.text = va!;
                                  },
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: searchNameContollercontroller,
                                  title: "Search Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: displayNameContollercontroller,
                                  title: "Display Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // PopUpSwitchTile(
                                //     value: active ?? false,
                                //     title: "isActive",
                                //     onClick: (gg) {
                                //       onChange = true;
                                //     }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class GroupPatchPopUp extends StatefulWidget {
  final String type;

  GroupPatchPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _GroupPatchPopUpState createState() => _GroupPatchPopUpState();
}

class _GroupPatchPopUpState extends State<GroupPatchPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  MaterialReadModel? group;
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController imageCodeController = TextEditingController();
  TextEditingController categoryCodeController = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchNameContollercontroller = TextEditingController();
  TextEditingController displayNameContollercontroller =
      TextEditingController();
  bool addNew = false;
  var list;

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<GrouplistCubit>().getGroupListList(type: "all");
    super.initState();
  }

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
          create: (context) => GroupreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => GroupcreationCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ImagepostCubit, ImagepostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageCodeController.text = data.data2.toString();

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<GroupreadCubit, GroupreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        displayNameContollercontroller.text =
                            data.displayName ?? "";
                        imageCodeController.text = data.image ?? '';
                        categoryCodeController.text = data.categoryCode ?? "";
                        // // shortNamecontroller.text=data.shortName??"";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<GroupcreationCubit, GroupcreationState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    Navigator.pop(context);
                    context
                        .read<GrouplistCubit>()
                        .getGroupListList(type: "all");
                    setState(() {});
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
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
          child: BlocConsumer<GrouplistCubit, GrouplistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<GroupreadCubit>()
                            .getGroupRead(veritiaclid!);
                      } else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }

                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    addNew: addNew,
                    buttonCheck: true,
                    key: _myWidgetState,
                    // isDirectCreate: changer,
                    changer: changer,
                    // isDirectCreate:changer,

                    label: "Create Group",
                    onApply: () {
                      print("save");
                    },
                    onEdit: () {
                      MaterialCreationtModel model = MaterialCreationtModel(
                        name: namecontroller?.text ?? "",
                        categoryCode: categoryCodeController?.text ?? "",
                        displayName: displayNameContollercontroller?.text ?? "",
                        searchNmae: searchNameContollercontroller?.text ?? "",
                        image: int.tryParse(imageCodeController.text),
                        isActive: active,
                        description: descriptionContollercontroller?.text ?? "",
                      );
                      print("Rijina" + model.toString());
                      context
                          .read<GroupcreationCubit>()
                          .postGroupPatch(veritiaclid, model);
                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "Group_popup");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GroupVerticalList(
                              list: list,
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  // select=false;
                                  // updateCheck=false;

                                  veritiaclid = result[index].id;
                                  setState(() {
                                    changer = false;
                                  });

                                  Variable.divisionId = result[index].id;
                                  //
                                  context
                                      .read<GroupreadCubit>()
                                      .getGroupRead(veritiaclid!);

                                  setState(() {});
                                });
                              },
                              result: result,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                    readOnly: true,
                                    controller: codeController,
                                    title: "Code"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      onChange = true;
                                      // loading = true;
                                      setState(() {});
                                    },
                                    onChange: (myFile) {
                                      onChange = true;

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)
                                      context.read<ImagepostCubit>().postImage(
                                          Variable.imageName, imageEncode);
                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 240000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        context.showSnackBarError(
                                            "Please upload Banner of size Lesser than 230kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                SelectableDropDownpopUp(
                                  controller: categoryCodeController,
                                  label: "Category Code",
                                  type: "Category_PopUpCall",
                                  value: categoryCodeController.text,
                                  onchange: (vale) {
                                    // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  },
                                  enable: true,
                                  onSelection: (BrandListModel? va) {
                                    setState(() {
                                      onChange = true;
                                      categoryCodeController.text =
                                          va?.code ?? "";
                                      setState(() {});

                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: searchNameContollercontroller,
                                  title: "Search Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  controller: displayNameContollercontroller,
                                  title: "Display Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "isActive",
                                    onClick: (gg) {
                                      onChange = true;
                                      if (!addNew) active = !active!;

                                      // extendedWarranty = gg;
                                      // widget.changeExtendedWarranty(gg);
                                      // onChangeExtWarranty = gg;
                                      setState(() {});
                                    }),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

// class GroupPopUp extends StatefulWidget {
//   final String type;
//
//
//   GroupPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _GroupPopUpState createState() => _GroupPopUpState();
// }
//
// class _GroupPopUpState extends State<GroupPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   MaterialReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController imageCodeController=TextEditingController();
//   TextEditingController categoryCodeController=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   TextEditingController searchNameContollercontroller=TextEditingController();
//   TextEditingController displayNameContollercontroller=TextEditingController();
//   bool addNew = false;
//   var list;
//
//
//   final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
//   void changeAddNew(bool va) { addNew = va;
//   onChange=false;
//   }
//   void initState() {
//     context.read<GrouplistCubit>().getGroupListList();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     // descriptionController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].description == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].description);
//     // durationController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].duration == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].duration.toString());
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => GroupreadCubit(),
//         ),
//         BlocProvider(
//           create: (context) => MaterialdeleteCubit(),
//         ),
//
//         BlocProvider(
//           create: (context) => GroupcreationCubit(),
//         ),
//
//       ],
//       child: Builder(
//           builder: (context) {
//             return MultiBlocListener(
//               listeners: [
//                 BlocListener<ImagepostCubit, ImagepostState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loadingggg");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         print("dataAkshay"+data.data2.toString());
//                         imageCodeController.text=data.data2.toString();
//
//                         // context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         // context.showSnackBarError(data.data2);
//                         // print(data.data1.toString());
//                       }
//                       ;
//                     });
//                   },
//                 ),
//
//
//                 BlocListener<GroupreadCubit,GroupreadState>(
//                   listener: (context, state) {
//                     print("nnnnop"+state.toString());
//                     state.maybeWhen(
//                         orElse: () {},
//                         error: () {
//                           print("error");
//                         },
//                         success: (data) {
//                           setState(() {
//                             group=data;
//                             codeController.text=data.code??"";
//                             namecontroller.text=data.name??"";
//                             displayNameContollercontroller.text=data.displayName??"";
//                             imageCodeController.text=data.image??'';
//                             categoryCodeController.text=data.categoryCode??"";
//                             // // shortNamecontroller.text=data.shortName??"";
//
//                             descriptionContollercontroller.text=data.description??"";
//
//
//                             active=data.isActive??false;
//
//                           });
//                         });
//
//
//
//                   },
//                 ),
//
//                 BlocListener<GroupcreationCubit, GroupcreationState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       print(data.data1);
//
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//                         context.read<GrouplistCubit>().getGroupListList();
//                         setState(() {
//
//                         });
//
//
//                       }
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//                 BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//                   listener: (context, state) {
//                     print("delete" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//
//
//               ],
//               child: BlocConsumer<GrouplistCubit, GrouplistState>(
//                 listener: (context, state) {
//                   print("state"+state.toString());
//                   state.maybeWhen(
//                       orElse: () {},
//                       error: () {
//                         print("error");
//                       },
//                       success: (list) {
//                         print("aaaaayyyiram"+list.data.toString());
//
//                         result = list.data;
//                         list=list;
//                         print("seee"+result.toString());
//                         setState(() {
//                           if(result.isNotEmpty){
//
//                             veritiaclid=result[0].id;
//                             Variable.divisionId=result[0].id;
//
//                             // Variable.verticalid=result[0].id;
//                             print("Variable.ak"+Variable.verticalid.toString());
//                             context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
//                           }
//                           else{
//                             print("common");
//                             // select=true;
//                             setState(() {
//                             });
//
//                           }
//
//
//                           setState(() {});
//
//                         });
//                       });
//                 },
//                 builder: (context, state) {
//                   return Builder(builder: (context) {
//
//                     if (!onChange) {
//                       print("onchange"+onChange.toString());
//                       namecontroller = TextEditingController(text: addNew ? "" : group?.name);
//                       codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
//                       displayNameContollercontroller = TextEditingController(text: addNew ? "" : group?.displayName.toString());
//                       categoryCodeController = TextEditingController(text: addNew ? "" : group?.categoryCode.toString());
//                       descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
//                       imageCodeController = TextEditingController(text: addNew ? "" : group?.image);
//
//                       active=addNew?true:group?.isActive;
//                     }
//                     onChange = false;
//                     return AlertDialog(
//                       content: PopUpHeader(
//                         functionChane: true,
//                         onTap: () { addNew=!addNew;
//                         setState(() {
//
//                         });},
//                         addNew: addNew,
//                         key: _myWidgetState,
//                         // isDirectCreate: changer,
//                         changer:changer,
//                         // isDirectCreate:changer,
//
//                         label: "Create Group",
//                         onApply: () {
//                           print("save");
//
//
//                           MaterialCreationtModel model=MaterialCreationtModel(
//                             name: namecontroller?.text??"",
//                             searchNmae: searchNameContollercontroller?.text??"",
//                             description: descriptionContollercontroller?.text??"",
//                             image: int.tryParse(imageCodeController.text),
//                             displayName: displayNameContollercontroller?.text??"",
//                             categoryCode: categoryCodeController.text??""
//                           );
//                           context.read<GroupcreationCubit>().postCreateGroup(model!);
//
//
//
//                         },
//                         onEdit: () {
//                           MaterialCreationtModel model=MaterialCreationtModel(
//                             name: namecontroller?.text??"",
//                             categoryCode: categoryCodeController?.text??"",
//                             displayName: displayNameContollercontroller?.text??"",
//
//                             searchNmae: searchNameContollercontroller?.text??"",
//                             image:int.tryParse( imageCodeController.text),
//                             isActive:active,
//                             description: descriptionContollercontroller?.text??"",
//
//                           );
//                           print("Rijina"+model.toString());
//                           context.read<GroupcreationCubit>().postGroupPatch(veritiaclid,model);
//                         },
//                         onCancel: (){
//                           context.read<MaterialdeleteCubit>().materialDelete(veritiaclid,"Group_popup");
//
//                         },
//
//                         onAddNew: (v) {
//                           print("Akshay"+v.toString());
//                           changeAddNew(v);
//                           setState(() {});
//
//                           setState(() {});
//                         },
//                         dataField: Expanded(
//                           // height: MediaQuery.of(context).size.height * .6,
//                           child: IntrinsicHeight(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//
//                                 GroupVerticalList(
//                                   list: list,
//                                   selectedVertical: selectedVertical,
//                                   itemsearch: itemsearch,ontap: (int index){
//                                   setState(() {
//                                     selectedVertical=index;
//                                     addNew=false;
//                                     // select=false;
//                                     // updateCheck=false;
//
//
//                                     veritiaclid = result[index].id;
//                                     setState(() {
//                                       changer=false;
//                                     });
//
//                                     Variable.divisionId=result[index].id;
//                                     //
//                                     context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
//
//
//
//
//                                     setState(() {
//
//                                     });
//                                   });
//                                 },result: result,
//                                 ),
//
//                                 Expanded(child: Column(
//                                   children: [
//                                     NewInputCard(
//                                         readOnly: true,
//                                         controller: codeController, title: "Code"),
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:namecontroller ,
//                                       title: "Name",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     FileUploadField(
//
//                                         fileName: imageName,
//                                         fileUrl:imageName,
//                                         onChangeTap: (p0) {
//                                           onChange=true;
//                                           // loading = true;
//                                           setState(() {});
//                                         },
//                                         onChange: (myFile) {
//                                           onChange=true;
//
//                                           // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                           imageEncode =
//                                               myFile.toBase64();
//                                           // widget.fileMobileNameCtrl.text =
//                                           //     myFile.fileName ?? "";
//                                           // if (Variable.bannerimage!.length <= 240000)
//                                           context
//                                               .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
//                                           // else
//                                           //   context.showSnackBarError(
//                                           //       "Please upload Banner of size Lesser than 230kb");
//                                         },
//                                         onImageChange: (newFile) async {
//                                           onChange=true;
//                                           // Variable.popUp = false;
//
//                                           if (newFile.length <= 240000) {
//                                             // loading
//                                             //     ? showDailogPopUp(context, DialoguePopUp())
//                                             //     : Navigator.pop(context);
//                                             // context
//                                             //     .read<CreateWebImageCubit>()
//                                             //     .createMobImage();
//                                           } else
//                                             context.showSnackBarError(
//                                                 "Please upload Banner of size Lesser than 230kb");
//                                           setState(() {});
//                                         },
//                                         onCreate: true,
//                                         label: "Image"),
//                                     SizedBox(height: 10,),
//                                     SelectableDropDownpopUp(
//
//                                       controller:categoryCodeController,
//                                       label: "Category Code",
//                                       type:"Category_PopUpCall",
//                                       value:  categoryCodeController.text,
//                                       onchange: (vale){
//                                         // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
//                                       },
//                                       enable: true,
//                                       onSelection: (BrandListModel? va) {
//                                         setState(() {
//                                           onChange=true;
//                                           categoryCodeController.text=va?.code??"";
//                                           setState(() {
//
//                                           });
//
//
//                                           // onChange = true;
//                                           // orderType.text = va!;
//                                         });
//                                       },
//
//                                     ),
//
//
//                                   ],
//                                 )),
//
//                                 Expanded(child:   Column(
//                                   children: [
//
//
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:descriptionContollercontroller,
//                                       title: "Description",
//                                     ),
//                                     SizedBox(height: 10,),
//
//                                     NewInputCard(
//                                       controller:searchNameContollercontroller,
//                                       title: "Search Name",
//                                     ),
//                                     SizedBox(height: 10,),
//
//                                     NewInputCard(
//                                       controller:displayNameContollercontroller,
//                                       title: "Display Name",
//                                     ),
//                                     SizedBox(height: 10,),
//
//
//                                     PopUpSwitchTile(
//                                         value: active??false,
//                                         title: "isActive",
//                                         onClick: (gg) {
//                                           onChange=true;
//                                           if(!addNew)
//                                             active=!active!;
//
//                                           // extendedWarranty = gg;
//                                           // widget.changeExtendedWarranty(gg);
//                                           // onChangeExtWarranty = gg;
//                                           setState(() {});
//                                         }),
//
//
//
//
//
//                                   ],
//                                 )),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             );
//           }
//       ),
//     );
//   }
// }

//Uom

//Uom

//uom group

//ignore: must_be_immutable
// class UOMConfigurePopUp extends StatefulWidget {
//   final String type;
//   UOMConfigurePopUp({Key? key, required this.type}) : super(key: key);
//
//   @override
//   State<UOMConfigurePopUp> createState() => _UOMConfigurePopUpState();
// }
//
// class _UOMConfigurePopUpState extends State<UOMConfigurePopUp> {
//   TextEditingController nameContrlr = TextEditingController();
//
//   TextEditingController codeContrlr = TextEditingController();
//
//   TextEditingController idContrlr = TextEditingController();
//
//   TextEditingController convContrlr = TextEditingController();
//
//   TextEditingController stdContrlr = TextEditingController();
//
//   TextEditingController baseContrlr = TextEditingController();
//   TextEditingController shortContrlr = TextEditingController();
//   TextEditingController uomGroupContrlr = TextEditingController();
//
//   bool isActive = true;
//   bool addNew = false;
//   void changeAddNew(bool va) => addNew = va;
//   int? groupId;
//   int? first;
//   int selectedIndex = 0;
//   String? groupName;
//   bool onChange = false;
//
//   UOM? group;
//   @override
//   void initState() {
//     Variable.bannerimage = null;
//     Variable.divisionValue = 0;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FDI.i<CreateUomCubit>(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<GetUomListCubit>()..getUOMList(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<ManageUomCubit>(),
//         ),
//       ],
//       child: MultiBlocListener(
//           listeners: [
//             BlocListener<GetUomListCubit, GetUomListState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                     orElse: () {},
//                     success: (data) {
//                       if (data.data1.isNotEmpty) first = data.data1?.first.id;
//                     });
//               },
//             ),
//             BlocListener<CreateUomCubit, CreateUomState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showToast(data.data2);
//
//                           Navigator.pop(context);
//                           setState(() {});
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 })
//           ],
//           child: StatefulBuilder(builder: (context, setState) {
//             //  print("on rebuild");
//             if (!onChange) {
//               nameContrlr =
//                   TextEditingController(text: addNew ? "" : group?.name);
//               idContrlr = TextEditingController(
//                   text: addNew ? "" : group?.id.toString());
//               codeContrlr =
//                   TextEditingController(text: addNew ? "" : group?.code);
//               baseContrlr = TextEditingController(
//                   text: addNew ? "" : group?.baseEquivalent);
//               stdContrlr = TextEditingController(
//                   text: addNew ? "" : group?.standardCode);
//               convContrlr = TextEditingController(
//                   text: addNew ? "" : group?.conversionFactor.toString());
//               uomGroupContrlr = TextEditingController(
//                   text: addNew ? "" : group?.uomgroup_code);
//             }
//             onChange = false;
//             if (first != null && group == null) {
//               selectedIndex = first!;
//               context.read<ManageUomCubit>()..getUOM(first.toString());
//             }
//
//             return AlertDialog(
//               content: PopUpHeader(
//                 onApply: () {
//                   context.read<CreateUomCubit>().createUOM(UOM(
//                     name: nameContrlr.text,
//                     standardCode: stdContrlr.text,
//                     conversionFactor: int.tryParse(convContrlr.text),
//                     image: null,
//                     isActive: true,
//                     shortName: shortContrlr.text,
//                     baseEquivalent: baseContrlr.text,
//                     uomgroup_code: uomGroupContrlr.text,
//                   ));
//                 },
//                 onEdit: first == null
//                     ? null
//                     : () {
//                   context.read<ManageUomCubit>().updateUOM(
//                       selectedIndex.toString(),
//                       UOM(
//                         name: nameContrlr.text,
//                         conversionFactor: int.tryParse(convContrlr.text),
//                         image: null,
//                         isActive: true,
//                         shortName: shortContrlr.text,
//                         baseEquivalent: baseContrlr.text,
//                         uomgroup_code: uomGroupContrlr.text,
//                         id: int.tryParse(idContrlr.text),
//                         code: codeContrlr.text,
//                       ));
//                 },
//                 onAddNew: (v) {
//                   changeAddNew(v);
//                   setState(() {});
//                 },
//                 label: "UOM List ",
//                 dataField: Expanded(
//                   child: IntrinsicHeight(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ConfigureVerticalList(
//                             type: widget.type,
//                             refresh: () {
//                               // print("on refresh");
//                               setState(() {});
//                             },
//                             onClick: (UOM v) {
//                               group = v;
//                               if (group?.id != selectedIndex) {
//                                 selectedIndex = group!.id!;
//
//                                 context.read<ManageUomCubit>()
//                                   ..getUOM(selectedIndex.toString());
//                               }
//
//                               // print(v);
//                             },
//                           ),
//                           gapWidthColumn(),
//                           IntrinsicWidth(
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   PopUpSelectableDropDown(
//                                     label: "UOM Group",
//                                     onSelection: (UOMGroup va) {
//                                       //  print(va);
//                                       uomGroupContrlr.text = va.code!;
//                                       onChange = true;
//                                       Variable.uomGroupValue = va.id!;
//                                       context.read<GetUomListCubit>()
//                                         ..getUOMList();
//
//                                       //  setState((){});
//                                     },
//                                     type: "configure-uom-group",
//                                     value: "${Variable.uomGroupValue}",
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "UOM Group code",
//                                     controller: uomGroupContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "ID",
//                                     controller: idContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Code",
//                                     controller: codeContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Name",
//                                     controller: nameContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Short Name",
//                                     controller: shortContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Standart Code",
//                                     controller: stdContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Conversion factor",
//                                     controller: convContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })),
//     );
//   }
// }
//
// //Static group
//
// //ignore: must_be_immutable
// class StaticGroupConfigurePopUp extends StatefulWidget {
//   final String type;
//   StaticGroupConfigurePopUp({Key? key, required this.type}) : super(key: key);
//
//   @override
//   State<StaticGroupConfigurePopUp> createState() =>
//       _StaticGroupConfigurePopUpState();
// }
//
// class _StaticGroupConfigurePopUpState extends State<StaticGroupConfigurePopUp> {
//   TextEditingController nameContrlr = TextEditingController();
//
//   TextEditingController codeContrlr = TextEditingController();
//
//   TextEditingController idContrlr = TextEditingController();
//
//   TextEditingController descContrlr = TextEditingController();
//
//   TextEditingController displayContrlr = TextEditingController();
//
//   TextEditingController alterContrlr = TextEditingController();
//   TextEditingController imageContrlr = TextEditingController();
//   TextEditingController searchContrlr = TextEditingController();
//
//   bool isActive = true;
//   bool addNew = false;
//   void changeAddNew(bool va) => addNew = va;
//   int? groupId;
//   int? first;
//   int selectedIndex = 0;
//   String? groupName;
//   bool onChange = false;
//
//   StaticGroup? group;
//   @override
//   void initState() {
//     Variable.bannerimage = null;
//     Variable.divisionValue = 0;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FDI.i<CreateStaticGroupCubit>(),
//         ),
//         BlocProvider(
//           create: (context) =>
//           FDI.i<GetStaticGroupListCubit>()..getStaticGroupList(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<ManageStaticGroupCubit>(),
//         ),
//       ],
//       child: MultiBlocListener(
//           listeners: [
//             BlocListener<GetStaticGroupListCubit, GetStaticGroupListState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                     orElse: () {},
//                     success: (data) {
//                       if (data.data1.isNotEmpty) first = data.data1?.first.id;
//                     });
//               },
//             ),
//             BlocListener<CreateStaticGroupCubit, CreateStaticGroupState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showToast(data.data2);
//                           // onSuccess();
//                           Navigator.pop(context);
//                           setState(() {});
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 })
//           ],
//           child: StatefulBuilder(builder: (context, setState) {
//             if (!onChange) {
//               nameContrlr =
//                   TextEditingController(text: addNew ? "" : group?.name);
//               idContrlr = TextEditingController(
//                   text: addNew ? "" : group?.id.toString());
//               codeContrlr =
//                   TextEditingController(text: addNew ? "" : group?.code);
//               descContrlr =
//                   TextEditingController(text: addNew ? "" : group?.description);
//               // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
//               searchContrlr =
//                   TextEditingController(text: addNew ? "" : group?.searchName);
//             }
//             onChange = false;
//             if (first != null && group == null) {
//               selectedIndex = first!;
//               context.read<ManageStaticGroupCubit>()
//                 ..getStaticGroup(first.toString());
//             }
//
//             return AlertDialog(
//               content: PopUpHeader(
//                 onApply: () {
//                   context.read<CreateStaticGroupCubit>().createStaticGroup(
//                       StaticGroup(
//                           name: nameContrlr.text,
//                           description: descContrlr.text,
//                           image: imageContrlr.text,
//                           isActive: true,
//                           searchName: searchContrlr.text));
//                 },
//                 onEdit: first == null
//                     ? null
//                     : () {
//                   context
//                       .read<ManageStaticGroupCubit>()
//                       .updateStaticGroup(
//                       selectedIndex.toString(),
//                       StaticGroup(
//                         name: nameContrlr.text,
//                         description: descContrlr.text,
//                         id: int.tryParse(idContrlr.text),
//                         code: codeContrlr.text,
//                         image: imageContrlr.text,
//                         searchName: searchContrlr.text,
//                         isActive: true,
//                       ));
//                 },
//                 onAddNew: (v) {
//                   changeAddNew(v);
//                   setState(() {});
//                 },
//                 label: "StaticGroup List ",
//                 dataField: Expanded(
//                   child: IntrinsicHeight(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ConfigureVerticalList(
//                             type: widget.type,
//                             refresh: () {
//                               // print("on refresh");
//                               setState(() {});
//                             },
//                             onClick: (StaticGroup v) {
//                               group = v;
//                               if (group?.id != selectedIndex) {
//                                 selectedIndex = group!.id!;
//
//                                 context.read<ManageStaticGroupCubit>()
//                                   ..getStaticGroup(selectedIndex.toString());
//                               }
//
//                               // print(v);
//                             },
//                           ),
//                           gapWidthColumn(),
//                           IntrinsicWidth(
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   PopUpInputField(
//                                     label: "ID",
//                                     controller: idContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Code",
//                                     controller: codeContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Name",
//                                     controller: nameContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Description",
//                                     controller: descContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Search Name",
//                                     controller: searchContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpFileUploadField(
//                                       onCancel: () {
//                                         imageContrlr.text = "";
//                                       },
//                                       fileName: imageContrlr.text,
//                                       fileUrl: group?.image,
//                                       onChange: (myFile) {
//                                         Variable.brandImage =
//                                             myFile.toUint8List();
//                                         imageContrlr.text =
//                                             myFile.fileName ?? "";
//                                       },
//                                       label: "image")
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })),
//     );
//   }
// }
//
// class SpecialOfferPopUpButton extends StatefulWidget {
//   final String? type;
//   final bool onAddNew;
//   SpecialOfferPopUpButton({Key? key, required this.onSuccess, this.type,this.onAddNew=false})
//       : super(key: key);
//   final VoidCallback onSuccess;
//
//   @override
//   State<SpecialOfferPopUpButton> createState() =>
//       _SpecialOfferPopUpButtonState();
// }
//
// class _SpecialOfferPopUpButtonState extends State<SpecialOfferPopUpButton> {
//   TextEditingController descriptionCtrlr = TextEditingController();
//
//   TextEditingController titleContrlr = TextEditingController();
//
//   // final TextEditingController quantityContrlr = TextEditingController();
//
//   TextEditingController notesController = TextEditingController();
//   TextEditingController fromContrlr = TextEditingController();
//
//   TextEditingController toController = TextEditingController();
//   TextEditingController fromDateContrlr = TextEditingController();
//
//   TextEditingController toDateController = TextEditingController();
//   ReadOfferPeriod? readOffer;
//   bool isActive = true;
//   String? fromDate;
//   String? toDate;
//   String? fromTime;
//   bool onChang=false;
//   String? toTime;
//   int id = 0;
//   void changeId(int val) {
//     id = val;
//     // setState(() {});
//     print("new id is $id");
//   }
//   bool addNew = false;
//
//   void changeAddNew(bool va) => addNew = va;
//
//   @override
//   Widget build(BuildContext context) {
//     print("+++Akkkk"+widget.onAddNew.toString());
//     if(addNew==true && onChang==false){
//       print("eeeee+++++");
//
//
//
//
//
//       titleContrlr.text="";
//       descriptionCtrlr.text="";
//       notesController.text="";
//       fromContrlr.text="";
//       toController.text="";
//       fromDateContrlr.text="";
//       toDateController.text="";
//       setState(() {
//
//       });
//
//
//
//
//
//
//     }
//     fromDate = readOffer?.fromDate ?? "";
//     print("date is$fromDate");
//     titleContrlr = TextEditingController(text:addNew? "":  readOffer?.title);
//     descriptionCtrlr = TextEditingController(text:addNew ?"": readOffer?.description);
//     notesController = TextEditingController(text:addNew ? "":  readOffer?.notes);
//     fromContrlr = TextEditingController(text:addNew? "":  readOffer?.fromTime);
//     toController = TextEditingController(text: addNew ? "": readOffer?.toTime);
//     fromDateContrlr = TextEditingController(text: readOffer?.fromDate);
//     toDateController = TextEditingController(text:addNew ? "": readOffer?.toDate);
//     print("from date from backend${fromDateContrlr.text}");
//     return BlocProvider(
//       create: (context) => FDI.i<ListofferperiodcubitCubit>(),
//       child: BlocProvider(
//         create: (context) => FDI.i<EditofferperiodcubitCubit>(),
//         child: BlocProvider(
//           create: (context) => FDI.i<ReadofferperiodcubitCubit>(),
//           child: BlocProvider(
//             create: (context) => FDI.i<CreateofferperiodcubitCubit>(),
//             child: MultiBlocListener(
//               listeners: [
//                 BlocListener<ReadofferperiodcubitCubit,
//                     ReadofferperiodcubitState>(
//                   listener: (context, state) {
//                     print("stateSSSSSSSS"+state.toString());
//                     print(state);
//                     state.maybeWhen(
//                         orElse: () {},
//                         success: (data) {
//                           print("dataAnvarrrr"+data.toString());
//                           readOffer = data;
//
//                           // print("date is//");
//                           setState(() {});
//                         });
//                   },
//                 ),
//                 BlocListener<ListofferperiodcubitCubit,
//                     ListofferperiodcubitState>(
//                   listener: (context, state) {
//                     state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data?.first.id != null) {
//                           context
//                               .read<ReadofferperiodcubitCubit>()
//                               .getOfferPeriod(data!.first.id!);
//                         }
//                       },
//                     );
//                   },
//                 ),
//               ],
//               child: BlocListener<EditofferperiodcubitCubit,
//                   EditofferperiodcubitState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showSnackBarSuccess(data.data2);
//                           widget.onSuccess();
//                           Navigator.pop(context);
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 },
//                 child: BlocListener<CreateofferperiodcubitCubit,
//                     CreateofferperiodcubitState>(
//                   listener: (context, state) {
//                     state.maybeWhen(
//                         orElse: () {},
//                         success: (data) {
//                           if (data.data1) {
//                             context.showSnackBarSuccess(data.data2);
//                             widget.onSuccess();
//                             Navigator.pop(context);
//                           } else {
//                             context.showToastError(data.data2);
//                           }
//                         },
//                         error: () {
//                           context.showToastError("Error try again");
//                         });
//                   },
//                   child: StatefulBuilder(builder: (context, setStae) {
//                     return AlertDialog(
//                       content: PopUpHeader(
//
//                         widthPopup:70,
//                         // isDirectCreate: true,
//                         // onAddNew: (data) {},
//                         onEdit: () {
//                           fromTime = fromContrlr.text.isNotEmpty
//                               ? fromContrlr.text.split(" ")[0]
//                               : fromContrlr.text;
//                           toTime = toController.text.isNotEmpty
//                               ? toController.text.split(" ")[0]
//                               : toController.text;
//                           context.read<EditofferperiodcubitCubit>().editOfferPeriod(
//                               OfferPeriodCreation(
//                                   description: descriptionCtrlr.text,
//                                   fromDate: fromDateContrlr.text,
//                                   fromTime: fromContrlr.text,
//                                   isActive: isActive,
//                                   // maximumQty: int.tryParse(quantityContrlr.text),
//                                   title: titleContrlr.text,
//                                   notes: notesController.text,
//                                   toDate: toDateController.text,
//                                   toTime: toController.text),
//                               id);
//                         },
//                         onApply: () {
//                           fromTime = fromContrlr.text.isNotEmpty
//                               ? fromContrlr.text.split(" ")[0]
//                               : fromContrlr.text;
//                           toTime = toController.text.isNotEmpty
//                               ? toController.text.split(" ")[0]
//                               : toController.text;
//
//                           context
//                               .read<CreateofferperiodcubitCubit>()
//                               .createOfferPeriod(OfferPeriodCreation(
//                               description: descriptionCtrlr.text,
//                               fromDate: fromDate,
//                               fromTime: fromTime,
//                               isActive: isActive,
//                               // maximumQty: int.tryParse(quantityContrlr.text),
//                               title: titleContrlr.text,
//                               notes: notesController.text,
//                               toDate: toDate,
//                               toTime: toTime));
//                         },
//                         onAddNew: (v) {
//
//                           changeAddNew(v);
//
//                           setState(() {});
//
//                         },
//                         label: "Create OfferPeriod",
//                         dataField: Expanded(
//                           child: IntrinsicHeight(
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 16.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   ConfigureVerticalList(
//                                     // changeId: changeId,
//                                     type: "offer-period",
//                                     refresh: () {
//                                       // setState(() {});
//                                     },
//                                     onClick: () {
//                                       // context
//                                       //     .read<ReadOfferPeriodCubit>()
//                                       //     .getOfferPeriod(2);
//                                     },
//                                   ),
//                                   IntrinsicWidth(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.start,
//                                       children: [
//                                         PopUpInputField(
//                                           label: "code",
//                                           restricted: true,
//                                           enable: true,
//                                         ),
//                                         PopUpInputField(
//                                             label: "title",
//                                             required: true,
//                                             enable: true,
//                                             controller: titleContrlr),
//                                         PopUpInputField(
//                                             label: "Description",
//                                             controller: descriptionCtrlr,
//                                             enable: true),
//                                         PopUpInputField(
//                                             label: "notes",
//                                             controller: notesController,
//                                             enable: true),
//                                         // PopUpInputField(
//                                         //   label: "maximum quantity",
//                                         //   required: true,
//                                         //   enable: true,
//                                         //   controller: quantityContrlr,
//                                         // ),
//                                         Spacer()
//                                       ],
//                                     ),
//                                   ),
//                                   gapWidthColumn(),
//                                   IntrinsicWidth(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         PopUpDateFormField(
//                                             format: DateFormat('yyyy-MM-dd'),
//                                             controller: fromDateContrlr,
//                                             // initialValue:
//                                             //     DateTime.parse(fromDate!),
//                                             label: "From date",
//                                             onSaved: (newValue) {
//                                               fromDate = newValue
//                                                   ?.toIso8601String()
//                                                   .split("T")[0] ??
//                                                   "";
//                                             },
//                                             enable: true),
//                                         PopUpDateFormField(
//                                             format: DateFormat('yyyy-MM-dd'),
//                                             controller: toDateController,
//                                             label: "To date",
//                                             onSaved: (newValue) {
//                                               print(toDate);
//                                               toDate = newValue
//                                                   ?.toIso8601String()
//                                                   .split("T")[0] ??
//                                                   "";
//                                             },
//                                             enable: true),
//                                         PopupTimePicker(
//                                           label: "from time",
//                                           onSubmit: (p0) {
//                                             print(p0);
//                                           },
//                                           controller: fromContrlr,
//                                         ),
//                                         PopupTimePicker(
//                                           label: "to time",
//                                           onSubmit: (p0) {},
//                                           controller: toController,
//                                         ),
//                                         PopUpSwitchTile(
//                                             value: isActive,
//                                             title: "is Active",
//                                             onClick: (b) {
//                                               isActive = b;
//                                               setStae(() {});
//                                             }),
//                                         Spacer()
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
class PopUpHeader extends StatefulWidget {
  final bool? addNew;
  final bool buttonCheck;
  final bool functionChane;
  final VoidCallback? onTap;
  final String? label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback? onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  final bool changer;

  const PopUpHeader({
    Key? key,
    this.buttonCheck = false,
    this.functionChane = false,
    this.label,
    this.onEdit,
    this.widthPopup = 50,
    this.onCancel,
    this.changer = false,
    this.dataField,
    this.onAddNew,
    this.onApply,
    this.isDirectCreate = false,
    this.onTap,
    this.addNew,
  }) : super(key: key);

  @override
  _PopUpHeaderState createState() => _PopUpHeaderState();
}

class _PopUpHeaderState extends State<PopUpHeader> {
  @override
  Widget build(BuildContext context) {
    changer() {
      widget.isDirectCreate != false;
    }

    return Container(
      // height:100,

      padding: EdgeInsets.all(10),
      width: 640,
      child: GeneralSavePage(
        onEdit: widget.onEdit,
        onPopUp: true,
        onApply: widget.onApply,
        onCreate: widget.isDirectCreate ? true : widget.addNew!,
        onCancel: widget.onCancel,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label ?? "", fontSize: 18),
                widget.buttonCheck
                    ? Container()
                    : Transform.scale(
                        scale: 0.8,
                        child: widget.functionChane
                            ? ClipOval(
                                child: Material(
                                  color: Colors.grey.withOpacity(.5),
                                  child: GestureDetector(
                                      onTap: widget.onTap,
                                      child: Icon(
                                        widget.addNew!
                                            ? Icons.close
                                            : Icons.add,
                                        color: Colors.black,
                                      )),
                                ),
                              )
                            : _toggleButtonList(widget.onAddNew ?? (v) {}),
                      ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);

  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
        children: [
          Icon(Icons.add_rounded, color: Colors.grey),
          Icon(Icons.cleaning_services_rounded, color: Colors.grey),
          Icon(Icons.history_rounded, color: Colors.grey),
        ],
        renderBorder: false,
        borderWidth: 0.1,
        // splashColor: Palette.SUCCESS,
        isSelected: _selections,
        onPressed: (int i) {
          setState(() {
            _selections[i] = !_selections[i];
            onAdNew(_selections[0]);
          });
        },
      );
}
