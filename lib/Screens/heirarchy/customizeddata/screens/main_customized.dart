import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/cubit/creation/customcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/cubit/listcustom/listcustomvertical_cubit.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/cubit/readcustom/readcustom_cubit.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/model/creation_custom_model.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/screens/stabletable.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/deletion/deletioncosting_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

class CustomisedMainScreen extends StatefulWidget {
  @override
  _CustomisedMainScreenState createState() => _CustomisedMainScreenState();
}

class _CustomisedMainScreenState extends State<CustomisedMainScreen> {
  TextEditingController groupController = TextEditingController();
  TextEditingController groupNameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController minimumGpController = TextEditingController();
  TextEditingController averageGpController = TextEditingController();
  TextEditingController maximumGpController = TextEditingController();
  TextEditingController targetedGpController = TextEditingController();
  TextEditingController vatGpController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController returnTypeController = TextEditingController();
  TextEditingController returnTimeController = TextEditingController();
  TextEditingController weightUOMController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController shelfType = TextEditingController();
  TextEditingController shelfTime = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController lengthUnit=TextEditingController(text: "centimeter");
  TextEditingController widthUnit=TextEditingController(text:"centimeter");
  TextEditingController heightUnit=TextEditingController(text:"centimeter");
  TextEditingController weightUnit=TextEditingController(text: "kilo gram");
  bool active = false;
  bool suffixIconCheck = false;
  bool haveGiftOption = false;
  bool haveWrapOption = false;
  bool needMultipleIntegreation = false;
  List<BrandListModel> result = [];
  var list1;
  int? veritiaclid = 0;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  bool select=false;
  bool onChange=false;




  clear(){
    codeController.clear();
    minimumGpController.clear();
    averageGpController.clear();
    maximumGpController.clear();
    groupNameController.clear();
    targetedGpController.clear();
    vatGpController.clear();
    excessTaxController.clear();
    returnTypeController.clear();
    returnTimeController.clear();
    weightUOMController.clear();
    widthController.clear();
    heightController.clear();
    lengthController.clear();
    weightUOMController.clear();
    groupController.clear();
    active=false;
    haveGiftOption=false;
    haveWrapOption=false;
    shelfType.clear();
    shelfTime.clear();
   lengthUnit.text="";
     widthUnit.text="";
   heightUnit.text="";
    weightUnit.text="";


    needMultipleIntegreation=false;
    setState(() {
    });
  }


