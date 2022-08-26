import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/branddelete/branddelete_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/brandread/brandread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createbrand/createbrand_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';

import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/searchTextfield.dart';

import '../../../commonWidget/Textwidget.dart';
import '../../../commonWidget/commonutils.dart';
import '../../../commonWidget/popupinputfield.dart';
import '../../../core/uttils/variable.dart';
import '../../../widgets/customtable.dart';
import '../../sales/general/model/customeridlistmodel.dart';
import 'cubits/baseuomlist/baseuomlist_cubit.dart';
import 'cubits/imagepost/imagepost_cubit.dart';
import 'cubits/itemverticallist/itemcreation_list_cubit.dart';
import 'cubits/listbrand2/listbrand2_cubit.dart';
import 'model/brandcreation.dart';
import 'model/listbrand.dart';

class HeirarchyGeneralScreen extends StatefulWidget {
  @override
  _HeirarchyGeneralScreenState createState() => _HeirarchyGeneralScreenState();
}

class _HeirarchyGeneralScreenState extends State<HeirarchyGeneralScreen> {
  TextEditingController controller=TextEditingController();
  TextEditingController BrandController=TextEditingController();
  TextEditingController materialController=TextEditingController();
  TextEditingController devisionController=TextEditingController();
  TextEditingController staticController=TextEditingController();
  TextEditingController categoryController=TextEditingController();
  TextEditingController uomGroupController=TextEditingController();
  TextEditingController subCategoryController=TextEditingController();
  TextEditingController uomCategoryController=TextEditingController(); int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  var list;
  @override
  void initState() {
    context.read<ItemcreationListCubit>().getItemListList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => CreatebrandCubit(),
),
    BlocProvider(
      create: (context) => Listbrand2Cubit(),
    ),



  ],
  child: BlocConsumer<ItemcreationListCubit, ItemcreationListState>(
  listener: (context, state) {
    print("state"+state.toString());
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("aaaaayyyiram"+list.data.toString());
          list=list;

          result = list.data;
          print("seee"+result.toString());
          setState(() {
            if(result.isNotEmpty){

              veritiaclid=result[0].id;
              // Variable.verticalid=result[0].id;
              print("Variable.ak"+Variable.verticalid.toString());
              // context.read<ReadbaseuomCubit>().getBaseUomRead(veritiaclid!);
            }
            else{
              print("common");
              // select=true;
              setState(() {
              });

            }


            setState(() {});

          });
        });
  },
  builder: (context, state) {
    return Builder(
    builder: (context) {
      return Scaffold(
          backgroundColor: Colors.white,
          body:SingleChildScrollView(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BaseUomVerticalList(
                    list: list,



                    selectedVertical: selectedVertical,
                    itemsearch: itemsearch,ontap: (int index){
                    setState(() {
                      selectedVertical=index;

                      // select=false;
                      // updateCheck=false;


                      veritiaclid = result[index].id;


                      // context.read<ReadbaseuomCubit>().getBaseUomRead(veritiaclid!);




                      setState(() {

                      });
                    });
                  },result: result,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeirarchySalesStableTable(
                          uomGroupController: uomGroupController,
                          uomController: uomCategoryController,

                        ),
                        ItemHeirarchyStableTable(
                          brand: BrandController,
                          division: devisionController,
                          material: materialController,
                          static: staticController,
                          category:categoryController,
                          subCategory:subCategoryController ,

                        ),
                        Row(children: [
                          TextWidget(text: "Identification"),
                        ],),
                        Divider(color: Colors.grey,thickness: 2,),
                        Container(height: h/15,color: Colors.white,),
                        TableBottom(),
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

                ],
              ),
            ),
          ) ,
        );
    }
  );
  },
),
);
  }
}
class HeirarchySalesStableTable extends StatefulWidget {
  final TextEditingController uomGroupController;
  final TextEditingController uomController;
  // final TextEditingController material;
  // final TextEditingController division;
  // final TextEditingController static;
  // final TextEditingController invoiceDate;
  // final TextEditingController paymentId;
  // final TextEditingController paymentStatus;
  // final TextEditingController paymentMethod;
  // final TextEditingController customerId;
  // final TextEditingController trn;
  // final TextEditingController orderStatus;
  // final TextEditingController invoiceStatus;
  // final TextEditingController assignedto;
  // final TextEditingController note;
  // final TextEditingController remarks;
  // final TextEditingController unitCost;
  // final TextEditingController discount;
  // final TextEditingController excise;
  // final TextEditingController taxable;
  // final TextEditingController vat;
  // final TextEditingController sellingPrice;
  // final TextEditingController totalPrice;
  HeirarchySalesStableTable({
    required this.uomGroupController,
    required this.uomController,


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
  final GlobalKey< _CreateBrandPopUpState> _myWidgetState = GlobalKey< _CreateBrandPopUpState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
            builder: (context) {
              return MultiBlocListener(
      listeners: [
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
                                controller: controller,
                                 title: "Item code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: controller, title: "Item name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: controller, title: "Search Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                controller: controller, title: "Display Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              height: 90,
                              maxLines: 3,
                                controller: controller, title: "Description"),
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
                              controller: controller, title: "Old System Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(

                            controller:widget.uomGroupController,
                            label: "Uom Group",
                            type:"Uomgroup_PopUpCall",
                            value:  widget.uomGroupController.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.uomGroupController.text=va?.name??"";
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

                                widget.uomController.text=va?.name??"";
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
                          NewInputCard(
                              controller: controller, title: "Active"),
                          SizedBox(
                            height: height * .002,
                          ),
                          NewInputCard(
                            controller: controller, title: "Status", ),
                          SizedBox(
                            height: height * .045,
                          ),

                          FileUploadField(
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              label: "image1"),
                          SizedBox(
                            height: height * .120,

                          ),


                        ],)),
                        Expanded(child: Column(children: [

                          SizedBox(
                            height: height * .050,
                          ),
                          FileUploadField(
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              label: "image2"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              label: "item catalog1"),
                          SizedBox(
                            height: height * .030,
                          ),
                          FileUploadField(
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              fileName: controller.text,
                              fileUrl:controller.text,
                              onChangeTap: (p0) {
                                // loading = true;
                                setState(() {});
                              },
                              onChange: (myFile) {
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
                              fileName: controller.text,
                              fileUrl:controller.text,
                              // onChangeTap: (p0) {
                              //   // loading = true;
                              //   setState(() {});
                              // },
                              onChange: (myFile) {
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
                              // onImageChange: (newFile) async {
                              //   // Variable.popUp = false;
                              //
                              //   if (newFile.length <= 240000) {
                              //     // loading
                              //     //     ? showDailogPopUp(context, DialoguePopUp())
                              //     //     : Navigator.pop(context);
                              //     // context
                              //     //     .read<CreateWebImageCubit>()
                              //     //     .createMobImage();
                              //   } else
                              //     context.showSnackBarError(
                              //         "Please upload Banner of size Lesser than 230kb");
                              //   setState(() {});
                              // },
                              onCreate: true,
                              label: "item catalog5"),
                          SizedBox(
                            height: height * .030,
                          ),
                        ],))

                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Item heirarchy",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),
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
  @override
  _TableBottomState createState() => _TableBottomState();
}

class _TableBottomState extends State<TableBottom> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
     return   Container(
      color: Colors.white,
        child: Row(
          children: [

            Expanded(
              child: Column(
                
                children: [
                  NewInputCard(
                      controller: controller, title: "Barcode"),
                ],
              ),
            ),
           
            Expanded(
              
              child: Column(
                children: [
                  NewInputCard(
                      controller: controller, title: "Qr code"),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  NewInputCard(
                      controller: controller, title: "RF Id"),
                ],
              ),
            ),
          ],
        ),
      )
      ;
  }
}





class ItemHeirarchyStableTable extends StatefulWidget {

