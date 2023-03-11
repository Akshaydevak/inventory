
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class PromotionByMoreStableTable extends StatefulWidget {
  final TextEditingController buyMoreCode;
  final TextEditingController descripion;
  final TextEditingController buyMoreApplyingNmae;
  final TextEditingController offerPeriodId;
  final TextEditingController offerPeriodName;
  final TextEditingController offerGroupName;
  final TextEditingController offerGroupId;
  final TextEditingController buyMoreApplyingPlace;
  final TextEditingController buyMoreApplyingPlaceName;
  final TextEditingController buyMoreApplyingPlaceCode;
  final TextEditingController buyMoreApplyingPlaceId;
  final TextEditingController basedOn;
  final TextEditingController image;
  final TextEditingController title;
  final TextEditingController buyMoreApplyinOn;
  final TextEditingController availableCustomerGroups;
  final TextEditingController buyMoreApplyingNameCode;
  final TextEditingController maximumCount;
  final TextEditingController buyMoreApplyingNameId;
  final TextEditingController imageNameController;


  final bool isAvailableForAll;
  final bool isActive;
  final bool isSelect;
  final List<Segment> table;
  final Function activeChange;
  final Function variantTableDatsClear;

  PromotionByMoreStableTable({ required this.buyMoreCode,required this.variantTableDatsClear, required this.descripion, required this.buyMoreApplyingNmae, required this.offerPeriodId, required this.offerPeriodName, required this.basedOn, required this.image, required this.title, required this.buyMoreApplyinOn, required this.availableCustomerGroups, required this.isAvailableForAll, required this.isActive, required this.isSelect, required this.offerGroupName, required this.offerGroupId, required this.buyMoreApplyingPlace, required this.buyMoreApplyingPlaceName, required this.table, required this.buyMoreApplyingNameCode, required this.buyMoreApplyingNameId, required this.buyMoreApplyingPlaceCode, required this.buyMoreApplyingPlaceId, required this.activeChange, required this.imageNameController, required this.maximumCount});


  @override
  State<PromotionByMoreStableTable> createState() => _PromotionByMoreStableTableState();
}

class _PromotionByMoreStableTableState extends State<PromotionByMoreStableTable> {
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

                      controller: widget.buyMoreCode,
                      title: "Buy More Code "),
                  SizedBox(
                    height: height * .030,
                  ),
                  SelectableDropDownpopUp(
                    label: "Buy More Applying Place",
                    type:"SaleApplyingPlacePopup",

                    value: widget.buyMoreApplyingPlace.text,
                    onSelection: (String? va) {
                      print("+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {

                        // onChange = true;
                        widget.buyMoreApplyingPlace.text = va!;
                        widget.buyMoreApplyingPlaceName.text = "";
                        widget.buyMoreApplyingPlaceCode.text = "";
                        widget.buyMoreApplyingPlaceId.text = "";
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

                      controller: widget.descripion,
                      title: "Description"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    controller: widget.buyMoreApplyingNmae,
                    icondrop: true,
                    readOnly: true,
                    title: "Buy More Applying Name",
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
                        type:  widget.buyMoreApplyinOn.text,
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
                              widget.buyMoreApplyingNmae.text=va?.name??"";
                              widget.buyMoreApplyingNameCode.text=va?.code??"";
                              widget.buyMoreApplyingNameId.text=va?.id.toString()??"";
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
                  SelectableDropDownpopUp(
                    label: "Buy More Applying Place Name",
                    type:"PromotionChannelListPopup",
                    code: widget.buyMoreApplyingPlace.text,
                    value: widget.buyMoreApplyingPlaceCode.text,
                    onSelection: (ChannelListModel? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {
                        // onChange = true;
                        widget.buyMoreApplyingPlaceName.text = va?.name??"";
                        widget.buyMoreApplyingPlaceCode.text = va?.channelCode??"";
                        widget.buyMoreApplyingPlaceId.text = va?.id.toString()??"";
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
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      formatter: true,

                      controller: widget.maximumCount, title: "Maximum Count"),
                  SizedBox(
                    height: height * .030,
                  ),




                ],
              )),
              Expanded(child: Column(
                children: [
                  // NewInputCard(
                  //   controller: widget.offerGroupName,
                  //   icondrop: true,
                  //   readOnly: true,
                  //   title: "Offer Group",
                  //   ontap: () {
                  //     if(widget.offerGroupName.text.isNotEmpty){
                  //
                  //       setState(() {
                  //         widget.offerGroupId.text =  "";
                  //         widget.offerGroupName.text =  "";
                  //
                  //       });
                  //     }
                  //     else
                  //     showDailogPopUp(
                  //       context,
                  //       TableConfigurePopup(
                  //         type: "OfferGroupPeriodPopup",
                  //         valueSelect: (OfferGroupList va) {
                  //           setState(() {
                  //             widget.offerGroupId.text = va?.id.toString() ?? "";
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
                  // SizedBox(
                  //   height: height * .030,
                  // ),
                  NewInputCard(

                      controller: widget.title,
                      title: "Title"),
                  SizedBox(
                    height: height * .030,
                  ),
                  SelectableDropDownpopUp(
                    label: "Buy More Applying On",
                    type:"SaleApplyingOnPromotionPopup",
                    value: widget.buyMoreApplyinOn.text,
                    onSelection: (String? va) {
                      print(
                          "+++++++++++++++++++++++");
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      setState(() {


                        // onChange = true;
                        widget.buyMoreApplyinOn.text = va!;
                        widget.buyMoreApplyingNmae.text="";
                        widget.buyMoreApplyingNameCode.text="";
                        widget.buyMoreApplyingNameId.text="";
                        widget.variantTableDatsClear();
                      });
                    },
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  FileUploadField(

                      fileName:widget.imageNameController?.text??"",
                      fileUrl:widget.imageNameController?.text??"",
                      onCancel: (){

                        setState(() {
                          widget.imageNameController.clear();
                          widget.image.clear();
                          // Variable.img1=null;
                        });

                      },
                      onChangeTap: (p0) {

                        // loading = true;
                        setState(() {});
                      },
                      onChange: (myFile) {



                        widget.imageNameController.text=myFile?.fileName??"";
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

                  SizedBox(
                    height: height * .150,
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
      child: NewInputCard(

      controller: widget.availableCustomerGroups,
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
        )

      ],
    );

  }
}
