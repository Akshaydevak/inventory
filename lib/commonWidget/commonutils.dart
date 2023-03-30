import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/allcategorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/attributepatchlist_cubit.dart';
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
import 'package:inventory/Screens/heirarchy/general/cubits/subcategorylist/subcategory_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgroupread/uomgroupread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';
import 'package:inventory/Screens/heirarchy/general/screens.dart';
import 'package:inventory/Screens/logi/inventorylist/inventorylist_cubit.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/customer_group/customer_group_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/customergroup/customer_group_promotion_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/chennellist/channel_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/createoffergroup/create_offer_group_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/de_activate_offer_post_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/offergroup/list_offer_group_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/payment_list/payment_list_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/paymentpost/payment_sale_post_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/sales/invoice/ipayment_list.dart';
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
import 'package:inventory/Screens/variant/variantdetails/cubits/attributetypesave_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/createlinkeditem/createlinkeditem_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/createlinkeditem/linkeditemlistread_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/linkeditemcreation/linked_itemcreation_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/linkedlistvertica/linkedlistverticallist_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/liststock/liststockpartition_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/read_linkeditem/readlinkeditem_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';

import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
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
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Screens/heirarchy/general/cubits/attributecreationread_cubit.dart';
import '../Screens/heirarchy/general/cubits/categoryread/categoryread_cubit.dart';
import '../Screens/heirarchy/general/cubits/devision_list/materialdelete_cubit.dart';
import '../Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import '../Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import '../Screens/heirarchy/general/cubits/uomGroupcreation/uomgroup_creation_cubit.dart';
import '../Screens/heirarchy/general/cubits/variantframeworkpost/variantframeworkpost_cubit.dart';
import '../Screens/heirarchy/general/model/brandreadmodel.dart';
import '../Screens/heirarchy/general/model/frameworklistmodel.dart';
import '../Screens/promotiontab/buy_more/cubit/get_product_by_groupcode/get_product_by_group_code_cubit.dart';
import '../Screens/promotiontab/sale/cubits/ListOfferPeriodGroup/list_offer_period_cubit.dart';
import '../Screens/promotiontab/sale/cubits/ReadOfferPeriod/read_offer_period_cubit.dart';
import '../Screens/promotiontab/sale/cubits/create_offer_period/create_offer_period_cubit.dart';
import '../Screens/promotiontab/sale/cubits/patch_offer_group/patch_offer_group_cubit.dart';
import '../Screens/promotiontab/sale/cubits/readOfferGroup/read_offer_group_cubit.dart';
import '../Screens/promotiontab/sale/cubits/variantList/variant_list_promotion_cubit.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricinggrouppatch/pricinggrouppatch_cubit.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricinggroupread/readpricingroupread_cubit.dart';
import '../Screens/variant/channel_costing_allocation/cubits/pricingrouplist/pricingroupcreate_cubit.dart';
import '../Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import '../Screens/variant/variantdetails/cubits/stock_partitionread/stock_partition_read_cubit.dart';
import '../Screens/variant/variantdetails/cubits/stockpartition/stockpartitionpost_cubit.dart';
import '../Screens/variant/variantdetails/cubits/vendordetailslist/vendordetailslist_cubit.dart';
import '../Screens/variant/variantdetails/model/vendormodel.dart';

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
        insetPadding:EdgeInsets.zero,
        titlePadding: EdgeInsets.zero, contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
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
          child:
          Container(
            height: 110,
            width: 10,
            // color: Colors.red,

            margin: EdgeInsets.all(10),

            child: state.maybeWhen(orElse: () {
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
              return Container(
                margin:EdgeInsets.symmetric(horizontal: 7),

                alignment: Alignment.topLeft,

                child: Container(
                  alignment: Alignment.topLeft,
                    child: ListView.separated(
                      separatorBuilder:(context, index){
                        return SizedBox(height: 5,);
                      } ,
                      padding: EdgeInsets.all(0),

                  itemCount: inventoryList?.length??1,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: index,
                            groupValue: grpValue,

                            onChanged: (int? value) {
                              setState(() async {
                                grpValue = value!;
                                print("inventory" +
                                    Variable.inventory_ID.toString());
                                // print(inventoryList?[index]
                                //     .inventoryCode);
                                Variable.inventory_ID = inventoryList![index]
                                    .businessUnitCode
                                    .toString();
                                Variable.inventory_Name =
                                    inventoryList![index].name.toString();



                                final SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                                prefs.setString(
                                    "inventory",
                                    inventoryList![index]
                                        .businessUnitCode
                                        .toString());
                                prefs.setString("inventory_name",
                                    inventoryList![index].name.toString());
                                var val=  prefs.getInt('index');

                                Navigator.pop(context);
                                Navigator.pushReplacement(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            DashBoard(
                                              index: val??0,
                                            )));



                                // print("Value");
                                // print(value);
                                // print("grpvalue");
                                // print(grpValue);
                                // ModalRoute.of(context)?.settings.name;
                                // Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context) => super.widget,
                                // )
                                // );
                              });

                              // print(Variable.inventory_ID);
                              // modulePageState.setState(() {});
                            },
                            // value: selected == index,
                            activeColor:Pellet.tableBlueHeaderPrint),
                        SizedBox(width: 10,),
                        Text(inventoryList?[index].name ?? ""),



                      ],
                    ),

                    // ListTile(
                    //   trailing: Text(inventoryList?[index].name ?? ""),
                    //   title:
                    //   Radio(
                    //       value: index,
                    //       groupValue: grpValue,
                    //
                    //       onChanged: (int? value) {
                    //         setState(() async {
                    //           grpValue = value!;
                    //           print("inventory" +
                    //               Variable.inventory_ID.toString());
                    //           // print(inventoryList?[index]
                    //           //     .inventoryCode);
                    //           Variable.inventory_ID = inventoryList![index]
                    //               .businessUnitCode
                    //               .toString();
                    //           Variable.inventory_Name =
                    //               inventoryList![index].name.toString();
                    //
                    //
                    //
                    //           final SharedPreferences prefs =
                    //               await SharedPreferences.getInstance();
                    //           prefs.setString(
                    //               "inventory",
                    //               inventoryList![index]
                    //                   .businessUnitCode
                    //                   .toString());
                    //           prefs.setString("inventory_name",
                    //               inventoryList![index].name.toString());
                    //         var val=  prefs.getInt('index');
                    //
                    //           Navigator.pop(context);
                    //           Navigator.pushReplacement(
                    //               context,
                    //               new MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       DashBoard(
                    //                         index: val??0,
                    //                       )));
                    //
                    //
                    //
                    //           // print("Value");
                    //           // print(value);
                    //           // print("grpvalue");
                    //           // print(grpValue);
                    //           // ModalRoute.of(context)?.settings.name;
                    //           // Navigator.of(context).push(MaterialPageRoute(
                    //           //   builder: (context) => super.widget,
                    //           // )
                    //           // );
                    //         });
                    //
                    //         // print(Variable.inventory_ID);
                    //         // modulePageState.setState(() {});
                    //       },
                    //       // value: selected == index,
                    //       activeColor:Pellet.tableBlueHeaderPrint),
                    // ),
                  ),

                )),
              );

            }),
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
                                            activeColor: Pellet.tableBlueHeaderPrint),
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
}class LogoutPopup extends StatefulWidget {
  final Function? clear;
  final Function? onPressed;
  final Function? onLeftPress;
  final String? onLeftText;
  final String? onRightText;
  final List<OrderLines>? table;
  final int? verticalId;
  final String message;

  LogoutPopup(
      {this.verticalId, this.table, this.clear, required this.onPressed,required this.message, this.onLeftPress, this.onLeftText, this.onRightText});

  @override
  State<LogoutPopup> createState() => _LogoutPopup();
}

class _LogoutPopup extends State<LogoutPopup> {
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
          contentPadding: EdgeInsets.zero,
      //     actions: [
      //   TextButtonLarge(
      //     text: "Cancel",
      //     labelcolor:Colors.grey ,
      //
      //     clr: Colors.white,
      //     onPress: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   TextButtonLarge(
      //       text: "Confirm",
      //       onPress: () {
      //         widget.onPressed!();
      //       }
      //       // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
      //
      //       ),
      //
      // ],
          content: Container(
              height: 150,
              child: Column(
            children: [
              Container(
                // height: 80,
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(widget.message),
                  ],
                ),
              ),
              Spacer(),

              Container(
                  height: 60,
                // d
                color:  Color(0xffF8F8F8),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: TextButtonLarge(
                              text: widget?.onLeftText??"Cancel",
                              labelcolor:Colors.grey ,

                              clr: Colors.white,
                              onPress: () {
                                if(widget.onLeftPress!=null)
                                  widget.onLeftPress!();
                                else
                                Navigator.pop(context);
                              },
                            ),
                          ),   Container(
          margin: EdgeInsets.only(bottom: 5),
                        child:  TextButtonLarge(
                              text:widget?.onRightText?? "Confirm",
                              onPress: () {
                                widget.onPressed!();
                              }
                              // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);

                              ),
                        ),

                        // ],


                      ]
                  )
              )
            ],
          )));
    });
  }
}

class SuccessPopup extends StatefulWidget {
  final String content;

  SuccessPopup({required this.content});

  @override
  State<SuccessPopup> createState() => _SuccessPopupState();
}

class _SuccessPopupState extends State<SuccessPopup> {
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return AlertDialog(
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          content: Text(
            widget.content,
            style: TextStyle(color: Colors.green),
          ));
    });
  }
}

class FailiurePopup extends StatefulWidget {
  final String content;

  FailiurePopup({required this.content});

  @override
  State<FailiurePopup> createState() => FailiurePopupState();
}

