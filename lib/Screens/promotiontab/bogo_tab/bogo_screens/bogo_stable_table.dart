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

class PromotionBogoStableTable extends StatefulWidget {
  final TextEditingController bogoCode;
  final TextEditingController offerPeriod;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController offerPeriodName;
  final TextEditingController bogoApplyingPlaceType;
    final TextEditingController bogoApplyingPlaceName;
    final TextEditingController bogoApplyingPlaceId;
    final TextEditingController bogoApplyingPlaceCode;
    final TextEditingController byCount;
    final TextEditingController geCount;
    final TextEditingController bogoApplyingOn;
    final TextEditingController bogoApplyingName;
    final TextEditingController bogoApplyingNameCode;
    final TextEditingController bogoApplyingNameId;
    final TextEditingController iamge;
    final TextEditingController imageName;
    final TextEditingController maximumCount;
    final TextEditingController availableCustomer;
    final bool isAvailableForAll;
    final bool isActive;
    final bool select;

  final List<Segment> table;
  final Function activeChange;
  final Function variantTableDatsClear;



  // final Function trueOrFalseChange;












  PromotionBogoStableTable({

     required this.bogoCode, required this.offerPeriod, required this.title, required this.description, required this.bogoApplyingPlaceType, required this.bogoApplyingPlaceName, required this.bogoApplyingPlaceId, required this.bogoApplyingPlaceCode, required this.byCount, required this.geCount, required this.bogoApplyingOn, required this.bogoApplyingName, required this.bogoApplyingNameCode, required this.bogoApplyingNameId, required this.iamge, required this.maximumCount, required this.availableCustomer, required this.isAvailableForAll, required this.isActive, required this.table, required this.activeChange, required this.variantTableDatsClear, required this.offerPeriodName, required this.select, required this.imageName});
  @override
  _PromotionBogoStableTableState createState() => _PromotionBogoStableTableState();
}

class _PromotionBogoStableTableState extends State<PromotionBogoStableTable> {

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
                              controller: widget.bogoCode,
                              title: "Bogo Code"),
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



                              controller: widget.byCount, title: "Buy Count"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            controller: widget.bogoApplyingName,
                            icondrop: true,
                            readOnly: true,
                            title: "BOGO Applying Name",
                            ontap: () {
                              List<String> list=[];
                              print("widget.table"+widget.table.toString());
                              for (var val in widget.table){
                                if(val.isActive==true)
                                  list.add(val.segmentCode.toString());

                              }

                              print("sasasaaaaaaaaaaaaaa"+list.toString());

                              salesOrderNamePostModel model=salesOrderNamePostModel(
                                inventoryId: Variable.inventory_ID,
                                searchElemet: null,
                                type:  widget.bogoApplyingOn.text,
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
                                      widget.bogoApplyingName.text=va?.name??"";
                                      widget.bogoApplyingNameCode.text=va?.code??"";
                                      // print("ssprint"+widget.saleApplyingCode.text.toString());
                                      widget.bogoApplyingNameId.text=va?.id.toString()??"";
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







                        ],
                      )),
                      Expanded(child: Column(children: [
                        NewInputCard(
                          controller: widget.offerPeriodName,
                          icondrop: true,
                          readOnly: true,
                          title: "Offer Period",
                          ontap: () {
                            if(widget.offerPeriod.text.isNotEmpty){
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
                          label: "Bogo Applying Place Type",
                          type:"PromotionBogoApplyingPlaceTypePopup",

                          value: widget.bogoApplyingPlaceType.text,
                          onSelection: (String? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {


                              // onChange = true;
                              widget.bogoApplyingPlaceType.text = va!;
                              widget.bogoApplyingPlaceName.text ="";
                              widget.bogoApplyingPlaceCode.text = "";
                              widget.bogoApplyingPlaceId.text = "";
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
                            formatter: true,



                            controller: widget.geCount, title: "Get Count"),
                        SizedBox(
                          height: height * .030,
                        ),

                        FileUploadField(

                            fileName:widget.imageName.text,
                            fileUrl:widget.imageName.text,
                            onCancel: (){

                              setState(() {
                                widget.imageName.text="";
                                widget.iamge.text="";

                              });

                            },
                            onChangeTap: (p0) {

                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {



                              widget.imageName.text=myFile?.fileName??"";
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











                      ],)),
                      Expanded(child: Column(children: [

                        NewInputCard(

                            controller: widget.title, title: "Title"),
                        SizedBox(
                          height: height * .030,
                        ),

                        SelectableDropDownpopUp(
                          label: "Bogo Applying Place ",
                          type:"PromotionChannelListPopup",
                          code: widget.bogoApplyingPlaceType.text,
                          value: widget.bogoApplyingPlaceCode.text,
                          onSelection: (ChannelListModel? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {


                              // onChange = true;
                              widget.bogoApplyingPlaceName.text = va?.name??"";
                              widget.bogoApplyingPlaceCode.text = va?.channelCode??"";
                              print( widget.bogoApplyingPlaceCode.text);
                              widget.bogoApplyingPlaceId.text = va?.id.toString()??"";
                            });
                          },
                        ),

                        SizedBox(
                          height: height * .030,
                        ),


                        SelectableDropDownpopUp(
                          label: "Bogo Applying On",
                          type:"PromotionBogoApplyingOnTypePopup",
                          value: widget.bogoApplyingOn.text,
                          onSelection: (String? va) {

                            setState(() {
                              // onChange = true;
                              widget.bogoApplyingOn.text = va!;
                              widget.bogoApplyingNameCode.text="";
                              widget.bogoApplyingName.text="";
                              widget.bogoApplyingNameId.text="";
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

                            controller: widget.maximumCount, title: "Maximum Count "),


                        // PopUpSwitchTile(
                        //     value:widget?. isAvailableforAll??false,
                        //     title: "Is Available For All",
                        //     onClick: (gg) {
                        //       bool val=widget. isAvailableforAll;
                        //       val=!val;
                        //       print(val);
                        //       widget.activeChange(type:1,val:val);
                        //
                        //
                        //
                        //
                        //
                        //       setState(() {});
                        //     }),



                        // PopUpSwitchTile(
                        //     value:widget.select?true:widget?. isActive??false,
                        //     title: "Is Active",
                        //     onClick: (gg) {
                        //       if(widget.select!=true) {
                        //         bool val = widget.isActive;
                        //         val = !val;
                        //         widget.activeChange(type: 2, val: val);
                        //         setState(() {});
                        //       } }),

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
















                      ],)),


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
                              formatter: true,
                              ontap: (){
                                showDailogPopUp(
                                  context,
                                  ConfigurePopup(
                                    // code: widget.veritiacalCode,
                                    passingList: [],
                                    listAssign: (){},
                                    type: "CustomGroupLinkedItem",
                                  ),
                                );
                              },

                              controller: widget.availableCustomer, title: "Available Customer Groups"),
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
                                widget.activeChange(type: 2, val: val);
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