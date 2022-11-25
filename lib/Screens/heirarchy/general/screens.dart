import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';

import '../../../core/uttils/variable.dart';
import 'cubits/createbrand/createbrand_cubit.dart';
import 'cubits/imagepost/imagepost_cubit.dart';

class HeirarchySalesStableTable extends StatefulWidget {
  final TextEditingController uomGroupController;
  final TextEditingController uomGroupNameController;
  final TextEditingController uomController;
  final TextEditingController baseuomNameController;
  final TextEditingController itemCode;
  final TextEditingController itemName;
  final TextEditingController searchName;
  final TextEditingController displayName;
  final TextEditingController discription;
  final TextEditingController oldSystemCode;
  final TextEditingController status;
  final TextEditingController image1;
  final TextEditingController image2;
  final TextEditingController image3;
  final TextEditingController itemCatelog1;
  final TextEditingController itemCatelog2;
  final TextEditingController itemCatelog3;
  final TextEditingController itemCatelog4;
  final TextEditingController itemCatelog5;
  final int? uomGroupid;
  final bool active;
  final Function activeChange;
  final Function({String type}) imagePostCheck;

  HeirarchySalesStableTable({
    required this.baseuomNameController,
    required this.uomGroupid,
    required this.uomGroupNameController,
    required this.uomGroupController,
    required this.uomController,
    required this.itemCode,
    required this.itemName,
    required this.searchName,
    required this.displayName,
    required this.discription,
    required this.oldSystemCode,
    required this.status,
    required this.active,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.itemCatelog1,
    required this.itemCatelog2,
    required this.itemCatelog3,
    required this.itemCatelog4,
    required this.itemCatelog5,
    required this. activeChange,
    required this. imagePostCheck,


  });
  @override
  _HeirarchySalesStableTableState createState() => _HeirarchySalesStableTableState();
}

