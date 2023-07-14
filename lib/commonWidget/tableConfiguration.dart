import 'dart:async';
import 'dart:html';

import 'package:dio/dio.dart';
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
import 'package:inventory/Screens/promotiontab/discount/cubit/customergroup/customer_group_promotion_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/type_listing_on/type_id_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/cubit/variantlist/variant_list_multi_buy_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/listsegments/list_segments_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/offergroup/list_offer_group_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/saleapplyingname/sale_applying_name_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/payment_list/payment_list_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/paymentpost/payment_sale_post_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridcreation/customeridcreation_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridlist/customeridlist_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/payment_verticallist/payement_vertical_list_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/shippingaddress/shippingadrees_cubit.dart';
import 'package:inventory/Screens/sales/general/general.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/Screens/sales/invoice/cubits/payment_suucess_post/payment_transaction_success_post_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingcreatelist/costingcreatelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingtypelist/costingtypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricinglist/pricinglist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricingrouplist/pricingroupcreate_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/liststock/liststockpartition_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/salesList/sales_list_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/vendordetailslist/vendordetailslist_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/variant_id_cubit_dart_cubit.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/requestformcubit/cubit/orderedperson_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../Screens/heirarchy/general/cubits/materialRead/materialread_cubit.dart';
import '../Screens/heirarchy/general/model/listbrand.dart';
import '../Screens/heirarchy/general/model/materialread.dart';
import '../Screens/promotiontab/sale/cubits/ListOfferPeriodGroup/list_offer_period_cubit.dart';
import '../Screens/promotiontab/sale/cubits/variantList/variant_list_promotion_cubit.dart';
import '../Screens/sales/general/widgets/popup_call.dart';
import '../Screens/variant/general/cubits/variant_selection/variantselection_cubit.dart';
import '../Screens/variant/variantdetails/cubits/producedcountry/producedcountry_cubit.dart';
import '../Screens/variant/variantdetails/cubits/variantsearch/variantsearch_cubit.dart';
import '../Screens/variant/variantdetails/model/vendormodel.dart';

class TableConfigurePopup extends StatelessWidget {
  final String type;
  final String? code;
  final String? apiType;
  final Function valueSelect;
  final int? id;
  final double? total;
  final String? inventory;
  final String? vendorId;
  final dynamic? object;
  final List<dynamic>? list;

