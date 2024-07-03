import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';
import 'package:inventory/commonWidget/Colors.dart';
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
   int? uomGroupid;
  final bool active;
  final bool select;
  final Function activeChange;
  final Function idChange;
  final Function({String type}) imagePostCheck;

  HeirarchySalesStableTable({
    required this.baseuomNameController,
    required this.uomGroupid,
    required this.uomGroupNameController,
    required this.uomGroupController,
    required this.uomController,
    required this.itemCode,
    required this.idChange,
    required this.itemName,
    required this.searchName,
    required this.displayName,
    required this.discription,
    required this.oldSystemCode,
    required this.status,
    required this.active,
    required this.image1,
    required this.select,
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
                                controller: widget.displayName, title: "Display Name"),

                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(controller: widget.baseuomNameController,
                              icondrop:true,
                              readOnly: true,
                              title: "Base UOM",ontap: (){
                           if(widget.uomGroupid!=0){
                             if(widget.baseuomNameController.text.isNotEmpty){
                               widget.baseuomNameController.text="";
                               widget.uomController.text="";

                             }
                             else{
                               showDailogPopUp(
                                 context,
                                 TableConfigurePopup(
                                   id: widget.uomGroupid,
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
                             }
                           }else{
                             context.showSnackBarError("please select UOM Croup");
                           }

                        


                              },),

                            SizedBox(
                              height: height * .030,
                            ),
                            FileUploadField(
                                fileName: widget.image3.text,
                                fileUrl:widget.image3.text,
                                onCancel: (){

                                  setState(() {
                                    widget.image3.clear();
                                    Variable.img3=null;
                                  });

                                },
                                onChangeTap: (p0) {
                                  // loading = true;
                                  setState(() {});
                                },
                                onChange: (myFile) {

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

                                  if (newFile.length <= 200000) {
                                    context
                                        .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image3");
                                    widget.imagePostCheck(type: "3");
                                    // loading
                                    //     ? showDailogPopUp(context, DialoguePopUp())
                                    //     : Navigator.pop(context);
                                    // context
                                    //     .read<CreateWebImageCubit>()
                                    //     .createMobImage();
                                  } else{

                                    context.showSnackBarError(
                                        "Please upload Image of size Lesser than 200kb");setState(() {

                                  });}



                                },
                                onCreate: true,
                                label: "Image3"),




                            SizedBox(
                              height: height * .030,
                            ),
                            FileUploadField(
                                fileName:  widget.itemCatelog3.text,
                                fileUrl:widget.itemCatelog3.text,
                                onCancel: (){

                                  setState(() {
                                    widget.itemCatelog3.clear();
                                    Variable.img6=null;
                                  });

                                },

                                onChangeTap: (p0) {
                                  // loading = true;
                                  setState(() {});
                                },
                                onChange: (myFile) {

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

                                  if (newFile.length <= 200000) {
                                    context
                                        .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image6");
                                    widget.imagePostCheck(type: "6");
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
                                label: "Item Catalogue3"),


                            SizedBox(
                              height: height * .030,
                            ),
                            PopUpSwitchTile(
                                value:widget.select?true:widget. active,
                                title: "Is Active",
                                onClick: (gg) {
                                  widget.activeChange(!widget.active);





                                  // extendedWarranty = gg;
                                  // widget.changeExtendedWarranty(gg);
                                  // onChangeExtWarranty = gg;
                                  setState(() {});
                                }),




                            SizedBox(
                              height: height * .080,
                            ),



                          ],
                        )),
                        Expanded(child: Column(children: [
                          NewInputCard(
                              controller: widget.itemName, title: "Item Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              controller: widget.oldSystemCode, title: "Old System Code"),




                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(

                              fileName:widget.image1.text,
                              fileUrl:widget.image1.text,
                              onCancel: (){

                                setState(() {
                                  widget.image1.clear();
                                  Variable.img1=null;
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

                                if (newFile.length <= 200000) {
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
                                      "Please upload Image of size Lesser than 200kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Image"),

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
                          //f
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

                          FileUploadField(
                              fileName: widget.itemCatelog1.text,
                              fileUrl:widget.itemCatelog1.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog1.clear();
                                  Variable.img4=null;
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {

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

                                if (newFile.length <= 200000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image4");
                                  widget.imagePostCheck(type: "4");
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
                              label: "Item Catalogue1"),

                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:  widget.itemCatelog4.text,
                              fileUrl: widget.itemCatelog4.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog4.clear();
                                  Variable.img7=null;
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {

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

                                if (newFile.length <= 200000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image7");
                                  widget.imagePostCheck(type: "7");
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Iamge of size Lesser than 200kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item Catalogue4"),



                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              height: 90,
                              maxLines: 3,
                              controller: widget.discription, title: "Description"),






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
                            height: height * .038,
                          ),



                          // NewInputCard(
                          //   controller: widget.status, title: "Status", ),
                          // SizedBox(
                          //   height: height * .045,
                          // ),

                          SizedBox(
                            height: height * .030,
                          ),





                          // SizedBox(
                          //   height:height*.034,
                          //
                          // ),


                        ],)),
                        Expanded(child: Column(children: [
                          NewInputCard(
                              controller: widget.searchName, title: "Search Name"),
                          SizedBox(
                            height: height * .030,
                          ),

                          NewInputCard(controller: widget.uomGroupNameController,
                            readOnly: true,
                            icondrop:true,title: "Uom Group",ontap: (){
                              if(widget.uomGroupNameController.text.isNotEmpty){
                                widget.uomGroupNameController.text="";
                              widget.uomGroupController.text="";
                                widget.baseuomNameController.clear();
                                widget.uomController.clear();
                                widget.uomGroupid=0;

                              }
                              showDailogPopUp(
                                context,
                                TableConfigurePopup(
                                  type: "UomGroupTabalePopup", valueSelect: (BrandListModel va){

                                  setState(() {




                                    widget.uomGroupController.text=va?.code??"";
                                    widget.uomGroupNameController.text=va?.name??"";
                                    Variable.uomGroupId=va?.id;
                                    // widget.idChange(1,va?.id);
                                    widget.uomController.clear();
                                    widget.uomGroupid=va?.id;
                                    widget.baseuomNameController.clear();
                                    setState(() {

                                    });


                                    // onChange = true;
                                    // orderType.text = va!;
                                  });

                                },
                                ),


                              );

                            },),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:widget.image2.text,
                              fileUrl:widget.image2.text,
                              onCancel: (){

                                setState(() {
                                  widget.image2.clear();
                                  Variable.img2=null;
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {

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
                                  widget.imagePostCheck(type: "2");
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
                              label: "Image2"),




                          SizedBox(
                            height: height * .030,
                          ),  FileUploadField(
                              fileName: widget.itemCatelog2.text,
                              fileUrl:widget.itemCatelog2.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog2.clear();
                                  Variable.img5=null;
                                });

                              },
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {

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

                                if (newFile.length <= 200000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image5");
                                  widget.imagePostCheck(type: "5");
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
                              label: "Item Catalogue2"),





                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.itemCatelog5.text,
                              fileUrl:widget.itemCatelog5.text,
                              onCancel: (){

                                setState(() {
                                  widget.itemCatelog5.clear();
                                  Variable.img8=null;
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

                                if (newFile.length <= 200000) {
                                  context
                                      .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image8");
                                  widget.imagePostCheck(type: "8");
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
                              label: "Item Catalogue5"),


                          SizedBox(
                            height: height * .030,
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
      width: w/3,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [

              Expanded(
                child: Column(

                  children: [
                    NewInputCard(
                      // textLimit: 17,
                      formatter: false,
                        readOnly: widget.select?false:true,
                        controller: widget.barCode, title: "Barcode"),
                  ],
                ),
              ),

              // Expanded(
              //
              //   child: Column(
              //     children: [
              //       NewInputCard(
              //         height: 77,
              //           controller: widget.qrCode, title: "Qr Code"),
              //     ],
              //   ),
              // ),

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

  VariantFrameWorkBottomTable({
    required Key key,required this.listAssign,required this.table}):super(key: key);
  @override
  VariantFrameWorkBottomTableState createState() => VariantFrameWorkBottomTableState();
}

class VariantFrameWorkBottomTableState extends State<VariantFrameWorkBottomTable> {
  bool isTableRead=false;
  List<VariantLinesLiostModel>table=List.from([]);
  TextEditingController name=TextEditingController();
  TextEditingController type=TextEditingController();
  TextEditingController val=TextEditingController();
  List<TextEditingController>valuesTexgtEdingList=[];
  int ? attributeid;
  bool onChange=false;
  bool isPopup=false;

  List<String>values=List.from([]);
  List<String>values1=List.from([]);
  clears(){
    table.clear();
    values.clear();
    values1.clear();
    name.clear();
    type.clear();
    attributeid=0;
    isPopup=false;
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(onChange==false){
      table=List.from([]);
      values1=List.from([]);

        table=List.from(widget.table);
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

              values1[i] = "no value";

            }
          }

          }
        }



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



            tableWidth: .5,

            childrens:[
              TableRow(

                decoration: BoxDecoration(

                    color: Colors.green.shade200,

                    shape: BoxShape.rectangle,

                    border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [

                  tableHeadtext(

                    'Attribute Name',

                    textColor: Colors.white,


                    size: 13,


                  ),
                  tableHeadtext(

                    'Type',


                    textColor: Colors.white,


                    size: 13,


                  ),
                  tableHeadtext(

                    'Values',


                    textColor: Colors.white,


                    size: 13,


                  ),


                  tableHeadtext(

                    'Action',

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

                            child:textPadding(table[i].name??"",
                                fontSize: 12,
                                padding: EdgeInsets.only(left: 11.5, top: 1.5),

                            )



                        ),
                 TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding(table[i].type??"",
                              fontSize: 12,
                              padding: EdgeInsets.only(left: 1.5, top: 1.5),)



                        ),





                     table[i].values?.isNotEmpty==true?
                     TableCell(

                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:Wrap(
                              direction : Axis.horizontal,
                              children: [
                                if(table[i].values?.isNotEmpty==true)
                                  for(var k=0;k<=table[i].values!.length-1;k++)
                                Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.all(6),
                                // padding: EdgeInsets.all(9),
                                child: TextButton.icon(onPressed: (){
                                  print("akkkk");
                                  onChange=true
;                                 List<String> list=List.from( table[i]?.values??[]);
                                 print(list);
                                 list.removeAt(k);

                                  print(list);
                                 table[i]=table[i].copyWith(values: list);
                                 if(list.isEmpty)
                                   table.removeAt(i);
                                  print(table);
                                  widget.listAssign(table);
                                  setState(() {

                                  });


                                  print(table);
                                }, icon: Icon(Icons.clear,color: Colors.white,size: 13,), label: Text(table[i].values?[k]??"",style: TextStyle(color: Colors.white,fontSize: 13),)))






                              ],
                            )

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
                        Container(
                          height: 50 ,
                          child: TableTextButton(
                            label: "",
                            // actionCheck: true,
                            designCheck: true,
                            onPress: (){
                              setState(() {
                                onChange=true;
                              table.removeAt(i);
                              values1.removeAt(i);
                              print(table);
                              widget.listAssign(table);
                              });





                            },

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
                      child: PopUpCall(

    type: "attribute_list",
    listOfList: table,
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

                        child:textPadding(type?.text??"",
                          fontSize: 12,
                          padding: EdgeInsets.only(left: 1.5, top: 1.5),)



                    ),

                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:

    Wrap(
      crossAxisAlignment:WrapCrossAlignment.start,
    direction : Axis.horizontal,
    children: [
    if (values.isNotEmpty==true ) ...[


    for (var i = 0; i < values.length; i++)...[

    Container(
    // height: 30,
    width: 85,
    child: UnderLinedInput(
    formatter: false,
    initialCheck: true,
    last: values[i],
    onChanged: (va){
      onChange=true;
        print(va);
        va=va.replaceAll("", "");
        if(va.isNotEmpty==true){
          setState(() {
            values[i]=va;
          });
        }
        else{
          setState(() {
            values.removeAt(i);
          });

        }



    },
    ),
    ),

     ] ],
    UnderLinedInput(

    formatter: false,
    controller: val,
    onChanged: (va){
     if(isPopup==false) {
       showDailogPopUp(
           context,
           SuccessPopup(
             content: "Please press enter button after the value adding",
             // table:table,
           ));
       isPopup=true;
     }},
    onComplete: (){
     setState(() {

       onChange=true;
       if(val.text!=""){
         values.add(val.text);
         print(values.length);
         val.text='';
       }

     });
    },
    ),
    ],
    )

                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Save",
                        // actionCheck: true,
                        // designCheck: true,
                        onPress: (){
                          onChange=true;
                          if(values.isNotEmpty) {
                            String str="";
                            for(var j=0;j<values.length;j++) {


                              String value = values[j].isEmpty?"": values[j];
                              str = str + "  " + value.toString();
                            }
                            values1.add(str);

                          }
                          else{
                            values1.add("");
                          }
                          // setState(() {if(
                          if(name.text!=
                          '')
                            table.add(VariantLinesLiostModel(name: name.text, type: type.text, values: List.from(values),attributeId: attributeid));
                            print(table.length);

                             isTableRead=true;


                            widget.listAssign(table);
                            name.text='';
                            type.text="";
                            val.text="";
                            attributeid=null;
                            values.clear();
                          print("the table is"+table.toString());
                          // });

                          setState(() {

                          });




                        },

                      ),
                    )


                  ])
            ],
            widths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(1.7),
              2: FlexColumnWidth(4.6),
              3: FlexColumnWidth(1.5),


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