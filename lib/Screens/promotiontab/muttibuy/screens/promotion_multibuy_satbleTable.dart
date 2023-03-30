import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';


class PromotionMultiBuyStableTable extends StatefulWidget {
  final TextEditingController muliBuyCode;
  final TextEditingController descripion;
  final TextEditingController name;
  final TextEditingController offerPeriodId;
  final TextEditingController offerPeriodName;
  final TextEditingController displayName;
  final TextEditingController multiBuyApplyingTo;
  final TextEditingController multiBuyApplyingToName;
  final TextEditingController multiBuyApplyingToNameCode;
  final TextEditingController multiBuyApplyingToNameId;
  final TextEditingController sellingPrice;

  final TextEditingController totalCost;
  // final TextEditingController couponApplyingOn;
  // final TextEditingController couponApplyingOnName;
  // final TextEditingController couponApplyingOnNameCode;
  // final TextEditingController couponApplyingOnNameId;
  // final TextEditingController couponBasedOn;
  // final TextEditingController priceOrpercentageValue;
  final TextEditingController maximumCount;
  final TextEditingController image;
  final TextEditingController imageName;
  final TextEditingController availableCustomerGroup;



  final bool isAvailableForAll;

  final bool isActive;
  final bool isSelect;
  final List<Segment> table;
  final  List<AvailableCustomerGroups> customerGroupList;

  final Function activeChange;
  final Function variantTableDatsClear;
  final Function customGroupListAssign;

  PromotionMultiBuyStableTable({ required this.muliBuyCode, required this.descripion, required this.name, required this.offerPeriodId, required this.offerPeriodName, required this.displayName, required this.multiBuyApplyingTo, required this.multiBuyApplyingToName, required this.multiBuyApplyingToNameCode, required this.multiBuyApplyingToNameId, required this.totalCost, required this.maximumCount, required this.image, required this.imageName, required this.availableCustomerGroup, required this.isAvailableForAll, required this.isActive, required this.isSelect, required this.table, required this.customerGroupList, required this.activeChange, required this.variantTableDatsClear, required this.customGroupListAssign, required this.sellingPrice});


  @override
  State<PromotionMultiBuyStableTable> createState() => _PromotionMultiBuyStableTableState();
}