class FailiurePopupState extends State<FailiurePopup> {
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return AlertDialog(
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          content: Text(
            widget.content,
            style: TextStyle(color: Colors.red),
          ));
    });
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
  final String? code;
  final dynamic? obj;
  final Function? listAssign;
  final List<LinkedItemListModel>?linkedListItemTable;
  final List<dynamic>?passingList;
  final List<dynamic>?passingList2;

  final int? veritiaclid;

  final bool onAddNew;
  final VoidCallback? onBack;

  ConfigurePopup(
      {Key? key,
         this.linkedListItemTable,

      required this.type,
      this.onBack,
        this.code,
  this.passingList,
        this.obj,
      this.onAddNew = false,
      this.listAssign,
      this.veritiaclid, this.passingList2})
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
        break;
      case "CreateSearchLinkedItem-group":

        {

          data = CreateSearchLinkedItem(
            veritcalCode:code,
            linkedListItemTable:linkedListItemTable,
            listAssign: listAssign,
            type: type,
          );
        }
        break;
      case "CustomGroupLinkedItem":

        {

          data = CustomGroupLinkedItem(
            veritcalCode:code,
            linkedListItemTable:passingList,
            listAssign: listAssign,
            type: type,
          );
        }
        break;
      case "VariantPromotionCreatativePopup":

        {

          data = VariantPromotionCreatativePopup(
            veritcalCode:code,
            linkedListItemTable:linkedListItemTable,
            listAssign: listAssign,
            type: type,
          );
        }
        break;

        case "DiscountVariantCreatativePopup":

        {

          data = DiscountVariantCreatativePopup(
            veritcalCode:code,
            obj: obj,
            passingList: passingList,

            linkedListItemTable:linkedListItemTable,
            listAssign: listAssign,
            type: type,
          );
        }
        break;
      case "DiscountVariantGroupCodeCreatativePopup":

        {

          data = DiscountVariantGroupCodeCreatativePopup(
            veritcalCode:code,
            obj: obj,
            passingList: passingList,
            passingList2: passingList2,

            linkedListItemTable:linkedListItemTable,
            listAssign: listAssign,
            type: type,
          );
        }
        break;
      case "VariantAddTimePopup":

        {

          data = VariantAddTimePopup(
            veritcalCode:code,
            obj: obj,
            passingList: passingList,

            linkedListItemTable:linkedListItemTable,
            listAssign: listAssign,
            type: type,
          );
        }
        break;
      case "vendorDetailList_popup":
        {
          data = VendorDetailsList(
            listAssign: listAssign,
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
            id:veritiaclid
          );
        }
        break;
      case "Subcategory_group":
        {
          data = SubCategoryCreatePopUp(
            type: type,
            id:veritiaclid
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
            id:veritiaclid,
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
            id: veritiaclid,
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
        break;    case "create_Attribute":
        {
          data = CreateAttributePopUp(
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
      case "costingCreate":
        {
          data = CreateCosting(
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
      case "CreateOfferPeriodCreatePopUp":
        {
          data = CreateOfferPeriodCreatePopUp(
            type: type,
          );
        }
        break;
      case "CreateOfferGroupPopUp":
        {
          data = CreateOfferGroupPopUp(
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
      case "pricingCreate":
        {
          data = CreatePricingPopUp(
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
        break;
      case "StockPartitionPopUp":
        {
          data = StockPartitionPopUp(
            type: type,
          );
        }
        break;
      case "LinkedItemCreatePopUp":
        {
          data = LinkedItemCreatePopUp(
            veritiaclid: veritiaclid,
            linkedListItemTable:linkedListItemTable,
            veritiacalCode: code,
            type: type,
            linkedListAssign: listAssign!,
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
  TextEditingController parentNameController = TextEditingController();
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1) {
                    Navigator.pop(context);
                    setState(() {
                      context.read<Listbrand2Cubit>().getSlotSectionPage();
                    });
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                        image: imageController.text,
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

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context
                                            .read<ImagepostCubit>()
                                            .postImage(imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: parentNameController,
                                  icondrop: true,
                                  title: "Parent Id",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "BrandTabalePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            parentNameController.text =
                                                va?.name ?? "";
                                            parentIdController.text =
                                                va?.code ?? "";
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
                                //   label: "Parent Id",
                                //   // row: true,
                                //
                                //   type: "BrandPopUpCall",
                                //   value: parentName,
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //       parentName = va?.name ?? "";
                                //       parentIdController.text = va?.code ?? "";
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
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
  TextEditingController parendNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController brandIdentifierUrl = TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  var list1;

  TextEditingController controller = TextEditingController();
  bool addNew = false;

  void changeAddNew(bool va) => addNew = va;

  void initState() {
    context.read<Listbrand2Cubit>().getSlotSectionPage();

    super.initState();
  }
  clear(){
    codeController.text =  "";
    nameController.text =  "";

    imageController.text = "";
    imageName =  "";
    parentIdController.text =  "";
    descriptionController.text =  "";
    brandIdentifierUrl.text =  "";
    parentName =  "";
    parendNameController.text =  "";
    active =  false;

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
                        imageName = data.image ?? "";
                        parentIdController.text = data.parentCode ?? "";
                        descriptionController.text = data.description ?? "";
                        brandIdentifierUrl.text = data.brandIdentifierUrl ?? "";
                        parentName = data.parentCode ?? "";
                        parendNameController.text = data.parentName ?? "";
                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<BranddeleteCubit, BranddeleteState>(
              listener: (context, state) {
                state.maybeWhen(orElse: () {
                  // context.
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // print("checkingdata" + data.data1.toString());
                  if (data.data1) {
                    clear();
                    // Navigator.pop(context);
                    // context.showSnackBarSuccess(data.data2);
                    context.read<Listbrand2Cubit>().getSlotSectionPage();

                    // select = true;
                  } else {
                    Navigator.pop(context);
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
                    list1 = list;

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

                    // buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    label: "Brand",
                    onApply: () {},
                    onEdit: () {
                      BrandCreationtModel model = BrandCreationtModel(
                        parentCode: parentIdController?.text ?? "",
                        name: nameController.text ?? "",
                        brandIdentifierUrl: brandIdentifierUrl.text ?? "",
                        image: imageController.text,
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
                              list: list1,
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  clear();
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
                                  height: 60,
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageController.clear();
                                      });
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";
                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context
                                            .read<ImagepostCubit>()
                                            .postImage(imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:"Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));


                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  controller: parendNameController,
                                  icondrop: true,
                                  title: "Parent Id",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "BrandTabalePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            parendNameController.text =
                                                va?.name ?? "";
                                            parentIdController.text =
                                                va?.code ?? "";
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
                                //   label: "Parent Id",
                                //   // row: true,
                                //
                                //   type: "BrandPopUpCall",
                                //   value: parentName,
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       parentName = va?.name ?? "";
                                //       parentIdController.text = va?.code ?? "";
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1) {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context.read<MaterialListCubit>().getMaterialList();
                    ;
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                        image: imageContollercontroller.text,
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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageContollercontroller.clear();
                                      });
                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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
  final String? veritcalCode;
  final Function? listAssign;
  final List<LinkedItemListModel>?linkedListItemTable;

  CreateSearchLinkedItem({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
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
  List<String?>additionCheck=[];


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<LinkedItemListIdModel> table = [];
  List<int> list = [];
  List<LinkedItemListIdModel> list1 = [];

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
          create: (context) =>
              LinkeditemlistreadCubit()..getLinkedItemListRead(widget.veritcalCode),
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
                  print("the real Akshay" + data.toString());


                  print(widget.linkedListItemTable);
                  if (data.isNotEmpty==true) {
                    setState(() {
                      list1.clear();
                      table = data;
                      additionCheck.clear();

                      print("11111111111111111111111");
                      if(widget.linkedListItemTable?.isNotEmpty==true){
                        print("entered");
                        for (var i =0;i<widget.linkedListItemTable!.length;i++){
                          print("entered1");
                          additionCheck.add(widget.linkedListItemTable![i].name);
                          list1.add( LinkedItemListIdModel(
                              id:widget.linkedListItemTable![i].id,
                              name:widget.linkedListItemTable![i].name));
                          print("entered");
                        }
                        setState(() {
print(list1.contains(widget.linkedListItemTable?[0].name));
                        });





                      }









                    }

                    );
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
                    buttonVisible: false,
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
                        image: imageContollercontroller.text,
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
                                ctrlr: searchContoller,
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
                              height: MediaQuery
                                  .of(context).size.height/ 1.8,
                            child: SingleChildScrollView(
                              child: Container(

                                // width: w/7,
                                // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                          '',

                                          // padding: EdgeInsets.all(7),
                                          //
                                          // height: 46,
                                          // textColor: Colors.black,
                                          // color: Color(0xffE5E5E5),

                                          size: 13,
                                        ),

                                        tableHeadtext(
                                          'Item Name',
                                          // textColor: Colors.black,
                                          // padding: EdgeInsets.all(7),
                                          // height: 46,
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

                                                child: CustomCheckBox(
                                                  key: UniqueKey(),
                                                  value:additionCheck.contains(table![i].name),
                                                  onChange: (p0) {
                                                    if (p0)
                                                      list1.add(
                                                          LinkedItemListIdModel(
                                                              id: table![i].id,
                                                              name: table[i].name));
                                                    else
                                                      list1.removeWhere((element) =>
                                                          element == list1[i]);
                                                    // list1.remove(table![i]);

                                                    widget.listAssign!(list1);

                                                    print(list1);
                                                  },
                                                ),
                                                // Text(keys[i].key??"")
                                              ),
                                              TableCell(
                                                  verticalAlignment:
                                                      TableCellVerticalAlignment
                                                          .middle,
                                                  child: textPadding(
                                                      table[i].name ?? "",
                                                     )
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
                                  },
                                ),
                              ),
                            ),
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


class CustomGroupLinkedItem extends StatefulWidget {
  final String type;
  final String? veritcalCode;
  final Function? listAssign;
  final List<dynamic>?linkedListItemTable;

  CustomGroupLinkedItem({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
    required this.type,
    required this.listAssign,
  }) : super(key: key);

  @override
  _CustomGroupLinkedItem createState() => _CustomGroupLinkedItem();
}

class _CustomGroupLinkedItem extends State<CustomGroupLinkedItem> {
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
  List<String?>additionCheck=[];


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<CustomerGroupModel>? table = [];
  List<int> list = [];
  List<AvailableCustomerGroups> list1 = [];

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
          create: (context) => CustomerGroupPromotionCubit()..getPromotionCustomerGroupList(),
        ),
      ],
      child: Builder(builder: (context) {

        return MultiBlocListener(
          listeners: [
            BlocListener<CustomerGroupPromotionCubit, CustomerGroupPromotionState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("the real Akshay" + data.toString());


                  print(widget.linkedListItemTable);
                  if (data?.data.isNotEmpty==true) {
                    setState(() {
                      list1.clear();
                      table = data.data;
                      additionCheck.clear();

                      print("11111111111111111111111");
                      if(widget.linkedListItemTable?.isNotEmpty==true){
                        print("entered");
                        for (var i =0;i<widget.linkedListItemTable!.length;i++){
                          print("entered1");
                          additionCheck.add(widget.linkedListItemTable![i].customerGroupName);
                          list1.add( AvailableCustomerGroups(
                              customerGroupId:widget.linkedListItemTable![i].customerGroupCode,
                              customerGroupCode:widget.linkedListItemTable![i].customerGroupCode,
                          customerGroupName:widget.linkedListItemTable![i].customerGroupName ));
                          print("entered");
                        }
                        setState(() {
// print(list1.contains(widget.linkedListItemTable?[0].name));
                        });





                      }









                    }

                    );
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
                    label: "Customer Group",
                    onApply: () {

                      widget.listAssign!(list1);
                      Navigator.pop(context);
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
                                ctrlr: searchContoller,
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
                              height: MediaQuery
                                  .of(context).size.height/ 1.8,
                            child: SingleChildScrollView(
                              child: Container(

                                // width: w/7,
                                // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                          '',

                                          // padding: EdgeInsets.all(7),
                                          //
                                          // height: 46,
                                          // textColor: Colors.black,
                                          // color: Color(0xffE5E5E5),

                                          size: 13,
                                        ),

                                        tableHeadtext(
                                          'Item Name',
                                          // textColor: Colors.black,
                                          // padding: EdgeInsets.all(7),
                                          // height: 46,
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
                                    if (table?.isNotEmpty == true) ...[
                                      for (var i = 0; i < table!.length; i++)
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

                                                child: CustomCheckBox(
                                                  key: UniqueKey(),
                                                  value:additionCheck.contains(table?[i].name),
                                                  onChange: (p0) {
                                                    if (p0) {
                                                      print(p0);
                                                      list1.add(
                                                          AvailableCustomerGroups(
                                                            customerGroupId:table?[i]
                                                              .code??"" ,
                                                              customerGroupCode: table?[i]
                                                                  .code??"",
                                                              customerGroupName: table?[i]
                                                                  .name??""
                                                          ));
                                                      additionCheck.add(
                                                          table?[i].name??"");
                                                    }
                                                    else{
                                                      list1.removeWhere((element) =>
                                                      element == list1[i]);
                                                      additionCheck.removeWhere((element) =>
                                                      element == table?[i].name);
                                                    }

                                                    // list1.remove(table![i]);

                                                    // widget.listAssign!(list1);

                                                    print(list1);
                                                  },
                                                ),
                                                // Text(keys[i].key??"")
                                              ),
                                              TableCell(
                                                  verticalAlignment:
                                                      TableCellVerticalAlignment
                                                          .middle,
                                                  child: textPadding(
                                                      table?[i].name ?? "",
                                                     )
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
                                  },
                                ),
                              ),
                            ),
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








class VariantPromotionCreatativePopup extends StatefulWidget {
  final String type;
  final String? veritcalCode;
  final Function? listAssign;
  final List<LinkedItemListModel>?linkedListItemTable;

    VariantPromotionCreatativePopup({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
    required this.type,
    required this.listAssign,
  }) : super(key: key);

  @override
  _VariantPromotionCreatativePopup createState() => _VariantPromotionCreatativePopup();
}

class _VariantPromotionCreatativePopup extends State<VariantPromotionCreatativePopup> {
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
  List<String?>additionCheck=[];


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<VariantModel> table = [];
  List<int> list = [];
  List<ViewAllProductsVariantModel> list1 = [];

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
          create: (context) => DeActivateOfferPostCubit(),
        ),

        // BlocProvider(
        //   create: (context) => PromotionSaleDeactivateCubit(),
        // ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<PromotionSaleDeactivateCubit, PromotionSaleDeactivateState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  // context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1==true) {
                    setState(() {
                      if(data.data2.runtimeType!=String){
                        List<SaleLines>responseList=data.data2;
                        for(var val in responseList){
                          table.add(VariantModel(barcode: val.barcode,
                          variantCode: val.variantCode??"",
                          variantId: val.variantId,
                          typeData: val.typeData,
                          couponname: val.couponname??"",
                          offerName: val.offerName??"",
                          variantName: val.variantName));
                        }
                        additionCheck.clear();
                      }else{
                        Navigator.pop(context);
                        Navigator.pop(context);
                        context.showSnackBarSuccess(Variable.errorMessege);

                      }


//                       if(widget.linkedListItemTable?.isNotEmpty==true){
//                         print("entered");
//                         for (var i =0;i<widget.linkedListItemTable!.length;i++){
//                           print("entered1");
//                           additionCheck.add(widget.linkedListItemTable![i].name);
//                           list1.add( LinkedItemListIdModel(
//                               id:widget.linkedListItemTable![i].id,
//                               name:widget.linkedListItemTable![i].name));
//                           print("entered");
//                         }
//                         setState(() {
// print(list1.contains(widget.linkedListItemTable?[0].name));
//                         });
//
//
//
//
//
//                       }









                    }

                    );
                  }
                  else{
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);

                  }

                  // context.showSnackBarSuccess(data.data2);

                  ;
                });
              },
            ),
            BlocListener<DeActivateOfferPostCubit, DeActivateOfferPostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    // context.read<MaterialListCubit>().getMaterialList();
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
                    buttonVisible: true,
                    functionChane: true,
                    buttonCheck: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Variant Item",
                    onApply: () {
                      print(list1);

                      context
                          .read<DeActivateOfferPostCubit>()
                          .postCreatativeVariant(list1);

                      // widget.onTap();
                      setState(() {});
                    },
                    onEdit: () {
                      // MaterialReadModel model = MaterialReadModel(
                      //   name: namecontroller?.text ?? "",
                      //   image: imageContollercontroller?.text ?? "",
                      //   description: descriptionContollercontroller?.text ?? "",
                      //   searchNmae: searchNamecontroller?.text ?? "",
                      //   isActive: active,
                      // );
                      // // print(model);
                      // context
                      //     .read<MaterialcraetionCubit>()
                      //     .postmaterialPatch(veritiaclid, model);
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
                            // width: w/7,
                            // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                      '',

                                      // padding: EdgeInsets.all(7),
                                      //
                                      // height: 46,
                                      // textColor: Colors.black,
                                      // color: Color(0xffE5E5E5),

                                      size: 13,
                                    ),

                                    tableHeadtext(
                                      'Item Id',
                                      // textColor: Colors.black,
                                      // padding: EdgeInsets.all(7),
                                      // height: 46,
                                      size: 13,
                                      // color: Color(0xffE5E5E5),
                                    ),
                                    tableHeadtext(
                                      'VariantName',
                                      // textColor: Colors.black,
                                      // padding: EdgeInsets.all(7),
                                      // height: 46,
                                      size: 13,
                                      // color: Color(0xffE5E5E5),
                                    ),
                                    tableHeadtext(
                                      'Active Offer',
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

                                            child: CustomCheckBox(
                                              key: UniqueKey(),
                                              value:additionCheck.contains(table![i].variantName),
                                              onChange: (p0) {
                                                if (p0)
                                                  list1.add(
                                                      ViewAllProductsVariantModel(
                                                          typeData: table[i].typeData,
                                                          variantId: table[i].variantId));
                                                else
                                                  list1.removeWhere((element) =>
                                                      element == list1[i]);
                                                // list1.remove(table![i]);

                                                // widget.listAssign!(list1);

                                                print(list1);
                                              },
                                            ),
                                            // Text(keys[i].key??"")
                                          ),
                                          TableCell(
                                              verticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              child: textPadding(
                                                  table[i].variantId.toString() ?? "",
                                                 )
                                              // Text(keys[i].value??"",)

                                              ),
                                          TableCell(
                                              verticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              child: textPadding(
                                                  table[i].variantName ?? "",
                                                 )
                                              ),
                                          TableCell(
                                              verticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              child: textPadding(
                                                  table[i].offerName?.isNotEmpty==true?table[i].offerName??"": table[i].couponname?? "",
                                                 )
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
                                1: FlexColumnWidth(3),
                                2: FlexColumnWidth(3),3: FlexColumnWidth(3),
                              },
                            ),
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

class DiscountVariantCreatativePopup extends StatefulWidget {
  final String type;
  final String? veritcalCode;
  final Function? listAssign;
  final PromotionVariantPostModel? obj;
  final List<LinkedItemListModel>?linkedListItemTable;
  final List<dynamic>?passingList;

  DiscountVariantCreatativePopup({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
    required this.type,
    this.passingList,
    this.obj,
    required this.listAssign,
  }) : super(key: key);

  @override
  _DiscountVariantCreatativePopup createState() => _DiscountVariantCreatativePopup();
}

class _DiscountVariantCreatativePopup extends State<DiscountVariantCreatativePopup> {
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
  List<String?>additionCheck=[];


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<SaleLines>table= [];
  List<int> list = [];
  List<VariantsLinesDiscount> list1 = [];
  var paginated;

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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
          create: (context) => VariantListPromotionCubit()..getVariantList(widget.obj!),
        ),

        // BlocProvider(
        //   create: (context) => PromotionSaleDeactivateCubit(),
        // ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<VariantListPromotionCubit, VariantListPromotionState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  // context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  paginated=data;
                  print(widget.linkedListItemTable);
                  if (data.data.isNotEmpty==true) {
                    setState(() {

                      table = data.data;
                      additionCheck.clear();


                      print(widget.passingList);
                      if(widget.passingList?.isNotEmpty==true){
                        print("entered");
                        for (var i =0;i<widget.passingList!.length;i++){
                          print("entered1");
                          additionCheck.add(widget.passingList![i].name);
                          list1.add( VariantsLinesDiscount(
                              id:widget.passingList![i].variantIdd,
                              variantIdd:widget.passingList![i].variantIdd,
                              variantCode:widget.passingList![i].variantCode,

                              name:widget.passingList![i].name));
                          print("entered");
                        }
                        setState(() {

                        });





                      }









                    }

                    );
                  }
                  else{
                    setState(() {

                      table =[];
                      additionCheck.clear();


                      print(widget.passingList);
                      if(widget.passingList?.isNotEmpty==true){
                        print("entered");
                        for (var i =0;i<widget.passingList!.length;i++){
                          print("entered1");
                          additionCheck.add(widget.passingList![i].name);
                          list1.add( VariantsLinesDiscount(
                              id:widget.passingList![i].variantIdd,
                              variantIdd:widget.passingList![i].variantIdd,
                              variantCode:widget.passingList![i].variantCode,

                              name:widget.passingList![i].name));
                          print("entered");
                        }
                        setState(() {

                        });





                      }









                    }

                    );



                  }

                  // context.showSnackBarSuccess(data.data2);

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
                    buttonVisible: true,
                    functionChane: true,
                    buttonCheck: true,
                    buttonName: "Add",
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Variant Item",
                    onApply: () {
                      widget.listAssign!(list1);
                      Navigator.pop(context);

                      // context
                      //     .read<DeActivateOfferPostCubit>()
                      //     .postCreatativeVariant(list1);

                      // widget.onTap();
                      setState(() {});
                    },
                    onEdit: () {
                      // MaterialReadModel model = MaterialReadModel(
                      //   name: namecontroller?.text ?? "",
                      //   image: imageContollercontroller?.text ?? "",
                      //   description: descriptionContollercontroller?.text ?? "",
                      //   searchNmae: searchNamecontroller?.text ?? "",
                      //   isActive: active,
                      // );
                      // // print(model);
                      // context
                      //     .read<MaterialcraetionCubit>()
                      //     .postmaterialPatch(veritiaclid, model);
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
                    paginated: paginated != null?
                    tablePagination(
                          () => context.read<VariantListPromotionCubit>().refresh(widget.obj!),
                      back: paginated?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<VariantListPromotionCubit>()
                            .previuosslotSectionPageList(widget.obj!);
                      },
                      next: paginated.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<VariantListPromotionCubit>()
                            .nextslotSectionPageList(widget.obj!);
                      },
                    ):Container(),
                    dataField: Container(


                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                h: 40,
                                hintText: "Search...",
                                // suffixIconCheck: suffixIconCheck,
                                ctrlr: searchContoller,
                                onChanged: (va) {
                                  setState(() {



                                    // suffixIconCheck=true;
                                    // suffixIconCheck=true;
                                    if (va == "") {
                                      context
                                          .read<VariantListPromotionCubit>().getVariantList(widget.obj!);
                                      // suffixIconCheck=false;
                                      // suffixIconCheck=false;
                                    }
                                    else{
                                      PromotionVariantPostModel? obj=PromotionVariantPostModel(
                                          searchElement: va,
                                        inventoryId: Variable.inventory_ID,
                                        segmentList: widget.obj?.segmentList??[],
                                        applyingTypeCode:widget.obj?.applyingTypeCode??"",
                                        applyinType: widget.obj?.applyinType??"",

                                      );

                                      print(widget.obj);
                                      context
                                          .read<VariantListPromotionCubit>().getVariantList(obj);
                                    }
                                  });
                                },
                              )),

                          Container(
                            height: h / 1.9,

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
                                        '',

                                        // padding: EdgeInsets.all(7),
                                        //
                                        // height: 46,
                                        // textColor: Colors.black,
                                        // color: Color(0xffE5E5E5),

                                        size: 13,
                                      ),

                                      tableHeadtext(
                                        'Variant code',
                                        // textColor: Colors.black,
                                        // padding: EdgeInsets.all(7),
                                        // height: 46,
                                        size: 13,
                                        // color: Color(0xffE5E5E5),
                                      ),
                                      tableHeadtext(
                                        'VariantName',
                                        // textColor: Colors.black,
                                        // padding: EdgeInsets.all(7),
                                        // height: 46,
                                        size: 13,
                                        // color: Color(0xffE5E5E5),
                                      ),
                                      tableHeadtext(
                                        'Barcode',
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

                                              child: CustomCheckBox(
                                                key: UniqueKey(),
                                                value:additionCheck.contains(table![i].variantName),
                                                onChange: (p0) {
                                                  if (p0){

                                                    list1.add(
                                                        VariantsLinesDiscount(
                                                            name:table[i].variantName,
                                                            id:table[i].variantId,
                                                            variantIdd: table[i].variantId,
                                                            variantName:table[i].variantName,
                                                            barcode:table[i].barcode,
                                                            variantCode: table[i].variantCode

                                                        )
                                                    );
                                                  }



                                                  else{
                                                    var elmentOfdeleted;
                                                    list1.removeWhere((element) {
                                                      elmentOfdeleted=element;
                                                      print("alllllllllllllllllllllllllllllllllllllll");
                                                      print(element);
                                                      return element == list1[i];
                                                    });
                                                    // additionCheck.removeWhere((element) => element==elmentOfdeleted);
                                                  }

                                                  // list1.remove(table![i]);

                                                  // widget.listAssign!(list1);

                                                  print(list1);
                                                },
                                              ),
                                              // Text(keys[i].key??"")
                                            ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].variantCode.toString() ?? "",
                                                   )
                                                // Text(keys[i].value??"",)

                                                ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].variantName ?? "",
                                                   )
                                                ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].barcode?.barcodeNumber.toString()??"",
                                                   )
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
                                  1: FlexColumnWidth(3),
                                  2: FlexColumnWidth(3),3: FlexColumnWidth(3),
                                },
                              ),
                            ),
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



class DiscountVariantGroupCodeCreatativePopup extends StatefulWidget {
  final String type;
  final String? veritcalCode;
  final Function? listAssign;
  final PromotionVariantPostModel? obj;
  final List<LinkedItemListModel>?linkedListItemTable;
  final List<dynamic>?passingList;
  final List<dynamic>?passingList2;

  DiscountVariantGroupCodeCreatativePopup({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
    required this.type,
    this.passingList,
    this.obj,
    required this.listAssign, this.passingList2,
  }) : super(key: key);

  @override
  _DiscountVariantGroupCodeCreatativePopup createState() => _DiscountVariantGroupCodeCreatativePopup();
}

class _DiscountVariantGroupCodeCreatativePopup extends State<DiscountVariantGroupCodeCreatativePopup> {
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
  List<String?>additionCheck=[];
  List<VariantsLinesDiscount> deleteList=List.from([]);
  List<VariantsLinesDiscount> addList=List.from([]);


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<SaleLines>table= [];
  List<int> list = [];
  List<VariantsLinesDiscount> list1 = [];
  var paginated;

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

  variantNewAdditionList(List<VariantsLinesDiscount> value){
    print(value);
    setState(() {

      for(var val in value ){

        table.add(SaleLines(
          variantId: val.variantIdd,
          variantName: val.name,
            barcode:val.barcode,
          variantCode:val.variantCode,


        ));
        addList.add(VariantsLinesDiscount(
            variantIdd:val.variantIdd,
          name:val.name,
            variantName:val.name,
            barcode:val.barcode,
            variantCode:val.variantCode


        )

        );
      }


        });


  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toStng());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetProductByGroupCodeCubit()..getVariantGroupCodeList(widget.veritcalCode),
        ),

        // BlocProvider(
        //   create: (context) => PromotionSaleDeactivateCubit(),
        // ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<GetProductByGroupCodeCubit, GetProductByGroupCodeState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  // context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                setState(() {
                paginated=data;




                table = data.data??[];
                if(widget.passingList?.isNotEmpty==true)
                for(var a in widget.passingList!){
                table.add(SaleLines(variantName: a.variantName,
                variantId:a.variantIdd ,
                variantCode:a.variantCode ,
                barcode:a. barcode));

                }
                print("11111111111111111111111ssssssssssssssssssssssssss");
                print( widget.passingList2);
                for(var val in widget.passingList2??[])
                  {
                    table.removeWhere((element) => element.variantName==val.variantName);
                  }


                additionCheck.clear();

                print("11111111111111111111111sssssssssssssssssssssssssss"+table.toString()); setState(() {

                });
                print(widget.passingList);
                // if(widget.passingList?.isNotEmpty==true){
                //   print("entered");
                //   for (var i =0;i<widget.passingList!.length;i++){
                //     print("entered1");
                //     additionCheck.add(widget.passingList![i].name);
                //     list1.add( VariantsLinesDiscount(
                //         id:widget.passingList![i].id,
                //         name:widget.passingList![i].name));
                //     print("entered");
                //   }
                //   setState(() {
                //
                //   });
                //
                //
                //
                //
                //
                // }





                // context.showSnackBarSuccess(data.data2);

                    ;
                });
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
                    buttonVisible: true,
                    functionChane: true,
                    buttonCheck: true,
                    buttonName: "Add",
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Variant Item",
                    onApply: () {
                      widget.listAssign!(deleteList,addList);
                      Navigator.pop(context);

                      // context
                      //     .read<DeActivateOfferPostCubit>()
                      //     .postCreatativeVariant(list1);

                      // widget.onTap();
                      setState(() {});
                    },
                    onEdit: () {
                      // MaterialReadModel model = MaterialReadModel(
                      //   name: namecontroller?.text ?? "",
                      //   image: imageContollercontroller?.text ?? "",
                      //   description: descriptionContollercontroller?.text ?? "",
                      //   searchNmae: searchNamecontroller?.text ?? "",
                      //   isActive: active,
                      // );
                      // // print(model);
                      // context
                      //     .read<MaterialcraetionCubit>()
                      //     .postmaterialPatch(veritiaclid, model);
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
                    paginated: paginated != null?
                    tablePagination(
                          () => context.read<VariantListPromotionCubit>().refresh(widget.obj!),
                      back: paginated?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<VariantListPromotionCubit>()
                            .previuosslotSectionPageList(widget.obj!);
                      },
                      next: paginated.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<VariantListPromotionCubit>()
                            .nextslotSectionPageList(widget.obj!);
                      },
                    ):Container(),
                    dataField: Container(


                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                h: 40,
                                hintText: "Search...",
                                // suffixIconCheck: suffixIconCheck,
                                ctrlr: searchContoller,
                                onChanged: (va) {
                                  setState(() {



                                    // suffixIconCheck=true;
                                    // suffixIconCheck=true;
                                    if (va == "") {
                                      context
                                          .read<GetProductByGroupCodeCubit>().getVariantGroupCodeList(widget.veritcalCode!);
                                      // suffixIconCheck=false;
                                      // suffixIconCheck=false;
                                    }
                                    else{
                                      context
                                          .read<GetProductByGroupCodeCubit>().searchgetVariantGroupCodeList(widget.veritcalCode!,va);
                                    }
                                  });
                                },
                              )),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              TextButtonLarge(
                                text: "Add Product",

                                // marginCheck:true,

                                onPress: () {

                                  showDailogPopUp(
                                      context,
                                      ConfigurePopup(
                                      obj: widget.obj,
                                      passingList: addList,


                                      listAssign: variantNewAdditionList,
                                      type: "DiscountVariantCreatativePopup",
                                  ),

                                  //  ConfigurePopup(
                                  // obj: widget.obj,
                                  // code:"" ,
                                  //
                                  // listAssign: variantNewAdditionList,
                                  // type: "VariantAddTimePopup",
                                  // )
                                  );



                                },
                                // icon: Icon(Icons.refresh),
                                // label: Text("Clear")

                              ),

                            ],
                          ),
                          SizedBox(height: 7,),


                          Container(
                            height: h / 1.9,

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
                                        'Variant code',
                                        // textColor: Colors.black,
                                        // padding: EdgeInsets.all(7),
                                        // height: 46,
                                        size: 13,
                                        // color: Color(0xffE5E5E5),
                                      ),
                                      tableHeadtext(
                                        'VariantName',
                                        // textColor: Colors.black,
                                        // padding: EdgeInsets.all(7),
                                        // height: 46,
                                        size: 13,
                                        // color: Color(0xffE5E5E5),
                                      ),
                                      tableHeadtext(
                                        'Barcode',
                                        // textColor: Colors.black,
                                        // padding: EdgeInsets.all(7),
                                        // height: 46,
                                        size: 13,
                                        // color: Color(0xffE5E5E5),
                                      ),
                                      tableHeadtext(
                                        '',

                                        // padding: EdgeInsets.all(7),
                                        //
                                        // height: 46,
                                        // textColor: Colors.black,
                                        // color: Color(0xffE5E5E5),

                                        size: 13,
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
                                            // TableCell(
                                            //   verticalAlignment:
                                            //       TableCellVerticalAlignment
                                            //           .middle,
                                            //
                                            //   child: CustomCheckBox(
                                            //     key: UniqueKey(),
                                            //     value:additionCheck.contains(table![i].variantName),
                                            //     onChange: (p0) {
                                            //       if (p0)
                                            //         list1.add(
                                            //           VariantsLinesDiscount(
                                            //             name:table[i].variantName,
                                            //             id:table[i].id,
                                            //             barcode:table[i].barcode
                                            //
                                            //           )
                                            //             );
                                            //       else
                                            //         list1.removeWhere((element) =>
                                            //             element == list1[i]);
                                            //       // list1.remove(table![i]);
                                            //
                                            //       // widget.listAssign!(list1);
                                            //
                                            //       print(list1);
                                            //     },
                                            //   ),
                                            //   // Text(keys[i].key??"")
                                            // ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].variantCode.toString() ?? "",
                                                   )
                                                // Text(keys[i].value??"",)

                                                ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].variantName ?? "",
                                                   )
                                                ),
                                            TableCell(
                                                verticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                child: textPadding(
                                                    table[i].barcode?.barcodeNumber.toString()??"",
                                                   )
                                                ),
                                            TableCell(
                                              verticalAlignment:
                                              TableCellVerticalAlignment
                                                  .middle,
                                              child: TableIconTextButton(

                                                // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                                // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                                // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                                onPress: () {

                                                  setState(() {
                                                    deleteList.add(VariantsLinesDiscount(
                                                        variantIdd: table[i].variantId,
                                                        id: table[i].variantId,
                                                        variantCode:table[i].variantCode,
                                                        barcode:table[i].barcode,
                                                      variantName: table[i].variantName,


                                                    ));


                                                    table?.removeAt(i);



                                                    // widget.updation(table);

                                                  });
                                                },
                                                icon: Icons.delete,
                                                label: "",
                                              ),
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
                                  1: FlexColumnWidth(3),
                                  2: FlexColumnWidth(3),3: FlexColumnWidth(3),
                                },
                              ),
                            ),
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


