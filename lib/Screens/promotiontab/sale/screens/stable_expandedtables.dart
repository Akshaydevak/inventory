import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
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

class PromotionSaleStableTable extends StatefulWidget {
  final TextEditingController salesCode;
  final TextEditingController offerPeriod;
  final TextEditingController offerGroup;
  final TextEditingController saleApplyingPlace;
  final TextEditingController saleApplyingPlaceName;
  final TextEditingController saleApplyingPlaceId;
  final TextEditingController saleApplyingPlaceCode;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController image;
  final TextEditingController offerGroupName;
  final TextEditingController offerPeriodName;

  final TextEditingController basedOn;
  final TextEditingController discountPercenagePrice;
  final TextEditingController totalprice;
  final TextEditingController saleApplyingOn;
  final TextEditingController saleApplyingName;
  final TextEditingController saleApplyingId;
  final TextEditingController saleApplyingCode;
  final TextEditingController maximumCount;
  final TextEditingController availableCustomerGroup;
  final TextEditingController priority;
 final List<Segment> table;
 final Function activeChange;
 final Function variantTableDatsClear;



  // final Function trueOrFalseChange;
  final bool isAvailableforAll;
  final bool overridePriority;
  final bool isAdminBased;
  final bool isActive;
  final bool select;











  PromotionSaleStableTable({

    required this.salesCode,required this.table,required this.activeChange, required this.offerPeriod, required this.offerGroup, required this.saleApplyingPlace, required this.saleApplyingPlaceName, required this.title, required this.description, required this.image, required this.basedOn, required this.discountPercenagePrice, required this.totalprice, required this.saleApplyingOn, required this.saleApplyingName, required this.maximumCount, required this.availableCustomerGroup, required this.priority, required this.isAvailableforAll, required this.overridePriority, required this.isAdminBased, required this.isActive, required this.saleApplyingId, required this.saleApplyingCode, required this.saleApplyingPlaceId, required this.saleApplyingPlaceCode, required this.offerGroupName, required this.offerPeriodName, required this.select, required this.variantTableDatsClear});
  @override
  _PromotionSaleStableTableState createState() => _PromotionSaleStableTableState();
}

class _PromotionSaleStableTableState extends State<PromotionSaleStableTable> {

  String imageName1="";

  String imageEncode="";

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
                              controller: widget.salesCode,
                              title: "Sale Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(
                            label: "Sale Applying Place",
                            type:"SaleApplyingPlacePopup",

