import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/chennellist/channel_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../../../../commonWidget/tableConfiguration.dart';

class PromotionDiscountStableTable extends StatefulWidget {
  final TextEditingController discountCode;
  final TextEditingController offerPeriod;
  final TextEditingController offerGroup;
  final TextEditingController offerApplyingType;
  final TextEditingController offerApplyingTo;
  final TextEditingController offerApplyingId;
  final TextEditingController offerApplyingCode;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController image;
  final List<AvailableCustomerGroups> customerGroupList;


  final TextEditingController offerGroupName;
  final TextEditingController offerPeriodName;

  final TextEditingController basedOn;
  final TextEditingController discountPercenagePrice;




  final TextEditingController availableCustomerGroup;


  final Function activeChange;
  final Function imagePostCheck;
  final Function customGroupListAssign;



  // final Function trueOrFalseChange;
  final bool isAvailableforAll;
  final bool overridePriority;

  final bool isActive;

  final bool select;











  PromotionDiscountStableTable({

    required this.discountCode,
required this.activeChange, required this.offerPeriod, required this.offerGroup, required this.offerApplyingType, required this.offerApplyingTo, required this.title, required this.description,  required this.basedOn, required this.discountPercenagePrice,   required this.availableCustomerGroup, required this.isAvailableforAll, required this.overridePriority,  required this.isActive,  required this.offerApplyingId, required this.offerApplyingCode, required this.offerGroupName, required this.offerPeriodName, required this.select, required this.image, required this.imagePostCheck, required this.customGroupListAssign, required this.customerGroupList, });
  @override
  _PromotionDiscountStableTableState createState() => _PromotionDiscountStableTableState();
}

class _PromotionDiscountStableTableState extends State<PromotionDiscountStableTable> {

  String imageName1="";

  String imageEncode="";
  String offerApplingToName="";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
            return Column(
              children: [

                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Column(
                        children: [


                          NewInputCard(
                              readOnly: true,
                              controller: widget.discountCode,
                              title: "Discount Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(
                            label: "Offer Applying Type",
                            type:"SaleApplyingPlacePopup",

                            value: widget.offerApplyingType.text,
                            onSelection: (String? va) {
                              setState(() {
                                // onChange = true;
                                widget.offerApplyingType.text = va!;
                                widget.offerApplyingTo.text = "";
                                widget.offerApplyingCode.text = "";
                                widget.offerApplyingId.text = "";
                              });
                            },
                          ),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(

                              fileName:widget.image.text,
                              fileUrl:widget.image.text,
                              onCancel: (){

                                setState(() {
                                  widget.image.clear();
                                  Variable.img1=null;
                                });

                              },
                              onChangeTap: (p0) {

                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "1");
                                widget.image.text=myFile?.fileName??"";
                                // Variable.mobileBannerImage = myFile.toUint8List();
                                //
                                imageEncode =
                                    myFile.toBase64();
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
                                  context.read<PromotionImageCubit>().postPromotionImage(Variable.imageName,  imageEncode,type: "image1");
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








                          // NewInputCard(
                          //     readOnly: true,
                          //
                          //




                        ],
                      )),
                      Expanded(child: Column(children: [
                        NewInputCard(
                          controller: widget.offerPeriodName,
                          icondrop: true,
                          readOnly: true,
                          title: "Offer Period",
                          ontap: () {
                            if(widget.offerPeriodName.text.isNotEmpty){
                              widget.offerPeriod.text = "";
                              widget.offerPeriodName.text =  "";

                            }
                            else
                            showDailogPopUp(
                              context,
                              TableConfigurePopup(
                                type: "OfferPeriodPopup",
                                valueSelect: (CostingCreatePostModel va) {
                                  setState(() {
                                    widget.offerPeriod.text = va?.id.toString() ?? "";
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
                        SelectableDropDownpopUp(
                          label: "Offer Applying To",
                          type:"PromotionChannelListPopup",
                          code: widget.offerApplyingType.text,
                          value:widget.offerApplyingCode.text ,
                          onSelection: (ChannelListModel? va) {
                            setState(() {
                              widget.offerApplyingTo.text = va?.name??"";
                              widget.offerApplyingCode.text = va?.channelCode??"";
                              widget.offerApplyingId.text = va?.id.toString()??"";
                            });
                            setState(() {

                            });
                          },
                        ),

                        SizedBox(
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(
                          label: "Based On",
                          type:"SaleBasedOnPromotionPopup",
                          value: widget.basedOn.text,
                          onSelection: (String? va) {
                            setState(() {
                              // onChange = true;
                              widget.basedOn.text = va!;
                            });
                          },
                        ),











                        // NewInputCard(
                        //
                        //
                        //
                        //     controller: widget.saleApplyingOn, title: "Sale Applying On"),












                      ],)),
                      Expanded(child: Column(children: [
                        // NewInputCard(
                        //   controller: widget.offerGroupName,
                        //   icondrop: true,
                        //   readOnly: true,
                        //   title: "Offer Group",
                        //   ontap: () {
                        //     showDailogPopUp(
                        //       context,
                        //       TableConfigurePopup(
                        //         type: "OfferGroupPeriodPopup",
                        //         valueSelect: (OfferGroupList va) {
                        //           setState(() {
                        //             widget.offerGroup.text = va?.id.toString() ?? "";
                        //             widget.offerGroupName.text = va.title.toString() ?? "";
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

                        // NewInputCard(
                        //     readOnly: true,
                        //     controller: widget.offerGroup, title: "Offer Group"),
                        // SizedBox(
                        //   height: height * .030,
                        // ),

                        NewInputCard(

                            controller: widget.description, title: "Description"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(

                            controller: widget.title, title: "Title"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,

                            controller: widget.discountPercenagePrice, title: "Discount Percentage/Price"),

                        // NewInputCard(
                        //
                        //     controller: widget.basedOn, title: "Based On"),











                        // PopUpSwitchTile(
                        //     value:widget?. isAvailableforAll??false,
                        //     title: "Stock Warning",
                        //     onClick: (gg) {
                        //       bool val=widget. isAvailableforAll;
                        //       val=!val;
                        //       // widget.trueOrFalseChange(type: "1",val:val);
                        //
                        //
                        //
                        //
                        //
                        //       // extendedWarranty = gg;
                        //       // widget.changeExtendedWarranty(gg);
                        //       // onChangeExtWarranty = gg;
                        //       setState(() {});
                        //     }),
















                      ],))

                    ],
                  ),
                ),
                SizedBox(height: height*.04,),
                Row(
                  children: [

                    Expanded(child:Column(
                      children: [

            PopUpSwitchTile(
            value:widget?. isAvailableforAll??false,
            title: "Is Available For All",
            onClick: (gg) {
            bool val=widget. isAvailableforAll;
            val=!val;
            print(val);
            widget.activeChange(type:2,val:val);





            setState(() {});
            }),
                      ],
                    ),),

                    Expanded(child:Column(
                      children: [
                        Visibility(
                          visible: !widget.isAvailableforAll,
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
                            value:widget.select?true:widget?. isActive??false,
                            title: "Is Active",
                            onClick: (gg) {
                              if(widget.select!=true) {
                                bool val = widget.isActive;
                                val = !val;
                                widget.activeChange(type: 3, val: val);
                                setState(() {});
                              } }),

                      ],
                    ),)
                  ],
                )



              ],
            );
          }
      );
  }
}