class _HeirarchySalesStableTableState extends State<HeirarchySalesStableTable> {
  TextEditingController  controller=TextEditingController();
  TextEditingController  codecontroller=TextEditingController();
  TextEditingController  namecontroller=TextEditingController();
  TextEditingController  imagecontroller=TextEditingController();
  TextEditingController  parentIdcontroller=TextEditingController();
  TextEditingController  descriptioncontroller=TextEditingController();
  TextEditingController  brandIdentifiercontroller=TextEditingController();
  TextEditingController  brandcontroller=TextEditingController();
  String imageName1="";
  String imageName2="";
  String imageName3="";
  String imageName4="";
  String imageName5="";
  String imageName6="";
  String imageName7="";
  String imageName8="";
  String imageEncode="";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
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
                        print("datAnvatrrr"+data.data2.toString());


                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),
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
                        context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),

              ],
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Column(
                          children: [

                            NewInputCard(
                                readOnly: true,
                                controller: widget.itemCode,
                                title: "Item Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: widget.itemName, title: "Item Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: widget.searchName, title: "Search Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: widget.displayName, title: "Display Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                height: 90,
                                maxLines: 3,
                                controller: widget.discription, title: "Description"),
                            SizedBox(
                              height: height * .030,
                            ),

                            SizedBox(
                              height: height * .080,
                            ),



                          ],
                        )),
                        Expanded(child: Column(children: [


                          NewInputCard(
                              controller: widget.oldSystemCode, title: "Old System Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(controller: widget.uomGroupNameController,
                            icondrop:true,title: "Uom Group",ontap: (){
                            showDailogPopUp(
                              context,
                              TableConfigurePopup(
                                type: "UomGroupTabalePopup", valueSelect: (BrandListModel va){

                                setState(() {



                                  widget.uomGroupController.text=va?.code??"";
                                  widget.uomGroupNameController.text=va?.name??"";
                                  Variable.uomGroupId=va?.id;
                                  setState(() {

                                  });


                                  // onChange = true;
                                  // orderType.text = va!;
                                });

                              },
                              ),


                            );

                          },),
                          // SelectableDropDownpopUp(
                          //
                          //   controller:widget.uomGroupNameController,
                          //   label: "Uom Group",
                          //   type:"Uomgroup_PopUpCall",
                          //   value:  widget.uomGroupNameController.text,
                          //   onchange: (vale){
                          //     print("Akkk"+vale.toString());
                          //     context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                          //   },
                          //   enable: true,
                          //   onSelection: (BrandListModel? va) {
                          //     setState(() {
                          //       widget.uomGroupController.text=va?.code??"";
                          //     widget.uomGroupNameController.text=va?.name??"";
                          //     Variable.uomGroupId=va?.id;
                          //
                          //
                          //     });
                          //
                          //
                          //
                          //
                          //
                          //
                          //
                          //
                          //       // onChange = true;
                          //       // orderType.text = va!;
                          //
                          //   },
                          //   onAddNew: () {
                          //
                          //     showDailogPopUp(
                          //       context,
                          //       ConfigurePopup(
                          //         type: "uomgroup",
                          //
                          //       ),
                          //
                          //
                          //     );
                          //   },
                          // ),
                          SizedBox(
                            height: height * .030,
                          ),



                          NewInputCard(controller: widget.baseuomNameController,
                            icondrop:true,
                            title: "Base UOM",ontap: (){
                            showDailogPopUp(
                              context,
                              TableConfigurePopup(
                                type: "baseUomTabalePopup", valueSelect: (BrandListModel va){

                                setState(() {
                                  print(va?.uomCode);
                                  print(va);



                                  widget.uomController.text=va?.uomCode??"";
                                  widget.baseuomNameController.text=va?.name??"";
                                  setState(() {

                                  });


                                  // onChange = true;
                                  // orderType.text = va!;
                                });

                              },
                              ),


                            );

                          },),
                          // SelectableDropDownpopUp(
                          //
                          //   controller:widget.baseuomNameController,
                          //   label: "base uom",
                          //   type:"Uom_PopUpCall",
                          //   value:  widget.baseuomNameController.text,
                          //   onchange: (vale){
                          //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                          //   },
                          //   enable: true,
                          //   onSelection: (BrandListModel? va) {
                          //     setState(() {
                          //
                          //       widget.uomController.text=va?.uomCode??"";
                          //       widget.baseuomNameController.text=va?.name??"";
                          //       setState(() {
                          //
                          //       });
                          //
                          //
                          //       // onChange = true;
                          //       // orderType.text = va!;
                          //     });
                          //   },
                          //   onAddNew: () {
                          //
                          //     showDailogPopUp(
                          //       context,
                          //       ConfigurePopup(
                          //         type: "base_uom",
                          //       ),
                          //
                          //
                          //     );
                          //   },
                          // ),
                          SizedBox(
                            height: height * .030,
                          ),
                          PopUpSwitchTile(
                              value:widget. active??false,
                              title: "Is Active",
                              onClick: (gg) {
                                widget.activeChange(!widget.active);





                                // extendedWarranty = gg;
                                // widget.changeExtendedWarranty(gg);
                                // onChangeExtWarranty = gg;
                                setState(() {});
                              }),

                          SizedBox(
                            height: height * .030,
                          ),
                          // NewInputCard(
                          //   controller: widget.status, title: "Status", ),
                          // SizedBox(
                          //   height: height * .045,
                          // ),
                          FileUploadField(

                              fileName:widget.image1.text,
                              fileUrl:widget.image1.text,
                              onCancel: (){

                                setState(() {
                                  widget.image1.clear();
                                });

                              },
                              onChangeTap: (p0) {

                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "1");


                                widget.image1.text=myFile?.fileName??"";
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
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image1");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Image"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:widget.image2.text,
                              fileUrl:widget.image2.text,
                              onCancel: (){

                                setState(() {
                                  widget.image2.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "2");
                                widget.image2.text=myFile?.fileName??"";
                                // Variable.mobileBannerImage = myFile.toUint8List();
                                var   imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image2");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Image2"),



                          SizedBox(
                            height: height * .145,

                          ),
                          // SizedBox(
                          //   height:height*.034,
                          //
                          // ),


                        ],)),
                        Expanded(child: Column(children: [



                          FileUploadField(
                              fileName: widget.image3.text,
                              fileUrl:widget.image3.text,
                              onCancel: (){

                                setState(() {
                                  widget.image3.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "3");
                                widget.image3.text=myFile?.fileName??"";
                                var    imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.mobileBannerImage = myFile.toUint8List();

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image3");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Image3"),


                          SizedBox(
                            height: height * .030,
                          ),

                          FileUploadField(
                              fileName: widget.itemCatelog1.text,
                              fileUrl:widget.itemCatelog1.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog1.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "4");
                                widget.itemCatelog1.text=myFile?.fileName??"";
                                // Variable.mobileBannerImage = myFile.toUint8List();
                                var imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)



                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image4");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Item Catalog1"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.itemCatelog2.text,
                              fileUrl:widget.itemCatelog2.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog2.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "5");
                                widget.itemCatelog2.text=myFile?.fileName??"";
                                var     imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.mobileBannerImage = myFile.toUint8List();

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image5");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Item Catalog2"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:  widget.itemCatelog3.text,
                              fileUrl:widget.itemCatelog3.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog3.clear();
                                });

                              },

                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "6");
                                widget.itemCatelog3.text=myFile?.fileName??"";
                                var   imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.mobileBannerImage = myFile.toUint8List();

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image6");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Item Catalog3"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:  widget.itemCatelog4.text,
                              fileUrl: widget.itemCatelog4.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog4.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.imagePostCheck(type: "7");
                                widget.itemCatelog4.text=myFile?.fileName??"";
                                var  imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.mobileBannerImage = myFile.toUint8List();

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image7");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item Catalog4"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.itemCatelog5.text,
                              fileUrl:widget.itemCatelog5.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog5.clear();
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
                                widget.itemCatelog5.text=myFile?.fileName??"";
                                var     imageEncode =
                                myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)

                                // Variable.mobileBannerImage = myFile.toUint8List();

                                // Variable.bannerEncodedMobileBannerImage =
                                //     myFile.toBase64();
                                // widget.fileMobileNameCtrl.text =
                                //     myFile.fileName ?? "";
                                // if (Variable.bannerimage!.length <= 240000)
                                //   context
                                //       .read<CreateWebImageCubit>()
                                //       .createMobImage();
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // Variable.popUp = false;

                                if (newFile.length <= 150000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image8");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 150kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Item Catalog5"),
                          SizedBox(
                            height: height * .097,
                          ),

                        ],))

                      ],
                    ),
                  ),


                ],
              ),
            );
          }
      );
  }
}



