import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../../sale/model/offer_period_list.dart';

class PromotionCouponStableTable extends StatefulWidget {
  final TextEditingController couponCode;
  final TextEditingController descripion;
  final TextEditingController name;
  final TextEditingController offerPeriodId;
  final TextEditingController offerPeriodName;
  final TextEditingController displayName;
  final TextEditingController couponApplyingTo;
  final TextEditingController couponApplyingToName;
  final TextEditingController couponApplyingToNameCode;
  final TextEditingController couponApplyingToNameId;
  final TextEditingController couponType;
  final TextEditingController totalValue;
  final TextEditingController couponApplyingOn;
  final TextEditingController couponApplyingOnName;
  final TextEditingController couponApplyingOnNameCode;
  final TextEditingController couponApplyingOnNameId;
  final TextEditingController couponBasedOn;
  final TextEditingController priceOrpercentageValue;
  final TextEditingController maximumCount;
  final TextEditingController image;
  final TextEditingController imageName;
  final TextEditingController availableCustomerGroup;



  final bool isAvailableForAll;
  final bool canApplyMultipleTimes;
  final bool canApplyTogather;
  final bool isActive;
  final bool isSelect;
  final List<Segment> table;
  final Function activeChange;
  final Function variantTableDatsClear;

  PromotionCouponStableTable({required this.couponCode, required this.descripion, required this.name, required this.offerPeriodId, required this.offerPeriodName, required this.displayName, required this.couponApplyingTo, required this.couponApplyingToName, required this.couponApplyingToNameCode, required this.couponApplyingToNameId, required this.couponType, required this.totalValue, required this.couponApplyingOn, required this.couponApplyingOnName, required this.couponApplyingOnNameCode, required this.couponBasedOn, required this.priceOrpercentageValue, required this.maximumCount, required this.image, required this.imageName, required this.availableCustomerGroup, required this.isAvailableForAll, required this.canApplyMultipleTimes, required this.canApplyTogather, required this.isActive, required this.isSelect, required this.table, required this.activeChange, required this.variantTableDatsClear, required this.couponApplyingOnNameId});


  @override
  State<PromotionCouponStableTable> createState() => _PromotionCouponStableTableState();
}

class _PromotionCouponStableTableState extends State<PromotionCouponStableTable> {
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

                      controller: widget.couponCode,
                      title: "Coupon Code"),
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
                    label: "Coupon Applying To Name",
                    type:"PromotionChannelListPopup",
                    code: widget.couponApplyingToName.text,
                    value: widget.couponApplyingTo.text,
                    onSelection: (ChannelListModel? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {
                        // onChange = true;
                        widget.couponApplyingToName.text = va?.name??"";
                        widget.couponApplyingToNameCode.text = va?.channelCode??"";
                        widget.couponApplyingToNameId.text = va?.id.toString()??"";
                      });
                    },
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  SelectableDropDownpopUp(
                    label: "Coupon Applying On",
                    type:"SaleApplyingOnPromotionPopup",
                    value: widget.couponApplyingOn.text,
                    onSelection: (String? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {


                        // onChange = true;
                        widget.couponApplyingOn.text = va!;
                        widget.couponApplyingOnName.text="";
                        widget.couponApplyingOnNameCode.text="";
                        widget.couponApplyingToNameId.text="";
                        widget.variantTableDatsClear();
                      });
                    },
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      formatter: true,

                      controller: widget.priceOrpercentageValue, title: "Price or Percentage Value"),


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

                      controller: widget.couponType,
                      title: "Coupon Type"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    controller: widget.couponApplyingOnName,
                    icondrop: true,
                    readOnly: true,
                    title: "Coupon Applying On Name",
                    ontap: () {
                      List<String> list=[];

                      for (var val in widget.table){
                        if(val.isActive==true)
                          list.add(val.segmentCode.toString());
                      }

                      print("sasasaaaaaaaaaaaaaa"+list.toString());

                      salesOrderNamePostModel model=salesOrderNamePostModel(
                        inventoryId: Variable.inventory_ID,
                        searchElemet: null,
                        type:  widget.couponApplyingOn.text,
                        segmentList:list,

                      );
                      print(model);
                      showDailogPopUp(
                        context,
                        TableConfigurePopup(
                          type: "SaleApplyingNamePeriodPopup",
                          object: model,
                          valueSelect: (OfferPeriodList va) {
                            setState(() {
                              widget.couponApplyingOnName.text=va?.name??"";
                              widget.couponApplyingOnNameCode.text=va?.code??"";
                              widget.couponApplyingOnNameId.text=va?.id.toString()??"";
                              widget. variantTableDatsClear();


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
                      formatter: true,

                      controller: widget.maximumCount, title: "Maximum Count"),








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
                    label: "Coupon Applying To",
                    type:"SaleApplyingPlacePopup",

                    value: widget.couponApplyingTo.text,
                    onSelection: (String? va) {
                      print("+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {

                        // onChange = true;
                        widget.couponApplyingTo.text = va!;
                        widget.couponApplyingToName.text = "";
                        widget.couponApplyingToNameCode.text = "";
                        widget.couponApplyingToNameId.text = "";
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

                      controller: widget.totalValue, title: "Total Value"),
                  SizedBox(
                    height: height * .030,
                  ),
                  SelectableDropDownpopUp(
                    label: " Coupon Based On",
                    type:"SaleBasedOnPromotionPopup",

                    value: widget.couponBasedOn.text,
                    onSelection: (String? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {


                        // onChange = true;
                        widget.couponBasedOn.text = va!;
                      });
                    },
                  ),
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
                          context.read<PromotionImageCubit>().postPromotionImage(Variable.imageName,  imageEncode);;
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
                  child: NewInputCard(

                      controller: widget.availableCustomerGroup,
                      title: "Available Customer Groups"),
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
        SizedBox(height: height*.02,),

        Row(
          children: [
            Expanded(child:Column(
              children: [
                PopUpSwitchTile(
                    value:widget?. canApplyMultipleTimes??false,
                    title: "Can Apply Multiple Times",
                    onClick: (gg) {
                      bool val=widget. canApplyMultipleTimes;
                      val=!val;
                      print(val);
                      widget.activeChange(type:3,val:val);
                      setState(() {});
                    }),
              ],
            ),),

            Expanded(child:Column(
              children: [
                PopUpSwitchTile(
                    value:widget.canApplyTogather,
                    title: "Can Apply Together",
                    onClick: (gg) {
                      bool val=widget. canApplyTogather;
                      val=!val;
                      widget.activeChange(type:4,val:val);

                      setState(() {});
                    }),
              ],
            ),),
            Expanded(child:Column(
              children: [
                Container(
                ),
              ],
            ),),


          ],
        ),

      ],
    );

  }
}