class VariantAddTimePopup extends StatefulWidget {
  final String type;
  final String? veritcalCode;
  final Function? listAssign;
  final PromotionVariantPostModel? obj;
  final List<LinkedItemListModel>?linkedListItemTable;
  final List<dynamic>?passingList;

  VariantAddTimePopup({
    Key? key,
  this.veritcalCode,
    required this.linkedListItemTable,
    required this.type,
    this.passingList,
    this.obj,
    required this.listAssign,
  }) : super(key: key);

  @override
  _VariantAddTimePopup createState() => _VariantAddTimePopup();
}

class _VariantAddTimePopup extends State<VariantAddTimePopup> {
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
  List<String?>additionCheck=[];
  List<SaleLines> deleteList=List.from([]);
  List<SaleLines> addList=List.from([]);


  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController searchNamecontroller = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  TextEditingController descriptionContollercontroller =
      TextEditingController();
  TextEditingController searchContoller = TextEditingController();
  bool addNew = false;
  List<SaleLines>table= [];
  List<int> list = [];
  List<VariantsLinesDiscount> list1 = [];
  var paginated;
  String variantCode="";
  String variantName="";
  bool isActive=false;
  Barcode barcode=Barcode();


  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }
  clear(){
    variantCode="";
    variantName="";
    isActive=false;
    table=[];
    barcode=barcode.copyWith(barcodeNumber: "",fileName: "");
  }

  void initState() {
    // context
    //     .read<MaterialListCubit>()
    //     .getMaterialList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toStng());
    return Builder(builder: (context) {
      return BlocConsumer<MaterialListCubit, MaterialListState>(
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
                buttonVisible: true,
                functionChane: true,
                buttonCheck: true,
                buttonName: "Add",
                onTap: () {
                  addNew = !addNew;
                  setState(() {});
                },
                isDirectCreate: true,
                addNew: addNew,
                label: "Variant Item",
                onApply: () {
                  widget.listAssign!(table);
                  Navigator.pop(context);

                  // context
                  //     .read<DeActivateOfferPostCubit>()
                  //     .postCreatativeVariant(list1);

                  // widget.onTap();
                  setState(() {});
                },
                onEdit: () {
                  // MaterialReadModel model = MaterialReadModel(
                  //   name: namecontroller?.text ?? "",
                  //   image: imageContollercontroller?.text ?? "",
                  //   description: descriptionContollercontroller?.text ?? "",
                  //   searchNmae: searchNamecontroller?.text ?? "",
                  //   isActive: active,
                  // );
                  // // print(model);
                  // context
                  //     .read<MaterialcraetionCubit>()
                  //     .postmaterialPatch(veritiaclid, model);
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
                paginated: paginated != null?
                tablePagination(
                      () => context.read<VariantListPromotionCubit>().refresh(widget.obj!),
                  back: paginated?.previousUrl == null
                      ? null
                      : () {
                    context
                        .read<VariantListPromotionCubit>()
                        .previuosslotSectionPageList(widget.obj!);
                  },
                  next: paginated.nextPageUrl == null
                      ? null
                      : () {
                    // print(data.nextPageUrl);
                    context
                        .read<VariantListPromotionCubit>()
                        .nextslotSectionPageList(widget.obj!);
                  },
                ):Container(),
                dataField: Container(


                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            // suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              setState(() {



                                // suffixIconCheck=true;
                                // suffixIconCheck=true;
                                if (va == "") {
                                  context
                                      .read<VariantListPromotionCubit>().getVariantList(widget.obj!);
                                  // suffixIconCheck=false;
                                  // suffixIconCheck=false;
                                }
                                else{
                                  PromotionVariantPostModel? obj=PromotionVariantPostModel(
                                      searchElement: va,
                                    inventoryId: Variable.inventory_ID,
                                    segmentList: widget.obj?.segmentList??[],
                                    applyingTypeCode:widget.obj?.applyingTypeCode??"",
                                    applyinType: widget.obj?.applyinType??"",

                                  );

                                  print(widget.obj);
                                  context
                                      .read<VariantListPromotionCubit>().getVariantList(obj);
                                }
                              });
                            },
                          )),

                      Container(
                        // width: w/5,
                        margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                                  'Variant Id',

                                  // padding: EdgeInsets.all(7),
                                  //
                                  // height: 46,
                                  textColor: Colors.white,


                                  size: 13,


                                ),
                                tableHeadtext(

                                  'Variant Name',

                                  // padding: EdgeInsets.all(7),
                                  //
                                  // height: 46,
                                  textColor: Colors.white,


                                  size: 13,


                                ),
                                tableHeadtext(

                                  "Barcode",

                                  // padding: EdgeInsets.all(7),
                                  //
                                  // height: 46,
                                  textColor: Colors.white,


                                  size: 13,


                                ),
                                tableHeadtext(

                                  "Is Active",

                                  // padding: EdgeInsets.all(7),
                                  //
                                  // height: 46,
                                  textColor: Colors.white,


                                  size: 13,


                                ),       tableHeadtext(

                                  "",

                                  // padding: EdgeInsets.all(7),
                                  //
                                  // height: 46,
                                  textColor: Colors.white,


                                  size: 13,


                                ),





                              ],

                            ),
                            if (table.isNotEmpty==true ) ...[


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
                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                        child: VariantIdTAble(
                                          text:table[i].variantCode.toString()??"",
                                          onTap: (){
                                            List<String> list=[];

                                            for (var val in widget?.obj?.segmentList??[])
                                              list.add(val.segmentCode.toString());
                                            print("sasasaaaaaaaaaaaaaa"+list.toString());

                                            PromotionVariantPostModel model=PromotionVariantPostModel(
                                                applyingTypeCode: widget?.obj?.applyingTypeCode,
                                                applyinType: widget?.obj!.applyinType??"",
                                                searchElement: "",
                                                segmentList:widget?.obj!.segmentList??[],
                                                inventoryId: Variable.inventory_ID
                                            );
                                            showDailogPopUp(
                                              context,
                                              TableConfigurePopup(
                                                object: model,
                                                // inventory: Variable.inventory_ID,
                                                type: "VariantListPopup",
                                                valueSelect: (SaleLines? va) {


                                                  setState(() {
                                                    table[i]=table[i].copyWith(variantCode:va?.variantCode??"",variantName: va?.variantName??"",barcode:  va?.barcode,updateCheck: true);




                                                    // orderType = va!;
                                                  });
                                                },
                                              ),
                                            );
                                          },
                                        ),






                                      ),
                                      TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,

                                          child:textPadding(table[i].variantName.toString())



                                      ),
                                      TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,

                                          child:textPadding(table[i].barcode?.barcodeNumber.toString()??"")



                                      ),
                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: CheckedBoxs(
                                            valueChanger:
                                            table?[i].isActive == null
                                                ? false
                                                : table?[i].isActive,
                                            onSelection: (bool? value) {
                                              bool? isActive =table[i].isActive;
                                              setState(() {
                                                // widget.updateCheck(true);
                                                // print("aaaaaaaaaaa"+isActive.toString());
                                                // table1[i] = table1[i].copyWith(updatecheck: true);
                                                table[i] = table[i].copyWith(updateCheck: true);
                                                setState(() {});
                                                isActive = !isActive!;
                                                print("aaaaaaaaaaa"+isActive.toString());
                                                table[i] = table[i]
                                                    .copyWith(
                                                    isActive: isActive);
                                              });



                                            }),
                                      ),

                                      TableCell(
                                        verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TableTextButton(
                                                onPress: () {

                                                  setState(() {
                                                    // widget.updateCheck(false);
                                                    table[i]=      table[i].copyWith(updateCheck: false);
                                                    // widget.updation(table);


                                                  });

                                                },
                                                textColor:table[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.grey ,
                                                label:
                                                table[i].updateCheck==true? "UPDATE":"",
                                              ),
                                            ),
                                            SizedBox(width: 4,),


                                            TableIconTextButton(

                                              // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                              // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                              // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                              onPress: () {

                                                setState(() {


                                                  table?.removeAt(i);
                                                  // widget.updation(table);

                                                });
                                              },
                                              icon: Icons.delete,
                                              label: "",
                                            ),
                                            SizedBox(width: 4,),
                                          ],
                                        ),
                                      )




                                    ]),],
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
                                    verticalAlignment: TableCellVerticalAlignment.middle,

                                    child:
                                    VariantIdTAble(
                                      text:variantCode,
                                      onTap: (){
                                        print(widget?.obj?.segmentList??[]);
                                        print(widget?.obj?.applyingTypeCode??"");
                                        List<String> list=[];
                                        if(widget?.obj!.segmentList?.isNotEmpty==true){
                                          for (var val in widget.obj!.segmentList!)
                                            list.add(val);
                                        }


                                        print("sasasaaaaaaaaaaaaaa"+list.toString());

                                        PromotionVariantPostModel model=PromotionVariantPostModel(
                                            applyingTypeCode: widget.obj?.applyingTypeCode,
                                            applyinType: widget.obj?.applyinType,
                                            searchElement: "",
                                            segmentList:widget.obj?.segmentList,
                                            inventoryId: Variable.inventory_ID
                                        );
                                        showDailogPopUp(
                                          context,
                                          BlocProvider(
  create: (context) => VariantListPromotionCubit()..getVariantList(model),
  child: TableConfigurePopup(
                                            object: model,
                                            // inventory: Variable.inventory_ID,
                                            type: "VariantListPopup",
                                            valueSelect: (SaleLines? va) {


                                              setState(() {
                                                variantCode=va?.variantCode??"";
                                                variantName=va?.variantName??"";
                                                print("barcodeeeeeeeeeeee");
                                                print(va?.barcode?.barcodeNumber??"");
                                                barcode=      barcode.copyWith(barcodeNumber: va?.barcode?.barcodeNumber??"");
                                                // saveButtonActovde(variantCode,variantName);



                                                // orderType = va!;
                                              });
                                            },
                                          ),
),
                                        );
                                      },
                                    ),
                                    // UnderLinedInput(
                                    //   formatter: false,
                                    // ),


                                  ),

                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:textPadding(variantName??"")
                                    // UnderLinedInput(
                                    //   formatter: false,
                                    // ),


                                  ),

                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:textPadding(barcode?.barcodeNumber??"")
                                    // UnderLinedInput(
                                    //   formatter: false,
                                    // ),


                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                      // color: Color(0xff3E4F5B),
                                      valueChanger: isActive,
                                      onSelection: (bool? value) {
                                        // clear=true;
                                        setState(() {
                                          isActive = !isActive!;
                                        });
                                      },
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: TableTextButton(
                                        // buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                                        // textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                                        // bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                        label: "Save",
                                        onPress: () {
                                          setState(() {
                                            if(variantName.isNotEmpty && variantCode.isNotEmpty){
                                              table.add(SaleLines(
                                                variantCode: variantCode,
                                                barcode: barcode,
                                                variantName: variantName.isEmpty?"":variantName,
                                                isActive: isActive,
                                              ));
                                              variantCode="";
                                              variantName="";
                                              barcode=barcode.copyWith(barcodeNumber: "",fileName: "");
                                              isActive=false;
                                              // onSaveActive=false;
                                              // widget.updation(table);
                                            }

                                          });
                                        }),
                                  )


                                ])


                          ],
                          widths: {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(3),
                            2: FlexColumnWidth(1.5),
                            3: FlexColumnWidth(1.5),
                            4: FlexColumnWidth(2),

                          },

                        ),


                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    });
  }
}