  TableConfigurePopup(
      {Key? key,
      this.apiType,
      this.inventory = "",
        this.list,
        this.vendorId,
        this.code,
        this.object,
        this.total,
      required this.type,
      this.id = 0,
      required this.valueSelect})
      : super(key: key);
  late Widget data;
  @override
  Widget build(BuildContext context) {
    switch (type) {
      case "division_TablePopup":
        {
          data = divisionTabalePopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "PaymentList_ByOrderIdPopup":
        {
          data = PaymentListByOrderIdPopup(
            code: code,
            total:total,
            valueSelect: valueSelect,
          );
        }
        break;
      case "variantTabalePopup":
        {
          data = variantTabalePopup(
            vendorId: vendorId,
            inventory: inventory,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "SegmentListTabalePopup":
        {
          data = SegmentListTabalePopup(
            vendorId: vendorId,
            list:list,
            inventory: inventory,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "Search_tablePopup":
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
      case "OfferPeriodPopup":
        {
          data = OfferPeriodPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;


      case "CustomerGroup_OneselectionPopup":
        {
          data = CustomerGroupOneselectionPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;

      case "OfferGroupPeriodPopup":
        {
          data = OfferGroupPeriodPopup(
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "SaleApplyingNamePeriodPopup":
        {
          data = SaleApplyingNamePeriodPopup(
            type: type,
            model: object,
            valueSelect: valueSelect,
          );
        }
        break;case "DiscountTypeidPopup":
        {
          data = DiscountTypeidPopup(
            type: type,
            model: object,
            valueSelect: valueSelect,
          );
        }
        break;  case "VariantListPopup":
        {
          data = VariantListPopup(
            type: type,
            model: object,
            valueSelect: valueSelect,
          );
        }
        break;
      case "MultibuyVariantListPopup":
        {
          data = MultibuyVariantListPopup(
            type: type,
            model: object,
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
      case "ProducedCountryPopup":
        {
          data = ProducedCountryPopup(
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
      case "producedCountryPopupVariant":
        {
          data = producedCountryPopupVariant(
            code: code,
            id:id,
            type: type,
            valueSelect: valueSelect,
          );
        }
        break;
      case "RequestFormCstomGroupListPopup":
        {
          data = RequestFormCstomGroupListPopup(
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
        break;     case "StockPartitionGroupPopup":
        {
          data = StockPartitionGroupPopup(
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
  bool suffixIconCheck = false;

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
              content:
              PopUpHeader(
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
                paginated:list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(

                    children: [
                      Container(
                          // margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            suffixIconCheck: suffixIconCheck,
                            w: MediaQuery.of(context).size.width/2.11,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<DevisionListCubit>()
                                  .searchDevisionList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<DevisionListCubit>()
                                    .getDevisionList();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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


class PaymentListByOrderIdPopup extends StatefulWidget {
  final String? code;
  final Function valueSelect;
  final double? total;

  PaymentListByOrderIdPopup({
    Key? key,
    required this.code,
    this.total,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _PaymentListByOrderIdPopup createState() => _PaymentListByOrderIdPopup();
}

class _PaymentListByOrderIdPopup extends State<PaymentListByOrderIdPopup> {
  bool? active = true;
  bool suffixIconCheck = false;
  bool isPaymentStatusSuccessCall=false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";

  List<PaymentListSalesModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();
  TextEditingController transactionCodeContoller = TextEditingController();
  TextEditingController paymentStatusCodeContoller = TextEditingController();
  TextEditingController mobileNumberCodeContoller = TextEditingController();
  TextEditingController totalAmountContoller = TextEditingController();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
  }
  String methodCode="";
  List<PurchasePaymentModel> results=[];
  
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
  var items = [
    'Payment Completed',
    'Payment Pending',
    'Rejected'
  ];



  @override
  Widget build(BuildContext context) {
    if(onChange==false){
      setState(() {
        print("zdgfghjkl;';");
        print(widget.total);
        totalAmountContoller.text=widget.total.toString();
      });

    }
    onChange=true;

    return Builder(builder: (context) {
      context.read<PayementVerticalListCubit>()
          .getPaymentByOrderId(widget.code??"");;
      return MultiBlocListener(
  listeners: [
    BlocListener<PaymentSalePostCubit, PaymentSalePostState>(
      listener: (context, state) {
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          showDailogPopUp(
              context,
              FailiurePopup(
                content: Variable.errorMessege,
              ));

        }, success: (data) {
          if (data.data1) {
            if( isPaymentStatusSuccessCall)context.read<PaymentTransactionSuccessPostCubit>().postPaymentTransactionSuccess(int?.tryParse(widget.code!),Variable.methodCode, data.data2,3);
            else
              showDailogPopUp(
                  context,
                  SuccessPopup(
                    content: "success",
                    // table:table,
                  ));
          }
          else {
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
    BlocListener<PaymentTransactionSuccessPostCubit, PaymentTransactionSuccessPostState>(
      listener: (context, state) {
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          showDailogPopUp(
              context,
              FailiurePopup(
                content: Variable.errorMessege,
                // table:table,
              ));


          // context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            showDailogPopUp(
                context,
                SuccessPopup(
                  content: data.data2.toString(),
                  // table:table,
                ));




          }
          else {
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
    BlocListener<PaymentListCubit, PaymentListState>(
  listener: (context, state) {
    print("state" + state.toString());
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("PAYMENYT STATUSSSSSSSSSSSSSSSSSSSSSSSSSSS");
          results=list.data;
          if(results.isNotEmpty){
            methodCode=results[0].code??"";
            Variable.methodCode=results[0].code??"";
          }




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
                table = list.data;if(table.isNotEmpty==true){
                  transactionCodeContoller.text=table[1].transactionCode??"";
                }
                list1 = list;
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return AlertDialog(
              content:
              PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                buttonName: "Payment Completed",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label:"Payment Popup",
                onApply: () {
                  PurchasePaymentPostModel model=PurchasePaymentPostModel(
                      contact: Variable.mobileNumber,
                      customerCode:Variable.created_by,
                      customerName: Variable.username,
                      methodCode: Variable.methodCode,
                      orderId:widget.code,
                      status:"payment_completed",
                      totalAmount: double.tryParse(totalAmountContoller.text)??0,
                      tranSactionCode: transactionCodeContoller.text);

                  print(model);
                  context
                      .read<PaymentSalePostCubit>()
                      .postSaleOrderPaymentPost(model);
                  isPaymentStatusSuccessCall=true;

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
                paginated:TextButtonLarge(
                  onPress: (){
                    PurchasePaymentPostModel model=PurchasePaymentPostModel(
                        contact: Variable.mobileNumber,
                        customerCode: Variable.created_by,
                        customerName: Variable.username,
                        methodCode: Variable.methodCode,
                        orderId: widget.code,
                        status: paymentStatusCodeContoller.text,
                        totalAmount: double.tryParse(totalAmountContoller.text)??0,
                        tranSactionCode: "");
                    print(model);
                    context
                        .read<PaymentSalePostCubit>()
                        .postSaleOrderPaymentPost(model);

                  },
                  text: "Transaction Pending",

                ),
                dataField: Container(
                  // height: 500,
                  child: Column(

                    children: [
                      Container(
                          // margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            suffixIconCheck: suffixIconCheck,
                            w: MediaQuery.of(context).size.width/2.11,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<DevisionListCubit>()
                                  .searchDevisionList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<DevisionListCubit>()
                                    .getDevisionList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      Container(
                        // height:40,
                        // width: w/7,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        child: customTable(

                          tableWidth: .5,
                          childrens: [
                            TableRow(
                              children: [
                                tableHeadtext(
                                  'Sl No',
                                  size: 13,
                                ),
                                tableHeadtext(
                                  'Transaction Code',
                                  size: 13,
                                  // color: Color(0xffE5E5E5),
                                ),
                                tableHeadtext(
                                  'Mobile Number',
                                  size: 13,
                                ),
                                tableHeadtext(
                                  'Total Amount',
                                  size: 13,
                                  // color: Color(0xffE5E5E5),
                                ),

                              ],
                            ),
                            // if (table?.isNotEmpty == true) ...[
                            //   for (var i = 0; i < table.length; i++)
                            //     TableRow(
                            //         decoration: BoxDecoration(
                            //             color: Pellet.tableRowColor,
                            //             shape: BoxShape.rectangle,
                            //             border:  Border(
                            //                 left: BorderSide(
                            //
                            //                     color: Color(0xff3E4F5B).withOpacity(.1),
                            //                     width: .4,
                            //                     style: BorderStyle.solid),
                            //                 bottom: BorderSide(
                            //
                            //                     color:   Color(0xff3E4F5B).withOpacity(.1),
                            //                     style: BorderStyle.solid),
                            //                 right: BorderSide(
                            //                     color:   Color(0xff3E4F5B).withOpacity(.1),
                            //                     width: .4,
                            //
                            //                     style: BorderStyle.solid))),
                            //         children: [
                            //           TableCell(
                            //               verticalAlignment:
                            //                   TableCellVerticalAlignment
                            //                       .middle,
                            //               child:
                            //                   textPadding((i + 1).toString(),)
                            //               // Text(keys[i].key??"")
                            //
                            //               ),
                            //           TableCell(
                            //               verticalAlignment:
                            //                   TableCellVerticalAlignment
                            //                       .middle,
                            //               child: textOnclickPadding(
                            //                 ontap: () {
                            //                   // BrandListModel model =
                            //                   //     BrandListModel(
                            //                   //   id: table[i].id,
                            //                   //   name: table[i].name,
                            //                   //   code: table[i].code,
                            //                   // );
                            //                   // Navigator.pop(context);
                            //                   //
                            //                   // widget.valueSelect(model);
                            //                 },
                            //                 text: table[i].transactionCode ?? "",
                            //
                            //               )
                            //               // Text(keys[i].value??"",)
                            //
                            //               ),
                            //           TableCell(
                            //               verticalAlignment:
                            //                   TableCellVerticalAlignment
                            //                       .middle,
                            //               child: textOnclickPadding(
                            //                 ontap: () {
                            //                   // BrandListModel model =
                            //                   //     BrandListModel(
                            //                   //   id: table[i].id,
                            //                   //   name: table[i].name,
                            //                   //   code: table[i].code,
                            //                   // );
                            //                   // Navigator.pop(context);
                            //                   //
                            //                   // widget.valueSelect(model);
                            //                 },
                            //                 text:  table[i].postResponse?.contact ?? "" ?? "",
                            //
                            //               ),
                            //               // Text(keys[i].value??"",)
                            //
                            //               ),           TableCell(
                            //               verticalAlignment:
                            //                   TableCellVerticalAlignment
                            //                       .middle,
                            //               child: textOnclickPadding(
                            //                 ontap: () {
                            //                   // BrandListModel model =
                            //                   //     BrandListModel(
                            //                   //   id: table[i].id,
                            //                   //   name: table[i].name,
                            //                   //   code: table[i].code,
                            //                   // );
                            //                   // Navigator.pop(context);
                            //                   //
                            //                   // widget.valueSelect(model);
                            //                 },
                            //                 text:  table[i].postResponse?.contact ?? "" ?? "",
                            //
                            //               ),
                            //               // Text(keys[i].value??"",)
                            //
                            //               ),
                            //         ]),
                            // ],
                          ],
                          widths: {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(5),
                          },
                        ),
                      ),
                      Container(
                        height: h / 3,
                        margin: EdgeInsets.symmetric(horizontal: w*.006),
                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: customTable(

                              childrens: [
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
                                                  // BrandListModel model =
                                                  //     BrandListModel(
                                                  //   id: table[i].id,
                                                  //   name: table[i].name,
                                                  //   code: table[i].code,
                                                  // );
                                                  // Navigator.pop(context);
                                                  //
                                                  // widget.valueSelect(model);
                                                },
                                                text: table[i].transactionCode ?? "",

                                              )
                                            // Text(keys[i].value??"",)

                                          ),
                                          TableCell(
                                            verticalAlignment:
                                            TableCellVerticalAlignment
                                                .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                // BrandListModel model =
                                                //     BrandListModel(
                                                //   id: table[i].id,
                                                //   name: table[i].name,
                                                //   code: table[i].code,
                                                // );
                                                // Navigator.pop(context);
                                                //
                                                // widget.valueSelect(model);
                                              },
                                              text:  table[i].postResponse?.contact ?? "" ?? "",

                                            ),
                                            // Text(keys[i].value??"",)

                                          ),           TableCell(
                                            verticalAlignment:
                                            TableCellVerticalAlignment
                                                .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                // BrandListModel model =
                                                //     BrandListModel(
                                                //   id: table[i].id,
                                                //   name: table[i].name,
                                                //   code: table[i].code,
                                                // );
                                                // Navigator.pop(context);
                                                //
                                                // widget.valueSelect(model);
                                              },
                                              text:  table[i].postResponse?.contact ?? "" ?? "",

                                            ),
                                            // Text(keys[i].value??"",)

                                          ),
                                        ]),
                                ],
                              ]
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .04,
                      ),
                      Container(
                        // width: 200,
                        // height: 50,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 90,
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,



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
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                        children: [
                                          NewInputCard(

                                              controller: transactionCodeContoller,
                                              title: "Transaction Code"),
                                          SizedBox(
                                            height: h * .030,
                                          ),
                                          NewInputCard(

                                              controller:totalAmountContoller,
                                              title: " TotalAmount"),

                                          SizedBox(
                                            height: h * .030,
                                          ),


                                          // NewInputCard(
                                          //     controller: widget.shipping, title: "shipping address id"),
                                        ],
                                      )),

                                  Expanded(
                                      child: Column(
                                        children: [


                                            Container(
                                              // height: 30,
                                              // width: 50,

                                              child: CustomDropDown(
                                                width: w*.15,
                                                // border: true,
                                                choosenValue: paymentStatusCodeContoller.text=="payment_completed"?"Payment Completed": paymentStatusCodeContoller.text=="payment_pending"?"Payment Pending": paymentStatusCodeContoller.text=="rejected"?"Rejected": paymentStatusCodeContoller.text??"",
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


                                                    paymentStatusCodeContoller.text=status;
                                                  });

                                                  // choosenValue=val;
                                                },
                                                items: items,
                                              ),
                                            ),

                                          SizedBox(
                                            height: h * .030,
                                          ),
                                          NewInputCard(
                                            formatter: true,

                                              controller: mobileNumberCodeContoller,
                                              title: "Contact"),


                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      ),
);
    });
  }
}



class variantTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final String? inventory;
  final String? vendorId;

  variantTabalePopup({
    Key? key,
    required this.type,
    this.inventory = "",
    this.vendorId,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _variantTabalePopup createState() => _variantTabalePopup();
}

class _variantTabalePopup extends State<variantTabalePopup> {
  bool? active = true;
  bool suffixIconCheck = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<VariantId> table = [];
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
  create: (context) => VariantIdCubitDartCubit(),
  child: Builder(builder: (context) {
      widget.inventory == ""
          ? context
          .read<VariantIdCubitDartCubit>()
          .getVariantId(vendorId: widget.vendorId)
          : context
          .read<VariantIdCubitDartCubit>()
          .getVariantId(inventory: widget.inventory);
      return BlocConsumer<VariantIdCubitDartCubit, VariantIdCubitDartState>(
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
                buttonName: "",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Variants",
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
                paginated:        list1 != null?
                tablePagination(
                () => context.read<VariantIdCubitDartCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null

                : () {
                  widget.inventory == ""?  context
                .read<VariantIdCubitDartCubit>()
                .previuosslotSectionPageList(vendorId: widget.vendorId):
                  context
                      .read<VariantIdCubitDartCubit>()
                      .previuosslotSectionPageList( inventory: widget.inventory);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
              widget.inventory == ""?  context
                  .read<VariantIdCubitDartCubit>()
                  .nextslotSectionPageList(vendorId: widget.vendorId):
              context
                  .read<VariantIdCubitDartCubit>()
                  .nextslotSectionPageList( inventory: widget.inventory);
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(

                    children: [
                      SizedBox(height: 8,),
                      Container(
                          // margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            suffixIconCheck: suffixIconCheck,
                            w: MediaQuery.of(context).size.width/2.11,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              widget.inventory == ""
                                  ? context
                                  .read<VariantIdCubitDartCubit>()
                                  .getSearchCustomList(va,vendorId: widget.vendorId)
                                  : context
                                  .read<VariantIdCubitDartCubit>()
                                  .getSearchCustomList(va,inventory: widget.inventory);
                              suffixIconCheck=true;
                              if (va == "") {
                                widget.inventory == ""
                                    ? context
                                    .read<VariantIdCubitDartCubit>()
                                    .getVariantId(vendorId: widget.vendorId)
                                    : context
                                    .read<VariantIdCubitDartCubit>()
                                    .getVariantId(inventory: widget.inventory);
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .005,
                      ),
                      SizedBox(height: 8,),


                    table?.isEmpty==true?Container(
                      child: Text("No Data  Found"),

                ):
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
                                                textPadding((i + 1).toString(),)
                                            // Text(keys[i].key??"")

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                VariantId model =
                                                VariantId(
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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



class SegmentListTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final String? inventory;
  final String? vendorId;
  final List<dynamic>? list;

  SegmentListTabalePopup({
    Key? key,
    required this.type,
    this.inventory = "",
    this.vendorId,
    required this.valueSelect, this.list,
  }) : super(key: key);

  @override
  _SegmentListTabalePopup createState() => _SegmentListTabalePopup();
}

class _SegmentListTabalePopup extends State<SegmentListTabalePopup> {
  bool? active = true;
  bool suffixIconCheck = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<salesOrderTypeModel> table = [];
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
  create: (context) => ListSegmentsCubit(),
  child: Builder(builder: (context) {

           context
          .read<ListSegmentsCubit>()
          .getListSegment();

      return BlocConsumer<ListSegmentsCubit, ListSegmentsState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {

                  print("Welcome" + widget.  list.toString());
                  table = list.data;
                  print(table);
                  List<String?> list1 = [];
                  int length = table.length;
                  // list=data.orderTypes;
                  for (var i = 0; i < length; i++) {
                    list1.add(list.data[i].code);
                  }
                  print(list1);
                  for(var i=0;i<length;i++){
                    if( widget.  list?.isNotEmpty==true){
                      for(var n=0;n<widget.list!.length;n++){

                        if(list1[i]==widget.  list?[n].segmentCode){
                          list1.removeAt(i);
                          table.removeAt(i);
                          length=table.length;
                          i=-1;
                          break;

                          print("the able is"+table.toString());





                          print("the able is"+table.toString());
                        }




                      }


                    }

                  }







                //
                // print("the real table" +table.toString());
                // for(var i =0;i<table.length;i++){
                //   if( widget.  list?.isNotEmpty==true){
                //    for(var j=0;j<widget.list!.length;j++){
                //      print(table[i].code);
                //
                //      if(table[i].code==widget.  list?[j].segmentCode){
                //        table.removeAt(i);
                //
                //
                //      }
                //
                //
                //    }
                //
                //   }
                //
                // }
                // list1 = list;
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
                buttonName: "",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Segment Id",
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
                paginated:        list1 != null?
                tablePagination(
                () => context.read<ListSegmentsCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<ListSegmentsCubit>()
                .previuosslotSectionPageList();
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<ListSegmentsCubit>()
                .nextslotSectionPageList();
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(

                    children: [
                      SizedBox(height: 10,),
                      // Container(
                      //     // margin: EdgeInsets.all(5),
                      //     child: SearchTextfiled(
                      //       color: Color(0xffFAFAFA),
                      //       h: 40,
                      //       suffixIconCheck: suffixIconCheck,
                      //       w: MediaQuery.of(context).size.width/2.11,
                      //       hintText: "Search...",
                      //       ctrlr: searchContoller,
                      //       onChanged: (va) {
                      //         print("searching case" + va.toString());
                      //         context
                      //             .read<DevisionListCubit>()
                      //             .searchDevisionList(searchContoller.text);
                      //         suffixIconCheck=true;
                      //         if (va == "") {
                      //           context
                      //               .read<DevisionListCubit>()
                      //               .getDevisionList();
                      //           suffixIconCheck=false;
                      //         }
                      //       },
                      //     )),
                      // SizedBox(
                      //   height: h * .005,
                      // ),
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
                                    'Segment',
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
                                                salesOrderTypeModel model =
                                                salesOrderTypeModel(
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                paginated: list1 != null?
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
            ):SizedBox(),
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
                      SizedBox(height: 8,),
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
                      SizedBox(height: 8,),
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<VariantsearchCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<VariantsearchCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<VariantsearchCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                label: "Group Popup",
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
                paginated:         list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<GrouplistCubit>()
                                  .searchGroupList(searchContoller.text,type:"all");
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<GrouplistCubit>()
                                    .getGroupListList(type: "all");
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                      // if (list1 != null)
                      //   tablePagination(
                      //         () => context.read<GrouplistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //       context
                      //           .read<GrouplistCubit>()
                      //           .previuosslotSectionPageList(type: "all");
                      //     },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //       // print(data.nextPageUrl);
                      //       context
                      //           .read<GrouplistCubit>()
                      //           .nextslotSectionPageList(type: "all");
                      //     },
                      //   )
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
                          SizedBox(height: 8,),
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
                                                    email: table[i].email,
                                                    alternativeEmail: table[i].alternativeEmail
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
 bool suffixIconCheck=false;
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
                paginated:   list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            suffixIconCheck: suffixIconCheck,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<BaseuomlistCubit>()
                                  .searchUomList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<BaseuomlistCubit>()
                                    .getUomist();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                      // if (list1 != null)
                      //   tablePagination(
                      //         () => context.read<UomgruoplistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //       context
                      //           .read<UomgruoplistCubit>()
                      //           .previuosslotSectionPageList();
                      //     },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //       // print(data.nextPageUrl);
                      //       context
                      //           .read<UomgruoplistCubit>()
                      //           .nextslotSectionPageList();
                      //     },
                      //   )
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
  bool suffixIconCheck=false;
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
                paginated:           list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CostingcreatelistCubit>()
                                  .searchCostingList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<CostingcreatelistCubit>()
                                    .getCostingCreateList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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


class OfferPeriodPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  OfferPeriodPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _OfferPeriodPopup createState() => _OfferPeriodPopup();
}

class _OfferPeriodPopup extends State<OfferPeriodPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<OfferPeriodList> table = [];
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
      context.read<ListOfferPeriodCubit>().getOfferPeriodList();
      return BlocConsumer<ListOfferPeriodCubit, ListOfferPeriodState>(
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
                label: "Offer  Period",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "CreateOfferPeriodCreatePopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<ListOfferPeriodCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<ListOfferPeriodCubit>()
                .previuosslotSectionPageList();
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<ListOfferPeriodCubit>()
                .nextslotSectionPageList();
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ListOfferPeriodCubit>()
                                  .searchUomList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<ListOfferPeriodCubit>()
                                    .getOfferPeriodList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                                    'Offer Period',
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
                                                      table[i].title,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                      table[i].title ??
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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




class CustomerGroupOneselectionPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  CustomerGroupOneselectionPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _CustomerGroupOneselectionPopup createState() => _CustomerGroupOneselectionPopup    ();
}

class _CustomerGroupOneselectionPopup extends State<CustomerGroupOneselectionPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<CustomerGroupModel> table = [];
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
  create: (context) => CustomerGroupPromotionCubit(),
  child: Builder(builder: (context) {
      context.read<CustomerGroupPromotionCubit>().getPromotionCustomerGroupList();
      return BlocConsumer<CustomerGroupPromotionCubit, CustomerGroupPromotionState>(
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
                buttonCheck: false,
                buttonVisible: false,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Available Customer Group",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<CustomerGroupPromotionCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<CustomerGroupPromotionCubit>()
                .previuosslotSectionPageList();
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<CustomerGroupPromotionCubit>()
                .nextslotSectionPageList();
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              context
                                  .read<CustomerGroupPromotionCubit>()
                                  .searchPromotionCustomerGroup(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<CustomerGroupPromotionCubit>()
                                    .getPromotionCustomerGroupList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                                    'Offer Period',
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
                                                CustomerGroupModel model =
                                                CustomerGroupModel(
                                                  code: table[i].code,
                                                  name:
                                                      table[i].name,
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text:

                                                      table[i].name ??
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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








class OfferGroupPeriodPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  OfferGroupPeriodPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _OfferGroupPeriodPopup createState() => _OfferGroupPeriodPopup();
}

class _OfferGroupPeriodPopup extends State<OfferGroupPeriodPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<OfferGroupList> table = [];
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
      context.read<ListOfferGroupCubit>().getOfferGroupList();
      return BlocConsumer<ListOfferGroupCubit, ListOfferGroupState>(
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
                label: "Offer Group",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "CreateOfferGroupPopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<ListOfferGroupCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<ListOfferGroupCubit>()
                .previuosslotSectionPageList();
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<ListOfferGroupCubit>()
                .nextslotSectionPageList();
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ListOfferGroupCubit>()
                                  .searchOfferGroupList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<ListOfferGroupCubit>()
                                    .getOfferGroupList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                                    'Offer Group',
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
                                                OfferGroupList model =
                                                OfferGroupList(
                                                  id: table[i].id,
                                                  title:
                                                      table[i].title,
                                                  offerGroupCode: table[i].offerGroupCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].title ??
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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


class SaleApplyingNamePeriodPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final salesOrderNamePostModel model;

  SaleApplyingNamePeriodPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
    required this.model,
  }) : super(key: key);

  @override
  _SaleApplyingNamePeriodPopup createState() => _SaleApplyingNamePeriodPopup();
}

class _SaleApplyingNamePeriodPopup extends State<SaleApplyingNamePeriodPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<OfferPeriodList> table = [];
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
  create: (context) => SaleApplyingNameCubit(),
  child: Builder(builder: (context) {
      context.read<SaleApplyingNameCubit>().getSaleApplyingName(widget.model);
      return BlocConsumer<SaleApplyingNameCubit, SaleApplyingNameState>(
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
                label: "Sales Applying Name",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      type: "CreateOfferGroupPopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<SaleApplyingNameCubit>().refresh(widget.model),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<SaleApplyingNameCubit>()
                .previuosslotSectionPageList(widget.model);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<SaleApplyingNameCubit>()
                .nextslotSectionPageList(widget.model);
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {

                              if (va == "") {

                                context
                                    .read<SaleApplyingNameCubit>()
                                    .getSaleApplyingName(widget.model);;
                                // suffixIconCheck=false;
                                // suffixIconCheck=false;
                              }
                              else{
                                salesOrderNamePostModel? obj=salesOrderNamePostModel(
                                  searchElemet: va,
                                  inventoryId: Variable.inventory_ID,
                                  segmentList:widget.model.segmentList,
                                  typeAllyingOn:widget.model.typeAllyingOn,
                                  id: widget.model.id,
                                  type: widget.model.type

                                );

                                context
                                    .read<SaleApplyingNameCubit>()
                                    .getSaleApplyingName(obj);
                              }

                            },
                          )),
                    SizedBox(height: 8,),
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
                                    'Applying  Name',
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
                                                OfferPeriodList model =
                                                OfferPeriodList(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ??
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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

class DiscountTypeidPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final salesOrderNamePostModel model;

  DiscountTypeidPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
    required this.model,
  }) : super(key: key);

  @override
  _DiscountTypeidPopup createState() => _DiscountTypeidPopup();
}

class _DiscountTypeidPopup extends State<DiscountTypeidPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<OfferPeriodList> table = [];
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
  create: (context) => TypeIdListCubit(),
  child: Builder(builder: (context) {
      context.read<TypeIdListCubit>().getListTypeId(widget.model);
      return BlocConsumer<TypeIdListCubit, TypeIdListState>(
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
                label: "Offer Group",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "CreateOfferGroupPopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<TypeIdListCubit>().refresh(widget.model),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<TypeIdListCubit>()
                .previuosslotSectionPageList(widget.model);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<TypeIdListCubit>()
                .nextslotSectionPageList(widget.model);
            },
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<SaleApplyingNameCubit>()
                                  .searchSaleAppyingNameList(widget.model,searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<SaleApplyingNameCubit>()
                                    .getSaleApplyingName(widget.model);
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(height: 8,),
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
                                    'Type Id',
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
                                                OfferPeriodList model =
                                                OfferPeriodList(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].name ??
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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

class VariantListPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final PromotionVariantPostModel model;

  VariantListPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
    required this.model,
  }) : super(key: key);

  @override
  _VariantListPopup createState() => _VariantListPopup();
}

class _VariantListPopup extends State<VariantListPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<SaleLines> table = [];
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
  create: (context) => VariantListPromotionCubit(),
  child: Builder(builder: (context) {
      context.read<VariantListPromotionCubit>().getVariantList(widget.model);
      return BlocConsumer<VariantListPromotionCubit, VariantListPromotionState>(
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
                label: "Variant List",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "CreateOfferGroupPopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<ListOfferGroupCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<VariantListPromotionCubit>()
                .previuosslotSectionPageList(widget.model);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<VariantListPromotionCubit>()
                .nextslotSectionPageList(widget.model);
            },
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<VariantListPromotionCubit>()
                                  .getVariantList(widget.model.copyWith(searchElement: va));
                              // context
                              //     .read<VariantListPromotionCubit>()
                              //     .searchVariantList(widget.model,searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<VariantListPromotionCubit>()
                                    .getVariantList(widget.model);
                                suffixIconCheck=false;
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
                                    'Variant Code',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
                                    size: 13,
                                    // color: Color(0xffE5E5E5),
                                  ),
                                  tableHeadtext(
                                    'Variant Name',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
                                    size: 13,
                                    // color: Color(0xffE5E5E5),
                                  ),
                                  tableHeadtext(
                                    'Barcode',
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
                                                SaleLines model =
                                                SaleLines(
                                                  id: table[i].id,
                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                  variantName: table[i].variantName,

                                                  variantCode: table[i].variantCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].variantCode ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                SaleLines model =
                                                SaleLines(
                                                    id: table[i].id,
                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                    variantName: table[i].variantName,

                                                    variantCode: table[i].variantCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].variantName ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                SaleLines model =
                                                SaleLines(
                                                    id: table[i].id,
                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                    variantName: table[i].variantName,
                                                    variantCode: table[i].variantCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].barcode?.barcodeNumber ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(3),
                              2: FlexColumnWidth(3),
                              3: FlexColumnWidth(3),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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



class MultibuyVariantListPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final PromotionVariantPostModel model;

  MultibuyVariantListPopup({
    Key? key,
    required this.type,
    required this.valueSelect,
    required this.model,
  }) : super(key: key);

  @override
  _MultibuyVariantListPopup createState() => _MultibuyVariantListPopup();
}

class _MultibuyVariantListPopup extends State<MultibuyVariantListPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  bool suffixIconCheck=false;
  List<MultibuyVariantListModel> table = [];
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
  create: (context) => VariantListMultiBuyCubit(),
  child: Builder(builder: (context) {
      context.read<VariantListMultiBuyCubit>().getMultiBuyVariantList(widget.model);
      return BlocConsumer<VariantListMultiBuyCubit, VariantListMultiBuyState>(
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
                label: "Variant List",
                onApply: () {
                  costingTypeMethodeCheck = true;
                  // showDailogPopUp(
                  //   context,
                  //   ConfigurePopup(
                  //     type: "CreateOfferGroupPopUp",
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
                paginated:           list1 != null?
                tablePagination(
                () => context.read<VariantListMultiBuyCubit>().refresh(widget.model,),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<VariantListMultiBuyCubit>()
                .previuosslotSectionPageList(widget.model);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<VariantListMultiBuyCubit>()
                .nextslotSectionPageList(widget.model);
            },
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context.read<VariantListMultiBuyCubit>().getMultiBuyVariantList(widget.model.copyWith(searchElement: va));
                              // context
                              //     .read<VariantListPromotionCubit>()
                              //     .searchVariantList(widget.model,searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<VariantListMultiBuyCubit>().getMultiBuyVariantList(widget.model);
                                suffixIconCheck=false;
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
                                    'Variant Code',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
                                    size: 13,
                                    // color: Color(0xffE5E5E5),
                                  ),
                                  tableHeadtext(
                                    'Variant Name',
                                    // textColor: Colors.black,
                                    // padding: EdgeInsets.all(7),
                                    // height: 44,
                                    size: 13,
                                    // color: Color(0xffE5E5E5),
                                  ),
                                  tableHeadtext(
                                    'Barcode',
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

                                                MultibuyVariantListModel model =

                                                MultibuyVariantListModel(

                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                  variantName: table[i].variantName,
                                                  unitCost: table[i].unitCost,
                                                  uomName: table[i].uomName,

                                                  variantCode: table[i].variantCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].variantCode ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {

                                                MultibuyVariantListModel model =

                                                MultibuyVariantListModel(

                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                    variantName: table[i].variantName,
                                                    unitCost: table[i].unitCost,
                                                    uomName: table[i].uomName,

                                                    variantCode: table[i].variantCode
                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].variantName ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                        TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                MultibuyVariantListModel model =
                                                MultibuyVariantListModel(
                                                    variantId: table[i].variantId,
                                                    barcode: table[i].barcode,
                                                    variantName: table[i].variantName,
                                                    unitCost: table[i].unitCost,
                                                    uomName: table[i].uomName,

                                                    variantCode: table[i].variantCode
                                                );

                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].barcode?.barcodeNumber ??
                                                          ""),

                                            // Text(keys[i].value??"",)

                                            ),
                                      ]),
                              ],
                            ],
                            widths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(3),
                              2: FlexColumnWidth(3),
                              3: FlexColumnWidth(3),
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .004,
                      ),
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<DevisionListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
                paginated: list1!=null?
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
                ):null,
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
                paginated:
                  list1 != null?
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
            ):SizedBox(),
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
  bool suffixIconCheck=false;
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
                paginated:  list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CostingtypelistCubit>()
                                  .searchCostingTypeList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<CostingtypelistCubit>()
                                    .getCostingTypeList();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<DevisionListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<CostingtypelistCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<CostingtypelistCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                paginated:list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            suffixIconCheck: suffixIconCheck,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<VariantselectionCubit>()
                                  .searchDevisionList(
                                      searchContoller.text, widget.id);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<VariantselectionCubit>()
                                    .getVariantSelectionList(widget.id);
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<VariantselectionCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<VariantselectionCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<VariantselectionCubit>()
                      //                 .nextslotSectionPageList(0);
                      //           },
                      //   )
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
                                context.read<VendordetailslistCubit>().getVendorDetailList();
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
                          () => context.read<VendordetailslistCubit>().refresh(),
                          back: list1?.previousUrl == null
                              ? null
                              : () {
                                  context
                                      .read<VendordetailslistCubit>()
                                      .previuosslotSectionPageList();
                                },
                          next: list1.nextPageUrl == null
                              ? null
                              : () {
                                  // print(data.nextPageUrl);
                                  context
                                      .read<VendordetailslistCubit>()
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
   bool suffixIconCheck=false;
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
                      veritiaclid:  widget.id,
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
                paginated:     list1 != null?
                tablePagination(
                () => context.read<CategorylistCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<CategorylistCubit>()
                .previuosslotSectionPageList(type:widget.apiType ?? "",id: widget.id);
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<CategorylistCubit>()
                .nextslotSectionPageList(type:widget.apiType ?? "",id:widget.id);
            },
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CategorylistCubit>()
                                  .searchCategoryist(searchContoller.text,type: widget.apiType ?? "",id: widget.id);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<CategorylistCubit>()
                                    .getCategoryist();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<CategorylistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<CategorylistCubit>()
                      //                 .previuosslotSectionPageList(id: widget.id);
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<CategorylistCubit>()
                      //                 .nextslotSectionPageList(id:widget.id);
                      //           },
                      //   )
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
bool  suffixIconCheck=false;
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
                      veritiaclid: widget.id,
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
                paginated:  list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<SubcategoryCubit>()
                                  .searchSubCategoryList(searchContoller.text,id:widget.id);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<SubcategoryCubit>()
                                    .getSubCategoryList(id:widget.id);
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<SubcategoryCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<SubcategoryCubit>()
                      //                 .previuosslotSectionPageList(id:widget.id);
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<SubcategoryCubit>()
                      //                 .nextslotSectionPageList(id:widget.id);
                      //           },
                      //   )
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
  bool suffixIconCheck=false;
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
              paginated:     list1 != null?
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
            ):Container(),
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            suffixIconCheck: suffixIconCheck,
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<BaseuomlistCubit>()
                                  .searchUomList(searchContoller.text,id:widget.id);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<BaseuomlistCubit>().getUomist(id: widget.id);
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<BaseuomlistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<BaseuomlistCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<BaseuomlistCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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

                buttonCheck: true,
                buttonName: "ADD NEW",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "",
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
                paginated:    list1 != null?
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
            ):Container(),
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<SalesListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<SalesListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<SalesListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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



class ProducedCountryPopup extends StatefulWidget {
  final String type;
  final Function valueSelect;
  final int? id;

  ProducedCountryPopup({
    Key? key,
    required this.type,
    this.id=0,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _ProducedCountryPopup createState() => _ProducedCountryPopup();
}

class _ProducedCountryPopup extends State<ProducedCountryPopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<VariantReadModel> table = [];
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
  create: (context) => ProducedcountryCubit(),
  child: Builder(builder: (context) {
    // context.read<ProducedcountryCubit>().getProducedCountry("widget.code");
      return BlocConsumer<ProducedcountryCubit, ProducedcountryState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                // print("uom Code" + list.data.toString());
                table = list;
                // list1 = list;
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
                      // Container(
                      //     margin: EdgeInsets.all(5),
                      //     child: SearchTextfiled(
                      //       color: Color(0xffFAFAFA),
                      //       h: 40,
                      //       hintText: "Search...",
                      //       ctrlr: searchContoller,
                      //       onChanged: (va) {
                      //         print("searching case" + va.toString());
                      //         context
                      //             .read<SalesListCubit>()
                      //             .searchSalesList(searchContoller.text);
                      //         if (va == "") {
                      //           context.read<SalesListCubit>().getSalesList();
                      //         }
                      //       },
                      //     )),
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
                                    'Produced Country',
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
                                                VariantReadModel model =
                                                VariantReadModel(
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<SalesListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<SalesListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<SalesListCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck=false;
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
                label: "UOM",
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
                paginated:    list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<UomlistCubit>()
                                  .searchUomList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<UomlistCubit>().getUomDivisionList();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<UomlistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<UomlistCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<UomlistCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                label: "Group",
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
                paginated:               list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<GroumdivisionCubit>()
                                  .searchUomList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<GroumdivisionCubit>().getGroupList();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<GroumdivisionCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<GroumdivisionCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<GroumdivisionCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck=false;
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
                label: "Category",
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<CategorylistdivisionconfigCubit>()
                                  .searchCategoryList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<CategorylistdivisionconfigCubit>().getCategoryList();
                                suffixIconCheck=false;
                              }
                            },
                          )),
                      SizedBox(
                        height: h * .004,
                      ),
                      Container(
                        height: h /1.9,
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
  bool suffixIconCheck = false;
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
                paginated:        list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<UomgruoplistCubit>()
                                  .searchUomgroupList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<UomgruoplistCubit>()
                                    .getUomGroupist();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<UomgruoplistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<UomgruoplistCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<UomgruoplistCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                paginated:    list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ShippingadreesCubit>()
                                  .getSearchCustomList(searchContoller.text,widget.code);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<ShippingadreesCubit>()
                                    .getShippingId(id:widget.code);
                                suffixIconCheck=false;
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
                                            textOnclickPadding(text:(i + 1).toString(),ontap: (){
                                              ShippingAddressModel model =
                                              ShippingAddressModel(
                                                id: table[i].id,
                                                fullName: table[i].fullName,

                                              );
                                              Navigator.pop(context);

                                              widget.valueSelect(model);
                                            },)
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<ShippingadreesCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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



class producedCountryPopupVariant extends StatefulWidget {
  final String type;
  final String? code;
  final Function valueSelect;
  final int? id;

  producedCountryPopupVariant({
    Key? key,
    required this.type,
    required this.id,
    this.code,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _producedCountryPopup createState() => _producedCountryPopup();
}

class _producedCountryPopup extends State<producedCountryPopupVariant> {
  bool? active = true;

  bool onChange = false;
  bool suffixIconCheck = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<VariantReadModel> table = [];
  var list1;
  TextEditingController searchContoller = TextEditingController();
  Dio client = Dio();

  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
  }

  void initState() {

    super.initState();
  }
  void _firstLoad(String ? code) async {
    String path="";

    code = code == null ? "" : code;
    if (code == "") {
      // path = "https://api-customergroup-application.hilalcart.com/";
      path = "https://api-uat-user.sidrabazar.com/" + "country-list?value=list";
    } else {
      path = inventoryLiveBaseUrl + "state-list?code=$code&value=list";
    }

    try {

      final res = await client.get(

      path,

        options: Options(

          headers: {

            'Content-Type': 'application/json',

            'Accept': 'application/json',


          },

        ),

      );
print("respppppppppppppppppppppppppppppppppppppp$res");



      setState(() {

        for (var element in (res.data['data'] as List)) {

          table.add(VariantReadModel.fromJson(element));

        }






    });} catch (err)
      {
        print('Something went wrong $err');
      }



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
      _firstLoad("");


      return BlocConsumer<ProducedcountryCubit, ProducedcountryState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                table = list;
                // list1 = list;
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
                // paginated:    list1 != null?
                // tablePagination(
                //       () => context.read<ShippingadreesCubit>().refresh(),
                //   back: list1?.previousUrl == null
                //       ? null
                //       : () {
                //     context
                //         .read<ShippingadreesCubit>()
                //         .previuosslotSectionPageList();
                //   },
                //   next: list1.nextPageUrl == null
                //       ? null
                //       : () {
                //     // print(data.nextPageUrl);
                //     context
                //         .read<ShippingadreesCubit>()
                //         .nextslotSectionPageList();
                //   },
                // ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ShippingadreesCubit>()
                                  .getSearchCustomList(searchContoller.text,widget.code);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<ShippingadreesCubit>()
                                    .getShippingId(id:widget.code);
                                suffixIconCheck=false;
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
                                            textOnclickPadding(text:(i + 1).toString(),ontap: (){
                                              VariantReadModel model =
                                              VariantReadModel(
                                                id: table[i].id,
                                                name: table[i].name,

                                              );
                                              Navigator.pop(context);

                                              widget.valueSelect(model);
                                            },)
                                          // Text(keys[i].key??"")

                                        ),
                                        TableCell(
                                            verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                            child: textOnclickPadding(
                                              ontap: () {
                                                VariantReadModel model = VariantReadModel(id: table[i].id, name: table[i].name,);
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<ShippingadreesCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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










class RequestFormCstomGroupListPopup extends StatefulWidget {
  final String type;
  final String? code;
  final Function valueSelect;
  final int? id;

  RequestFormCstomGroupListPopup({
    Key? key,
    required this.type,
    required this.id,
    this.code,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _RequestFormCstomGroupListPopup createState() => _RequestFormCstomGroupListPopup();
}

class _RequestFormCstomGroupListPopup extends State<RequestFormCstomGroupListPopup> {
  bool? active = true;

  bool onChange = false;
  bool suffixIconCheck = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<OrderedPersonModel> table = [];
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
  create: (context) => OrderedpersonCubit(),
  child: Builder(builder: (context) {
      context.read<OrderedpersonCubit>().getOrderedPerson();
      return BlocConsumer<OrderedpersonCubit, OrderedpersonState>(
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
                buttonVisible: false,
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Ordered Person",
                onApply: () {
                      // showDailogPopUp(
                      //     context,
                      //     WarrantyDetailsPopUp(
                      //       code: widget.code??"",
                      //       // indexValue: temp,
                      //       // changeActive: onChangeActive,
                      //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                      //       // changeExtendedWarranty: onChangeExtendedWarranty,
                      //     ));

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
                paginated:    list1 != null?
                tablePagination(
                () => context.read<OrderedpersonCubit>().refresh(),
            back: list1?.previousUrl == null
            ? null
                : () {
            context
                .read<OrderedpersonCubit>()
                .previuosslotSectionPageList();
            },
            next: list1.nextPageUrl == null
            ? null
                : () {
            // print(data.nextPageUrl);
            context
                .read<OrderedpersonCubit>()
                .nextslotSectionPageList();
            },
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context.read<OrderedpersonCubit>().getSearchOrderedPersonList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<OrderedpersonCubit>()
                                    .getOrderedPerson();
                                suffixIconCheck=false;
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
                                    'Ordered Person',
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
                                                OrderedPersonModel model =
                                                OrderedPersonModel(
                                                  id: table[i].id,
                                                  organisationCode: table[i].organisationCode,
                                                  employeeCode: table[i].employeeCode

                                                );
                                                Navigator.pop(context);

                                                widget.valueSelect(model);
                                              },
                                              text: table[i].fname ?? "",

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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<ShippingadreesCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<ShippingadreesCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
              // context.showSnackBarError("Loading");
            }, error: () {
              context.showSnackBarError(Variable.errorMessege);
            }, success: (data) {
              if (data.data1) {
                Navigator.pop(context);
                context.read<CustomeridlistCubit>().getCustomerId();

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

                                    mobile:"+91${ mobileController?.text}"??"",
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
                    paginated:                           list1 != null?
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
                ):Container(),
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
                                suffixIconCheck: suffixIconCheck,
                                onChanged: (va) {
                                  print("searching case" + va.toString());
                                  context
                                      .read<CustomeridlistCubit>()
                                      .getSearchCustomerList(searchContoller.text);
                                  suffixIconCheck=true;
                                  if (va == "") {
                                    context
                                        .read<CustomeridlistCubit>()
                                        .getCustomerId();
                                    suffixIconCheck=false;
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
                                        'Customer Code',
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
                                                  text:table[i].customerName!=''&&table[i].customerName!=null?table[i].customerName:
                                                    table[i].businessData?.buisnessMeta?.fullmae??"",

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
                          // if (list1 != null)
                          //   tablePagination(
                          //         () => context.read<CustomeridlistCubit>().refresh(),
                          //     back: list1?.previousUrl == null
                          //         ? null
                          //         : () {
                          //       context
                          //           .read<CustomeridlistCubit>()
                          //           .previuosslotSectionPageList();
                          //     },
                          //     next: list1.nextPageUrl == null
                          //         ? null
                          //         : () {
                          //       // print(data.nextPageUrl);
                          //       context
                          //           .read<CustomeridlistCubit>()
                          //           .nextslotSectionPageList();
                          //     },
                          //   )
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
  bool suffixIconCheck = false;
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
                paginated: list1 != null?
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
            ):SizedBox(),
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<Listbrand2Cubit>()
                                  .searchSlotSectionPageList(
                                      searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<Listbrand2Cubit>()
                                    .getSlotSectionPage();
                                suffixIconCheck=false;
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
  bool suffixIconCheck = false;
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<ListstaticCubit>()
                                  .searchStaticPageList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context.read<ListstaticCubit>().getStaticList();
                                suffixIconCheck=false;
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
  bool suffixIconCheck = false;


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
                buttonName: "Add New",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Group Popup",
                onApply: () {
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      veritiaclid: widget.id,
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
                paginated: list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              setState(() {


                              print("searching case" + va.toString());
                              context
                                  .read<GrouplistCubit>()
                                  .searchGroupList(searchContoller.text,id:widget.id);
                              suffixIconCheck=true;
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<GrouplistCubit>()
                                    .getGroupListList(id:widget.id);
                                suffixIconCheck=false;
                                suffixIconCheck=false;
                              }
                              });
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<GrouplistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<GrouplistCubit>()
                      //                 .previuosslotSectionPageList(id:widget.id);
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<GrouplistCubit>()
                      //                 .nextslotSectionPageList(id:widget.id);
                      //           },
                      //   )
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


class StockPartitionGroupPopup extends StatefulWidget {
  final String type;
  final int? id;
  final Function valueSelect;

  StockPartitionGroupPopup({
    Key? key,
    required this.type,
    this.id,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _StockPartitionGroupPopup createState() => _StockPartitionGroupPopup();
}

class _StockPartitionGroupPopup extends State<StockPartitionGroupPopup> {
  bool? active = true;
  bool suffixIconCheck = false;


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
      context.read<ListstockpartitionCubit>().getStockPartitionList();
      return BlocConsumer<ListstockpartitionCubit, ListstockpartitionState>(
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
                buttonName: "Add New",
                onTap: () {},
                isDirectCreate: true,
                addNew: false,
                label: "Stock Partition Group Id",
                onApply: () {
                  costingTypeMethodeCheck=true;
                  showDailogPopUp(
                    context,
                    ConfigurePopup(
                      veritiaclid: widget.id,
                      type: "StockPartitionPopUp",
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
                paginated: list1 != null?
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
            ):Container(),
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
                            suffixIconCheck: suffixIconCheck,
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              setState(() {


                              print("searching case" + va.toString());
                              context
                                  .read<GrouplistCubit>()
                                  .searchGroupList(searchContoller.text,id:widget.id);
                              suffixIconCheck=true;
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<GrouplistCubit>()
                                    .getGroupListList(id:widget.id);
                                suffixIconCheck=false;
                                suffixIconCheck=false;
                              }
                              });
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<GrouplistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<GrouplistCubit>()
                      //                 .previuosslotSectionPageList(id:widget.id);
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<GrouplistCubit>()
                      //                 .nextslotSectionPageList(id:widget.id);
                      //           },
                      //   )
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
  bool suffixIconCheck = false;
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
                dataField:
                Container(
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
                            suffixIconCheck: suffixIconCheck,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<MaterialListCubit>()
                                  .searchMaterialList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<MaterialListCubit>()
                                    .getMaterialList();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<MaterialListCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<MaterialListCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<MaterialListCubit>()
                      //                 .nextslotSectionPageList("");
                      //           },
                      //   )
                    ],
                  ),
                ),
                paginated:list1 != null?Container(
                  width: 300,
                  child: tablePagination(
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
                  ),
                ):Container(),
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
  bool suffixIconCheck = false;
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
                dataField:
                Container(
                  // height: 500,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            suffixIconCheck: suffixIconCheck,
                            h: 40,
                            hintText: "Search...",
                            ctrlr: searchContoller,
                            onChanged: (va) {
                              print("searching case" + va.toString());
                              context
                                  .read<FrameworklistCubit>()
                                  .searchCostingList(searchContoller.text);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<FrameworklistCubit>()
                                    .getFrameWorklist();
                                suffixIconCheck=false;
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
                      // if (list1 != null)
                      //   tablePagination(
                      //     () => context.read<FrameworklistCubit>().refresh(),
                      //     back: list1?.previousUrl == null
                      //         ? null
                      //         : () {
                      //             context
                      //                 .read<FrameworklistCubit>()
                      //                 .previuosslotSectionPageList();
                      //           },
                      //     next: list1.nextPageUrl == null
                      //         ? null
                      //         : () {
                      //             // print(data.nextPageUrl);
                      //             context
                      //                 .read<FrameworklistCubit>()
                      //                 .nextslotSectionPageList();
                      //           },
                      //   )
                    ],
                  ),
                ),
                paginated:  list1 != null?  tablePagination(
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
                ) :Container(),
              ),
            );
          });
        },
      );
    });
  }
}
