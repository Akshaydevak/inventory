import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../../../core/uttils/variable.dart';
import 'cubits/createbrand/createbrand_cubit.dart';
import 'cubits/imagepost/imagepost_cubit.dart';

class HeirarchySalesStableTable extends StatefulWidget {
  final TextEditingController uomGroupController;
  final TextEditingController uomController;
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
  final bool active;
  final Function activeChange;
  final Function({String type}) imagePostCheck;

  HeirarchySalesStableTable({
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
                      context.showSnackBarError("Loadingggg");
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
                      children: [
                        Expanded(child: Column(
                          children: [

                            NewInputCard(
                                readOnly: true,
                                controller: widget.itemCode,
                                title: "Item code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: widget.itemName, title: "Item name"),
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
                          SizedBox(
                            height: height * .045,
                          ),

                          NewInputCard(
                              controller: widget.oldSystemCode, title: "Old System Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(

                            controller:widget.uomGroupController,
                            label: "Uom Group",
                            type:"Uomgroup_PopUpCall",
                            value:  widget.uomGroupController.text,
                            onchange: (vale){
                              print("Akkk"+vale.toString());
                              context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.uomGroupController.text=va?.code??"";
                                Variable.uomGroupId=va?.id;
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                            onAddNew: () {

                              showDailogPopUp(
                                context,
                                ConfigurePopup(
                                  type: "uomgroup",

                                ),


                              );
                            },
                          ),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(

                            controller:widget.uomController,
                            label: "base uom",
                            type:"Uom_PopUpCall",
                            value:  widget.uomController.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.uomController.text=va?.uomCode??"";
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                            onAddNew: () {

                              showDailogPopUp(
                                context,
                                ConfigurePopup(
                                  type: "base_uom",
                                ),


                              );
                            },
                          ),
                          SizedBox(
                            height: height * .030,
                          ),
                          PopUpSwitchTile(
                              value:widget. active??false,
                              title: "isActive",
                              onClick: (gg) {
                                widget.activeChange(!widget.active);





                                // extendedWarranty = gg;
                                // widget.changeExtendedWarranty(gg);
                                // onChangeExtWarranty = gg;
                                setState(() {});
                              }),

                          SizedBox(
                            height: height * .002,
                          ),
                          NewInputCard(
                            controller: widget.status, title: "Status", ),
                          SizedBox(
                            height: height * .045,
                          ),
                          FileUploadField(

                              fileName:widget.image1.text,
                              fileUrl:widget.image1.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image1");
                                // else
                                //   context.showSnackBarError(
                                //       "Please upload Banner of size Lesser than 230kb");
                              },
                              onImageChange: (newFile) async {
                                // onChange=true;
                                // Variable.popUp = false;

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "Image"),


                          SizedBox(
                            height: height * .120,

                          ),
                          SizedBox(
                            height:height*.034,

                          ),


                        ],)),
                        Expanded(child: Column(children: [

                          SizedBox(
                            height: height * .050,
                          ),
                          FileUploadField(
                              fileName:widget.image2.text,
                              fileUrl:widget.image2.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image2");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "image2"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.image3.text,
                              fileUrl:widget.image3.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image3");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "image3"),


                          SizedBox(
                            height: height * .030,
                          ),

                          FileUploadField(
                              fileName: widget.itemCatelog1.text,
                              fileUrl:widget.itemCatelog1.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image4");


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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item catalog1"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.itemCatelog2.text,
                              fileUrl:widget.itemCatelog2.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image5");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item catalog2"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:  widget.itemCatelog3.text,
                              fileUrl:widget.itemCatelog3.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image6");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item catalog3"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName:  widget.itemCatelog4.text,
                              fileUrl: widget.itemCatelog4.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image7");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item catalog4"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: widget.itemCatelog5.text,
                              fileUrl:widget.itemCatelog5.text,
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
                                context
                                    .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image5");
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

                                if (newFile.length <= 240000) {
                                  // loading
                                  //     ? showDailogPopUp(context, DialoguePopUp())
                                  //     : Navigator.pop(context);
                                  // context
                                  //     .read<CreateWebImageCubit>()
                                  //     .createMobImage();
                                } else
                                  context.showSnackBarError(
                                      "Please upload Banner of size Lesser than 230kb");
                                setState(() {});
                              },
                              onCreate: true,
                              label: "item catalog2"),

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
  final TextEditingController barCode;
  final TextEditingController qrCode;
  final TextEditingController rfId;
  TableBottom({required this.barCode,required this.qrCode,required this.rfId});

  @override
  _TableBottomState createState() => _TableBottomState();
}

class _TableBottomState extends State<TableBottom> {
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
                        controller: widget.barCode, title: "Barcode"),
                  ],
                ),
              ),

              Expanded(

                child: Column(
                  children: [
                    NewInputCard(
                        controller: widget.qrCode, title: "Qr code"),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    NewInputCard(
                        controller: widget.rfId, title: "RF Id"),
                  ],
                ),
              ),
            ],
          ),


          Container(height: h/20,color: Colors.white,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(text: "Alternative list"),

            ],
          ),
          Container(height: h/35,color: Colors.white,),
          Container(
            width: 2200,
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

                      'ID',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.black,
                      color: Color(0xffE5E5E5),

                      size: 13,


                    ),


                    tableHeadtext(
                      'Alternative Barcode',
                      textColor: Colors.black,
                      padding: EdgeInsets.all(7),
                      height: 46,
                      size: 13,
                      color: Color(0xffE5E5E5),
                    ),
                    tableHeadtext(
                      'Alternative QR code',
                      textColor: Colors.black,
                      padding: EdgeInsets.all(7),
                      height: 46,
                      size: 13,
                      color: Color(0xffE5E5E5),
                    ),
                    tableHeadtext(
                      'Alternative RF ID',
                      textColor: Colors.black,
                      padding: EdgeInsets.all(7),
                      height: 46,
                      size: 13,
                      color: Color(0xffE5E5E5),
                    ),


                  ],

                ),
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

                        child:   CheckedBoxs(
                            valueChanger: true,
                            onSelection:(va){

                            }

                        ),),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   Text("32/Xl"


                        ),),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   Text("32/Xl"


                        ),),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   Text("32/Xl"


                        ),),

                    ]),


              ],

            ),


          ),
        ],
      ),
    )
    ;
  }
}