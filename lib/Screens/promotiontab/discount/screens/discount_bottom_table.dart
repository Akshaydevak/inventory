import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/read_promotion_discount/read_promotion_discount_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/saleread/promtion_sale_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/variantList/variant_list_promotion_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';

import '../../../../widgets/dropdownbutton.dart';

class DiscountBottomGrowableTable extends StatefulWidget {
  final  List<Segment> segmentList;
  final Function updation;

  // final  bool addNew;
  final  Key? key;


  DiscountBottomGrowableTable({ required this.segmentList, required this.updation,this.key});
  @override
  DiscountBottomGrowableTableState createState() => DiscountBottomGrowableTableState();
}

class DiscountBottomGrowableTableState extends State<DiscountBottomGrowableTable> {
  String typeAllying="";
  String typeId="";
  String typeApplyingName="";

  String typeCode="";
  TextEditingController maximumInvenortry=TextEditingController();
  TextEditingController titleController=TextEditingController();
  TextEditingController imageController=TextEditingController();
  String  imageName="";
  var     imageEncode ;

  bool isActive=false;
  Barcode barcode=Barcode();
  List<SaleLinesDiscount>table=[];
  List<VariantsLinesDiscount>variant=List.from([]);
  List<VariantsLinesDiscount>deletedList=List.from([]);
  List<VariantsLinesDiscount>addedList=List.from([]);

  bool onSaveActive = false;