  activeChange(bool active1, {String? type}) {
    switch (type) {
      case '1':
        {
          active = active1;
        }
        break;

      case '2':
        {
          needMultipleIntegreation = active1;
        }
        break;
      case '3':
        {
          haveGiftOption = active1;
        }
        break;
      case '4':
        {
          haveWrapOption = active1;
        }
        break;

    }

       setState(() {});
  }
  @override
  void initState() {
    context.read<ListcustomverticalCubit>().getCustomVerticalList();
    lengthUnit.text="Centimeter";
    widthUnit.text="Centimeter";
    heightUnit.text="Centimeter";
    weightUnit.text= "Killogram";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CustomcreationCubit(),
        ),  BlocProvider(
          create: (context) => ReadcustomCubit(),
        ),  BlocProvider(
          create: (context) => DeletioncostingCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<CustomcreationCubit, CustomcreationState>(
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
                        Timer(Duration(seconds: 5), () {
                          setState(() {

                            context.read<ListcustomverticalCubit>().getCustomVerticalList();
                            // context.read<ReadcustomCubit>().getCustomRead(veritiaclid!);
                            // select=false;
                          });
                        });
                      } else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<DeletioncostingCubit, DeletioncostingState>(
                  listener: (context, state) {
                    print("delete" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        clear();

                        setState(() {
                          context.read<ListcustomverticalCubit>().getCustomVerticalList();
                          context.showSnackBarSuccess(data.data2);

                        });
                      } else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<ReadcustomCubit, ReadcustomState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print("here arrived"+data.toString());
                      setState(() {


                        codeController.text=data.groupCustomdata?.code??"";
                        groupNameController.text=data.groupCustomdata?.groupNmae??"";
                        groupController.text=data.groupCustomdata?.groupId.toString()??"";
                        minimumGpController.text=data.groupCustomdata?.minGp==null?"":data.groupCustomdata?.minGp?.toStringAsFixed(2).toString()??"";
                        averageGpController.text=data.groupCustomdata?.avrgGp==null?"":data.groupCustomdata?.avrgGp?.toStringAsFixed(2).toString()??"";
                        maximumGpController.text=data.groupCustomdata?.maxGp==null?"":data.groupCustomdata?.maxGp?.toStringAsFixed(2).toString()??"";
                        targetedGpController.text=data.groupCustomdata?.targetedGp==null?"":data.groupCustomdata?.targetedGp?.toStringAsFixed(2).toString()??"";
                        vatGpController.text=data.groupCustomdata?.vat==null?"":data.groupCustomdata?.vat?.toStringAsFixed(2).toString()??"";
                        excessTaxController.text=data.groupCustomdata?.excessTax==null?"":data.groupCustomdata?.excessTax?.toStringAsFixed(2).toString()??"";
                        returnTypeController.text=data.groupCustomdata?.returntype??"";
                        returnTimeController.text=data.groupCustomdata?.returnTime==null?"":data.groupCustomdata?.returnTime.toString()??"";
                        weightUOMController.text=data.groupCustomdata?.weightUomId==null?"":data.groupCustomdata?.weightUomId?.toStringAsFixed(2).toString()??"";
                        widthController.text=data.groupCustomdata?.dimension?.width==null?"":data.groupCustomdata?.dimension?.width?.toStringAsFixed(2).toString()??"";
                        heightController.text=data.groupCustomdata?.dimension?.height==null?"":data.groupCustomdata?.dimension?.height?.toStringAsFixed(2).toString()??"";
                        lengthController.text=data.groupCustomdata?.dimension?.length==null?"":data.groupCustomdata?.dimension?.length?.toStringAsFixed(2).toString()??"";
                        weightUOMController.text=data.groupCustomdata?.dimension?.weight==null?"":data.groupCustomdata?.dimension?.weight?.toStringAsFixed(2).toString()??"";
                        shelfType.text=data.groupCustomdata?.shelpType==null?"":data.groupCustomdata?.shelpType??"";
                        shelfTime.text=data.groupCustomdata?.shelpType==null?"":data.groupCustomdata?.shelfTime.toString()??"";
                        active=data.groupCustomdata?.isActive??false;
                        haveGiftOption=data.groupCustomdata?.haveGiftOption??false;
                        haveWrapOption=data.groupCustomdata?.haveWrapOption??false;
                        needMultipleIntegreation=data.groupCustomdata?.needMultipleIntegration??false;

                      });


                      ;
                    });
                  },
                ),

              ],
              child: BlocConsumer<ListcustomverticalCubit, ListcustomverticalState>(
  listener: (context, state) {
    print("state" + state.toString());
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("aaaaayyyiram" + list.data.toString());
          list1 = list;

          result = list.data;
          print("seee" + result.toString());
          setState(() {
            if (result.isNotEmpty) {
              veritiaclid = result[0].id;
              selectedVertical=0;


              // Variable.verticalid=result[0].id;
              // print("Variable.ak"+Variable.verticalid.toString());
              context.read<ReadcustomCubit>().getCustomRead(veritiaclid!);
            }
            else {
              print("common");
              select=true;

            }



          });
        });
  },
  builder: (context, state) {
    // if(onChange==false){
    //   lengthUnit.text="meter";
    //   widthUnit.text="centimeter";
    //   heightUnit.text="centimeter";
    //    weightUnit.text= "kilo gram";
    // }
    // onChange=false;

    return Scaffold(
                backgroundColor: Pellet.bagroundColor,
                body: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIseVerticalList(
                        list: list1,
                        select: select,


                        selectedVertical: selectedVertical,
                        itemsearch: itemsearch,
                        suffixIconCheck: suffixIconCheck,
                        ontap: (int index) {
                          onChange=true;
                          setState(() {
                            selectedVertical = index;

                            select=false;
                            clear();

                            // addNew=true;

                            // updateCheck=false;



                            veritiaclid = result[index].id;
                            Variable.variantCode=result[index].code.toString();
                            // clear();
                            // select=true;
                            //
                            //




                            context.read<ReadcustomCubit>().getCustomRead(veritiaclid!);


                          });
                        },
                        search: (String va) {
                          print(va);
                          context
                              .read<ListcustomverticalCubit>()
                              .getSearchCustomList(va);
                          suffixIconCheck=true;
                          if (va == "") {
                            suffixIconCheck=false;
                            context
                                .read<ListcustomverticalCubit>()
                                .getCustomVerticalList();
                          }
                        },
                        result: result,
                      ),
                      Expanded(child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                TextButtonLarge(
                                  text: "CREATE",
                                  onPress: (){
                                    onChange=true;
                                  clear();

                                  setState(() {
                                    select=true;
                                  });



                                  },
                                ),
                              ],
                            ),
                            BlocBuilder<ReadcustomCubit, ReadcustomState>(
  builder: (context, state) {
    return CustomizedStableTable(
                              select:select,
                              heightUnit: heightUnit,
                              lengthUnit: lengthUnit,
                              weightUnit: weightUnit,
                              widthUnit: widthUnit,
                              shelfType:shelfType,
                              shelfTime:shelfTime,
                              haveGiftOption:haveGiftOption,
                              haveWrapOption:haveWrapOption,
                              needMultipleIntegreation: needMultipleIntegreation,
                              groupNameController: groupNameController,
                              width: widthController,
                              height: heightController,
                              weightUomId: weightUOMController,
                              length: lengthController,
                              returnTime: returnTimeController,
                              returnType: returnTypeController,
                              vat: vatGpController,
                              averageGp: averageGpController,
                              maximumGp: maximumGpController,
                              minimumGp: minimumGpController,
                              active: active,
                              excessTax: excessTaxController,
                              activeChange: activeChange,
                              code: codeController,
                              group: groupController,
                              targetedGp: targetedGpController,

                            );
  },
),
                            SizedBox(height: height * .13,),
                            SaveUpdateResponsiveButton(
                              discardFunction: (){
                                if(select==true)
                                  clear();
                                else{
                                  showDailogPopUp(
                                      context,
                                      LogoutPopup(
                                        message: "Do you need to delete the order",
                                        // table:table,
                                        // clear:clear(),
                                        // verticalId:veritiaclid ,
                                        onPressed:(){
                                          print("akshay");
                                          Navigator.pop(context);
                                          context.read<DeletioncostingCubit>().CostingDelete(veritiaclid,type:"7");

                                        },


                                      ));

                                }

                              },
                              saveFunction: (){
                                CustomCreationtModel model=CustomCreationtModel(
                                  mappingPlaceId: Variable.inventory_ID,
                                  needMultipleIntgration: needMultipleIntegreation,
                                  weightUnit: weightUnit.text.isEmpty?null:weightUnit.text,
                                  heightUnit: heightUnit.text.isEmpty?null:heightUnit.text,
                                  lengthUnit: lengthUnit.text.isEmpty?null:lengthUnit.text,
                                  widthUnit: widthUnit.text.isEmpty?null:widthUnit.text,

                                  groupId:groupController.text.isEmpty?null: int.tryParse(groupController.text),
                                  returnTime:returnTimeController.text.isEmpty?null: int.tryParse(returnTimeController.text),
                                  minimumGp: minimumGpController.text.isEmpty?null:double.tryParse(minimumGpController.text),
                                  averageGp: averageGpController.text.isEmpty?null:double.tryParse(averageGpController.text),
                                  maximumGp: maximumGpController.text.isEmpty?null:double.tryParse(maximumGpController.text),
                                  targetdGp: targetedGpController.text.isEmpty?null:double.tryParse(targetedGpController.text),
                                  vat: vatGpController.text.isEmpty?null:double.tryParse(vatGpController.text),
                                  excesstax: excessTaxController.text.isEmpty?null:double.tryParse(excessTaxController.text),
                                  returnType: returnTypeController.text.isEmpty?null:returnTypeController.text,
                                  isActive: active,
                                  haveGiftOption: haveGiftOption,
                                  haveWrapOption: haveWrapOption,
                                  shelfTime:int.tryParse(shelfTime.text),
                                  shelfType:shelfType.text,

                                  height: heightController.text.isEmpty?null:double.tryParse(heightController.text),
                                  width : widthController.text.isEmpty?null:double.tryParse(widthController.text),
                                  length : lengthController.text.isEmpty?null:double.tryParse(lengthController.text),
                                  weight : weightUOMController.text.isEmpty?null:double.tryParse(weightUOMController.text),


                                );
                                print(model);
                                select?   context
                                    .read<CustomcreationCubit>()
                                    .postCreateCustom(model):  context
                                    .read<CustomcreationCubit>()
                                    .patchCreateCustom(model,veritiaclid);

                              },
                              label: select? "SAVE":"UPDATE",
                            ),
                            // Container(
                            //
                            //
                            //     margin:EdgeInsets.only(right: width*.02)  ,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [
                            //       Button(Icons.delete, Colors.red,
                            //           ctx: context,
                            //           text: "DISCARD",
                            //           onApply: () {
                            //         if(select==true)
                            //           clear();
                            //         else{
                            //           showDailogPopUp(
                            //               context,
                            //               ConfirmationPopup(
                            //                 // table:table,
                            //                 // clear:clear(),
                            //                 verticalId:veritiaclid ,
                            //                 onPressed:(){
                            //                   print("akshay");
                            //                   Navigator.pop(context);
                            //                   context.read<DeletioncostingCubit>().CostingDelete(veritiaclid,type:"7");
                            //
                            //                 },
                            //
                            //
                            //               ));
                            //
                            //         }
                            //
                            //             // if(updateCheck){
                            //             //   // clears();
                            //             //
                            //             //
                            //             // }
                            //
                            //           },
                            //           height: 29,
                            //           width: 90,
                            //           labelcolor: Colors.red,
                            //           iconColor: Colors.red,
                            //           bdr: true),
                            //       SizedBox(
                            //         width: width * .008,
                            //       ),
                            //       Button(Icons.check, Colors.grey,
                            //           ctx: context,
                            //           text:select? "SAVE":"UPDATE",
                            //           height: 29,
                            //           Color: Color(0xff3E4F5B),
                            //           width: 90,
                            //           labelcolor: Colors.white,
                            //           iconColor: Colors.white,
                            //           onApply: () {
                            //             CustomCreationtModel model=CustomCreationtModel(
                            //               mappingPlaceId: Variable.inventory_ID,
                            //               needMultipleIntgration: needMultipleIntegreation,
                            //               groupId:groupController.text.isEmpty?null: int.tryParse(groupController.text),
                            //               returnTime:returnTimeController.text.isEmpty?null: int.tryParse(returnTimeController.text),
                            //               minimumGp: minimumGpController.text.isEmpty?null:double.tryParse(minimumGpController.text),
                            //               averageGp: averageGpController.text.isEmpty?null:double.tryParse(averageGpController.text),
                            //               maximumGp: maximumGpController.text.isEmpty?null:double.tryParse(maximumGpController.text),
                            //               targetdGp: targetedGpController.text.isEmpty?null:double.tryParse(targetedGpController.text),
                            //               vat: vatGpController.text.isEmpty?null:double.tryParse(vatGpController.text),
                            //               excesstax: excessTaxController.text.isEmpty?null:double.tryParse(excessTaxController.text),
                            //               returnType: returnTypeController.text.isEmpty?null:returnTypeController.text,
                            //               isActive: active,
                            //               haveGiftOption: haveGiftOption,
                            //               haveWrapOption: haveWrapOption,
                            //               shelfTime:int.tryParse(shelfTime.text),
                            //               shelfType:shelfType.text,
                            //
                            //               height: heightController.text.isEmpty?null:double.tryParse(heightController.text),
                            //                 width : widthController.text.isEmpty?null:double.tryParse(widthController.text),
                            //                 length : lengthController.text.isEmpty?null:double.tryParse(lengthController.text),
                            //                 weight : weightUOMController.text.isEmpty?null:double.tryParse(weightUOMController.text),
                            //
                            //
                            //             );
                            //             print(model);
                            //          select?   context
                            //                 .read<CustomcreationCubit>()
                            //                 .postCreateCustom(model):  context
                            //              .read<CustomcreationCubit>()
                            //              .patchCreateCustom(model,veritiaclid);
                            //
                            //
                            //           }
                            //       ),
                            //       SizedBox(
                            //         // width: width * .008,
                            //       ),
                            //     ],
                            //   ),
                            // ),

                          ],
                        ),
                      ))


                    ],
                  ),
                )
                ,
              );
  },
),
            );
          }
      ),
    );
  }
}