  final TextEditingController brand;
  final TextEditingController material;
  final TextEditingController division;
  final TextEditingController static;
  final TextEditingController category;
  final TextEditingController subCategory;

  ItemHeirarchyStableTable({required this.brand,
    required this.material,
    required this.division,
    required this.static,
    required this.category,
    required this.subCategory,

  });
  @override
  _ItemHeirarchyStableTableState createState() => _ItemHeirarchyStableTableState();
}

class _ItemHeirarchyStableTableState extends State<ItemHeirarchyStableTable> {
  TextEditingController  controller=TextEditingController();
  TextEditingController  codecontroller=TextEditingController();
  TextEditingController  namecontroller=TextEditingController();
  TextEditingController  imagecontroller=TextEditingController();
  TextEditingController  parentIdcontroller=TextEditingController();
  TextEditingController  descriptioncontroller=TextEditingController();
  TextEditingController  brandIdentifiercontroller=TextEditingController();
  TextEditingController  brandcontroller=TextEditingController();
  int?  divisionid;
  final GlobalKey< _CreateBrandPopUpState> _myWidgetState = GlobalKey< _CreateBrandPopUpState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Expanded(child: Column(children: [

            SizedBox(
              height: height * .030,
            ),
            SelectableDropDownpopUp(
              controller:widget.division,
              label: "Division",
              type:"DivisionListPopUpCall",
              value:  widget.division.text,
              onchange: (vale){
                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              },
              enable: true,
              onSelection: (BrandListModel? va) {
                setState(() {


                  print(va?.id??"");
                  divisionid=va?.id;
                  Variable.divisionId=va?.id;

                  widget.division.text=va?.name??"";
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
                    type: "devision-group",
                  ),


                );
              },
            ),
            SizedBox(
              height: height * .030,
            ),
            SelectableDropDownpopUp(
              id:divisionid,
              controller:widget.category,
              label: "category",
              type:"Category_PopUpCall",
              value:  widget.category.text,
              onchange: (vale){
                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              },
              enable: true,
              onSelection: (BrandListModel? va) {
                setState(() {

                  widget.category.text=va?.name??"";
                  Variable.categoryId=va?.id;
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
                    type: "category_group",
                  ),


                );
              },
            ),
            SizedBox(
              height: height * .030,
            ),





      SelectableDropDownpopUp(
      id:divisionid,
      controller:widget.subCategory,
      label: "Sub category",
      type:"SubCategory_PopUpCall",
      value:  widget.subCategory.text,
      onchange: (vale){
        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
      },
      enable: true,
      onSelection: (BrandListModel? va) {
        setState(() {

          widget.subCategory.text=va?.name??"";
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
            type: "category_group",
          ),


        );
      },
    ),
    SizedBox(
    height: height * .030,
    ),
            SizedBox(
              height: height * .030,
            ),

          ],)),
          Expanded(child: Column(children: [

            SelectableDropDownpopUp(

            controller:widget.category,
            label: "Group",
            type:"Group_PopUpCall",
            value:  widget.category.text,
            onchange: (vale){
              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
            },
            enable: true,
            onSelection: (BrandListModel? va) {
              setState(() {

                widget.category.text=va?.name??"";
                Variable.categoryId=va?.id;
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
                  type: "Group_PopUp",
                ),


              );
            },
          ),
            SizedBox(
              height: height * .030,
            ),
            SelectableDropDownpopUp(
              controller:widget.material,
              label: "Material",
              type:"MaterialPopUpCall",
              value:  widget.material.text,
              onchange: (vale){
                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              },
              enable: true,
              onSelection: (BrandListModel? va) {
                setState(() {

                  widget.material.text=va?.name??"";
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
                    type: "uom-group",
                  ),


                );
              },
            ),

            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: controller, title: "Variant Frame work"),




          ],)),
          Expanded(child: Column(children: [

            SelectableDropDownpopUp(
              bindType: "static",
              controller:widget.static,
              label: "Static Group",
              type:"StaticListPopUpCall",
              value:  widget.static.text,
              onchange: (vale){
                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              },
              enable: true,
              onSelection: (BrandListModel? va) {
                setState(() {

                  widget.static.text=va?.name??"";
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
                    type: "Static-group",
                  ),


                );
              },
            ),
            SizedBox(
              height: height * .030,
            ),
            GestureDetector(
              onTap: (){
                showDailogPopUp(
                  context,
                  BlockPageIdTable(
                    onApply: (int? a,String? b){},
                  ),);

              },
              child: NewInputCard(
                  controller: controller, title: "Brand"),
            ),

            SelectableDropDownpopUp(
              controller:widget.brand,
              label: "Brand",
              type:"BrandPopUpCall",
              value:  widget.brand.text,
              onchange: (vale){
                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              },
              enable: true,
              onSelection: (BrandListModel? va) {
                setState(() {

                  widget.brand.text=va?.name??"";
                  setState(() {

                  });


                  // onChange = true;
                  // orderType.text = va!;
                });
              },
              onAddNew: () {

                showDailogPopUp(
                    context,
                    // ConfigurePopup(
                    //   type: "uom-group",
                    // )

                    CreateBrandPopUp(
                      key: _myWidgetState,
                      brandIdentifierUrl: brandIdentifiercontroller,
                      codeController: codecontroller,
                      descriptionController: descriptioncontroller,
                      imageController: imagecontroller,
                      nameController: namecontroller,
                      parentIdController: parentIdcontroller,
                      onTap: (){
                        BrandCreationtModel model=BrandCreationtModel(
                          name: namecontroller?.text??"",
                          description: descriptioncontroller?.text??"",
                          image:int.tryParse( imagecontroller.text),
                          brandIdentifierUrl: brandIdentifiercontroller?.text??"",
                          parentCode: parentIdcontroller.text??"",
                        );

                        context
                            .read<CreatebrandCubit>()
                            .postCreateBrand(model);
                        Navigator.pop(context);
                        _myWidgetState?.currentState?.clear();

                      },






                    )
                );
              },
            ),
            SizedBox(
              height: height * .099,
            ),


          ],)),
        ],
      ),
    );
  }
}