class VendorDetailsList extends StatefulWidget {
  final String type;
  final Function? listAssign;

  VendorDetailsList({
    Key? key,
    required this.type,
    required this.listAssign,
  }) : super(key: key);

  @override
  _VendorDetailsList createState() => _VendorDetailsList();
}

class _VendorDetailsList extends State<VendorDetailsList> {
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
  TextEditingController searchContoller = TextEditingController();
  String parentName = "";
  bool changer = false;

  bool addNew = false;
  List<VendorDetailsModel> table = [];
  List<int> list = [];
  List<LinkedItemListIdModel> list1 = [];

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
          create: (context) => VendordetailslistCubit()..getVendorDetailList(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<VendordetailslistCubit, VendordetailslistState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // // context.
                  // context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  setState(() {
                    table = data.data;
                  });

                  print("the vendor Akshay" + table.toString());

                  // context.showSnackBarSuccess(data.data2);

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
                    onTap: () {},
                    isDirectCreate: true,
                    addNew: addNew,
                    // label: "Linked Item",
                    onApply: () {},
                    onEdit: () {},
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
                          // Container(
                          //     margin: EdgeInsets.all(5),
                          //     child: SearchTextfiled(
                          //       color: Color(0xffFAFAFA),
                          //       h: 40,
                          //       hintText: "Search...",
                          //       ctrlr:searchContoller,
                          //       onChanged: (va) {
                          //         // print("searching case"+va.toString());
                          //         // context
                          //         //     .read<InventorysearchCubit>()
                          //         //     .getSearch(widget.itemsearch.text,tab: widget.tab);
                          //         // if(va==""){
                          //         //   context
                          //         //       .read<InventorysearchCubit>()
                          //         //       .getInventorySearch("code",tab: widget.tab);
                          //
                          //         // }
                          //
                          //       },
                          //     )),
                          Container(
                            // width: w/7,
                            // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                      'Vendors',
                                      // textColor: Colors.black,

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
                                              child: textOnclickPadding(
                                                ontap: () {
                                                  VendorDetailsModel model =
                                                      VendorDetailsModel(
                                                    id: table[i].id,
                                                    manuFactureName: table[i]
                                                        .manuFactureName,
                                                    manuFactureuserCode: table[i].manuFactureuserCode,
                                                        trnNumber: table[i].trnNumber,
                                                        address: table[i].address,
                                                  );
                                                  widget.listAssign!(model);
                                                  Navigator.pop(context);
                                                },
                                                text: table[i].manuFactureName ??   "",
                                              )
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
                              },
                            ),
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
  var list1;

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
  clear(){
    codeController.text =  "";
    imageName = "";
    namecontroller.text = "";
    descriptionContollercontroller.text =
         "";
    searchNamecontroller.text = "";

    active =  false;
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
                        imageName = data.image ?? "";
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    // Navigator.pop(context);
                    // context.showSnackBarSuccess(data.data2);
                    context.read<MaterialListCubit>().getMaterialList();
                  } else {
                    Navigator.pop(context);
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
                    list1 = list;

                    result = list.data;
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        selectedVertical=0;
                        clear();
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
                    label: "Material",
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
                              list: list1,
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
                                  clear();

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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  height: 60,
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
                                    onCancel:(){
                                      setState(() {
                                        imageName="";
                                        imageContollercontroller.clear();

                                      });

                                    } ,
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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
//
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
                              height: 60,
                              label: "Name",
                              controller: nameContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              height: 60,
                              label: "Description",
                              controller: descContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              height: 60,
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
  TextEditingController statuscontroller = TextEditingController();
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
                    print("dataAkshay" +
                        imageContollercontroller.text.toString());

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
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context.read<DevisionListCubit>().getDevisionList();
                    // context.showSnackBarSuccess(data.data2);

                    setState(() {});
                  } else {
                    print("else case");
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));

                    setState(() {});
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
                          image:imageContollercontroller.text,
                          searchNmae: searchNamecontroller?.text ?? "",
                          name: namecontroller?.text ?? "",
                          displayName: displayContollercontroller.text ?? "",
                          status: statuscontroller.text);
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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: displayContollercontroller,
                                  title: "Dispaly Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  height: 60,
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // NewInputCard(
                                //   height: 60,
                                //   controller: statuscontroller,
                                //   title: "Status",
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                FileUploadField(
                                    fileName: imageName,
                                    fileUrl: imageName,
                                    onChangeTap: (p0) {
                                      // onChange = true;
                                      // // loading = true;
                                      // setState(() {});
                                    },
                                    onCancel: (){

                                      setState(() {
                                        imageName="";

                                      });

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

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        print("akshayaaa"+Variable.imageName.toString());
                                        print(imageEncode);
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:"Please Image Banner of size Lesser than 150",
                                              // table:table,
                                            ));

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
  var list1;

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
                        displayContollercontroller.text =
                            data.displayName ?? "";
                        namecontroller.text = data.name ?? "";
                        imageContollercontroller.text = data.image ?? "";
                        imageName = data.image ?? "";
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    context.read<DevisionListCubit>().getDevisionList();
                    // context.showSnackBarSuccess(data.data2);
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
                    list1 = list;
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

                    label: "Division",
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
                              list: list1,
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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                gapWidthColumn(),
                                NewInputCard(
                                  height: 60,
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: displayContollercontroller,
                                  title: "Dispaly Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  height: 60,
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageContollercontroller.clear();
                                      });



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

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:"Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,

                                  ),
                                  PopUpSwitchTile(
                                      value: active ?? false,
                                      title: "is Active",
                                      onClick: (gg) {
                                        onChange = true;
                                     active = !active!;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1) {
                    Navigator.pop(context);
                    context.read<ListstaticCubit>().getStaticList();
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));

                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));

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
                        image: imageContollercontroller.text,
                        searchNmae: searchNamecontroller?.text ?? "",
                        name: namecontroller?.text ?? "",
                      );

                      context
                          .read<DivisioncreateCubit>()
                          .postCreateDevision(model, "static");
                      print("the model is"+model.toString());

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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: searchNamecontroller,
                                  title: "Search Name",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                NewInputCard(
                                  height: 60,
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

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

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
  bool? active = costingTypeMethodeCheck?true:false;

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
  List<VariantLinesLiostModel> table = List.from([]);

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = List.from(tables);
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
    if (costingTypeMethodeCheck != true){
      context.read<FrameworklistCubit>().getFrameWorklist();
    }

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
        ),
        BlocProvider(
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  Navigator.pop(context);
                  if (data.data1) {


                    setState(() {
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<FrameworklistCubit>().getFrameWorklist();

                    });
                  } else {
                    context.showSnackBarError(data.data2);
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                        print("the frame work read" + data.toString());
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data.name ?? "";
                        table = List.from(data.lines ?? []);

                        descriptionContollercontroller.text =
                            data.description ?? "";
                        categoryNameController.text = data.categoryName ?? "";
                        print(data.categoryId);
                        categoryid = data.categoryId;
                        print(categoryid);

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    Navigator.pop(context);
                    print("here after  creation");

                    setState(() {
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));

                      context.read<FrameworklistCubit>().getFrameWorklist();
                      print("here after  creation next call");
                    });

                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                     if( costingTypeMethodeCheck != true)   context
                            .read<FrameworkreadCubit>()
                            .getFrameWorkRead(veritiaclid!);
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
                      print(model);
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
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                          table.clear();

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
                                                .read<FrameworkreadCubit>()
                                                .getFrameWorkRead(veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        print(va);
                                        context.read<FrameworklistCubit>().searchCostingList(va);
                                        if (va == "") {
                                          context.read<FrameworklistCubit>().getFrameWorklist();
                                        }
                                      },
                                      result: result,
                                    ),
                                  Expanded(
                                    child: Container(

                                      // height: 400,
                                      // width: 400,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10,),
                                          Container(
                                             // color: Colors.red,
                                              height: 200,
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Column(

                                                      children: [
                                                        Expanded(
                                                            child: Column(
                                                          children: [
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller:
                                                                    codeController,
                                                                title: "Code"),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            NewInputCard(
                                                              height: 60,
                                                              controller:
                                                                  namecontroller,
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
                                                        height: 60,
                                                        controller:
                                                            descriptionContollercontroller,
                                                        title: "Description",
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),

                                                      // NewInputCard(
                                                      //   controller:
                                                      //       categoryNameController,
                                                      //   icondrop: true,
                                                      //   title: "Category ",
                                                      //   ontap: () {
                                                      //     showDailogPopUp(
                                                      //       context,
                                                      //       TableConfigurePopup(
                                                      //         apiType: "all",
                                                      //         type:
                                                      //             "category-TablePopup",
                                                      //         valueSelect:
                                                      //             (BrandListModel
                                                      //                 va) {
                                                      //           setState(() {
                                                      //             onChange =
                                                      //                 true;
                                                      //             categoryNameController
                                                      //                     .text =
                                                      //                 va?.name ??
                                                      //                     "";
                                                      //             categoryController
                                                      //                     .text =
                                                      //                 va?.code ??
                                                      //                     "";
                                                      //             categoryid =
                                                      //                 va?.id;
                                                      //             // Variable.categoryId = va?.id;
                                                      //             setState(
                                                      //                 () {});
                                                      //
                                                      //             // onChange = true;
                                                      //             // orderType.text = va!;
                                                      //           });
                                                      //         },
                                                      //       ),
                                                      //     );
                                                      //   },
                                                      // ),
                                                      // SelectableDropDownpopUp(
                                                      //   apiType: "all",
                                                      //   controller:
                                                      //       categoryNameController,
                                                      //   label: "category",
                                                      //   type:
                                                      //       "Category_PopUpCall",
                                                      //   value:
                                                      //       categoryNameController
                                                      //           .text,
                                                      //   onchange: (vale) {
                                                      //     // print("searching for search"+vale.toString());
                                                      //     // context.read<CategorylistCubit>().searchCategoryist(vale);
                                                      //   },
                                                      //   enable: true,
                                                      //   onSelection:
                                                      //       (BrandListModel?
                                                      //           va) {
                                                      //     setState(() {
                                                      //       categoryNameController
                                                      //               .text =
                                                      //           va?.name ?? "";
                                                      //       categoryController
                                                      //               .text =
                                                      //           va?.code ?? "";
                                                      //       categoryid = va?.id;
                                                      //       Variable.categoryId =
                                                      //           va?.id;
                                                      //       setState(() {});
                                                      //
                                                      //       // onChange = true;
                                                      //       // orderType.text = va!;
                                                      //     });
                                                      //   },
                                                      //   // onAddNew: () {
                                                      //   //   showDailogPopUp(
                                                      //   //     context,
                                                      //   //     ConfigurePopup(
                                                      //   //       type: "category_group",
                                                      //   //     ),
                                                      //   //   );
                                                      //   // },
                                                      // ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      PopUpSwitchTile(
                                                          value:
                                                              active ?? false,
                                                          title: "isActive",
                                                          onClick: (gg) {
                                                            onChange = true;
                                                           if( costingTypeMethodeCheck!=true)
                                                              active = !active!;

                                                            // extendedWarranty = gg;
                                                            // widget.changeExtendedWarranty(gg);
                                                            // onChangeExtWarranty = gg;
                                                            setState(() {});
                                                          }),
                                                    ],
                                                  )),
                                                ],
                                              )),
                                          Container(
                                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.023),
                                            alignment: Alignment.topLeft,
                                            child: TextButtonLarge(
                                              onPress:(){
                                                costingTypeMethodeCheck = true; showDailogPopUp(
                                                  context,
                                                  ConfigurePopup(
                                                    type: "create_Attribute",
                                                  ),
                                                );
                                              },
                                              text: "Create Attribute",
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                 height: MediaQuery.of(context).size.height*0.29,


                                                    child: VariantFrameWorkBottomTable(
                                                            listAssign:
                                                                listAssign,
                                                            table: List.from(table))),
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