class _PromotionMultiBuyStableTableState extends State<PromotionMultiBuyStableTable> {
  String imageEncode="";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Column(
                children: [
                  NewInputCard(
                      readOnly: true,

                      controller: widget.muliBuyCode,
                      title: "MultiBuy Code"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(

                      controller: widget.descripion,
                      title: "Description"),
                  SizedBox(
                    height: height * .030,
                  ),



                  SelectableDropDownpopUp(
                    label: "Multibuy Applying To Name",
                    type:"PromotionChannelListPopup",
                    code: widget.multiBuyApplyingTo.text,
                    value: widget.multiBuyApplyingToName.text,

                    onSelection: (ChannelListModel? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {
                        // onChange = true;
                        widget.multiBuyApplyingToName.text = va?.name??"";
                        widget.multiBuyApplyingToNameCode.text = va?.channelCode??"";
                        widget.multiBuyApplyingToNameId.text = va?.id.toString()??"";
                      });
                    },
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      formatter: true,

                      controller: widget.maximumCount, title: "Maximum Count"),





                  // NewInputCard(
                  //   controller: widget.buyMoreApplyingNmae,
                  //   icondrop: true,
                  //   readOnly: true,
                  //   title: "Buy More Applying Name",
                  //   ontap: () {
                  //     List<String> list=[];
                  //
                  //     for (var val in widget.table){
                  //       if(val.isActive==true)
                  //         list.add(val.segmentCode.toString());
                  //     }
                  //
                  //     print("sasasaaaaaaaaaaaaaa"+list.toString());
                  //
                  //     salesOrderNamePostModel model=salesOrderNamePostModel(
                  //       inventoryId: Variable.inventory_ID,
                  //       searchElemet: null,
                  //       type:  widget.buyMoreApplyinOn.text,
                  //       segmentList:list,
                  //
                  //     );
                  //     print(model);
                  //     showDailogPopUp(
                  //       context,
                  //       TableConfigurePopup(
                  //         type: "SaleApplyingNamePeriodPopup",
                  //         object: model,
                  //         valueSelect: (OfferPeriodList va) {
                  //           setState(() {
                  //             widget.buyMoreApplyingNmae.text=va?.name??"";
                  //             widget.buyMoreApplyingNameCode.text=va?.code??"";
                  //             widget.buyMoreApplyingNameId.text=va?.id.toString()??"";
                  //             widget. variantTableDatsClear();
                  //
                  //
                  //             // widget.costingName.text =
                  //             //     va.methodName ?? "";
                  //             // setState(() {});
                  //
                  //             // onChange = true;
                  //             // orderType.text = va!;
                  //           });
                  //         },
                  //       ),
                  //     );
                  //   },
                  // ),




                ],
              )),
              Expanded(child: Column(
                children: [

                  NewInputCard(
                    controller: widget.offerPeriodName,
                    icondrop: true,
                    readOnly: true,
                    title: "Offer Period",
                    ontap: () {
                      if(widget.offerPeriodName.text.isNotEmpty){
                        setState(() {
                          widget.offerPeriodId.text = "";
                          widget.offerPeriodName.text = "";

                        });
                      }
                      else
                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            type: "OfferPeriodPopup",
                            valueSelect: (CostingCreatePostModel va) {
                              setState(() {
                                widget.offerPeriodId.text = va?.id.toString() ?? "";
                                widget.offerPeriodName.text = va?.methodName.toString() ?? "";
                                // widget.costingName.text =
                                //     va.methodName ?? "";
                                // setState(() {});

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

                      controller: widget.displayName,
                      title: "Display Name"),
                  SizedBox(
                    height: height * .030,
                  ),

                  NewInputCard(
                      formatter: true,

                      controller: widget.totalCost, title: "Total Cost"),
                  SizedBox(
                    height: height * .030,
                  ),
                  FileUploadField(

                      fileName:widget.imageName?.text??"",
                      fileUrl:widget.imageName?.text??"",
                      onCancel: (){

                        setState(() {
                          widget.imageName.clear();
                          widget.image.clear();
                          // Variable.img1=null;
                        });

                      },
                      onChangeTap: (p0) {

                        // loading = true;
                        setState(() {});
                      },
                      onChange: (myFile) {



                        widget.imageName.text=myFile?.fileName??"";
                        imageEncode =
                            myFile.toBase64();
                        // Variable.mobileBannerImage = myFile.toUint8List();
                        //
                        // imageEncode =
                        //     myFile.toBase64();
                        // widget.fileMobileNameCtrl.text =
                        //     myFile.fileName ?? "";
                        // if (Variable.bannerimage!.length <= 240000)

                        // else
                        //   context.showSnackBarError(
                        //       "Please upload Banner of size Lesser than 230kb");
                      },
                      onImageChange: (newFile) async {
                        // onChange=true;
                        // Variable.popUp = false;

                        if (newFile.length <= 150000) {
                          context.read<PromotionImageCubit>().postPromotionImage(Variable.imageName,  imageEncode);
                          // loading
                          //     ? showDailogPopUp(context, DialoguePopUp())
                          //     : Navigator.pop(context);
                          // context
                          //     .read<CreateWebImageCubit>()
                          //     .createMobImage();
                        } else
                          context.showSnackBarError(
                              "Please upload Image of size Lesser than 200kb");
                        setState(() {});
                      },
                      onCreate: true,
                      label: "Image"),












                ],
              )),
              Expanded(child: Column(
                children: [

                  NewInputCard(

                      controller: widget.name,
                      title: "Name"),
                  SizedBox(
                    height: height * .030,
                  ),
                  SelectableDropDownpopUp(
                    label: "MultiBuy Applying To",
                    type:"promotion_multibuy_applying_to",

                    value: widget.multiBuyApplyingTo.text,
                    onSelection: (String? va) {
                      print("+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {
                        // onChange = true;
                        widget.multiBuyApplyingTo.text = va!;
                        widget.multiBuyApplyingToName.text = "";
                        widget.multiBuyApplyingToNameId.text = "";
                        widget.multiBuyApplyingToNameCode.text = "";
                        // context
                        //     .read<ChannelListCubit>()
                        //     .getChannelList(va
                        // );
                      });
                    },
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      formatter: true,

                      controller: widget.sellingPrice, title: "Selling Price"),

                  SizedBox(
                    height: height * .117,
                  ),
                ],
              )),
            ],

          ),
        ),
        SizedBox(height: height*.04,),
        Row(
          children: [
            Expanded(child:Column(
              children: [
                PopUpSwitchTile(
                    value:widget?. isAvailableForAll??false,
                    title: "Is Available For All",
                    onClick: (gg) {
                      bool val=widget. isAvailableForAll;
                      val=!val;
                      print(val);
                      widget.activeChange(type:1,val:val);
                      setState(() {});
                    }),
              ],
            ),),
            Expanded(child:Column(
              children: [
                Visibility(
                  visible: !widget.isAvailableForAll,
                  child:
                  NewInputCard(
                      formatter: true,
                      ontap: (){
                        showDailogPopUp(
                          context,
                          ConfigurePopup(
                            // code: widget.veritiacalCode,
                            passingList:widget. customerGroupList,
                            listAssign: (List<AvailableCustomerGroups> list1){
                              widget.customGroupListAssign(list1);

                            },
                            type: "CustomGroupLinkedItem",
                          ),
                        );
                      },

                      controller: widget.availableCustomerGroup, title: "Available Customer Groups"),
                ),
              ],
            ),),
            Expanded(child:Column(
              children: [
                PopUpSwitchTile(
                    value:widget.isSelect?true:widget?. isActive??false,
                    title: "Is Active",
                    onClick: (gg) {
                      bool val=widget. isActive;
                      val=!val;
                      widget.activeChange(type:2,val:val);

                      setState(() {});
                    }),
              ],
            ),),
          ],
        ),


      ],
    );

  }
}