  saveButtonActovde(String key,String val,String title){
    print(key);
    print(val);

    key=(key.replaceAll(' ', ''));
    val=(val.replaceAll(' ', ''));
    title=(title.replaceAll(' ', ''));
    if(key.isNotEmpty==true && val.isNotEmpty==true && title.isNotEmpty==true && variant.isNotEmpty && addedList.isNotEmpty){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }


  listAssign(List<VariantsLinesDiscount>list,
      // {bool isTableUpdation=false, int? idex}
      ){
    variant.clear();
    addedList.clear();
    print("aDD TIME LIST"+list.toString());
      variant=List.from(list);
    addedList=List.from(list);
    saveButtonActovde(typeAllying,typeId,titleController.text);
  }

  listAssignBoth(List<VariantsLinesDiscount>deletedlist,List<VariantsLinesDiscount>adedlist,
      // {bool isTableUpdation=false, int? idex}
      ){
    addedList.clear();
    deletedList.clear();
      addedList=List.from(adedlist);
      deletedList=List.from(deletedlist);
  }
  clear(){
    isActive=false;
    table=[];
    barcode=barcode.copyWith(barcodeNumber: "",fileName: "");
    typeAllying="";
    typeApplyingName="";
    titleController.clear();
    imageName="";
    imageController.clear();
    maximumInvenortry.clear();
    typeId="";
    variant.clear();
  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    // if(!onChange){
    //   print("welcome to the entire place");
    //   setState(() {
    //     keys=[];
    //   });
    //
    //
    //   if(widget.aboutProducts?.isNotEmpty==true){
    //
    //
    //     setState(() {
    //
    //       headingController.text=widget.addNew?"":widget.aboutProducts?[0].name??"";
    //     });
    //     aboutProducts= widget.aboutProducts??[];
    //     if(aboutProducts?[0].keyValues?.isNotEmpty==true)
    //       keys=aboutProducts?[0].keyValues??[];
    //
    //   }
    //
    //
    //
    //
    //
    // }
    // onChange=false;
    return
      //            MultiBlocListener(
      // listeners: [

      // BlocListener<PromtionSaleReadCubit, PromtionSaleReadState>(
      //   listener: (context, state) {
      //     print("state++++++++++++++++++++++++++++++++");
      //     state.maybeWhen(
      //         orElse: () {},
      //         error: () {
      //           print("error");
      //         },
      //         success: (data) {
      //           setState(() {
      //             print("the tabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbleaaaaaaaaaaaaa");
      //             data.saleLines != null ? table =List.from( data?.saleLines ?? []) : table = [];
      //
      //
      //           });
      //         });
      //   },
      //   ),
      //
      // ],
      // child:
      Builder(
          builder: (context) {
            return   MultiBlocListener(
  listeners: [
    BlocListener<ReadPromotionDiscountCubit, ReadPromotionDiscountState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {

                        data.offerLines != null ? table =List.from( data?.offerLines ?? []) : table = [];


                      });
                    });
              },
),
    BlocListener<PromotionImageCubit, PromotionImageState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            // imageController.text = data.data2.toString();
            print("imageController.text");
            print(imageController.text);
            // print("dataAkshay" +
            //     imageContollercontroller.text.toString());

            // context.showSnackBarSuccess(data.data2);

          } else {
            // context.showSnackBarError(data.data2);
            // print(data.data1.toString());
          }
          ;
        });
      },
    ),
  ],
  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
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

                              'Type Applying',

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              'Type Name',

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              "Title",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              "Maximum Inventory",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              "Offer Product Group",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              "Image",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              "Is Active",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),
                            tableHeadtext(

                              " ",

                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
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

                                      child:
                                      PopUpCall(

                                        type:"SaleApplyingOnPromotionPopup",
                                        value:table[i].typeApplying,
                                        onSelection: (String? va) {
                                          print(
                                              "+++++++++++++++++++++++");
                                          //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                          setState(() {
                                            table[i]=table[i].copyWith(typeApplying:va,updateCheck: true ,typeCode: "",typeName: "",typeId: 0);


                                            // // onChange = true;
                                            // typeAllying= va!;
                                          });
                                        },
                                      ),


                                      // textPadding(table[i].typeApplying.toString()??"")



                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:
                                      VariantIdTAble(
                                        text:table[i].typeCode,
                                        onTap: (){
                                          List<String> list=[];
                                          for (var val in widget.segmentList)
                                            list.add(val.segmentCode.toString());
                                          salesOrderNamePostModel model=salesOrderNamePostModel(
                                            inventoryId: Variable.inventory_ID,
                                            searchElemet: null,
                                            type:  table[i].typeApplying,
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
                                                  table[i]=table[i].copyWith(typeId: va.id,typeName: va.name,variants: [],addedVariant:[],deletedVariants:[],updateCheck: true,typeCode: va.code);

                                                  // setState(() {});

                                                  // onChange = true;
                                                  // orderType.text = va!;
                                                });
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                      // textPadding(table[i].typeId.toString())



                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:
                                      UnderLinedInput(
                                        formatter: false,
                                        initialCheck: true,
                                        last: table[i].title??"",
                                        // controller: titleController,


                                        onChanged: (p0) {
                                          table[i]=table[i].copyWith(title:p0,updateCheck: true );
                                          setState(() {});

                                          // print(Qty);
                                        },
                                        enable: true,
                                        onComplete: () {
                                          setState(() {});


                                        },
                                      ),

                                      // textPadding(table[i].title??"")



                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:
                                      UnderLinedInput(
                                        // controller: maximumInvenortry,
                                        integerOnly: true,
                                        initialCheck: true,
                                        last: table[i].maximumQuantity.toString(),

                                        onChanged: (p0) {
                                          setState(() {

                                            table[i]=table[i].copyWith(
                                              maximumQuantity:int.tryParse( p0),updateCheck: true);


                                          });

                                          // print(Qty);
                                        },
                                        enable: true,
                                        onComplete: () {
                                          setState(() {});


                                        },
                                      ),
                                      // textPadding(table[i].maximumQuantity.toString()??"")



                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,

                                      child:
                                      VariantIdTAble(
                                        text:table[i].offerProductGroupCode??"",
                                        onTap: (){
                                          List<String> list=[];

                                          for (var val in widget.segmentList)
                                            list.add(val.segmentCode.toString());
                                          print("sasasaaaaaaaaaaaaaa"+list.toString());



                                          PromotionVariantPostModel model=PromotionVariantPostModel(
                                              applyingTypeCode: table[i].typeCode,
                                              applyinType: table[i].typeApplying,
                                              searchElement: "",
                                              segmentList:list,
                                              inventoryId: Variable.inventory_ID
                                          );
                                          showDailogPopUp(
                                            context,
                                            BlocProvider(
                                              create: (context) => VariantListPromotionCubit()..getVariantList(model),
                                              child: ConfigurePopup(
                                                obj: model,
                                                code:table[i].offerProductGroupCode ,

                                                listAssign: (deletedlist,adedlist){
                                                  // addedList.clear();
                                                  // deletedList.clear();
                                                  addedList=List.from(adedlist);
                                                  deletedList=List.from(deletedlist);
                                                  setState(() {
                                                    table[i]=table[i].copyWith(updateCheck: true,deletedVariants:deletedList,addedVariant: addedList );
                                                  });

                                                },
                                                type: "DiscountVariantGroupCodeCreatativePopup",
                                              ),
                                            ),

                                            // TableConfigurePopup(
                                            //   object: model,
                                            //   // inventory: Variable.inventory_ID,
                                            //   type: "VariantListPopup",
                                            //   valueSelect: (SaleLines? va) {
                                            //
                                            //
                                            //     setState(() {
                                            //       variantCode=va?.variantCode??"";
                                            //       variantName=va?.variantName??"";
                                            //       print("barcodeeeeeeeeeeee");
                                            //       print(va?.barcode?.barcodeNumber??"");
                                            //       barcode=      barcode.copyWith(barcodeNumber: va?.barcode?.barcodeNumber??"");
                                            //
                                            //
                                            //
                                            //       // orderType = va!;
                                            //     });
                                            //   },
                                            // ),
                                          );
                                        },
                                      ),
                                      // textPadding(table[i].offerProductGroupCode??"")



                                  ),

                                  FileUploadField(
                                      tableCheck: true,

                                      fileName:(table[i].image?.length??0)>6?table[i].image??"":table[i].imageName??"",
                                      fileUrl:(table[i].image?.length??0)>6?table[i].image??"":table[i].imageName??"",
                                      onCancel: (){

                                        setState(() {
                                          table[i]=table[i].copyWith(imageName: "",image: null,updateCheck: true);
                                          Variable.img3=null;
                                        });

                                      },
                                      onChangeTap: (p0) {

                                        // loading = true;
                                        setState(() {});
                                      },
                                      onChange: (myFile) {
                                        table[i]=table[i].copyWith(imageName: myFile?.fileName,updateCheck: true);

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
                                          context.read<PromotionImageCubit>().postPromotionImage(table[i].imageName,  imageEncode,type: "image3");
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


                                  // TableCell(
                                  //     verticalAlignment: TableCellVerticalAlignment.middle,
                                  //
                                  //     child:textPadding((table[i].image?.length??0)>6?table[i].image??"":table[i].imageName??"")
                                  //
                                  //
                                  //
                                  // ),

                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                        valueChanger:
                                        table?[i].isActive == null
                                            ? false
                                            : table?[i].isActive,
                                        onSelection: (bool? value) {
                                          bool? isActive =table[i].isActive;
                                          setState(() {
                                            // widget.updateCheck(true);
                                            // print("aaaaaaaaaaa"+isActive.toString());
                                            // table1[i] = table1[i].copyWith(updatecheck: true);
                                            table[i] = table[i].copyWith(updateCheck: true);
                                            setState(() {});
                                            isActive = !isActive!;
                                            print("aaaaaaaaaaa"+isActive.toString());
                                            table[i] = table[i]
                                                .copyWith(
                                                isActive: isActive);
                                          });



                                        }),
                                  ),

                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TableTextButton(
                                            onPress: () {

                                              setState(() {
                                                // widget.updateCheck(false);
                                                table[i]=      table[i].copyWith(updateCheck: false,image: Variable.img3!=null?Variable.img3.toString():null);
                                                widget.updation(table);



                                              });

                                            },
                                            textColor:table[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.grey ,
                                            label:
                                            table[i].updateCheck==true? "UPDATE":"",
                                          ),
                                        ),
                                        SizedBox(width: 4,),


                                        TableIconTextButton(

                                          // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                          // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                          // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                          onPress: () {

                                            setState(() {


                                              table?.removeAt(i);
                                              widget.updation(table);

                                            });
                                          },
                                          icon: Icons.delete,
                                          label: "",
                                        ), SizedBox(width: 4,),
                                      ],
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

                                child:
                                PopUpCall(

                                  type:"SaleApplyingOnPromotionPopup",
                                  value:typeAllying,
                                  onSelection: (String? va) {
                                    print(
                                        "+++++++++++++++++++++++");
                                    //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                    setState(() {


                                      // onChange = true;
                                      typeAllying= va!;
                                      typeId = "";
                                      typeApplyingName = "";
                                      saveButtonActovde(typeAllying,typeId,titleController.text);
                                      variant.clear();
                                    });
                                  },
                                ),



                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),

                              TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                  child:
                                  VariantIdTAble(
                                    text:typeApplyingName,
                                    onTap: (){
                                      List<String> list=[];

                                      for (var val in widget.segmentList)
                                        list.add(val.segmentCode.toString());
                                      print("sasasaaaaaaaaaaaaaa"+list.toString());

                                      salesOrderNamePostModel model=salesOrderNamePostModel(
                                        inventoryId: Variable.inventory_ID,
                                        searchElemet: null,
                                        type:  typeAllying,
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


                                              typeId = va.id.toString() ?? "";
                                              typeCode = va.code.toString() ?? "";
                                              print("typeCode"+typeCode.toString());
                                              saveButtonActovde(typeAllying,typeId,titleController.text);
                                              typeApplyingName=va?.name??"";
                                              variant.clear();
                                              // setState(() {});

                                              // onChange = true;
                                              // orderType.text = va!;
                                            });
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),

            TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child:
            UnderLinedInput(
              formatter: false,
            controller: titleController,


            onChanged: (p0) {
              saveButtonActovde(typeAllying,typeId,titleController.text);
            // print(Qty);
            },
            enable: true,
            onComplete: () {
            setState(() {});


            },
            ),
            ),   TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child:
                                    UnderLinedInput(
                                      controller: maximumInvenortry,
                                      integerOnly: true,

                                      onChanged: (p0) {

                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {
                                        setState(() {});


                                      },
                                    ),
                                  ),
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,

                                child:
                                VariantIdTAble(
                                  text:"",
                                  onTap: (){
                                    List<String> list=[];

                                    for (var val in widget.segmentList)
                                      list.add(val.segmentCode.toString());
                                    print("sasasaaaaaaaaaaaaaa"+list.toString());

                                    PromotionVariantPostModel model=PromotionVariantPostModel(
                                        applyingTypeCode: typeCode,
                                        applyinType: typeAllying,
                                        searchElement: "",
                                        segmentList:list,
                                        inventoryId: Variable.inventory_ID
                                    );
                                    showDailogPopUp(
                                      context,
                                      BlocProvider(
                                        create: (context) => VariantListPromotionCubit()..getVariantList(model),
                                        child: ConfigurePopup(
                                          obj: model,
                                          passingList: variant,


                                          listAssign: listAssign,
                                          type: "DiscountVariantCreatativePopup",
                                        ),
                                      ),

                                      // TableConfigurePopup(
                                      //   object: model,
                                      //   // inventory: Variable.inventory_ID,
                                      //   type: "VariantListPopup",
                                      //   valueSelect: (SaleLines? va) {
                                      //
                                      //
                                      //     setState(() {
                                      //       variantCode=va?.variantCode??"";
                                      //       variantName=va?.variantName??"";
                                      //       print("barcodeeeeeeeeeeee");
                                      //       print(va?.barcode?.barcodeNumber??"");
                                      //       barcode=      barcode.copyWith(barcodeNumber: va?.barcode?.barcodeNumber??"");
                                      //
                                      //
                                      //
                                      //       // orderType = va!;
                                      //     });
                                      //   },
                                      // ),
                                    );
                                  },
                                ),
                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),

                              TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                  child:
                                  FileUploadField(
                                    tableCheck: true,

                                      fileName:imageName,
                                      fileUrl:imageName,
                                      onCancel: (){

                                        setState(() {
                                          imageName="";
                                          imageController.text="";
                                          Variable.img2=null;
                                        });

                                      },
                                      onChangeTap: (p0) {

                                        // loading = true;
                                        setState(() {});
                                      },
                                      onChange: (myFile) {
                                      imageName=myFile?.fileName??"";
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
                                          context.read<PromotionImageCubit>().postPromotionImage(imageName,  imageEncode,type: "image2");
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
                              ),
                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: CheckedBoxs(
                                  // color: Color(0xff3E4F5B),
                                  valueChanger: isActive,
                                  onSelection: (bool? value) {
                                    // clear=true;
                                    setState(() {
                                      isActive = !isActive!;
                                    });
                                  },
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: TableTextButton(
                                    buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                                    textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                                    bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                    label: "Save",
                                    onPress: () {
                                      setState(() {
            if(typeAllying.isNotEmpty==true && typeId.isNotEmpty==true && titleController.text.isNotEmpty && variant.isNotEmpty &&addedList.isNotEmpty){

            table.add(SaleLinesDiscount(
            typeApplying: typeAllying,

            typeId: int.tryParse(typeId),
            title: titleController.text,
            maximumQuantity:int.tryParse( maximumInvenortry.text),
            variants: variant,
            image:Variable?.img2?.toString()??null,
            isActive:isActive,
            addedVariant:variant ,
            typeName: typeApplyingName,
            typeCode: typeCode,
            imageName: imageName,
            ));

            print("tablesssssssssssssssssssssssssssssssssssssssssss");
            print(table);
            widget.updation(table);
            typeAllying="";
            titleController.clear();
            imageName="";
            isActive=false;

            onSaveActive=false;
            imageController.clear();
            maximumInvenortry.clear();
            typeId="";
            // variant.clear();
            typeApplyingName="";
            }
;
                                        // isActive=false;

                                      });
                                    }),
                              )


                            ])


                      ],
                      widths: {
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(3),
                        3: FlexColumnWidth(2),
                        4: FlexColumnWidth(2),
                        5: FlexColumnWidth(3),
                        6: FlexColumnWidth(2),
                        7: FlexColumnWidth(2),



                      },

                    ),


                  ),
                ],
              ),
);
          }
      );

  }
}