class CreateAttributePopUp extends StatefulWidget {
  final String type;

  CreateAttributePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateAttributePopUpState createState() => _CreateAttributePopUpState();
}

class _CreateAttributePopUpState extends State<CreateAttributePopUp> {
  bool? active = costingTypeMethodeCheck?true:false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  AttributeListModel? group;
  int? veritiaclid = 0;
  var list;

  List<AttributeListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();


  int? categoryid;
  TextEditingController attributeType =
      TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = List.from([]);

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = List.from(tables);
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
    if (costingTypeMethodeCheck != true){
      context.read<AttributepatchlistCubit>().getAttributePatchList();
    }

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
        ),
        BlocProvider(
          create: (context) => AttributecreationreadCubit(),
        ), BlocProvider(
          create: (context) => AttributetypesaveCubit(),
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {

                    setState(() {
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<AttributepatchlistCubit>().getAttributePatchList();

                    });
                  } else {
                    context.showSnackBarError(data.data2);
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                  ;
                });
              },
            ),
            BlocListener<AttributecreationreadCubit, AttributecreationreadState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("the frame work read" + data.toString());
                        group = data;
                        codeController.text = data.code ?? "";
                        namecontroller.text = data?.attributeName ?? "";
                        attributeType.text=data?.attributeType??"";





                        print(categoryid);

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<AttributetypesaveCubit, AttributetypesaveState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    print("here after  creation");

                    setState(() {
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      if (costingTypeMethodeCheck == true)
                        context.read<AttributepatchlistCubit>().getAttributePatchList();

                      // context.read<FrameworklistCubit>().getFrameWorklist();
                      print("here after  creation next call");
                    });

                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<AttributepatchlistCubit, AttributepatchlistState>(
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
                     if( costingTypeMethodeCheck != true)   context
                            .read<AttributecreationreadCubit>()
                            .getAttributeCreationRead(veritiaclid!);
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

                    label: "Create Attribute",
                    onApply: () {
                      print("save");

                      context
                          .read<AttributetypesaveCubit>().getAttributePost(attributeType.text ,namecontroller.text, active);

                      // widget.onTap();
                    },
                    onEdit: () {



                      context
                          .read<AttributetypesaveCubit>().getAttributePatch(attributeType.text ,namecontroller.text, active,veritiaclid);

                    },
                    onCancel: () {
                      context
                          .read<MaterialdeleteCubit>()
                          .materialDelete(veritiaclid, "create_attribute_delete");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (costingTypeMethodeCheck != true)
                                    AttributeVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;
                                          table.clear();

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
                                                .read<AttributecreationreadCubit>()
                                                .getAttributeCreationRead(veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        print(va);
                                        context.read<AttributepatchlistCubit>().getSearchAttributePatchList(va);
                                        if (va == "") {
                                          context.read<AttributepatchlistCubit>().getAttributePatchList();
                                        }
                                      },
                                      result: result,
                                    ),
                                  Expanded(
                                    child: Container(

                                      // height: 400,
                                      // width: 400,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10,),
                                          Container(
                                             // color: Colors.red,
                                              height: 200,
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Column(

                                                      children: [
                                                        Expanded(
                                                            child: Column(
                                                          children: [
                                                            NewInputCard(
                                                                readOnly: true,
                                                                controller:
                                                                    codeController,
                                                                title: "Code"),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            NewInputCard(
                                                              height: 60,
                                                              controller:
                                                                  namecontroller,
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
                                                      SelectableDropDownpopUp(
                                                        label: "Attribute Type",
                                                        type:"attributeList_basedOn",
                                                        value: attributeType.text,
                                                        onSelection: (String? va) {
                                                          print(
                                                              "+++++++++++++++++++++++");
                                                          //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                                          setState(() {
                                                            attributeType.text = va??"";



                                                          });
                                                        },

                                                        restricted: true,
                                                      ),
                                                      NewInputCard(
                                                        height: 60,
                                                        controller:
                                                        attributeType,
                                                        title: "Attribute Type",
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),

                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      PopUpSwitchTile(
                                                          value:
                                                              active ?? false,
                                                          title: "isActive",
                                                          onClick: (gg) {
                                                            onChange = true;
                                                           if( costingTypeMethodeCheck!=true)
                                                              active = !active!;

                                                            // extendedWarranty = gg;
                                                            // widget.changeExtendedWarranty(gg);
                                                            // onChangeExtWarranty = gg;
                                                            setState(() {});
                                                          }),
                                                    ],
                                                  )),
                                                ],
                                              )),

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
  bool? active = costingTypeMethodeCheck != true ? false : true;

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
    if (costingTypeMethodeCheck != true) {
      context.read<CostingtypelistCubit>().getCostingTypeList();
    }

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    setState(() {});
                    context.showSnackBarSuccess(data.data2);

                    // Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                    // Navigator.pop(context);
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
                            Variable.created_by,
                          );

                      // widget.onTap();
                    },
                    onEdit: () {
                      context.read<CostingtypeCubit>().postPatchCostingType(
                          veritiaclid,
                          namecontroller.text,
                          descriptionContollercontroller.text,
                          Variable.created_by,
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
                                        context
                                            .read<CostingtypelistCubit>()
                                            .searchCostingTypeList(va);
                                        if (va == "") {
                                          context
                                              .read<CostingtypelistCubit>()
                                              .getCostingTypeList();
                                        }
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
                                      height: 60,
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),

                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      height: 60,
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
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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

class CreateCosting extends StatefulWidget {
  final String type;

  CreateCosting({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  CreateCostingState createState() => CreateCostingState();
}

class CreateCostingState extends State<CreateCosting> {
  bool? active = true;

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
    if (costingTypeMethodeCheck != true) {
      context.read<CostingtypelistCubit>().getCostingTypeList();
    }

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
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<CostingtypeCubit, CostingtypeState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    setState(() {});
                    context.read<CostingtypelistCubit>().getCostingTypeList();

                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                    isDirectCreate: true,

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
                            Variable.created_by,
                          );

                      // widget.onTap();
                    },
                    onEdit: () {},
                    onCancel: () {},

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
                                      height: 60,
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),

                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      height: 60,
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
  bool? active = costingTypeMethodeCheck != true ? false : true;

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
                        print("dataaaaaaaaaaaa" + data.toString());
                        group = data;
                        typeId = data.methodTypeId;
                        codeController.text = data.methodCode ?? "";
                        costingMethodcontroller.text =
                            data.costingMethodTypeName ?? "";
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1) {
                    if(costingTypeMethodeCheck){
                      Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context
                          .read<CostingcreatelistCubit>()
                          .getCostingCreateList();
                    }
                    else{
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context
                          .read<ReadcostingCubit>()
                          .getCostMethodRead(veritiaclid!);

                    }


                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                        if (costingTypeMethodeCheck != true)
                          context
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
                      if (typeId == null) {
                        Navigator.pop(context);
                        context
                            .showSnackBarError("plaease select costing type");
                      } else {
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
                          typeId,
                          namecontroller.text,
                          descriptionContollercontroller.text,
                          Variable.created_by,
                          active);

                      print(typeId);
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
                                        print(va);
                                        context
                                            .read<CostingcreatelistCubit>()
                                            .searchCostingList(va);
                                        if (va == "") {
                                          context
                                              .read<CostingcreatelistCubit>()
                                              .getCostingCreateList();
                                        }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller: costingMethodcontroller,
                                      icondrop: true,
                                      title: "Costing Method Type Id",
                                      ontap: () {
                                        showDailogPopUp(
                                          context,
                                          TableConfigurePopup(
                                            type: "CostingTypeTabalePopup",
                                            valueSelect:
                                                (CostingMetodTypePostModel va) {
                                              setState(() {
                                                costingMethodcontroller.text =
                                                    va?.typeName ?? "";
                                                typeId = va?.id;
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
                                    //   // bindType: "static",
                                    //   controller: costingMethodcontroller,
                                    //   label: "Costing Method Type Id",
                                    //   type: "CostingMethodTypePopUpCall",
                                    //   value: costingMethodcontroller.text,
                                    //   onchange: (vale) {
                                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                    //   },
                                    //   enable: true,
                                    //   onSelection:
                                    //       (CostingMetodTypePostModel? va) {
                                    //     setState(() {
                                    //       costingMethodcontroller.text =
                                    //           va?.typeName ?? "";
                                    //       typeId = va?.id;
                                    //       setState(() {});
                                    //
                                    //       // onChange = true;
                                    //       // orderType.text = va!;
                                    //     });
                                    //   },
                                    //   onAddNew: () {
                                    //     showDailogPopUp(
                                    //       context,
                                    //       ConfigurePopup(
                                    //         type: "costingCreate",
                                    //       ),
                                    //     );
                                    //   },
                                    // ),
                                    NewInputCard(
                                        height: 60,
                                        readOnly: true,
                                        controller: codeController,
                                        title: "Code"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      height: 60,
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      height: 60,
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
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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



class CreateOfferPeriodCreatePopUp extends StatefulWidget {
  final String type;

  CreateOfferPeriodCreatePopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateOfferPeriodCreatePopUpState createState() =>
      _CreateOfferPeriodCreatePopUpState();
}

class _CreateOfferPeriodCreatePopUpState
    extends State<CreateOfferPeriodCreatePopUp> {
  bool? active = costingTypeMethodeCheck != true ? false : true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  ReadOfferPeriod? group;
  int? veritiaclid = 0;
  int? typeId;
  List<OfferPeriodList> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController titleController = TextEditingController();
  String Datefrom="";

  TextEditingController descriptionContollercontroller = TextEditingController();
  TextEditingController noteContollercontroller = TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

   selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print("the searching time======"+newTime.toString());
    if (newTime != null) {
      print("the searching time======"+newTime.toString());
      setState(() {
        _time = newTime.replacing(hour: newTime.hourOfPeriod);
        print(_time);
        final dt = DateTime( newTime.hour, newTime.minute);

        final format = DateFormat.jm();
        fromTimeController.text = newTime.toString();
        print("Current Time: ${newTime.format(context)}");
        var value=newTime.format(context);
        fromTimeController.text=value;


        // print(DateTime.now(newTime));

      });
    }
  }
  clear(){

    setState(() {

      codeController.text =  "";

      noteContollercontroller.text="";
      fromDateController.text="";
      toDateController.text="";
      titleController.text="";
      fromTimeController.text="";
      toTimeController.text="";


      descriptionContollercontroller.text =
      "";

      active = false;

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
      context.read<ListOfferPeriodCubit>().getOfferPeriodList();

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
          create: (context) => CreateOfferPeriodCubit(),
        ),
        BlocProvider(
          create: (context) => ReadOfferPeriodCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ReadOfferPeriodCubit, ReadOfferPeriodState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("dataaaaaaaaaaaa" + data.toString());
                        print("shifas" + data.toTime.toString());
                        group = data;

                        codeController.text = data.offerPeriodCode ?? "";

                        noteContollercontroller.text=data.notes??"";
                        fromDateController.text=data.fromDate??"";
                        toDateController.text=data.toDate??"";
                        titleController.text=data.title??"";
                        fromTimeController.text=data.fromTime.toString()??"";
                        toTimeController.text=data.toTime.toString()??"";

                        Datefrom=data.fromTime.toString();

                        descriptionContollercontroller.text =

                            data.description ?? "";

                        active = data.isActive ?? false;
                        print("PP${Datefrom}");
                      });
                    });
              },
            ),
            BlocListener<DeleteOfferPeriodCubit, DeleteOfferPeriodState>(
              listener: (context, state) {
                print("patch" + state.toString());
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
                    clear();
                    context.read<ListOfferPeriodCubit>().getOfferPeriodList();
                  }
                  else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                });
              },
            ),
            BlocListener<CreateOfferPeriodCubit, CreateOfferPeriodState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    if(costingTypeMethodeCheck==true){
                      Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<ListOfferPeriodCubit>().getOfferPeriodList();
                    }else{
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context
                          .read<ReadOfferPeriodCubit>()
                          .getOfferPeriodRead(veritiaclid!);

                    }


                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<ListOfferPeriodCubit, ListOfferPeriodState>(
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
                        if (costingTypeMethodeCheck != true)
                          context
                              .read<ReadOfferPeriodCubit>()
                              .getOfferPeriodRead(veritiaclid!);
                      } else {
                        print("common");
                        clear();
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

                    label: "OfferPeriod",
                    onApply: () {
                      CreateOfferPeriod model=CreateOfferPeriod(
                        title: titleController?.text??"",
                        notes: noteContollercontroller.text,
                        fromDate: fromDateController?.text??"",
                        fromTime:
                        // "18:00:00",
                        fromTimeController?.text??"",
                        toDate: toDateController?.text??"",
                        toTime:
                        // "19:00:00",
                        toTimeController?.text??"",
                        description: descriptionContollercontroller?.text??"",
                        createdBy: Variable.created_by

                      );

                      print(model);
                      context.read<CreateOfferPeriodCubit>().postCreateOfferPeriod(model);

                      // widget.onTap();
                      setState(() {

                      });


                      // );

                      // widget.onTap();
                    },
                    onEdit: () {
                      ReadOfferPeriod model=ReadOfferPeriod(
                        fromDate: fromDateController?.text??"",
                        toDate: toDateController?.text??"",
                        fromTime: fromTimeController?.text??"",
                        toTime: toTimeController?.text??"",
                        title: titleController.text??"",
                        isActive: active,
                        notes: noteContollercontroller.text,
                        createdBy: Variable.created_by??"",
                        description: descriptionContollercontroller.text??"",
                      );

                      print("patchData$model");
                      context.read<CreateOfferPeriodCubit>().patchOfferPeriod(veritiaclid,model);
                    },
                    onCancel: () {
                      context
                          .read<DeleteOfferPeriodCubit>()
                          .deleteOfferPeriod(veritiaclid, type: "1");
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
                                    child: offerPeriodVerticalList(
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
                                          clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<ReadOfferPeriodCubit>()
                                                .getOfferPeriodRead(veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        print(va);
                                        context
                                            .read<ListOfferPeriodCubit>()
                                            .searchUomList(va);
                                        if (va == "") {
                                          context.read<ListOfferPeriodCubit>().getOfferPeriodList();
                                        }
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
                                      // height: 60,
                                      controller:titleController,
                                      title: "Title",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    PopUpDateFormField(

                                        format:DateFormat('yyyy-MM-dd'),
                                        controller: fromDateController,
                                        // initialValue:
                                        //     DateTime.parse(fromDate!),
                                        label: "From Date",
                                        onSaved: (newValue) {
                                          fromDateController.text = newValue
                                                ?.toIso8601String()
                                                .split("T")[0] ??
                                                "";
                                          // print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                        },
                                        enable: true),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    PopUpDateFormField(

                                        format:DateFormat('yyyy-MM-dd'),
                                        controller: toDateController,
                                        // initialValue:
                                        //     DateTime.parse(fromDate!),
                                        label: "To Date",
                                        onSaved: (newValue) {
                                          toDateController.text = newValue
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "";
                                          // print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                        },
                                        enable: true),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      controller: fromTimeController,
                                      icondrop: true,
                                      readOnly: true,
                                      title: "From Time",
                                      ontap: ()async {
                                        final TimeOfDay? newTime = await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),

                                        );
                                        // var value=newTime?.format(context);
                                        print("24h: ${newTime?.hour}:${newTime?.minute}");
                                        var value=    " ${newTime?.hour}:${newTime?.minute}";

                                        fromTimeController.text=value??"";
                                        setState(() {

                                        });
                                      },
                                    ),
                                    // PopUpDateFormField(
                                    //
                                    //     format:DateFormat('yyyy-MM-dd'),
                                    //     controller: TextEditingController(text: Datefrom),
                                    //     // initialValue:
                                    //     //     DateTime.parse(fromDate!),
                                    //     label: "From Time",
                                    //     onSaved: (newValue) {
                                    //       fromTimeController.text = newValue
                                    //           ?.toIso8601String()
                                    //           .split("T")[0] ??
                                    //           "";
                                    //       // print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                    //     },
                                    //     enable: true),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      controller: toTimeController,
                                      icondrop: true,
                                      readOnly: true,
                                      title: "To Time",
                                      ontap: ()async {
                                        final TimeOfDay? newTime = await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),

                                        );
                                        var value=    " ${newTime?.hour}:${newTime?.minute}";
                                        toTimeController.text=value??"";
                                        setState(() {

                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    // PopUpDateFormField(
                                    //
                                    //     format:DateFormat('yyyy-MM-dd'),
                                    //     controller: toTimeController,
                                    //     // initialValue:
                                    //     //     DateTime.parse(fromDate!),
                                    //     label: "To Time",
                                    //     onSaved: (newValue) {
                                    //       toTimeController.text = newValue
                                    //           ?.toIso8601String()
                                    //           .split("T")[0] ??
                                    //           "";
                                    //       // print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                    //     },
                                    //     enable: true),
                                    NewInputCard(
                                      height: 60,
                                      controller:
                                      noteContollercontroller,
                                      title: "Note",
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),     NewInputCard(
                                      height: 60,
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
                                      // paddingCheck: true,

                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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









class CreateOfferGroupPopUp extends StatefulWidget {
  final String type;

  CreateOfferGroupPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreateOfferGroupPopUpState createState() =>
      _CreateOfferGroupPopUpState();
}

class _CreateOfferGroupPopUpState
    extends State<CreateOfferGroupPopUp> {
  bool? active = costingTypeMethodeCheck != true ? false : true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  ReadOfferGroup? group;
  int? veritiaclid = 0;
  int? typeId;
  List<OfferGroupList> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController offerGroupApplyingTo = TextEditingController();
  TextEditingController offerGroupApplyingToId = TextEditingController();
  TextEditingController offerGroupApplyingToType = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController imageContollercontroller = TextEditingController();
  String Datefrom="";

  TextEditingController descriptionContollercontroller = TextEditingController();
  TextEditingController noteContollercontroller = TextEditingController();
  bool addNew = false;
  List<VariantLinesLiostModel> table = [];

  listAssign(List<VariantLinesLiostModel> tables) {
    onChange = true;
    setState(() {
      table = tables;
    });
  }
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

   selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print("the searching time======"+newTime.toString());
    if (newTime != null) {
      print("the searching time======"+newTime.toString());
      setState(() {
        _time = newTime.replacing(hour: newTime.hourOfPeriod);
        print(_time);
        final dt = DateTime( newTime.hour, newTime.minute);

        final format = DateFormat.jm();
        fromTimeController.text = newTime.toString();
        print("Current Time: ${newTime.format(context)}");
        var value=newTime.format(context);
        fromTimeController.text=value;


        // print(DateTime.now(newTime));

      });
    }
  }
  clear(){

    setState(() {

      codeController.text =  "";
      imageContollercontroller.text =  "";
      titleController.text =  "";
      offerGroupApplyingToType.text = "";
      offerGroupApplyingTo.text = "";
      descriptionContollercontroller.clear();
      active =  false;
      imageName="";




    });
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

   initState() {
    if (costingTypeMethodeCheck != true)
    context.read<ListOfferGroupCubit>().getOfferGroupList();
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
          create: (context) => CreateOfferGroupCubit(),
        ),
           BlocProvider(
          create: (context) => PatchOfferGroupCubit(),
        ),
        BlocProvider(
          create: (context) => ReadOfferGroupCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<PromotionImageCubit, PromotionImageState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("dataAkshayiMAGE" + data.data2.toString());
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
            BlocListener<ReadOfferGroupCubit, ReadOfferGroupState>(
              listener: (context, state) {
                print("nnnnop" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("dataaaaaaaaaaaa" + data.toString());

                        group = data;

                        codeController.text = data.offerGroupData?.offerGroupCode ?? "";
                        imageContollercontroller.text = data.offerGroupData?.image ?? "";
                        imageName = data.offerGroupData?.image ?? "";
                        titleController.text = data.offerGroupData?.title ?? "";
                        descriptionContollercontroller.text = data.offerGroupData?.description ?? "";
                        offerGroupApplyingToType.text = data.offerGroupData?.offerAppliedToType ?? "";
                        offerGroupApplyingTo.text = data.offerGroupData?.offerAppliedToCode ?? "";
                        active = data.offerGroupData?.isActive ?? false;










                        print("PP${Datefrom}");
                      });
                    });
              },
            ),
            BlocListener<DeleteOfferPeriodCubit, DeleteOfferPeriodState>(
              listener: (context, state) {
                print("patch" + state.toString());
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
                    clear();
                    context.read<ListOfferGroupCubit>().getOfferGroupList();
                  }
                  else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                });
              },
            ),
            BlocListener<CreateOfferGroupCubit, CreateOfferGroupState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  if(costingTypeMethodeCheck){}
                  showDailogPopUp(
                      context,
                      FailiurePopup(
                        content: Variable.errorMessege,
                        // table:table,
                      ));
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    if(costingTypeMethodeCheck){
                      Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<ListOfferGroupCubit>().getOfferGroupList();


                    }
                    else{
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));

                    }


                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context.read<ReadOfferGroupCubit>().getOfferGroupRead(veritiaclid!);
                  }
                  ;
                });
              },
            ),
            BlocListener<PatchOfferGroupCubit, PatchOfferGroupState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  showDailogPopUp(
                      context,
                      FailiurePopup(
                        content: Variable.errorMessege,
                        // table:table,
                      ));
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    // context.read<ListOfferGroupCubit>().getOfferGroupList();

                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<ListOfferGroupCubit, ListOfferGroupState>(
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

                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        if (costingTypeMethodeCheck != true)
                          context.read<ReadOfferGroupCubit>().getOfferGroupRead(veritiaclid!);
                      } else {
                        print("common");
                        clear();

                        // select=true;
                        setState(() {});
                      }

                      setState(() {});

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

                    label: "Offer Group",
                    onApply: () {
                      CreateOfferGroup model=CreateOfferGroup(
                          title: titleController?.text??"",
                          offerAppliedToCode: offerGroupApplyingTo.text,
                          offerAppliedToType: offerGroupApplyingToType.text??"",
                          offerAppliedToId: offerGroupApplyingToId.text,
                          description: descriptionContollercontroller?.text??"",
                          image:imageContollercontroller.text,
                          isActive: true,
                        inventoryId: Variable.inventory_ID,
                          createdBy: Variable.created_by
                      );

                      // print(model);
                      context.read<CreateOfferGroupCubit>().postCreateOfferGroup(model);

                      // widget.onTap();
                      setState(() {

                      });


                      // );

                      // widget.onTap();
                    },
                    onEdit: () {
                      OfferGroupData model=OfferGroupData(
                          title: titleController?.text??"",
                          offerAppliedToCode: offerGroupApplyingTo.text,
                          offerAppliedToType: offerGroupApplyingToType.text??"",
                          offerAppliedToId: offerGroupApplyingTo.text,
                          description: descriptionContollercontroller?.text??"",
                          image:imageContollercontroller.text,
                          isActive: active,

                      );

                      print("patchData$model");
                      context.read<PatchOfferGroupCubit>().patchOfferGroup(veritiaclid,model);
                    },
                    onCancel: () {
                      context
                          .read<DeleteOfferPeriodCubit>()
                          .deleteOfferPeriod(veritiaclid, type: "2");
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
                                    child: offerPeriodGroupVerticalList(
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
                                          clear();
                                          // select=true;
                                          //
                                          //

                                          setState(() {
                                            context
                                                .read<ReadOfferGroupCubit>()
                                                .getOfferGroupRead(veritiaclid!);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        print(va);
                                        context
                                            .read<ListOfferGroupCubit>()
                                            .searchOfferGroupList(va);
                                        if (va == "") {
                                          context.read<ListOfferGroupCubit>().getOfferGroupList();
                                        }
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
                                    SelectableDropDownpopUp(
                                      label: "Offer Group Applying Type",
                                      type:"OfferAppliedtoTypePopup",
                                      value: offerGroupApplyingToType.text,
                                      onSelection: (String? va) {
                                        print(
                                            "+++++++++++++++++++++++");
                                        //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                        setState(() {


                                          // onChange = true;
                                          offerGroupApplyingToType.text = va!;
                                          // context
                                          //     .read<ChannelListCubit>()
                                          //     .getChannelList(va
                                          // );
                                        });
                                      },
                                    ),
                                    // NewInputCard(
                                    //
                                    //     readOnly: true,
                                    //     controller: offerGroupApplyingToType  ,
                                    //     title: " "),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SelectableDropDownpopUp(
                                      label: "Offer Group Applying To",
                                      type:"PromotionChannelListPopup",
                                      code: offerGroupApplyingToType.text,
                                      value: offerGroupApplyingTo.text,
                                      onSelection: (ChannelListModel? va) {
                                        print(
                                            "+++++++++++++++++++++++");
                                        //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                        setState(() {


                                          // onChange = true;
                                          offerGroupApplyingTo.text = va?.channelCode??"";
                                          offerGroupApplyingToId.text = va?.id.toString()??"";
                                        });
                                      },
                                    ),


                                    // NewInputCard(
                                    //
                                    //     readOnly: true,
                                    //     controller: offerGroupApplyingTo  ,
                                    //     title: "Offer Group Applying To "),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    NewInputCard(
                                      // height: 60,
                                      controller:titleController,
                                      title: "Title",
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
                                          print("imabbabba" + Variable.imageName.toString());
                                          print("imabbabba" + imageEncode.toString());

                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange = true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 150000) {
                                            context.read<PromotionImageCubit>().postPromotionImage(
                                                Variable.imageName, imageEncode);
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            showDailogPopUp(
                                                context,
                                                FailiurePopup(
                                                  content: "Please upload Image of size Lesser than 150kb",
                                                  // table:table,
                                                ));

                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),

                                    NewInputCard(
                                      height: 60,
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
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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
  bool? active = costingTypeMethodeCheck != true ? false : true;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);

                  if (data.data1) {
                    setState(() {
                      Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                    });
                  } else {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    // Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                  } else {
                    // Navigator.pop(context);
                    showDailogPopUp(
                        context, FailiurePopup(content: data.data2));
                    //
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
                        if (costingTypeMethodeCheck != true)
                          context
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

                    label: "Pricing Type Create",
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
                                        print(va);
                                        context
                                            .read<PricingroupcreateCubit>()
                                            .searchCostingTypeList(va);
                                        if (va == "") {
                                          context
                                              .read<PricingroupcreateCubit>()
                                              .getPricingGroupList();
                                        }
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
                                      height: 60,
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      height: 60,
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
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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

class CreatePricingPopUp extends StatefulWidget {
  final String type;

  CreatePricingPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CreatePricingPopUp createState() => _CreatePricingPopUp();
}

class _CreatePricingPopUp extends State<CreatePricingPopUp> {
  bool? active = true;

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
          create: (context) => PricinggrouppostCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppatchCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<PricinggrouppostCubit, PricinggrouppostState>(
              listener: (context, state) {
                print("chaps" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);

                  if (data.data1) {
                    setState(() {
                      context
                          .read<PricingroupcreateCubit>()
                          .getPricingGroupList();
                      // Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                    });
                  } else {
                    // Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                  } else {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context, FailiurePopup(content: data.data2));
                    //
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
                        if (costingTypeMethodeCheck != true)
                          context
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
                    isDirectCreate: true,
                    onTap: () {
                      addNew = !addNew;
                      setState(() {});
                    },
                    key: _myWidgetState,
                    addNew: addNew,
                    // isDirectCreate:changer,

                    label: "Pricing Type Create",
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
                    onEdit: () {},
                    onCancel: () {},

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
                                      height: 60,
                                      controller: namecontroller,
                                      title: "Name",
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      height: 60,
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
  bool? active = costingTypeMethodeCheck != true ? false : true;

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
  clear(){
    codeController.clear();
    namecontroller.clear();
    pricingTypecontroller.clear();
    pricingTypeNamecontroller.clear();

    descriptionContollercontroller.clear();

    active = false;
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
                        pricingTypecontroller.text =
                            data.pricingTypeId.toString() ?? "";
                        pricingTypeNamecontroller.text =
                            data.pricingGroupName.toString() ?? "";

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    if(costingTypeMethodeCheck){
                      Navigator.pop(context);
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<PricinglistCubit>().getPricingList(); context.showSnackBarSuccess(data.data2);

                    }
                    else{
                      showDailogPopUp(
                          context,
                          SuccessPopup(
                            content: data.data2,
                            // table:table,
                          ));
                      context.read<PricingreadCubit>().getPricingGroupRead(veritiaclid);

                    }

                    // Navigator.pop(context);
                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));

                    // Navigator.pop(context);
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
                        if (costingTypeMethodeCheck != true)  context
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
                        createdBy: Variable.created_by,
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
                        createdBy: Variable.created_by,
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
                                          // clear();

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
                                        print(va);
                                        context
                                            .read<PricinglistCubit>()
                                            .searchCostingTypeList(va);
                                        if (va == "") {
                                          context
                                              .read<PricinglistCubit>()
                                              .getPricingList();
                                        }
                                      },
                                      result: result,
                                    ),
                                  ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(
                                      readOnly: true,
                                      controller: pricingTypeNamecontroller,
                                      icondrop: true,
                                      title: "Pricing Type Id",
                                      ontap: () {
                                        showDailogPopUp(
                                          context,
                                          TableConfigurePopup(
                                            type: "Pricing2TabalePopup",
                                            valueSelect:
                                                (PricingGroupListModel va) {
                                              onChange = true;
                                              setState(() {
                                                pricingTypecontroller.text =
                                                    va?.id.toString() ?? "";
                                                pricingTypeNamecontroller.text =
                                                    va?.pricingTypeName
                                                            .toString() ??
                                                        "";
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
                                    //   controller: pricingTypeNamecontroller,
                                    //   label: "Pricing Type Id",
                                    //   type: "Pricing_GroupPopUpCall",
                                    //   value: pricingTypeNamecontroller.text,
                                    //   onchange: (vale) {
                                    //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                    //   },
                                    //   enable: true,
                                    //   onSelection: (PricingGroupListModel? va) {
                                    //     setState(() {
                                    //       costingTypeMethodeCheck = true;
                                    //     });
                                    //     setState(() {
                                    //       pricingTypecontroller.text =
                                    //           va?.id.toString() ?? "";
                                    //       pricingTypeNamecontroller.text =
                                    //           va?.pricingTypeName.toString() ??
                                    //               "";
                                    //       setState(() {});

                                    //       // onChange = true;
                                    //       // orderType.text = va!;
                                    //     });
                                    //   },
                                    //   onAddNew: () {
                                    //     showDailogPopUp(
                                    //       context,
                                    //       ConfigurePopup(
                                    //         type: "pricingCreate",
                                    //       ),
                                    //     );
                                    //   },
                                    // ),
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
                                        // readOnly: true,
                                        controller: namecontroller,
                                        title: "Name"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )),
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
                                      height: 60,
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
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

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





class StockPartitionPopUp extends StatefulWidget {
  final String type;

  StockPartitionPopUp({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _StockPartitionPopUp createState() => _StockPartitionPopUp();
}

class _StockPartitionPopUp extends State<StockPartitionPopUp> {
  bool? active = costingTypeMethodeCheck != true ? false : true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  int selectedVertical = 0;
  StockPartitionModel? group;
  int? veritiaclid = 0;
  int? typeId;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName = "";
  bool changer = false;
  var list;

  TextEditingController codeController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

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
  clear(){
    codeController.clear();
    namecontroller.clear();
    pricingTypecontroller.clear();
    pricingTypeNamecontroller.clear();

    descriptionContollercontroller.clear();

    active = false;
  }

  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }


  void initState() {
    if (costingTypeMethodeCheck != true)
      context.read<ListstockpartitionCubit>().getStockPartitionList();

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
          create: (context) => StockpartitionpostCubit(),
        ),
        BlocProvider(
          create: (context) => PricinggrouppatchCubit(),
        ),
        BlocProvider(
          create: (context) => StockPartitionReadCubit(),
        ),  BlocProvider(
          create: (context) => DeletioncostingCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<StockPartitionReadCubit, StockPartitionReadState>(
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
                        codeController.text = data. partitionCode?? "";
                        namecontroller.text = data.name ?? "";

                        descriptionContollercontroller.text =
                            data.description ?? "";

                        active = data.isActive ?? false;
                      });
                    });
              },
            ),
            BlocListener<StockpartitionpostCubit, StockpartitionpostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

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
                    if (costingTypeMethodeCheck == true)     context.read<ListstockpartitionCubit>().getStockPartitionList();
                    // context.read<PricinglistCubit>().getPricingList();
                    // context.showSnackBarSuccess(data.data2);
                    // Navigator.pop(context);
                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));

                    // Navigator.pop(context);
                  }
                  ;
                });
              },
            ),
            BlocListener<DeletioncostingCubit, DeletioncostingState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.

                }, error: () {
                  showDailogPopUp(
                      context,
                      FailiurePopup(
                        content:Variable.errorMessege,
                        // table:table,
                      ));
                }, success: (data) {

                  if (data.data1) {
                    context.read<ListstockpartitionCubit>().getStockPartitionList();
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content:data.data1,
                          // table:table,
                        ));
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content:data.data1,
                          // table:table,
                        ));
                    print(data.data1);
                  }
                  ;
                });
              },
            ),

          ],
          child: BlocConsumer<ListstockpartitionCubit, ListstockpartitionState>(
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

                        if (costingTypeMethodeCheck != true)  context
                            .read<StockPartitionReadCubit>()
                            .getStockPartitionRead(veritiaclid);
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

                    label: "Stock  Partition Group Idf",
                    onApply: () {
                      print("save");

                      context
                          .read<StockpartitionpostCubit>()
                          .postStockPartion(namecontroller.text,descriptionContollercontroller.text);

                      // widget.onTap();
                    },
                    onEdit: () {

                      context
                          .read<StockpartitionpostCubit>()
                          .patchStockPartition(namecontroller.text,descriptionContollercontroller.text,active,veritiaclid);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "9");
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
                                    child: StockPartitionVerticalList(
                                      list: list,
                                      selectedVertical: selectedVertical,
                                      itemsearch: itemsearch,
                                      ontap: (int index) {
                                        setState(() {
                                          selectedVertical = index;
                                          // clear();

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
                                                .read<StockPartitionReadCubit>()
                                                .getStockPartitionRead(
                                                    veritiaclid);
                                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                                          });
                                        });
                                      },
                                      search: (String va) {
                                        print(va);
                                        context
                                            .read<PricinglistCubit>()
                                            .searchCostingTypeList(va);
                                        if (va == "") {
                                          context
                                              .read<PricinglistCubit>()
                                              .getPricingList();
                                        }
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
                                        // readOnly: true,
                                        controller: namecontroller,
                                        title: "Name"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    NewInputCard(

                                        controller: descriptionContollercontroller,
                                        title: "Description"),
                                    SizedBox(
                                      height: 10,
                                    ),


                                    PopUpSwitchTile(
                                        value: active ?? false,
                                        title: "is active",
                                        onClick: (gg) {
                                          onChange = true;
                                          if (costingTypeMethodeCheck != true)
                                            active = !active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),
                                  ],
                                )),
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