class TableBottom extends StatefulWidget {
  final bool select;
  final TextEditingController barCode;
  final TextEditingController qrCode;
  final TextEditingController rfId;
  TableBottom({required this.barCode,required this.qrCode,required this.rfId,required this.select});

  @override
  _TableBottomState createState() => _TableBottomState();
}

class _TableBottomState extends State<TableBottom> {
  bool isTableReaD=false;

  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return   Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [

              Expanded(
                child: Column(

                  children: [
                    NewInputCard(
                      formatter: true,
                        readOnly: widget.select?false:true,
                        controller: widget.barCode, title: "Barcode"),
                  ],
                ),
              ),

              Expanded(

                child: Column(
                  children: [
                    NewInputCard(
                      height: 77,
                        controller: widget.qrCode, title: "Qr Code"),
                  ],
                ),
              ),

              // Expanded(
              //   child: Column(
              //     children: [
              //       NewInputCard(
              //           controller: widget.rfId, title: "RF Id"),
              //     ],
              //   ),
              // ),
            ],
          ),


          Container(height: h/20,color: Colors.white,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     TextWidget(text: "Alternative list"),
          //
          //   ],
          // ),
          // Container(height: h/35,color: Colors.white,),
          // Container(
          //   width: 2200,
          //   margin: EdgeInsets.symmetric(horizontal: w*.02),
          //   child: customTable(
          //
          //     border: const TableBorder(
          //
          //       verticalInside: BorderSide(
          //           width:.5,
          //           color: Colors.black45,
          //           style: BorderStyle.solid),
          //       horizontalInside: BorderSide(
          //           width:.3,
          //           color: Colors.black45,
          //           // color: Colors.blue,
          //           style: BorderStyle.solid),),
          //
          //     tableWidth: .5,
          //
          //     childrens:[
          //       TableRow(
          //
          //         // decoration: BoxDecoration(
          //
          //         //     color: Colors.green.shade200,
          //
          //         //     shape: BoxShape.rectangle,
          //
          //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
          //
          //         children: [
          //
          //           tableHeadtext(
          //
          //             'ID',
          //
          //             padding: EdgeInsets.all(7),
          //
          //             height: 46,
          //             textColor: Colors.black,
          //             color: Color(0xffE5E5E5),
          //
          //             size: 13,
          //
          //
          //           ),
          //
          //
          //           tableHeadtext(
          //             'Alternative Barcode',
          //             textColor: Colors.black,
          //             padding: EdgeInsets.all(7),
          //             height: 46,
          //             size: 13,
          //             color: Color(0xffE5E5E5),
          //           ),
          //           tableHeadtext(
          //             'Alternative QR code',
          //             textColor: Colors.black,
          //             padding: EdgeInsets.all(7),
          //             height: 46,
          //             size: 13,
          //             color: Color(0xffE5E5E5),
          //           ),
          //           tableHeadtext(
          //             'Alternative RF ID',
          //             textColor: Colors.black,
          //             padding: EdgeInsets.all(7),
          //             height: 46,
          //             size: 13,
          //             color: Color(0xffE5E5E5),
          //           ),
          //
          //
          //         ],
          //
          //       ),
          //       TableRow(
          //           decoration: BoxDecoration(
          //               color: Colors.grey
          //                   .shade200,
          //               shape: BoxShape
          //                   .rectangle,
          //               border:const  Border(
          //                   left: BorderSide(
          //                       width: .5,
          //                       color: Colors
          //                           .grey,
          //                       style: BorderStyle
          //                           .solid),
          //                   bottom: BorderSide(
          //                       width: .5,
          //                       color: Colors
          //                           .grey,
          //                       style: BorderStyle
          //                           .solid),
          //                   right: BorderSide(
          //                       color: Colors
          //                           .grey,
          //                       width: .5,
          //                       style: BorderStyle
          //                           .solid))),
          //           children: [
          //             TableCell(
          //               verticalAlignment: TableCellVerticalAlignment.middle,
          //
          //               child:   CheckedBoxs(
          //                   valueChanger: true,
          //                   onSelection:(va){
          //
          //                   }
          //
          //               ),),
          //             TableCell(
          //               verticalAlignment: TableCellVerticalAlignment.middle,
          //
          //               child:   Text("32/Xl"
          //
          //
          //               ),),
          //             TableCell(
          //               verticalAlignment: TableCellVerticalAlignment.middle,
          //
          //               child:   Text("32/Xl"
          //
          //
          //               ),),
          //             TableCell(
          //               verticalAlignment: TableCellVerticalAlignment.middle,
          //
          //               child:   Text("32/Xl"
          //
          //
          //               ),),
          //
          //           ]),
          //
          //
          //     ],
          //
          //   ),
          //
          //
          // ),
        ],
      ),
    )
    ;
  }
}



