import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/cubit/categorydivisionconfig/categorylistdivisionconfig_cubit.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/cubit/group/groumdivision_cubit.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/cubit/uomlist/uomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/framework_list/frameworklist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/subcategorylist/subcategory_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridcreation/customeridcreation_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridlist/customeridlist_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/shippingaddress/shippingadrees_cubit.dart';
import 'package:inventory/Screens/sales/general/general.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingcreatelist/costingcreatelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingtypelist/costingtypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricinglist/pricinglist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricingrouplist/pricingroupcreate_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/salesList/sales_list_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/vendordetailslist/vendordetailslist_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/searchTextfield.dart';

import '../Screens/heirarchy/general/cubits/materialRead/materialread_cubit.dart';
import '../Screens/heirarchy/general/model/listbrand.dart';
import '../Screens/heirarchy/general/model/materialread.dart';
import '../Screens/variant/general/cubits/variant_selection/variantselection_cubit.dart';
import '../Screens/variant/variantdetails/cubits/variantsearch/variantsearch_cubit.dart';
import '../Screens/variant/variantdetails/model/vendormodel.dart';

class TableConfigurePopup extends StatelessWidget {
  final String type;
  final String? code;
  final String? apiType;
  final Function valueSelect;
  final int? id;

  TableConfigurePopup(
      {Key? key,
      this.apiType,
        this.code,
      required this.type,
      this.id = 0,
      required this.valueSelect})
      : super(key: key);
  late Widget data;
  @override
  Widget build(BuildContext context) {
    switch (type) {
      case "division-TablePopup":
        {
          data = divisionTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;   case "Search_tablePopup":
        {
          data = SearchTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;


        case "GroupAllTabale_Popup":
        {
          data = GroupAllTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;

      case "VendorDetails_Popup":
        {
          data = VendorDetailsList(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "UOMPopup":
        {
          data = UOMPopup(id: id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "CostingTabalePopup":
        {
          data = CostingTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "PricingTabalePopup":
        {
          data = PricingTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "Pricing2TabalePopup":
        {
          data = Pricing2TabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;

      case "CostingTypeTabalePopup":
        {
          data = CostingTypeTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "varientTabalePopup":
        {
          data = varientTabalePopup(
            id: id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
        case "ManuFacturedPopup":
        {
          data = ManuFacturedPopup(
            id: id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "category-TablePopup":
        {
          data = categoryTabalePopup(
            id: id,
            apiType: apiType,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "SubcategoryTabalePopup":
        {
          data = SubcategoryTabalePopup(
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "baseUomTabalePopup":
        {
          data = baseUomTabalePopup(
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;

      case "SalesUomTabalePopup":
        {
          data = SalesUomTabalePopup(
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "UomDivision_ConfigPopup":
        {
          data = UomDivisionPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "GroupDivision_Popup":
        {
          data = GroupDivisionPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "categoryDivision_Popup":
        {
          data = CategoryDivisionPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "UomGroupTabalePopup":
        {
          data = UomGroupTabalePopup(
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "shippingIdListPopup":
        {
          data = shippingIdListPopup(
            code: code,
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "customerId_ListPopup":
        {
          data = customerIdListPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;

      case "BrandTabalePopup":
        {
          data = BrandTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "StaticTabalePopup":
        {
          data = StaticTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "GroupTabalePopup":
        {
          data = GroupTabalePopup(
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "MaterialTabalePopup":
        {
          data = MaterialTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "FrameWorkTabalePopup":
        {
          data = FrameWorkTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
    }

    return data;
  }
}

class divisionTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  divisionTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _divisionTabalePopup createState() => _divisionTabalePopup();
}

class _divisionTabalePopup extends State<divisionTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<DevisionListCubit>().getDevisionList();
      return BlocConsumer<DevisionListCubit, DevisionListState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Division Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "devision-group",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          // margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<DevisionListCubit>()
                                  .searchDevisionList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<DevisionListCubit>()
                                    .getDevisionList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
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
                                    'Division',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString(),)
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<DevisionListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<DevisionListCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<DevisionListCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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




class SearchTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  SearchTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _SearchTabalePopup createState() => _SearchTabalePopup();
}

class _SearchTabalePopup extends State<SearchTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => VariantsearchCubit(),
  child: Builder(builder: (context) {
      // context.read<DevisionListCubit>().getDevisionList();
      return BlocConsumer<VariantsearchCubit, VariantsearchState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Search  Variant",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "devision-group",
                  //   ),
                  // );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context.read<VariantsearchCubit>().getVariantSearch(va??"");

                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Variants',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                      table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<VariantsearchCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<VariantsearchCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<VariantsearchCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}









class GroupAllTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  GroupAllTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _GroupAllTabalePopup createState() => _GroupAllTabalePopup();
}

class _GroupAllTabalePopup extends State<GroupAllTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<GrouplistCubit>().getGroupListList(type: "all");
      return BlocConsumer<GrouplistCubit, GrouplistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                buttonVisible: false,
                functionChane: true,
                buttonCheck: true,
                buttonName: "",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Group  Popup",
                onApply: () {


                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<GrouplistCubit>()
                                  .searchGroupList(searchContoller.text,type:"all");
                              if (va == "") {
                                context
                                    .read<GrouplistCubit>()
                                    .getGroupListList(type: "all");
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Groups',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                            textPadding((i + 1).toString())
                                          // Text(keys[i].key??"")

                                        ),
                                        TableCell(
                                            verticalAlignment:
                                            TableCellVerticalAlignment
                                                .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                  table[i].name ?? "",
                                            ),

                                          // Text(keys[i].value??"",)

                                        ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                              () => context.read<GrouplistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                            context
                                .read<GrouplistCubit>()
                                .previuosslotSectionPageList(type: "all");
                          },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                            // print(data.nextPageUrl);
                            context
                                .read<GrouplistCubit>()
                                .nextslotSectionPageList(type: "all");
                          },
                        )
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
  final Function? valueSelect;

  VendorDetailsList({
    Key? key,
    required this.type,
    required this.valueSelect,
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

                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    onTap: () {},
                    buttonVisible: false,
                    isDirectCreate: true,
                    addNew: addNew,
                    label: "Vendor Details",
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
                                                  widget.valueSelect!(model);
                                                  Navigator.pop(context);
                                                },
                                                text: table[i]
                                                    .manuFactureName ??
                                                    "",
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




class UOMPopup extends StatefulWidget {
  final String type;
  final int? id;
  final Function valueSelect;

  UOMPopup({
    Key? key,
    required this.type,
    required this.id,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _UOMPopup createState() => _UOMPopup();
}

class _UOMPopup extends State<UOMPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<UomgruoplistCubit>().getUomGroupist();
      return BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Uom Group Popup",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "devision-group",
                  //   ),
                  // );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<BaseuomlistCubit>()
                                  .searchUomList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<BaseuomlistCubit>()
                                    .getUomist();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Uom Group',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                            textPadding((i + 1).toString())
                                          // Text(keys[i].key??"")

                                        ),
                                        TableCell(
                                            verticalAlignment:
                                            TableCellVerticalAlignment
                                                .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:
                                                  table[i].name ?? "",

                                            )
                                          // Text(keys[i].value??"",)

                                        ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                              () => context.read<UomgruoplistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                            context
                                .read<UomgruoplistCubit>()
                                .previuosslotSectionPageList();
                          },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                            // print(data.nextPageUrl);
                            context
                                .read<UomgruoplistCubit>()
                                .nextslotSectionPageList();
                          },
                        )
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

// class UOMPopup extends StatefulWidget {
//   final String type;
//   final int id;
//   final Function valueSelect;
//
//   UOMPopup({
//     Key? key,
//     required this.type,
//     required this.id,
//     required this.valueSelect,
//   }) : super(key: key);
//
//   @override
//   _UOMPopup createState() => _UOMPopup();
// }
//
// class _UOMPopup extends State<UOMPopup> {
//   bool? active = true;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName = "";
//   String imageEncode = "";
//   List<BrandListModel> table = [];
//   var list1;
//   TextEditingController searchContoller = TextEditingController();
//
//   void changeAddNew(bool va) {
//     // addNew = va;
//     // onChange = false;
//   }
//
//   void initState() {
//     // context
//     //     .read<MaterialListCubit>()
//     //     .getMaterialList();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // descriptionController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].description == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].description);
//     // durationController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].duration == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].duration.toString());
//     return Builder(builder: (context) {
//       context.read<BaseuomlistCubit>().getUomist();
//       return BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
//         listener: (context, state) {
//           print("state" + state.toString());
//           state.maybeWhen(
//               orElse: () {},
//               error: () {
//                 print("error");
//               },
//               success: (list) {
//                 print("Welcome" + list.toString());
//                 table = list.data;
//                 list1 = list;
//               });
//         },
//         builder: (context, state) {
//           return Builder(builder: (context) {
//             double h = MediaQuery.of(context).size.height;
//             double w = MediaQuery.of(context).size.width;
//             return AlertDialog(
//               content: PopUpHeader(
//                 functionChane: true,
//                 buttonCheck: true,
//                 buttonName: "AddNew",
//                 onTap: () {},
//                 isDirectCreate: true,
//                 addNew: false,
//                 label: "Uom Group Popup",
//                 onApply: () {
//                   // showDailogPopUp(
//                   //   context,
//                   //   ConfigurePopup(
//                   //     type: "devision-group",
//                   //   ),
//                   // );
//
//                   // widget.onTap();
//                   setState(() {});
//                 },
//                 onEdit: () {},
//                 onCancel: () {
//                   // context
//                   //     .read<MaterialdeleteCubit>()
//                   //     .materialDelete(veritiaclid,"material");
//                 },
//                 onAddNew: (v) {
//                   print("Akshay" + v.toString());
//                   // changeAddNew(v);
//                   // setState(() {});
//                   //
//                   // setState(() {});
//                 },
//                 dataField: Container(
//                   // height: 500,
//                   child: Column(
//                     children: [
//                       Container(
//                           margin: EdgeInsets.all(5),
//                           child: SearchTextfiled(
//                             color: Color(0xffFAFAFA),
//                             h: 40,
//                             hintText: "Search...",
//                             ctrlr: searchContoller,
//                             onChanged: (va) {
//                               print("searching case" + va.toString());
//                               context
//                                   .read<BaseuomlistCubit>()
//                                   .searchUomList(searchContoller.text);
//                               if (va == "") {
//                                 context
//                                     .read<BaseuomlistCubit>()
//                                     .getUomist();
//                               }
//                             },
//                           )),
//                       SizedBox(
//                         height: h * .005,
//                       ),
//                       Container(
//                         height: h / 1.86,
//                         // width: w/7,
//                         // margin: EdgeInsets.symmetric(horizontal: w*.02),
//                         child: SingleChildScrollView(
//                           child: customTable(
//                             border: const TableBorder(
//                               verticalInside: BorderSide(
//                                   width: .5,
//                                   color: Colors.black45,
//                                   style: BorderStyle.solid),
//                               horizontalInside: BorderSide(
//                                   width: .3,
//                                   color: Colors.black45,
//                                   // color: Colors.blue,
//                                   style: BorderStyle.solid),
//                             ),
//                             tableWidth: .5,
//                             childrens: [
//                               TableRow(
//                                 // decoration: BoxDecoration(
//
//                                 //     color: Colors.green.shade200,
//
//                                 //     shape: BoxShape.rectangle,
//
//                                 //     border: const Border(bottom: BorderSide(color: Colors.grey))),
//
//                                 children: [
//                                   tableHeadtext(
//                                     'Sl No',
//
//                                     padding: EdgeInsets.all(7),
//
//                                     height: 44,
//                                     // textColor: Colors.black,
//                                     // color: Color(0xffE5E5E5),
//
//                                     size: 13,
//                                   ),
//
//                                   tableHeadtext(
//                                     'Uom Group',
//                                     // textColor: Colors.black,
//                                     padding: EdgeInsets.all(7),
//                                     height: 44,
//                                     size: 13,
//                                     // color: Color(0xffE5E5E5),
//                                   ),
//                                   // tableHeadtext(
//                                   //   '',
//                                   //   textColor: Colors.black,
//                                   //   padding: EdgeInsets.all(7),
//                                   //   height: 46,
//                                   //   size: 13,
//                                   //   // color: Color(0xffE5E5E5),
//                                   // ),
//                                 ],
//                               ),
//                               if (table?.isNotEmpty == true) ...[
//                                 for (var i = 0; i < table.length; i++)
//                                   TableRow(
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey.shade200,
//                                           shape: BoxShape.rectangle,
//                                           border: const Border(
//                                               left: BorderSide(
//                                                   width: .5,
//                                                   color: Colors.grey,
//                                                   style: BorderStyle.solid),
//                                               bottom: BorderSide(
//                                                   width: .5,
//                                                   color: Colors.grey,
//                                                   style: BorderStyle.solid),
//                                               right: BorderSide(
//                                                   color: Colors.grey,
//                                                   width: .5,
//                                                   style: BorderStyle.solid))),
//                                       children: [
//                                         TableCell(
//                                             verticalAlignment:
//                                             TableCellVerticalAlignment
//                                                 .middle,
//                                             child:
//                                             textPadding((i + 1).toString())
//                                           // Text(keys[i].key??"")
//
//                                         ),
//                                         TableCell(
//                                             verticalAlignment:
//                                             TableCellVerticalAlignment
//                                                 .middle,
//                                             child: InkWell(
//                                               onTap: () {
//                                                 BrandListModel model =
//                                                 BrandListModel(
//                                                   id: table[i].id,
//                                                   name: table[i].name,
//                                                   code: table[i].code,
//                                                 );
//                                                 Navigator.pop(context);
//
//                                                 widget.valueSelect(model);
//                                               },
//                                               child: Container(
//                                                   alignment: Alignment.center,
//                                                   child:
//                                                   Text(table[i].name ?? ""),
//                                                   height: 45),
//                                             )
//                                           // Text(keys[i].value??"",)
//
//                                         ),
//                                       ]),
//                               ],
//                             ],
//                             widths: {
//                               0: FlexColumnWidth(1),
//                               1: FlexColumnWidth(5),
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: h * .004,
//                       ),
//                       if (list1 != null)
//                         tablePagination(
//                               () => context.read<BaseuomlistCubit>().refresh(),
//                           back: list1?.previousUrl == null
//                               ? null
//                               : () {
//                             context
//                                 .read<BaseuomlistCubit>()
//                                 .previuosslotSectionPageList();
//                           },
//                           next: list1.nextPageUrl == null
//                               ? null
//                               : () {
//                             // print(data.nextPageUrl);
//                             context
//                                 .read<BaseuomlistCubit>()
//                                 .nextslotSectionPageList();
//                           },
//                         )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           });
//         },
//       );
//     });
//   }
// }

class CostingTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  CostingTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _CostingTabalePopup createState() => _CostingTabalePopup();
}

class _CostingTabalePopup extends State<CostingTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<CostingCreatePostModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<CostingcreatelistCubit>().getCostingCreateList();
      return BlocConsumer<CostingcreatelistCubit, CostingcreatelistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Costing  Popup",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "create_costingCreate",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CostingcreatelistCubit>()
                                  .searchCostingList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<CostingcreatelistCubit>()
                                    .getCostingCreateList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Costing',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                CostingCreatePostModel model =
                                                    CostingCreatePostModel(
                                                  id: table[i].id,
                                                  methodName:
                                                      table[i].methodName,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                      table[i].methodName ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<DevisionListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<DevisionListCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<DevisionListCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class PricingTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  PricingTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _PricingTabalePopup createState() => _PricingTabalePopup();
}

class _PricingTabalePopup extends State<PricingTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<PricingTypeListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<PricinglistCubit>().getPricingList();
      return BlocConsumer<PricinglistCubit, PricinglistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Pricing Popup",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "PricingCreatePopUp",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<PricinglistCubit>()
                                  .searchCostingTypeList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<PricinglistCubit>()
                                    .getPricingList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Item',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                PricingTypeListModel model =
                                                    PricingTypeListModel(
                                                  pricingGroupName:
                                                      table[i].pricingGroupName,
                                                  pricingTypeId:
                                                      table[i].pricingTypeId,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                  table[i]
                                                          .pricingGroupName ??
                                                      ""),


                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<PricinglistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<PricinglistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<PricinglistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class Pricing2TabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  Pricing2TabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _Pricing2TabalePopup createState() => _Pricing2TabalePopup();
}

class _Pricing2TabalePopup extends State<Pricing2TabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<PricingGroupListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<PricingroupcreateCubit>().getPricingGroupList();
      return BlocConsumer<PricingroupcreateCubit, PricingroupcreateState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "AddNew",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Costing Popup",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "pricingCreate",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<PricingroupcreateCubit>()
                                  .searchCostingTypeList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<PricingroupcreateCubit>()
                                    .getPricingGroupList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                                    padding: EdgeInsets.all(7),

                                    // height: 44,
                                    // // textColor: Colors.black,
                                    // // color: Color(0xffE5E5E5),
                                    //
                                    // size: 13,
                                  ),

                                  tableHeadtext(
                                    'Item',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                PricingGroupListModel model =
                                                    PricingGroupListModel(
                                                  pricingTypeName:
                                                      table[i].pricingTypeName,
                                                  id: table[i].id,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                  table[i]
                                                          .pricingTypeName ??
                                                      ""),
                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () =>
                              context.read<PricingroupcreateCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<PricingroupcreateCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<PricingroupcreateCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class CostingTypeTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  CostingTypeTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _CostingTypeTabalePopup createState() => _CostingTypeTabalePopup();
}

class _CostingTypeTabalePopup extends State<CostingTypeTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<CostingMetodTypePostModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<CostingtypelistCubit>().getCostingTypeList();
      return BlocConsumer<CostingtypelistCubit, CostingtypelistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Costing  Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "costingCreate",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CostingtypelistCubit>()
                                  .searchCostingTypeList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<CostingtypelistCubit>()
                                    .getCostingTypeList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        height: h / 1.86,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Item',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                CostingMetodTypePostModel
                                                    model =
                                                    CostingMetodTypePostModel(
                                                  id: table[i].id,
                                                  typeName: table[i].typeName,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:


                                                      table[i].typeName ?? ""),


                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<DevisionListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<CostingtypelistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<CostingtypelistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class varientTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  varientTabalePopup({
    Key? key,
    required this.type,
    this.id = 0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _varientTabalePopup createState() => _varientTabalePopup();
}

class _varientTabalePopup extends State<varientTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<VariantselectionCubit>().getVariantSelectionList(widget.id);
      return BlocConsumer<VariantselectionCubit, VariantselectionState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonVisible: false,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Variant Popup",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "devision-group",
                  //   ),
                  // );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<VariantselectionCubit>()
                                  .searchDevisionList(
                                      searchContoller.text, widget.id);
                              if (va == "") {
                                context
                                    .read<VariantselectionCubit>()
                                    .getVariantSelectionList(widget.id);
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 1.9,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Item',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },text:table[i].name,
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<VariantselectionCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<VariantselectionCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<VariantselectionCubit>()
                                      .nextslotSectionPageList(0);
                                },
                        )
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




class ManuFacturedPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  ManuFacturedPopup({
    Key? key,
    required this.type,
    this.id = 0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _ManuFacturedPopup createState() => _ManuFacturedPopup();
}

class _ManuFacturedPopup extends State<ManuFacturedPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<VendorDetailsModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => VendordetailslistCubit(),
  child: Builder(builder: (context) {
      context.read<VendordetailslistCubit>().getVendorDetailList();
      return BlocConsumer<VendordetailslistCubit, VendordetailslistState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                setState(() {
                  print("Welcome" + list.data.toString());
                  table = list.data;
                  list1 = list;
                });

              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonVisible: false,
                buttonName: "AddNew",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Manufacture",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "devision-group",
                  //   ),
                  // );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {

                              print("searching case" + va.toString());
                              context
                                  .read<VendordetailslistCubit>()
                                  .getSearchVendorDetailsList(
                                      searchContoller.text,);
                              if (va == "") {
                                context
                                    .read<VendordetailslistCubit>()
                                    .getVendorDetailList();
                              }
                              setState(() {

                              });
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 1.9,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    'Manufacture name',
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
                                            child: textOnclickPadding(
                                              ontap: () {
                                                VendorDetailsModel model =
                                                VendorDetailsModel(
                                                  id: table[i].id,
                                                  manuFactureuserCode: table[i].manuFactureuserCode,
                                                  manuFactureName: table[i].manuFactureName,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].manuFactureName ?? "",
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<VariantselectionCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<VariantselectionCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<VariantselectionCubit>()
                                      .nextslotSectionPageList(0);
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}

class categoryTabalePopup extends StatefulWidget {
  final String type;
  final int? id;
  final Function valueSelect;
  final String? apiType;

  categoryTabalePopup({
    Key? key,
    this.id=0,
    required this.type,
    this.apiType,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _categoryTabalePopup createState() => _categoryTabalePopup();
}

class _categoryTabalePopup extends State<categoryTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context
          .read<CategorylistCubit>()
          .getCategoryist(type: widget.apiType ?? "",id:widget.id);
      return BlocConsumer<CategorylistCubit, CategorylistState>(
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
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Category  Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "category_group",
                    ),
                  );

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CategorylistCubit>()
                                  .searchCategoryist(searchContoller.text,id: widget.id);
                              if (va == "") {
                                context
                                    .read<CategorylistCubit>()
                                    .getCategoryist();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    //
                                    // padding: EdgeInsets.all(7),
                                    //
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Category',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<CategorylistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<CategorylistCubit>()
                                      .previuosslotSectionPageList(id: widget.id);
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<CategorylistCubit>()
                                      .nextslotSectionPageList(id:widget.id);
                                },
                        )
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

class SubcategoryTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  SubcategoryTabalePopup({
    Key? key,
    required this.type,
    this.id,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _SubcategoryTabalePopup createState() => _SubcategoryTabalePopup();
}

class _SubcategoryTabalePopup extends State<SubcategoryTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<SubcategoryCubit>().getSubCategoryList(id: widget.id);
      return BlocConsumer<SubcategoryCubit, SubcategoryState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Sub Category Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "Subcategory_group",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<SubcategoryCubit>()
                                  .searchSubCategoryList(searchContoller.text,id:widget.id);
                              if (va == "") {
                                context
                                    .read<SubcategoryCubit>()
                                    .getSubCategoryList(id:widget.id);
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Sub Category',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? ""),


                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<SubcategoryCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<SubcategoryCubit>()
                                      .previuosslotSectionPageList(id:widget.id);
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<SubcategoryCubit>()
                                      .nextslotSectionPageList(id:widget.id);
                                },
                        )
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

class baseUomTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  baseUomTabalePopup({
    Key? key,
    required this.type,
    this.id,

    required this.valueSelect,
  }) : super(key: key);

  @override
  _baseUomTabalePopup createState() => _baseUomTabalePopup();
}

class _baseUomTabalePopup extends State<baseUomTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<BaseuomlistCubit>().getUomist(id: widget.id);
      return BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("uom Code" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Base UOM",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      veritiaclid: widget.id,
                      type: "base_uom",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<BaseuomlistCubit>()
                                  .searchUomList(searchContoller.text,id:widget.id);
                              if (va == "") {
                                context.read<BaseuomlistCubit>().getUomist(id: widget.id);
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Base UOM',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  uomCode: table[i].uomCode,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<BaseuomlistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<BaseuomlistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<BaseuomlistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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


class SalesUomTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  SalesUomTabalePopup({
    Key? key,
    required this.type,
    this.id=0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _SalesUomTabalePopup createState() => _SalesUomTabalePopup();
}

class _SalesUomTabalePopup extends State<SalesUomTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => SalesListCubit(),
  child: Builder(builder: (context) {
      context.read<SalesListCubit>().getSalesList(id: widget.id);
      return BlocConsumer<SalesListCubit, SalesListState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("uom Code" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonVisible: false,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "base_uom",
                  //   ),
                  // );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<SalesListCubit>()
                                  .searchSalesList(searchContoller.text);
                              if (va == "") {
                                context.read<SalesListCubit>().getSalesList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Sales UOM',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  uomCode: table[i].uomCode,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<SalesListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<SalesListCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<SalesListCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}



class UomDivisionPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int id;

  UomDivisionPopup({
    Key? key,
    required this.type,
    this.id=0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _UomDivisionPopup createState() => _UomDivisionPopup();


}

class _UomDivisionPopup extends State<UomDivisionPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => UomlistCubit(),
  child: Builder(builder: (context) {
      context.read<UomlistCubit>().getUomDivisionList();
      return BlocConsumer<UomlistCubit, UomlistState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("uom Code" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonVisible: false,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "base_uom",
                  //   ),
                  // );
                  // widget.onTap();
                  setState(() {});
                },
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
                  alignment: Alignment.topLeft,
                  // height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(5.6),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<UomlistCubit>()
                                  .searchUomList(searchContoller.text);
                              if (va == "") {
                                context.read<UomlistCubit>().getUomDivisionList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'UOM',
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
                                            child:
                                                textPadding((i + 1).toString(),
                                                    padding: EdgeInsets
                                                        .only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500,

                                                )
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child:
                                            textOnclickPadding(
                                              text: table[i].name ?? "",
                                              ontap: (){
                                                      BrandListModel model =
                                                          BrandListModel(
                                                        id: table[i].id,
                                                        name: table[i].name,
                                                        uomCode: table[i].uomCode,
                                                      );
                                                      Navigator.pop(context);

                                                      widget.valueSelect(model);
                                              },
                                            )
                                            // Container(
                                            //
                                            //
                                            //   child: InkWell(
                                            //     onTap: () {
                                            //       BrandListModel model =
                                            //           BrandListModel(
                                            //         id: table[i].id,
                                            //         name: table[i].name,
                                            //         uomCode: table[i].uomCode,
                                            //       );
                                            //       Navigator.pop(context);
                                            //
                                            //       widget.valueSelect(model);
                                            //     },
                                            //     child: Container(
                                            //         padding: EdgeInsets.all(11),
                                            //         child:
                                            //             Text(table[i].name ?? ""),
                                            //         height: 45),
                                            //   ),
                                            // )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1.5),
                              1: FlexColumnWidth(6),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<UomlistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<UomlistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<UomlistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}


class GroupDivisionPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int id;

  GroupDivisionPopup({
    Key? key,
    required this.type,
    this.id=0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _GroupDivisionPopup createState() => _GroupDivisionPopup();


}

class _GroupDivisionPopup extends State<GroupDivisionPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => GroumdivisionCubit(),
  child: Builder(builder: (context) {
      context.read<GroumdivisionCubit>().getGroupList();
      return BlocConsumer<GroumdivisionCubit, GroumdivisionState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("uom Code" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonVisible: false,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "base_uom",
                  //   ),
                  // );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<GroumdivisionCubit>()
                                  .searchUomList(searchContoller.text);
                              if (va == "") {
                                context.read<GroumdivisionCubit>().getGroupList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Group',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child:
                                            textOnclickPadding(
                                              text: table[i].name ?? "" ,
                                              ontap: (){
                                                BrandListModel model =
                                                        BrandListModel(
                                                      id: table[i].id,
                                                      name: table[i].name,
                                                      code: table[i].code,
                                                    );
                                                    Navigator.pop(context);

                                                    widget.valueSelect(model);
                                              }
                                            )
                                            // InkWell(
                                            //   onTap: () {
                                            //     BrandListModel model =
                                            //         BrandListModel(
                                            //       id: table[i].id,
                                            //       name: table[i].name,
                                            //       code: table[i].code,
                                            //     );
                                            //     Navigator.pop(context);
                                            //
                                            //     widget.valueSelect(model);
                                            //   },
                                            //   child: Container(
                                            //       child:
                                            //           Text(table[i].name ?? ""),
                                            //       height: 45),
                                            // )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1.5),
                              1: FlexColumnWidth(6),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<GroumdivisionCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<GroumdivisionCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<GroumdivisionCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}


class CategoryDivisionPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int id;

  CategoryDivisionPopup({
    Key? key,
    required this.type,
    this.id=0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _CategoryDivisionPopup createState() => _CategoryDivisionPopup();


}

class _CategoryDivisionPopup extends State<CategoryDivisionPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return BlocProvider(
  create: (context) => CategorylistdivisionconfigCubit(),
  child: Builder(builder: (context) {
      context.read<CategorylistdivisionconfigCubit>().getCategoryList();
      return BlocConsumer<CategorylistdivisionconfigCubit, CategorylistdivisionconfigState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("uom Code" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonVisible: false,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "",
                onApply: () {
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "base_uom",
                  //   ),
                  // );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CategorylistdivisionconfigCubit>()
                                  .searchCategoryList(searchContoller.text);
                              if (va == "") {
                                context.read<CategorylistdivisionconfigCubit>().getCategoryList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Category',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child:textOnclickPadding(
                                              text: table[i].name ?? "",
                                              ontap: (){
                                                BrandListModel model =     BrandListModel(
                                                          id: table[i].id,
                                                          name: table[i].name,
                                                          code: table[i].code,
                                                        );
                                                        Navigator.pop(context);

                                                        widget.valueSelect(model);

                                              }
                                            ),
                                            // InkWell(
                                            //   onTap: () {
                                            //     BrandListModel model =
                                            //         BrandListModel(
                                            //       id: table[i].id,
                                            //       name: table[i].name,
                                            //       code: table[i].code,
                                            //     );
                                            //     Navigator.pop(context);
                                            //
                                            //     widget.valueSelect(model);
                                            //   },
                                            //   child: Container(
                                            //       child:
                                            //           Text(table[i].name ?? ""),
                                            //       height: 45),
                                            // )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1.5),
                              1: FlexColumnWidth(6),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<GroumdivisionCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<GroumdivisionCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<GroumdivisionCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }),
);
  }
}







class UomGroupTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int ? id;

  UomGroupTabalePopup({
    Key? key,
    required this.type,
    this.id,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _UomGroupTabalePopup createState() => _UomGroupTabalePopup();
}

class _UomGroupTabalePopup extends State<UomGroupTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<UomgruoplistCubit>().getUomGroupist();
      return BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "UOM Group Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "uomgroup",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          // margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<UomgruoplistCubit>()
                                  .searchUomgroupList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<UomgruoplistCubit>()
                                    .getUomGroupist();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'UOM Group',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: Material(

                                              color: Colors.transparent,
                                              child: textOnclickPadding(
                                                ontap: () {
                                                  BrandListModel model =
                                                      BrandListModel(
                                                    id: table[i].id,
                                                    name: table[i].name,
                                                    code: table[i].code,
                                                  );
                                                  Navigator.pop(context);

                                                  widget.valueSelect(model);
                                                },
                                                text:

                                                        table[i].name ?? "",

                                              ),
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<UomgruoplistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<UomgruoplistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<UomgruoplistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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


class shippingIdListPopup extends StatefulWidget {
  final String type;
  final String? code;
  final Function valueSelect;
  final int? id;

  shippingIdListPopup({
    Key? key,
    required this.type,
    required this.id,
    this.code,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _shippingIdListPopup createState() => _shippingIdListPopup();
}

class _shippingIdListPopup extends State<shippingIdListPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<ShippingAddressModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<ShippingadreesCubit>().getShippingId(id:widget.code);
      return BlocConsumer<ShippingadreesCubit, ShippingadreesState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("Welcomessssssssssssssss" + list.data.toString());
                table = list.data;
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Shipping",
                onApply: () {
                      showDailogPopUp(
                          context,
                          WarrantyDetailsPopUp(
                            code: widget.code??"",
                            // indexValue: temp,
                            // changeActive: onChangeActive,
                            // changeAdditionalWarranty: onChangeAdditionalWarranty,
                            // changeExtendedWarranty: onChangeExtendedWarranty,
                          ));

                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ShippingadreesCubit>()
                                  .getSearchCustomList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<ShippingadreesCubit>()
                                    .getShippingId();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Shipping',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                ShippingAddressModel model =
                                                ShippingAddressModel(
                                                  id: table[i].id,
                                                  fullName: table[i].fullName,

                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].fullName ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<ShippingadreesCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<ShippingadreesCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<ShippingadreesCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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




class customerIdListPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

   customerIdListPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _customerIdListPopup createState() => _customerIdListPopup();
}

class _customerIdListPopup extends State<customerIdListPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";

  TextEditingController? mobileController = TextEditingController();
  TextEditingController? fnameController = TextEditingController();

  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController taxId = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();

  TextEditingController buisnessmodeController = TextEditingController();

  List<CustomerIdListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    BlocProvider<CustomeridlistCubit>(
      create: (context) => CustomeridlistCubit(),
),
    BlocProvider(
      create: (context) => CustomeridcreationCubit(),
    ),
  ],
  child: Builder(builder: (context) {
        context.read<CustomeridlistCubit>().getCustomerId();
        return BlocListener<CustomeridcreationCubit, CustomeridcreationState>(
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
                    ));;
                print(data.data1);
              }
              ;
            });
          },
          child: BlocConsumer<CustomeridlistCubit, CustomeridlistState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("Welcomessssssssssssssss" + list.data.toString());
                    table = list.data;
                    list1 = list;
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                double h = MediaQuery.of(context).size.height;
                double w = MediaQuery.of(context).size.width;
                return AlertDialog(
                  content: PopUpHeader(
                    functionChane: true,
                    buttonCheck: true,
                    buttonName: "ADD NEW",
                    onTap: () {},
                    isDirectCreate: true,
                    addNew: false,
                    label: "Custom Id",
                    onApply: () {


                        showDailogPopUp(
                            context,
                            CustomerIdCreationPopUp(

                                country: country,

                                fname: fnameController,
                                gender: gender,

                                mobile: mobileController,
                                taxId: taxId,

                                ontap:(){
                                  CustomerIdCreationUpdateModel model=CustomerIdCreationUpdateModel(

                                    mobile: mobileController?.text??"",
                                    fullname: fnameController?.text,
                                    taxId: taxId?.text,

                                    country: country?.text,
                                    gender: gender?.text,




                                  );

                                  context
                                      .read<CustomeridcreationCubit>()
                                      .postCustomerIdCreation(model);





                      // widget.onTap();
                      setState(() {});
                    }));},
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
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                h: 40,
                                hintText: "Search...",
                                ctrlr: searchContoller,
                                onChanged: (va) {
                                  print("searching case" + va.toString());
                                  context
                                      .read<CustomeridlistCubit>()
                                      .getSearchCustomerList(searchContoller.text);
                                  if (va == "") {
                                    context
                                        .read<CustomeridlistCubit>()
                                        .getCustomerId();
                                  }
                                },
                              )),
                          SizedBox(
                            height: h * .004,
                          ),
                          Container(
                            height: h / 2,
                            margin: EdgeInsets.symmetric(horizontal: w*.006),
                            // width: w/7,
                            // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                        // height: 46,
                                        // textColor: Colors.black,
                                        // color: Color(0xffE5E5E5),

                                        size: 13,
                                      ),

                                      tableHeadtext(
                                        'customer Id',
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
                                                child:
                                                textPadding((i + 1).toString())
                                              // Text(keys[i].key??"")

                                            ),
                                            TableCell(
                                                verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                                child: textOnclickPadding(
                                                  ontap: () {
                                                    CustomerIdListModel model =
                                                    CustomerIdListModel(
                                                      customerUserCode:table[i].customerUserCode ,

                                                      id: table[i].id,
                                                      businessData: table[i].businessData,
                                                        customerName:table[i].customerName,


                                                    );

                                                    Navigator.pop(context);

                                                    widget.valueSelect(model);
                                                  },
                                                  text:
                                                      table[i].customerUserCode ?? "",

                                                )
                                              // Text(keys[i].value??"",)

                                            ),
                                          ]),
                                  ],
                                ],
                                widths: {
                                  0: FlexColumnWidth(2),
                                  1: FlexColumnWidth(5),
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .004,
                          ),
                          if (list1 != null)
                            tablePagination(
                                  () => context.read<CustomeridlistCubit>().refresh(),
                              back: list1?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<CustomeridlistCubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: list1.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<CustomeridlistCubit>()
                                    .nextslotSectionPageList();
                              },
                            )
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
  }}











class BrandTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  BrandTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _BrandTabalePopup createState() => _BrandTabalePopup();
}

class _BrandTabalePopup extends State<BrandTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<Listbrand2Cubit>().getSlotSectionPage();
      return BlocConsumer<Listbrand2Cubit, Listbrand2State>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Brand Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "brand-group",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<Listbrand2Cubit>()
                                  .searchSlotSectionPageList(
                                      searchContoller.text);
                              if (va == "") {
                                context
                                    .read<Listbrand2Cubit>()
                                    .getSlotSectionPage();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    //
                                    // padding: EdgeInsets.all(7),
                                    //
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Brand',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:table[i].name ?? "",
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<Listbrand2Cubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<Listbrand2Cubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<Listbrand2Cubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class StaticTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  StaticTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _StaticTabalePopup createState() => _StaticTabalePopup();
}

class _StaticTabalePopup extends State<StaticTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<ListstaticCubit>().getStaticList();
      return BlocConsumer<ListstaticCubit, ListstaticState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Static Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "Static-group",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ListstaticCubit>()
                                  .searchStaticPageList(searchContoller.text);
                              if (va == "") {
                                context.read<ListstaticCubit>().getStaticList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Static',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",
                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<ListstaticCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<ListstaticCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<ListstaticCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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

class GroupTabalePopup extends StatefulWidget {
  final String type;
  final int? id;
  final Function valueSelect;

  GroupTabalePopup({
    Key? key,
    required this.type,
    this.id,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _GroupTabalePopup createState() => _GroupTabalePopup();
}

class _GroupTabalePopup extends State<GroupTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<GrouplistCubit>().getGroupListList(id:widget.id);
      return BlocConsumer<GrouplistCubit, GrouplistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "AddNew",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Group Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "Group_PopUp",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<GrouplistCubit>()
                                  .searchGroupList(searchContoller.text,id:widget.id);
                              if (va == "") {
                                context
                                    .read<GrouplistCubit>()
                                    .getGroupListList(id:widget.id);
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Group',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<GrouplistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<GrouplistCubit>()
                                      .previuosslotSectionPageList(id:widget.id);
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<GrouplistCubit>()
                                      .nextslotSectionPageList(id:widget.id);
                                },
                        )
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

class MaterialTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  MaterialTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _MaterialTabalePopup createState() => _MaterialTabalePopup();
}

class _MaterialTabalePopup extends State<MaterialTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<MaterialListCubit>().getMaterialList();
      return BlocConsumer<MaterialListCubit, MaterialListState>(
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
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Material Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "uom-group",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<MaterialListCubit>()
                                  .searchMaterialList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<MaterialListCubit>()
                                    .getMaterialList();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Material',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                BrandListModel model =
                                                    BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<MaterialListCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<MaterialListCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<MaterialListCubit>()
                                      .nextslotSectionPageList("");
                                },
                        )
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

class FrameWorkTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  FrameWorkTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _FrameWorkTabalePopup createState() => _FrameWorkTabalePopup();
}

class _FrameWorkTabalePopup extends State<FrameWorkTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<FrameWorkListModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
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
    return Builder(builder: (context) {
      context.read<FrameworklistCubit>().getFrameWorklist();
      return BlocConsumer<FrameworklistCubit, FrameworklistState>(
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
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Frame Work Popup",
                onApply: () {setState(() {



                });
                  costingTypeMethodeCheck = true; showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "create_framework",
                    ),
                  );
                  // widget.onTap();
                  setState(() {});
                },
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
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<FrameworklistCubit>()
                                  .searchCostingList(searchContoller.text);
                              if (va == "") {
                                context
                                    .read<FrameworklistCubit>()
                                    .getFrameWorklist();
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h / 2,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                                    // height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,
                                  ),

                                  tableHeadtext(
                                    'Frame work',
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
                                            child:
                                                textPadding((i + 1).toString())
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                FrameWorkListModel model =
                                                    FrameWorkListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:
                                                      table[i].name ?? "",

                                            )
                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      if (list1 != null)
                        tablePagination(
                          () => context.read<FrameworklistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<FrameworklistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<FrameworklistCubit>()
                                      .nextslotSectionPageList();
                                },
                        )
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