class LinkedItemCreatePopUp extends StatefulWidget {
  final String type;
  final String? veritiacalCode;
  final int? veritiaclid;
  final List<LinkedItemListModel>?linkedListItemTable;
  final Function linkedListAssign;

  LinkedItemCreatePopUp({Key? key,this.veritiaclid ,required this.linkedListItemTable,required this.type, this.veritiacalCode,required this.linkedListAssign})
      : super(key: key);

  @override
  _LinkedItemCreatePopUp createState() => _LinkedItemCreatePopUp();
}

class _LinkedItemCreatePopUp extends State<LinkedItemCreatePopUp> {
  bool? active =costingTypeMethodeCheck? true:false;

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

  TextEditingController descriptionContollercontroller =
      TextEditingController();
  List<LinkedItemListModel>? table = [];
  bool addNew = false;

  listAssign(List<LinkedItemListIdModel> list) {
    table!.clear();
    // onChange = true;
    setState(() {
      print("the list is here" + list.toString());
      if (list.isNotEmpty) {
        for (var i = 0; i < list.length; i++) {
          table?.add(LinkedItemListModel(
              id: list[i].id, code: list[i].code, name: list[i].name));
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
        ),   BlocProvider(
          create: (context) => DeletioncostingCubit(),
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
                        descriptionContollercontroller.text =
                            data.description ?? "";
                        table = data.linkedItemListModel;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("here++++++++++++"+   Variable.linkedVaue);
                    widget.linkedListAssign( Variable.linkedVaue);

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
          child: BlocConsumer<LinkedlistverticallistCubit,
              LinkedlistverticallistState>(
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
                        variantId: widget.veritiaclid,
                        inventoryId: Variable.inventory_ID,
                        title: titleController.text,
                        linkedItemListModel: table,
                        description: descriptionContollercontroller.text,
                      );
                      print("the model is" + model.toString());
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
                      print("the model is" + model.toString());
                      context
                          .read<CreatelinkeditemCubit>()
                          .patchLinkedItem(veritiaclid, model);
                    },
                    onCancel: () {
                      context
                          .read<DeletioncostingCubit>()
                          .CostingDelete(veritiaclid, type: "5");
                    },

                    onAddNew: (v) {},
                    dataField: Expanded(
                      // height: MediaQuery.of(context).size.height * .6,
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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

                                          veritiaclid = result[index].id;
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
                                        width: costingTypeMethodeCheck != true
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3.15
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.4,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Column(
                                              children: [

                                                NewInputCard(
                                                    controller: titleController,
                                                    title: "Title"),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                PopUpSwitchTile(
                                                    value: active ?? false,
                                                    title: "is Active",
                                                    onClick: (gg) {
                                                      onChange = true;
                                                      if (costingTypeMethodeCheck==false)
                                                        active = !active!;

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
                                                SizedBox(height: 10,),
                                                NewInputCard(
                                                  controller:
                                                      descriptionContollercontroller,
                                                  title: "Description",
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextButtonLarge(
                                                  onPress: () {
                                                    showDailogPopUp(
                                                      context,
                                                      ConfigurePopup(
                                                        code: widget.veritiacalCode,
                                                        linkedListItemTable: table,
                                                        listAssign: listAssign,
                                                        type: "CreateSearchLinkedItem-group",
                                                      ),
                                                    );
                                                  },
                                                  text: "CHOOSE",
                                                )
                                              ],
                                            )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: costingTypeMethodeCheck != true
                                            ? MediaQuery.of(context)
                                            .size
                                            .width /
                                            3.15
                                            : MediaQuery.of(context)
                                            .size
                                            .width /
                                            2.4,
                                        // width: w/7,
                                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
                                        child: customTable(

                                          tableWidth: .5,
                                          childrens: [
                                            TableRow(
                                              // decoration: BoxDecoration(

                                              //     color: Colors.green.shade200,

                                              //     shape: BoxShape.rectangle,

                                              //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                              children: [
                                                tableHeadtext(
                                                  'Item Name',
                                                  // textColor: Colors.black,
                                                  // padding: EdgeInsets.all(7),
                                                  // height: 46,
                                                  size: 13,
                                                  // color: Color(0xffE5E5E5),
                                                ),
                                                tableHeadtext(
                                                  '',

                                                  // padding: EdgeInsets.all(7),
                                                  //
                                                  // height: 46,
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
                                            if (table!.isEmpty) ...[
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
                                                        child: Container(
                                                          height: 44,
                                                        )

                                                        // Text(keys[i].value??"",)

                                                        ),
                                                    TableCell(
                                                        verticalAlignment:
                                                            TableCellVerticalAlignment
                                                                .middle,
                                                        child: textPadding("")
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

                                            if (table?.isNotEmpty == true) ...[
                                              for (var i = 0;
                                                  i < table!.length;
                                                  i++)
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
                                                          child: textPadding(
                                                              table?[i].name ??
                                                                  "",
                                                              // height: 45
                                                          )
                                                          // Text(keys[i].value??"",)

                                                          ),
                                                      TableCell(
                                                          verticalAlignment:
                                                              TableCellVerticalAlignment
                                                                  .middle,
                                                          child:
                                                              TableTextButton(
                                                            onPress: () {
                                                              setState(() {
                                                                table?.removeWhere(
                                                                    (element) =>
                                                                        element ==
                                                                        table?[
                                                                            i]);
                                                              });
                                                            },
                                                            label: "Delete",
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
                                          },
                                        ),
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
  var list1;

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
  clear(){
    codeController.text = "";
    namecontroller.text = "";
    imageContollercontroller.text = "";
    imageName = "";
    descriptionContollercontroller.text = "";
    searchNamecontroller.text = "";

    active = false;
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
                        imageName = data.image ?? "";
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    clear();
                    context.read<ListstaticCubit>().getStaticList();
                    // Navigator.pop(context);
                    // context.showSnackBarSuccess(data.data2);
                  } else {
                    Navigator.pop(context);
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
                    list1 = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        selectedVertical=0;
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

                    label: "Static Group",
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
                              list: list1,
                              type: "static",
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  clear();
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageContollercontroller.clear();

                                      });
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

                                      if (newFile.length <= 150000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:  "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "is Active",
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
//
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    setState(() {
                      context.read<UomgruoplistCubit>().getUomGroupist();
                    });
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                        // context
                        //     .read<UomgroupreadCubit>()
                        //     .getUomGroupRead(veritiaclid!);
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
  var list1;

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
  clear(){
    codeController.text =  "";
    namecontroller.text = "";
    shortNamecontroller.text = "";
    descriptionContollercontroller.text = "";
    active = false;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context
                        .read<UomgroupreadCubit>()
                        .getUomGroupRead(veritiaclid!);
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);
                  Navigator.pop(context);
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
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
              listener: (context, state) {
                print("delete" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    // context.showSnackBarSuccess(data.data2);
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
                    list1 = list;

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

                    label: "UOM Group",
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
                              list: list1,
                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;
                                  addNew = false;
                                  clear();
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
                                    title: "is Active",
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



class PurchaseReturnInvoicePaymentPopUp extends StatefulWidget {
  final String type;
  final String customerCode;
  final String orderId;
  final String status;
  final String transactionCode;
  final String customerName;
  final double? totalPrice;
  final Function? transactionPendingFunc;
  final Function? paymentCompletedFunc;

  PurchaseReturnInvoicePaymentPopUp({
    Key? key,
    required this.type,
  this.totalPrice, required this.customerCode, required this.orderId, required this.status, required this.transactionCode, required this.customerName, this.transactionPendingFunc, this.paymentCompletedFunc,
  }) : super(key: key);

  @override
  _PurchaseReturnInvoicePaymentPopUpState createState() => _PurchaseReturnInvoicePaymentPopUpState();
}

//create uom group

class _PurchaseReturnInvoicePaymentPopUpState extends State<PurchaseReturnInvoicePaymentPopUp> {


  List<String> result=["UPI Payment","Debit/Credit Card", "Pay On Delivery"];
  String methodCode="";
  List<PurchasePaymentModel> results=[];
  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
  GlobalKey<_CreateStaticPopUpState>();
  late AutoScrollController controller;
  int verticalScrollIndex = 0;
  @override
   initState() {


    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    context.read<PaymentListCubit>().getPaymentList();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }





  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Builder(builder: (context) {
      return BlocConsumer<PaymentListCubit, PaymentListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("successssssssssssssssssssssss");
                    results=list.data;
                    if(results.isNotEmpty){
                      methodCode=results[0].code??"";
                      Variable.methodCode=results[0].code??"";
                    }




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
                  content:Container(
                    width: width/1.6,

                    child: Column(
                      children: [
                        Container(
                          height:height*.09,
                          color: Color(0xff6F91CB),
                            child:Row(
                              children: [
                                SizedBox(width: width*.02,),
                                const Text("TOTAL PAYMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                Spacer(),
                                 Text(widget.totalPrice.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                SizedBox(width: width*.02,),

                              ],
                            )
                        ),

                       SizedBox(height:5),

                       Expanded(child: Row(
                          children: [
                            Scrollbar(

                              child: Container(
                       decoration: BoxDecoration(
                         // color: Colors.red,

                           // Red border with the width is equal to 5
                           border: Border.all(
                               width: .8,
                               color: Colors.grey
                           ),
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),

                                width: width*.17,
                                 child:Column(
                                   children:[
                                     SizedBox(height: height*.02,),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children:  [
                                         SizedBox(width: width*.007,),
                                         Text("Choose a Option",style: TextStyle(fontWeight: FontWeight.bold),),
                                         // SizedBox(width: context.blockSizeHorizontal*4,),
                                         Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),

                                           ),
                                         SizedBox(width: width*.007,),
                                       ],
                                     ),
                                     SizedBox( height: 5,),
                                     Divider(
                                       height: 0,
                                       color: Color(0xff2B3944)
                                           .withOpacity(0.3),
                                       // thickness: 1,
                                     ),
                                     Expanded(
                                       child: ListView.separated(



                                         separatorBuilder: (context, index) {

                                           return Divider(
                                             height: 0,
                                             color: Color(0xff2B3944)
                                                 .withOpacity(0.3),
                                             // thickness: 1,
                                           );
                                         },
                                         physics: ScrollPhysics(),
                                         controller: controller,
                                         itemBuilder: (context, index) {
                                           return AutoScrollTag(
                                               highlightColor: Colors.red,
                                               controller: controller,
                                               key: ValueKey(index),
                                               index: index,
                                               child: ItemCardPayment(
                                                 index: index,
                                                 selectedVertical:verticalScrollIndex,
                                                 item: results[index].tittle,
                                                 id:"",

                                                 onClick: () {

                                                   setState(() {
                                                     verticalScrollIndex=index;
                                                     methodCode=results[index].code??"";
                                                     Variable.methodCode=results[index].code??"";
                                                   });


                                                 },
                                               ));
                                         },
                                         itemCount:results.length,
                                       ),
                                     )
                                   ]
                                 )
                              ),
                            ),
                            Expanded(
                              child:Container(
                            margin: EdgeInsets.all(10),
                                child:Column(
                                    children:[
                                      SizedBox(height:height*.02),
                                      Row(
                                        children:[
                                          Text("We accepts all major credit and debit card:",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17))
                                        ]
                                      ),
                                      SizedBox(height:height*.02),
                                      Container(
                                          height:200,
                                          decoration: BoxDecoration(

                                            // Red border with the width is equal to 5
                                            border: Border.all(
                                                width: .8,
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                        child:Column(
                                          children:[
                                            customTable(

                                              border: const TableBorder(

                                                verticalInside: BorderSide(
                                                    width: .5,
                                                    color: Colors.black45,
                                                    style: BorderStyle.solid),
                                                horizontalInside: BorderSide(
                                                    width: .3,
                                                    color: Colors.black45,
                                                    // color: Colors.blue,
                                                    style: BorderStyle.solid),),

                                              tableWidth: .5,

                                              childrens: [
                                                TableRow(

                                                  // decoration: BoxDecoration(

                                                  //     color: Colors.green.shade200,

                                                  //     shape: BoxShape.rectangle,

                                                  //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                                  children: [

                                                    tableHeadtext(
                                                      'Bank Name',
                                                      textColor: Colors.black,
                                                      size: 13,
                                                      color: Color(0xffEBEBEB),
                                                    ),
                                                    tableHeadtext(
                                                      'South Indian Bank',
                                                      textColor: Colors.black,
                                                      size: 13,
                                                      color: Color(0xffEBEBEB),
                                                    ),



                                                  ],

                                                ),




                                              ],
                                              widths: {
                                                0: FlexColumnWidth(3),
                                                1: FlexColumnWidth(3),
                                                2: FlexColumnWidth(1.5),
                                                3: FlexColumnWidth(1.5),

                                              },

                                            ),

                                          ]
                                        )
                                      ),
                                      SaveUpdateResponsiveButton(
                                        label:"Payment Completed" ,
                                        saveFunction: (){
                                          widget.paymentCompletedFunc!();
                                          // PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                          //   contact: Variable.mobileNumber,
                                          //   customerCode: widget.customerCode,
                                          //   customerName: widget.customerName,
                                          //   methodCode: methodCode,
                                          //   orderId: widget.orderId,
                                          //   status: "payment_completed",
                                          //   totalAmount: widget.totalPrice,
                                          //   tranSactionCode: widget.transactionCode);
                                          // print(model);
                                          // context
                                          //     .read<PaymentSalePostCubit>()
                                          //     .postSaleOrderPaymentPost(model);
                                        },
                                        deleteLabel: "Transaction Pending",
                                        discardFunction: (){
                                          widget.transactionPendingFunc!();

                                          // PurchasePaymentPostModel model=PurchasePaymentPostModel(
                                          //     contact: Variable.mobileNumber,
                                          //     customerCode: widget.customerCode,
                                          //     customerName: widget.customerName,
                                          //     methodCode: methodCode,
                                          //     orderId: widget.orderId,
                                          //     status: "payment_pending",
                                          //     totalAmount: widget.totalPrice,
                                          //     tranSactionCode: widget.transactionCode);
                                          // print(model);
                                          // context
                                          //     .read<PaymentSalePostCubit>()
                                          //     .postSaleOrderPaymentPost(model);

                                        },
                                      ),

                                    ]

                                )
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  )

                );
              });
            },
          );
    });
  }
}
//create baseuom

class UomCreatePopUp extends StatefulWidget {
  final String type;
  final int? id;

  UomCreatePopUp({
    Key? key,
    this.id,
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
  TextEditingController uomGroupNameController = TextEditingController();
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);
                  Navigator.pop(context);
                  if (data.data1) {
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context.read<BaseuomlistCubit>().getUomist(id: widget.id);
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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

                    label: "Create Base UOM",
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
                                NewInputCard(controller: uomGroupNameController,
                                  readOnly: true,
                                  icondrop:true,title: "Uom Group",ontap: (){
                                  showDailogPopUp(context,
                                      TableConfigurePopup(
                                        type: "UomGroupTabalePopup", valueSelect: (BrandListModel va){

                                        setState(() {
                                          onChange = true;

                                          uomGroupController.text = va?.code ?? "";
                                          uomGroupNameController.text = va?.name ?? "";
                                          setState(() {});

                                          // onChange = true;
                                          // orderType.text = va!;
                                        });

                                      },
                                      ),


                                    );

                                  },),
                                // SelectableDropDownpopUp(
                                //   controller: uomGroupController,
                                //   label: "Uom Group Code",
                                //   type: "Uomgroup_PopUpCall",
                                //   value: uomGroupController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //
                                //       uomGroupController.text = va?.code ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
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
  TextEditingController uomGroupNameController = TextEditingController();
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
                        uomGroupNameController.text = data.uomGroupName ?? "";
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // Navigator.pop(context);
                  if (data.data1) {
                    setState(() {
                      context.read<BaseuomlistCubit>().getUomist(type: "all");
                    });

                    // context.showSnackBarSuccess(data.data2);
                  } else {
                    Navigator.pop(context);
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

                    label: "Base UOM",
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
                                NewInputCard(
                                  controller: uomGroupNameController,
                                  icondrop: true,
                                  title: "Uom Group Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "UomGroupTabalePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;

                                            uomGroupController.text =
                                                va?.code ?? "";
                                            uomGroupNameController.text =
                                                va?.name ?? "";
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
                                //   controller: uomGroupNameController,
                                //   label: "Uom Group Code",
                                //   type: "Uomgroup_PopUpCall",
                                //   value: uomGroupNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //
                                //       uomGroupController.text = va?.code ?? "";
                                //       uomGroupNameController.text =
                                //           va?.code ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
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
                                PopUpSwitchTile(
                                    value: active ?? false,
                                    title: "is Active",
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
  int? divisionId=0;
  final GlobalKey<_CreateStaticPopUpState> _myWidgetState =
      GlobalKey<_CreateStaticPopUpState>();

  void changeAddNew(bool va) {
    addNew = va;
    onChange = false;
  }

  void initState() {
    context.read<AllcategorylistCubit>().getAllCategoryist();
    super.initState();
  }
  clear(){
    codeController.clear();
    namecontroller.clear();
    parentCodeController.clear();
    divisionCodeController.clear();
    divisionNameController.clear();
    parentNameController. clear();
    imageCodeController.clear();
    imageName ='';
    alternativeController.clear();
    divisionId=0;
    // shortNamecontroller.text=data.shortName??"";

    descriptionContollercontroller.clear();
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
                        divisionNameController.text = data.divisionName ?? '';
                        parentNameController.text = data.parentname ?? '';
                        imageCodeController.text = data.image ?? '';
                        imageName = data.image ?? '';
                        alternativeController.text = data.alternativename ?? "";
                        divisionId=data.divisionId;
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    context.showSnackBarSuccess(data.data2);
                    context.read<AllcategorylistCubit>().getAllCategoryist();
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    setState(() {
                      context.read<AllcategorylistCubit>().getAllCategoryist();
                      clear();

                    });

                    // context.showSnackBarSuccess(data.data2);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<AllcategorylistCubit, AllcategorylistState>(
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
                        selectedVertical = 0;
                        Variable.divisionId = result[0].id;

                        // Variable.verticalid=result[0].id;
                        print("Variable.ak" + Variable.verticalid.toString());
                        context
                            .read<CategoryreadCubit>()
                            .getCategoryRead(veritiaclid!);
                      } else {
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

                    label: "Category",
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
                        image: imageCodeController.text,
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
                                  clear();
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

                                NewInputCard(
                                  controller: divisionNameController,
                                  icondrop: true,
                                  title: "Division code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "division-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;

                                            print(va?.id ?? "");
                                            // divisionid=va?.id;
                                            divisionId = va?.id;

                                            divisionCodeController.text =
                                                va?.code ?? "";
                                            divisionNameController.text =
                                                va?.name ?? "";
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
                                //   controller: divisionNameController,
                                //   label: "Division code",
                                //   type: "Division_ListPopUpCall",
                                //   value: divisionNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //
                                //       print(va?.id ?? "");
                                //       // divisionid=va?.id;
                                //       Variable.divisionId = va?.id;
                                //
                                //       divisionCodeController.text =
                                //           va?.code ?? "";
                                //       divisionNameController.text =
                                //           va?.name ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),
                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: parentNameController,
                                  icondrop: true,
                                  title: "Parent Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        id: divisionId,
                                        type: "category-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;
                                            parentCodeController.text =
                                                va?.code ?? "";
                                            parentNameController.text =
                                                va?.name ?? "";
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
                                //   controller: parentNameController,
                                //   label: "Parent Code",
                                //   type: "Category_PopUpCall",
                                //   value: parentNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //       parentCodeController.text =
                                //           va?.code ?? "";
                                //       parentNameController.text =
                                //           va?.name ?? "";
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageCodeController.clear();

                                      });


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

                                      if (newFile.length <= 150000) {
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:  "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

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
                                    title: "is active",
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
  final int? id;

  CategoryCreatePopUp({
    Key? key,
    required this.type,  this.id,
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
  int ? divisionid=0;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  // print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));

                    setState(() {});

                    context
                        .read<CategorylistCubit>()
                        .getCategoryist(id: widget.id);
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                          image: imageCodeController.text);
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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: divisionCodeNameController,
                                  icondrop: true,
                                  readOnly: true,
                                  title: "Division code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "division-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;

                                            print(va?.id ?? "");
                                            divisionid=va?.id;

                                            divisionCodeController.text =
                                                va?.code ?? "";
                                            Variable.divisionId = va?.id;
                                            divisionCodeNameController.text =
                                                va?.name ?? "";
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
                                //   controller: divisionCodeNameController,
                                //   label: "Division",
                                //   type: "Division_ListPopUpCall",
                                //   value: divisionCodeNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       // print(va?.id??"");
                                //       // divisionid=va?.id;
                                //       // Variable.divisionId=va?.id;
                                //
                                //       divisionCodeController.text =
                                //           va?.code ?? "";
                                //       Variable.divisionId = va?.id;
                                //       divisionCodeNameController.text =
                                //           va?.name ?? "";
                                //       // widget.divisionName.text=va?.name??"";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                //   // onAddNew: () {
                                //   //
                                //   //   showDailogPopUp(
                                //   //     context,
                                //   //     ConfigurePopup(
                                //   //       type: "devision-group",
                                //   //     ),
                                //   //
                                //   //
                                //   //   );
                                //   // },
                                // ),
                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: parentCodeNameController,
                                  icondrop: true,
                                  readOnly: true,
                                  title: "Parent Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        id:divisionid,
                                        type: "category-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;
                                            parentCodeController.text =
                                                va?.code ?? "";
                                            parentCodeNameController.text =
                                                va?.name ?? "";
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
                                //   controller: parentCodeNameController,
                                //   label: "Parent Code",
                                //   type: "Category_PopUpCall",
                                //   value: parentCodeNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //       parentCodeController.text =
                                //           va?.code ?? "";
                                //       parentCodeNameController.text =
                                //           va?.name ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),

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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                      });

                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));
                                        // context.showSnackBarError(
                                        //     "Please upload Image of size Lesser than 150kb");
                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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
  final int? id;

  SubCategoryCreatePopUp({
    Key? key,
    this.id,
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
  int ? divisionId=0;

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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));
                    context.read<SubcategoryCubit>().getSubCategoryList(id:widget.id );

                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                          image: imageCodeController.text);
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
                                  height: 60,
                                  controller: namecontroller,
                                  title: "Name",
                                ),
                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: divisionCodeNameController,
                                  icondrop: true,
                                  readOnly: true,
                                  title: "Division code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        type: "division-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;

                                            print(va?.id ?? "");
                                            divisionCodeController.text =
                                                va?.code ?? "";
                                            Variable.divisionId = va?.id;
                                            divisionId = va?.id;
                                            divisionCodeNameController.text =
                                                va?.name ?? "";
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
                                //   controller: divisionCodeNameController,
                                //   label: "Division",
                                //   type: "Division_ListPopUpCall",
                                //   value: divisionCodeNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       // print(va?.id??"");
                                //       // divisionid=va?.id;
                                //       // Variable.divisionId=va?.id;
                                //
                                //       divisionCodeController.text =
                                //           va?.code ?? "";
                                //       Variable.divisionId = va?.id;
                                //       divisionCodeNameController.text =
                                //           va?.name ?? "";
                                //       // widget.divisionName.text=va?.name??"";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                //   // onAddNew: () {
                                //   //
                                //   //   showDailogPopUp(
                                //   //     context,
                                //   //     ConfigurePopup(
                                //   //       type: "devision-group",
                                //   //     ),
                                //   //
                                //   //
                                //   //   );
                                //   // },
                                // ),
                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: parentCodeNameController,
                                  icondrop: true,
                                  readOnly: true,
                                  title: "Parent Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        id:divisionId,
                                        type: "category-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;
                                            parentCodeController.text =
                                                va?.code ?? "";
                                            parentCodeNameController.text =
                                                va?.name ?? "";
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
                                //   controller: parentCodeNameController,
                                //   label: "Parent Code",
                                //   type: "Category_PopUpCall",
                                //   value: parentCodeNameController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //       parentCodeController.text =
                                //           va?.code ?? "";
                                //       parentCodeNameController.text =
                                //           va?.name ?? "";
                                //       setState(() {});
                                //
                                //       // onChange = true;
                                //       // orderType.text = va!;
                                //     });
                                //   },
                                // ),

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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                      });

                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
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
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
                                  controller: descriptionContollercontroller,
                                  title: "Description",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NewInputCard(
                                  height: 60,
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
  final int? id;

  GroupPopUp({
    Key? key,
    this.id,
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
  TextEditingController categoryNameController = TextEditingController();
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

                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print(data.data1);

                  if (data.data1) {
                    Navigator.pop(context);
                    showDailogPopUp(
                        context,
                        SuccessPopup(
                          content: data.data2,
                          // table:table,
                        ));

                    context.read<GrouplistCubit>().getGroupListList(id:widget.id);
                    setState(() {});
                  } else {
                    showDailogPopUp(
                        context,
                        FailiurePopup(
                          content: data.data2,
                          // table:table,
                        ));
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
                          image: imageCodeController.text,
                          displayName: displayNameContollercontroller?.text ?? "",
                          categoryCode: categoryCodeController.text ?? "");

                      print(model);
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
                                    onCancel: (){

                                      setState(() {
                                        imageName="";
                                        imageCodeController.clear();

                                      });

                                    },
                                    onChange: (myFile) {
                                      onChange = true;
                                      imageName = myFile?.fileName ?? "";

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content: "Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),
                                // SelectableDropDownpopUp(
                                //   apiType: "all",
                                //   controller: categoryCodeController,
                                //   label: "Category Code",
                                //   type: "Category_PopUpCall",
                                //   value: categoryCodeController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     // onChange=true;
                                //     categoryCodeController.text =
                                //         va?.code ?? "";
                                //     setState(() {});
                                //
                                //     // onChange = true;
                                //     // orderType.text = va!;
                                //   },
                                // ),

                                NewInputCard(
                                  controller: categoryNameController,
                                  icondrop: true,
                                  readOnly: true,
                                  title: "Category Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        apiType: "all",
                                        type: "category-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;
                                            categoryCodeController.text =va?.code??"";
                                                categoryNameController.text =
                                                    va?.name ?? "";
                                            setState(() {});

                                            // onChange = true;
                                            // orderType.text = va!;
                                          });
                                        },
                                      ),
                                    );
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
  TextEditingController categoryNameController = TextEditingController();
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
  clear(){
    codeController.clear();
    namecontroller.clear();
    displayNameContollercontroller.clear();
    searchNameContollercontroller.clear();
    imageCodeController.clear();
    imageName =  '';
    categoryCodeController.clear();
    categoryNameController.clear();
    // // shortNamecontroller.text=data.shortName??"";

    descriptionContollercontroller.clear();

    active = false;
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
                  // context.showSnackBarError("Loading");
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
                        searchNameContollercontroller.text =
                            data.displayName ?? "";
                        imageCodeController.text = data.image ?? '';
                        imageName = data.image ?? '';
                        categoryCodeController.text = data.categoryCode ?? "";
                        categoryNameController.text = data.categoryName ?? "";
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
                  // context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context
                        .read<GrouplistCubit>()
                        .getGroupListList(type: "all");
                    clear();
                    // context.showSnackBarSuccess(data.data2);
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
                    print("avanthikaaasasas" + list.data.toString());

                    result = list.data;
                    list = list;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        selectedVertical = 0;
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

                    label: "Group",
                    onApply: () {
                      print("save");
                    },
                    onEdit: () {
                      MaterialCreationtModel model = MaterialCreationtModel(
                        name: namecontroller?.text ?? "",
                        categoryCode: categoryCodeController?.text ?? "",
                        displayName: displayNameContollercontroller?.text ?? "",
                        searchNmae: searchNameContollercontroller?.text ?? "",
                        image: imageCodeController.text,
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
                                  clear();
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
                                    onCancel: (){
                                      setState(() {
                                        imageName="";
                                        imageCodeController.clear();
                                      });

                                    },
                                    onChange: (myFile) {
                                      onChange = true;

                                      // Variable.mobileBannerImage = myFile.toUint8List();

                                      imageEncode = myFile.toBase64();
                                      // widget.fileMobileNameCtrl.text =
                                      //     myFile.fileName ?? "";
                                      // if (Variable.bannerimage!.length <= 240000)

                                      // else
                                      //   context.showSnackBarError(
                                      //       "Please upload Banner of size Lesser than 230kb");
                                    },
                                    onImageChange: (newFile) async {
                                      onChange = true;
                                      // Variable.popUp = false;

                                      if (newFile.length <= 150000) {
                                        context.read<ImagepostCubit>().postImage(
                                            Variable.imageName, imageEncode);
                                        // loading
                                        //     ? showDailogPopUp(context, DialoguePopUp())
                                        //     : Navigator.pop(context);
                                        // context
                                        //     .read<CreateWebImageCubit>()
                                        //     .createMobImage();
                                      } else
                                        showDailogPopUp(
                                            context,
                                            FailiurePopup(
                                              content:" Please upload Image of size Lesser than 150kb",
                                              // table:table,
                                            ));

                                      setState(() {});
                                    },
                                    onCreate: true,
                                    label: "Image"),
                                SizedBox(
                                  height: 10,
                                ),

                                NewInputCard(
                                  controller: categoryNameController,
                                  icondrop: true,
                                  title: "Category Code",
                                  ontap: () {
                                    showDailogPopUp(
                                      context,
                                      TableConfigurePopup(
                                        apiType: "all",
                                        type: "category-TablePopup",
                                        valueSelect: (BrandListModel va) {
                                          setState(() {
                                            onChange = true;
                                            categoryCodeController.text =
                                                va?.code ?? "";
                                            categoryNameController.text =
                                                va?.name ?? "";
                                            // Variable.categoryId = va?.id;
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
                                //   apiType: "all",
                                //   controller: categoryCodeController,
                                //   label: "Category Code",
                                //   type: "Category_PopUpCall",
                                //   value: categoryCodeController.text,
                                //   onchange: (vale) {
                                //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                //   },
                                //   enable: true,
                                //   onSelection: (BrandListModel? va) {
                                //     setState(() {
                                //       onChange = true;
                                //       categoryCodeController.text =
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
  final bool? buttonNameOption;
  final Widget? paginated;
  final bool buttonCheck;
  final bool functionChane;
  final VoidCallback? onTap;
  final String? label;
  final String? buttonName;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback? onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  final bool changer;
  final bool buttonVisible;
  final double? height;
  final double? width;


  const PopUpHeader({
    Key? key,
    this.buttonNameOption = false,
    this.buttonName = "SAVE",
    this.paginated ,
    this.height,
    this.width,
    this.buttonCheck = false,
    this.buttonVisible=true,
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
    double width=MediaQuery.of(context).size.width;
    changer() {
      widget.isDirectCreate != false;
    }

    return Container(

      // height:h,

      padding: EdgeInsets.all(10),
      width: width/2,
      child: GeneralSavePage(
        paginated: widget.paginated,

        onEdit: widget.onEdit,
        buttonName: widget.buttonName,
        onPopUp: true,
        buttonVisible: widget.buttonVisible,
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
                widget.buttonCheck ? Container()
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