                            value: widget.saleApplyingPlace.text,
                            onSelection: (String? va) {
                              print(
                                  "+++++++++++++++++++++++");
                              //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                              setState(() {


                                // onChange = true;
                                widget.saleApplyingPlace.text = va!;
                                widget.saleApplyingPlaceName.text ="";
                                widget.saleApplyingPlaceCode.text = "";
                                widget.saleApplyingPlaceId.text = "";
                                // context
                                //     .read<ChannelListCubit>()
                                //     .getChannelList(va
                                // );
                              });
                            },
                          ),
                          // NewInputCard(  readOnly: true,
                          //     controller: widget.saleApplyingPlace, title: " Sale Applying Place"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(

                              controller: widget.description, title: "Description"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,



                              controller: widget.totalprice, title: "Total Price"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(

                              fileName:imageName1,
                              fileUrl:imageName1,
                              onCancel: (){

                                setState(() {
                                  imageName1="";
                                  Variable.img1=null;
                                });

                              },
                              onChangeTap: (p0) {

                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {



                                imageName1=myFile?.fileName??"";
                                // Variable.mobileBannerImage = myFile.toUint8List();
                                //
                                var     imageEncode =
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

                          // NewInputCard(
                          //     readOnly: true,
                          //
                          //
                          //     controller: widget.image, title: "Image"),
                          SizedBox(
                            height: height * .030,
                          ),

                          widget.isAvailableforAll?  SizedBox(
                            height: height * .107,
                          ):  NewInputCard(
                              formatter: true,

                              controller: widget.availableCustomerGroup, title: "Available Customer Groups"),

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
                              setState(() {
                                widget.offerPeriod.text =  "";
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
                          label: "Sale Applying Place Name",
                          type:"PromotionChannelListPopup",
                          code: widget.saleApplyingPlace.text,
                          value: widget.saleApplyingPlaceName.text,
                          onSelection: (ChannelListModel? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {


                              // onChange = true;
                              widget.saleApplyingPlaceName.text = va?.name??"";
                              widget.saleApplyingPlaceCode.text = va?.channelCode??"";
                              widget.saleApplyingPlaceId.text = va?.id.toString()??"";
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
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {


                              // onChange = true;
                              widget.basedOn.text = va!;
                            });
                          },
                        ),
                        // NewInputCard(
                        //
                        //     controller: widget.basedOn, title: "Based On"),
                        SizedBox(
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(
                          label: "Sale Applying On",
                          type:"SaleApplyingOnPromotionPopup",
                          value: widget.saleApplyingOn.text,
                          onSelection: (String? va) {

                            setState(() {
                              // onChange = true;
                              widget.saleApplyingOn.text = va!;
                              widget.saleApplyingName.text="";
                              widget.saleApplyingCode.text="";
                              widget.saleApplyingId.text="";
                              widget.variantTableDatsClear();
                            });
                          },
                        ),
                        // NewInputCard(
                        //
                        //
                        //
                        //     controller: widget.saleApplyingOn, title: "Sale Applying On"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            formatter: true,
                            // readOnly: true,
                            controller: widget.maximumCount, title: "Maximum Count"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget?. isAdminBased??false,
                            title: "Is Admin Based",
                            onClick: (gg) {
                              bool val=widget. isAdminBased;
                              val=!val;
                              widget.activeChange(type:3,val:val);







                              setState(() {});
                            }),

                        SizedBox(
                          height: height * .046,
                        ),







                      ],)),
                      Expanded(child: Column(children: [
                        NewInputCard(
                          controller: widget.offerGroupName,
                          icondrop: true,
                          readOnly: true,
                          title: "Offer Group",
                          ontap: () {
                            if(widget.offerGroupName.text.isNotEmpty){
                              setState(() {
                                widget.offerGroupName.text =  "";
                                widget.offerGroup.text = "";
                              });

                            }else
                            showDailogPopUp(
                              context,
                              TableConfigurePopup(
                                type: "OfferGroupPeriodPopup",
                                valueSelect: (OfferGroupList va) {
                                  setState(() {
                                    widget.offerGroup.text = va?.id.toString() ?? "";
                                    widget.offerGroupName.text = va.title.toString() ?? "";
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

                        // NewInputCard(
                        //     readOnly: true,
                        //     controller: widget.offerGroup, title: "Offer Group"),
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
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          controller: widget.saleApplyingCode,
                          icondrop: true,
                          readOnly: true,
                          title: "Sale Applying Name",
                          ontap: () {
                            List<String> list=[];
                            print("widget.table"+widget.table.toString());
                            for (var val in widget.table)
                              list.add(val.segmentCode.toString());
                            print("sasasaaaaaaaaaaaaaa"+list.toString());

                            salesOrderNamePostModel model=salesOrderNamePostModel(
                              inventoryId: Variable.inventory_ID,
                              searchElemet: null,
                              type:  widget.saleApplyingOn.text,
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
                                    widget.saleApplyingName.text=va?.name??"";
                                    widget.saleApplyingCode.text=va?.code??"";
                                    print("ssprint"+widget.saleApplyingCode.text.toString());
                                    widget.saleApplyingId.text=va?.id.toString()??"";
                                    widget.variantTableDatsClear();

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
                        // NewInputCard(
                        //
                        //     controller: widget.saleApplyingName, title: "Sale Applying Name"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget?. isAvailableforAll??false,
                            title: "Is Available For All",
                            onClick: (gg) {
                              bool val=widget. isAvailableforAll;
                              val=!val;
                              print(val);
                              widget.activeChange(type:1,val:val);





                              setState(() {});
                            }),

                        SizedBox(
                          height: height * .030,
                        ),



                        PopUpSwitchTile(
                            value:widget.select?true:widget?. isActive??false,
                            title: "Is Active",
                            onClick: (gg) {
                              if(widget.select!=true) {
                                bool val = widget.isActive;
                                val = !val;
                                widget.activeChange(type: 2, val: val);
                                setState(() {});
                              } }),
                        SizedBox(
                          height: height * .090,
                        ),
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


              ],
            );
          }
      );
  }
}