class CreateBrandPopUp extends StatefulWidget {
   TextEditingController codeController;
   TextEditingController nameController;
   TextEditingController imageController;
   TextEditingController parentIdController;
   TextEditingController descriptionController;
   TextEditingController brandIdentifierUrl;
  final Function onTap;
  // final TextEditingController country;
  // final TextEditingController gender;
  // final TextEditingController accesssite;
  // final TextEditingController buisnessuser;
  // final TextEditingController taxid;
  // final TextEditingController buisnessmode;
  // final TextEditingController buisnessname;
  // final TextEditingController designation;
  // final Function ontap;

    CreateBrandPopUp({
    Key? key,
    required this.onTap,
    required this.codeController,
    required this.nameController,
    required this.imageController,
    required this.parentIdController,
    required this.descriptionController,
    required this.brandIdentifierUrl,


  }) : super(key: key);

  @override
  _CreateBrandPopUpState createState() => _CreateBrandPopUpState();
}

class _CreateBrandPopUpState extends State<CreateBrandPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  BrandReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";

  TextEditingController controller=TextEditingController();
  bool addNew = false;
  void changeAddNew(bool va) => addNew = va;
  clear(){
    imageName='';
    imageEncode="";
    parentName="";
    widget.codeController.text="";
    widget.nameController.text="";
    widget.imageController.text="";
    widget.parentIdController.text="";
    widget.descriptionController.text="";
    widget.brandIdentifierUrl.text="";
    setState(() {
    });
  }
  void initState() {
    context
        .read<Listbrand2Cubit>()
        .getSlotSectionPage();


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
      create: (context) => BrandreadCubit(),
    ),
    BlocProvider(
      create: (context) => BranddeleteCubit(),
    ),
    BlocProvider(
      create: (context) => CreatebrandCubit(),
    ),

  ],
  child: Builder(
      builder: (context) {
        return MultiBlocListener(
        listeners: [
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
          BlocListener<BrandreadCubit, BrandreadState>(
            listener: (context, state) {
              print("nnnnop"+state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (data) {
                    setState(() {
                      group=data;
                      widget.codeController.text=data.code??"";
                      widget.nameController.text=data.name??"";
                      widget.nameController.text=data.name??"";
                      widget.imageController.text=data.image??"";
                      widget.parentIdController.text=data.parentCode??"";
                      widget.descriptionController.text=data.description??"";
                      widget.brandIdentifierUrl.text=data.brandIdentifierUrl??"";
                      parentName=data.parentCode??"";
                      active=data.isActive??false;

                    });
                  });



            },
          ),
          BlocListener<BranddeleteCubit, BranddeleteState>(
            listener: (context, state) {

              state.maybeWhen(orElse: () {
                // context.
                context.showSnackBarError("Loadingggg");
              }, error: () {
                context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                print("checkingdata"+data.data1.toString());
                if (data.data1) {
                  context.showSnackBarSuccess(data.data2);
                  context
                      .read<Listbrand2Cubit>()
                      .getSlotSectionPage();
                  clear();

                  // select = true;
                }

                else {
                  context.showSnackBarError(data.data2);
                  print(data.data1);
                }
                ;
              });
            },
          ),
          BlocListener<ImagepostCubit, ImagepostState>(
        listener: (context, state) {
          print("postssssssss" + state.toString());
          state.maybeWhen(orElse: () {
            // context.
            context.showSnackBarError("Loadingggg");
          }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {
            if (data.data1) {
              print("dataAkshay"+data.data2.toString());
              widget.imageController.text=data.data2.toString();
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

        ],
        child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
        listener: (context, state) {
          print("state"+state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("aaaaayyyiram"+list.data.toString());

                result = list.data;
                setState(() {
                  if(result.isNotEmpty){
                    veritiaclid=result[0].id;
                    Variable.verticalid=result[0].id;
                    print("Variable.ak"+Variable.verticalid.toString());
                    context.read<BrandreadCubit>().getBrandRead(veritiaclid!);
                  }
                  else{
                    print("common");
                    // select=true;
                    setState(() {
                    });

                  }


                  setState(() {});

                });
              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {

            if (!onChange) {

              widget.nameController =
                  TextEditingController(text: addNew ? "" : group?.name);
              widget.codeController = TextEditingController(
                  text: addNew ? "" : group?.id.toString());
              widget.descriptionController =
                  TextEditingController(text: addNew ? "" : group?.description);
              widget.imageController = TextEditingController(text: addNew ? "" : group?.image);
              widget.brandIdentifierUrl = TextEditingController(text: addNew ? "" : group?.brandIdentifierUrl);
              // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
              // shortContrlr =
              //     TextEditingController(text: addNew ? "" : group?.shortName);
            }
            onChange = false;
            return AlertDialog(
              content: PopUpHeader(
             onTap: () { addNew=!addNew;
            setState(() {

            });},
                label: "Create Brand",
                onApply: () {
                  widget.onTap();
                  setState(() {

                  });
                },
                onEdit: () {
                  BrandCreationtModel model=BrandCreationtModel(
                    parentCode: widget.parentIdController?.text??"",
                    name: widget.nameController.text??"",
                    brandIdentifierUrl: widget.brandIdentifierUrl.text??"",
                    image:int.tryParse( widget.imageController.text),
                    description: widget.descriptionController.text,
                    isActive: active,


                  );
                  print(model);
                  context.read<CreatebrandCubit>().postBrandPatch(veritiaclid!,model);


                },
                onCancel: (){
                  context
                      .read<BranddeleteCubit>()
                      .brandDelete(veritiaclid);

                },

                onAddNew: (v) {
                  print("Akshay"+v.toString());
                  changeAddNew(v);
                  setState(() {});

                  setState(() {});
                },
                dataField: Expanded(
                  // height: MediaQuery.of(context).size.height * .6,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BrandVerticalList(

                          selectedVertical: selectedVertical,
                          itemsearch: itemsearch,ontap: (int index){
                          setState(() {
                            selectedVertical=index;
                            // select=false;
                            // updateCheck=false;


                            veritiaclid = result[index].id;
                            context.read<BrandreadCubit>().getBrandRead(veritiaclid!);


                            setState(() {

                            });
                          });
                        },result: result,
                        ),
                        Expanded(child: Column(
                          children: [
                            NewInputCard(
                                controller: widget.codeController, title: "Code"),
                            gapWidthColumn(),
                            NewInputCard(
                              controller:widget.nameController ,
                              title: "Name",
                            ),
                            SizedBox(height: 10,),
                            FileUploadField(

                                fileName: imageName,
                                fileUrl:imageName,
                                onChangeTap: (p0) {
                                  // loading = true;
                                  setState(() {});
                                },
                                onChange: (myFile) {
                                  // Variable.mobileBannerImage = myFile.toUint8List();

                                  imageEncode =
                                      myFile.toBase64();
                                  // widget.fileMobileNameCtrl.text =
                                  //     myFile.fileName ?? "";
                                  // if (Variable.bannerimage!.length <= 240000)
                                    context
                                        .read<ImagepostCubit>().postImage(imageName,  imageEncode);
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
                                label: "Image"),



                          ],
                        )),

                        Expanded(child:   Column(
                          children: [

                            SelectableDropDownpopUp(
                              label: "Parent Id",
                              // row: true,

                              type:"BrandPopUpCall",
                              value:parentName,
                              enable: true,
                              onSelection: (BrandListModel? va) {
                                setState(() {
                                  parentName=va?.name??"";
                                  widget.parentIdController.text=va?.code??"";




                                  // onChange = true;
                                  // orderType.text = va!;
                                });
                              },
                            ),
                            SizedBox(height: 10,),
                            NewInputCard(
                              controller:widget.descriptionController,
                              title: "Description",
                            ),
                            SizedBox(height: 10,),
                            NewInputCard(
                              controller:widget.brandIdentifierUrl ,
                              title: "Brand identifier URL",
                            ),


                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
        },
),
);
      }
    ),
);
  }
}



class BlockPageIdTable extends StatefulWidget {
  final Function(int?, String?) onApply;
  const BlockPageIdTable({Key? key, required this.onApply}) : super(key: key);

  @override
  State<BlockPageIdTable> createState() => _BlockPageIdTableState();
}

class _BlockPageIdTableState extends State<BlockPageIdTable> {
  final search = TextEditingController();

  int? list;
  String? name;
  bool addNew=false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: PopUpHeader(
            onTap: () { addNew=!addNew;
            setState(() {

            });},
            onApply: () {
              widget.onApply(list, name);
            },
            label: "Contents",
            dataField: BlocProvider<Listbrand2Cubit>(
                create: (context) =>Listbrand2Cubit()..getSlotSectionPage()
                   ,
                child: Builder(builder: (context) {
                  return BlocBuilder<Listbrand2Cubit,
                      Listbrand2State>(builder: (context, state) {
                    return Column(children: [
                      state.maybeWhen(
                          orElse: () =>
                              Center(child: CircularProgressIndicator()),
                          error: () => Center(child: Text("No data Found")),
                          success: (data) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * .5,
                              child: ListView(shrinkWrap: true, children: [
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr:search,
                                  onChanged: (va) {
                                    print("searching case"+va.toString());
                                    context
                                        .read<Listbrand2Cubit>()
                                        .searchSlotSectionPageList(search.text);


                                  },
                                ),

                                customTable(
                                  tableWidth: .5,
                                  childrens: [
                                    TableRow(children: [
                                      tableHeadtext('id',
                                          size: 10, color: null),
                                      tableHeadtext('Content name',
                                          size: 10, color: null),
                                      tableHeadtext('select',
                                          size: 10, color: null),
                                    ]),
                                    if (data.data != null &&
                                        data.data.isNotEmpty) ...[
                                      for (var i = 0; i < data.data.length; i++)
                                        TableRow(children: [
                                          textPadding(
                                              data.data[i].id.toString()),
                                          textPadding(data.data[i].name ?? ""),

                                          CustomCheckBox(
                                            //  value:      siblingId == data.data[i].id,
                                            onChange: (p0) {
                                              widget.onApply(data.data[i].id,
                                                  data.data[i].name);
                                              // Navigator.pop(context);

                                              // if (p0)
                                              //   siblingId = data.data[i].id;
                                              // else
                                              //   siblingId = "";
                                            },
                                          ),
                                          // Icon(Icons.add)
                                        ]),
                                    ],
                                  ],
                                  widths: {
                                    0: FractionColumnWidth(.20),
                                    1: FractionColumnWidth(.50),
                                    2: FractionColumnWidth(.30),
                                  },
                                ),
                                tablePagination(
                                      () => context
                                      .read<Listbrand2Cubit>()
                                      .refresh(),
                                  back: data.previousUrl == null
                                      ? null
                                      : () {
                                    context
                                        .read<Listbrand2Cubit>()
                                        .previuosslotSectionPageList();
                                  },
                                  next: data.nextPageUrl == null
                                      ? null
                                      : () {
                                    // print(data.nextPageUrl);
                                    context
                                        .read<Listbrand2Cubit>()
                                        .nextslotSectionPageList();
                                  },
                                )
                              ]),
                            );
                          })
                    ]);
                  });
                }))));
  }
}
Widget tablePagination(VoidCallback reset,

    {VoidCallback? next, VoidCallback? back}) =>

    Transform.scale(

      scale: 0.7,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.start,

        children: [



          Spacer(),

          TextButton.icon(

              onPressed: back,

              icon: Icon(Icons.arrow_back_ios,size: 18,),

              label: Text("Back")),

          TextButton.icon(

              onPressed: next,

              label: Icon(Icons.arrow_forward_ios,size: 18,),

              icon: Text("Next")),

        ],

      ),

    );