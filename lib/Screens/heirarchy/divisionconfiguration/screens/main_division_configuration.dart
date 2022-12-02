import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/cubit/list/list_division_cubit.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/cubit/read_config/read_division_config_cubit.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/model/creationmodel.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/screens/scrollabletablescreeen.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/screens/topstabletable.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/deletion/deletioncosting_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

import '../cubit/post_division/division_configuration_cubit.dart';

class  DevisionConfiguration extends StatefulWidget {
  @override
  _DevisionConfigurationState createState() =>  _DevisionConfigurationState();
}

class _DevisionConfigurationState extends State< DevisionConfiguration> {
  TextEditingController codeController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController priorityController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController image1Controller=TextEditingController();
  TextEditingController image1NameController=TextEditingController();
  bool isActive=false;
  bool ismixed=false;
  bool select=false;
  List<DataInclude>?uomList=List.from([]);
  List<DataInclude>?categoryList=[];
  List<DataInclude>?groupList=[];

  List<BrandListModel> result = [];
  var paginatedList;
  int? veritiaclid = 0;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  @override
  void initState() {
    context.read<ListDivisionCubit>().getDivisionVerticalList();
    super.initState();
  }


  TableAssign({String? type,List<DataInclude>? list}){
    print("arrived"+type.toString());
    // aboutProducts=list;



    switch(type){

      case '1' :
        uomList=List.from(list??[]);
        break;

      case '2' :
        groupList=list;
        break;

      case '3' :
        categoryList=list;
        break;
    }
  }