class VariantFrameWorkBottomTable extends StatefulWidget {
  final  Function listAssign;
  List<VariantLinesLiostModel>table;

  VariantFrameWorkBottomTable({required this.listAssign,required this.table});
  @override
  VariantFrameWorkBottomTableState createState() => VariantFrameWorkBottomTableState();
}

class VariantFrameWorkBottomTableState extends State<VariantFrameWorkBottomTable> {
  bool isTableRead=false;
  List<VariantLinesLiostModel>table=[];
  TextEditingController name=TextEditingController();
  TextEditingController type=TextEditingController();
  TextEditingController val=TextEditingController();
  List<TextEditingController>valuesTexgtEdingList=[];
  int ? attributeid;
  bool onChange=false;

  List<String>values=[];
  List<String>values1=[];

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(onChange==false){
      table=[];
      values1=[];

        table=widget.table;
        if(table.isNotEmpty){
          for(var i =0;i<table.length;i++){
            values1.add("");}
          print("values1"+values1.toString());
          print("length"+values1.length.toString());

          for(var i =0;i<table.length;i++){




          if(table[i].values?.isNotEmpty==true) {
            if (table[i].values?.isNotEmpty==true) {
              print("not empty");
              String str = "";
              for (var j = 0; j < table[i].values!.length; j++) {
                String value = table[i].values![j];
                str = str + " " + value.toString();
                print("str" + str.toString());
              }
              values1[i] = str.isEmpty ? "" : str;
              print("values1" + values1.toString());
            }
            else {
              print("eeeeeekkk");
              values1[i] = "no value";
              print(values1);
            }
          }

          }
        }
        print("tablesssssssssssss"+table.toString());
        print("tablesssssssssssss"+values1.toString());


      }

    onChange=false;
    return
      SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
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

                    'Variant Name',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),
                  tableHeadtext(

                    'Type',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),
                  tableHeadtext(

                    'Values',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),


                  tableHeadtext(

                    'Action',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),





                ],

              ),
              if (table.isNotEmpty==true ) ...[


                for (var i = 0; i < table.length; i++)
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

                            child:textPadding(table[i].name??"")



                        ),
                 TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding(table[i].type??"")



                        ),





                     values1.isNotEmpty?   TableCell(

                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding(values1?[i]??"")

   //                          SingleChildScrollView(
   //  scrollDirection: Axis.horizontal,
   //
   //  child: Container(
   //    color: Colors.green,
   //  width: 230,
   //  // // height: 40,
   //  child: Wrap(
   //  direction : Axis.horizontal,
   //  children: [
   //  if (values?.isNotEmpty==true )
   //
   //
   //  for (var k = 0; i < values!.length; k++)...[
   //
   //  Container(
   //    color: Colors.yellow,
   //  // height: 30,
   //  width: 50,
   //  child: UnderLinedInput(
   //  formatter: false,
   //  initialCheck: true,
   //  last: "5",
   //  onChanged: (va){
   //  print(va);
   //
   //  setState(() {
   // // t values[i]=va;
   //  });
   //
   //  },
   //  ),
   //  ),
   //
   //  ] ,
   //
   //  ],
   //  ),
   //  ),
   //  ),
                        ):textPadding(""),
   //                          // Container(
   //                          //   width: 230,
   //                          //   child:
   //                          //   // Text("ak"),
   //                          //   Row(
   //                          //     children: [
   //                          //       if (table[i]?.values?.isNotEmpty==true ) ...[
   //                          //
   //                          //
   //                          //         for (var k = 0; i < 3; k++)
   //                          //           Container(
   //                          //             height: 15,
   //                          //               width: 10,
   //                          //               color: Colors.red,
   //                          //               child:textPadding(table[i]?.values?[2].toString()??"")
   //                          //           ),
   //                          //
   //                          //       ],
   //                          //       // Expanded(child:UnderLinedInput(
   //                          //       //   formatter: false,
   //                          //       //   controller: val,
   //                          //       //   onComplete: (){
   //                          //       //     setState(() {
   //                          //       //       values.add(val.text);
   //                          //       //     });
   //                          //       //   },
   //                          //       // )),
   //                          //     ],
   //                          //   ),
   //                          // )
   //
   //
   //
   //                      ),
                        TableTextButton(
                          label: "",
                          // actionCheck: true,
                          designCheck: true,
                          onPress: (){
                            setState(() {
                            // table.remove(value)
                            });





                          },

                        )




                      ]),],
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
                      child: PopUpCall(

    type: "attribute_list",
    value: name.text,
    onSelection:
    (AttributeListModel? va) {



    setState(() {
      onChange=true;
      name.text=va?.attributeName??"";
      type.text=va?.attributeType??"";
      attributeid=va?.id;


    // orderType = va!;
    });
    },
    ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:UnderLinedInput(
                        controller: type,
                        formatter: false,
                        onChanged: (va){
                          print(va);
                          // name.text=va;
                          // setState(() {
                          //
                          // });

                        },
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:

    SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Container(
        width: 230,
        // // height: 40,
        child: Wrap(
      direction : Axis.horizontal,
        children: [
      if (values.isNotEmpty==true ) ...[


        for (var i = 0; i < values.length; i++)...[

      Container(
        // height: 30,
        width: 50,
        child: UnderLinedInput(
        formatter: false,
        initialCheck: true,
        last: values[i],
        onChanged: (va){
          onChange=true;
            print(va);

            setState(() {
        values[i]=va;
            });

        },
        ),
      ),

         ] ],
      UnderLinedInput(
        formatter: false,
        controller: val,
      onComplete: (){
         setState(() {
           onChange=true;
             values.add(val.text);
             print(values.length);
             val.text='';
         });
      },
      ),
        ],
        ),
      ),
    )

                    ),
                    TableTextButton(
                      label: "",
                      actionCheck: true,
                      designCheck: true,
                      onPress: (){
                        onChange=true;
                        if(values.isNotEmpty) {
                          String str="";
                          for(var j=0;j<values.length;j++) {


                            String value = values[j].isEmpty?"": values[j];
                            str = str + " " + value.toString();
                          }
                          values1.add(str);

                        }
                        else{
                          values1.add("");
                        }
                        // setState(() {
                          table.add(VariantLinesLiostModel(name: name.text, type: type.text, values: values,attributeId: attributeid));
                          print(table.length);
                          print("the table is"+table.toString());
                           isTableRead=true;


                          widget.listAssign(table);
                          name.text='';
                          type.text="";
                          val.text="";
                          attributeid=null;
                          values.clear();
                        // });

                        setState(() {

                        });




                      },

                    )


                  ])
            ],
            widths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(5),
              3: FlexColumnWidth(2),


            },

          ),


        ),
      );
  }
}
class VariantCreationModel{
  String name;
  String type;
  List<String>values;
  VariantCreationModel({required this.name,required this.type,required this.values});
}