  activeChange({int? type,bool val=false}){
    switch(type) {
      case 1 :
        isActive = val;

        break;

      case 2 :
        ismixed = val;

        break;
    }
    setState(() {

    });
  }
  clear(){
codeController.clear();
nameController.clear();
image1Controller.clear();
image1NameController.clear();
priorityController.clear();
descriptionController.clear();
isActive=false;
ismixed=false;


  }



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
      body: MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => DivisionConfigurationCubit(),
),
    BlocProvider(
  create: (context) => DivisionConfigurationCubit(),
),  BlocProvider(
  create: (context) => ReadDivisionConfigCubit(),
),
   
  ],
  child: MultiBlocListener(
  listeners: [
    BlocListener<DivisionConfigurationCubit, DivisionConfigurationState>(
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
            if(select){
              context.read<ListDivisionCubit>().getDivisionVerticalList();
            }
            else{
              context.read<ReadDivisionConfigCubit>().getDivisionConfigRead(veritiaclid!);

            }
            // context.read<ListvraiantCubit>().getVariantList();
            // select=false;
          });
        });
      } else {
        context.showSnackBarError(data.data2);
        print(data.data1);
      }
      ;
    });
    // TODO: implement listener
  },
),
    BlocListener<ReadDivisionConfigCubit, ReadDivisionConfigState>(
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
            codeController.text=data.code??"";
            nameController.text=data.name??"";
            image1Controller.text=data.image??"";
            image1NameController.text=data.image??"";
            descriptionController.text=data.description??"";
            priorityController.text=data.priority?.toString()??"";
            uomList=List.from(data.uom??[]);
            categoryList=List.from(data.category??[]);
            groupList=List.from(data.groupName??[]);
            ismixed=data.isMixed??false;
            isActive=data.isActive??false;




          });


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
              context.read<ListDivisionCubit>().getDivisionVerticalList();
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

  ],
  child: BlocConsumer<ListDivisionCubit, ListDivisionState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("aaaaayyyiram" + list.data.toString());
          paginatedList = list;

          result = list.data;
          print("seee" + result.toString());
          setState(() {
            if (result.isNotEmpty) {
              veritiaclid = result[0].id;
              selectedVertical=0;
              context.read<ReadDivisionConfigCubit>().getDivisionConfigRead(veritiaclid!);
            }
            else {
              setState(() {
                clear();

              });

              print("common");
              // select=true;

            }



          });
        });
    // TODO: implement listener
  },
  builder: (context, state) {
    return Builder(
    builder: (context) {
      return SingleChildScrollView(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DivisionConfigVerticalList(selectedVertical: selectedVertical,
                    itemsearch: itemsearch,ontap: (int index){
                      setState(() {
                        print("taped");
                        select=false;
                        selectedVertical=index;

                        // clear();

                        setState(() {});
                        veritiaclid = result[index].id;
                        context.read<ReadDivisionConfigCubit>().getDivisionConfigRead(veritiaclid!);

                      });
                    },result: result,
                    search: (va){
                      context
                          .read<ListDivisionCubit>()
                          .getSearchDevisionList(va);
                      if(va==""){
                        clear();
                        setState(() {
                          context.read<ListDivisionCubit>().getDivisionVerticalList();
                        });


                      }

                    },

                    child: tablePagination(
                          () => context
                          .read<ListDivisionCubit>()
                          .refresh(),
                      back: paginatedList?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<ListDivisionCubit>()
                            .previuosslotSectionPageList();
                      },
                      next:paginatedList?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<ListDivisionCubit>()
                            .nextslotSectionPageList();
                      },
                    ),
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    TextButtonLarge(
                      text: "CREATE",
                      onPress: (){
                        setState(() {
                        clear();
                        categoryList?.clear();
                        groupList?.clear();
                        uomList?.clear();

                          select=true;
                        });



                      },
                    ),

                    DivisionStableTable(
                      image1Name:image1NameController,
                      select:select,
                     code: codeController,
                      active: isActive,
                      image1: image1Controller,
                      description: descriptionController,
                      priority: priorityController,
                      name: nameController,
                      activeChange: activeChange,
                      isMoxed: ismixed,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(text: "UOM"),
                      ],
                    ),
                    Divider(color: Colors.grey,thickness: 1,),
                    SizedBox(height: height*.04,),

                    UomTable(list: uomList,uomTableEdit: TableAssign),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(text: "Group"),
                      ],
                    ),
                    Divider(color: Colors.grey,thickness: 1,),
                    SizedBox(height: height*.04,),
                    GroupTable(list: groupList,uomTableEdit:TableAssign ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(text: "Category"),
                      ],
                    ),
                    Divider(color: Colors.grey,thickness: 1,),
                    SizedBox(height: height*.04,),
                    CategoryTable(list: categoryList,uomTableEdit:TableAssign ),
                    SizedBox(height: height * .13,),
                    Container(
                      margin:EdgeInsets.only(right: width*.004) ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [


                          Button(Icons.delete, Colors.red,
                              ctx: context,
                              text: "DISCARD",
                              onApply: () {
                                if(select==true)
                                  clear();
                                else{
                                  showDailogPopUp(
                                      context,
                                      ConfirmationPopup(
                                        // table:table,
                                        // clear:clear(),
                                        verticalId:veritiaclid ,
                                        onPressed:(){

                                          Navigator.pop(context);
                                          context.read<DeletioncostingCubit>().CostingDelete(veritiaclid,type:"8");

                                        },


                                      ));

                                }
                              },
                              height: 29,
                              width: 90,
                              labelcolor: Colors.red,
                              iconColor: Colors.red,
                              bdr: true),
                          SizedBox(
                            width: width * .008,
                          ),
                          Button(Icons.check, Colors.grey,
                              ctx: context,
                              text: select?"SAVE":"UPDATE",
                              height: 29,
                              Color: Color(0xff3E4F5B),
                              width: 90,
                              labelcolor: Colors.white,
                              iconColor: Colors.white,
                              onApply: () {

                            List<String> uomlist1=[];
                            List<String>  grouplist1=[];
                            List<String>  category1=[];
                           if(uomList?.isNotEmpty==true){
                             for( int i=0;i<uomList!.length;i++){
                               if(uomList?[i].isActive==true){
                                 if(uomList?[i].uomCode!=null)
                                 uomlist1.add(uomList?[i].uomCode??"");
                               }
                             }
                           }   if(groupList?.isNotEmpty==true){
                             for( int i=0;i<groupList!.length;i++){
                               if(groupList?[i].isActive==true){
                                 if(groupList?[i].code!=null)
                                 grouplist1.add(groupList?[i].code??"");
                               }
                             }
                           }
                           if(categoryList?.isNotEmpty==true){
                             for( int i=0;i<categoryList!.length;i++){
                               if(categoryList?[i].code!=null)
                               if(categoryList?[i].isActive==true){
                                 category1.add(categoryList?[i].code??"");
                               }
                             }
                           }
                            print(uomlist1);
                            print(grouplist1);
                            print(category1);




                              if(select){  DivisionCreationtModel model=DivisionCreationtModel(
                                  name: nameController.text.isEmpty?null:nameController.text,
                                  description: descriptionController.text.isEmpty?null:descriptionController.text,
                                  image: image1Controller.text.isEmpty?null:image1Controller.text,
                                  priority:int.tryParse(priorityController.text),
                                  uomCode: uomlist1,
                                  categoryCode: category1,
                                  groupCode: grouplist1,
                                isMixed: ismixed,

                                );
                              print(model);
                              context.read<DivisionConfigurationCubit>().postCreateDivisionConfig(model);

                              }
                              else{
                                DivisionCreationtModel model=DivisionCreationtModel(
                                  name: nameController.text.isEmpty?null:nameController.text,
                                  description: descriptionController.text.isEmpty?null:descriptionController.text,
                                  image: image1Controller.text.isEmpty?null:image1Controller.text,
                                  isMixed: ismixed,
                                  isActive: isActive,
                                  priority:int.tryParse(priorityController.text),
                                  uomCode: uomlist1,
                                  categoryCode: category1,
                                  groupCode: grouplist1,

                                );
                                print(model);
                                context.read<DivisionConfigurationCubit>().patchDivisionConfig(model,veritiaclid);

                              }




                              }),
                          SizedBox(
                            width: width * .008,
                          ),
                        ],
                      ),
                    ),


                  ],))
                ],
              ),
            ),
          );
    }
  );
  },
),
),
),
    );

  }
}
