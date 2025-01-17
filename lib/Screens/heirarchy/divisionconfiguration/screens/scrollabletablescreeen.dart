import 'package:flutter/material.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/model/creationmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
bool onChange=false;
class UomTable extends StatefulWidget {
 final List<DataInclude>?list;
  final Function uomTableEdit;
  final bool isMixed;
  UomTable({required Key key,required this.list,required this.uomTableEdit,required this.isMixed}):super(key: key);
  @override
  UomTableState createState() => UomTableState();
}

class UomTableState extends State<UomTable> {


  bool onChange=false;
  List<DataInclude>uomList=List.from([]);
  List<bool>upDate=[];

  List<bool>upDateButton=[];
  List<TextEditingController> codeListController= [];
  TextEditingController code =TextEditingController();
  TextEditingController name =TextEditingController();
  bool Active=false;
  bool onSaveActive = false;

  clears(){

setState(() {
  code.clear();
  name.clear();
  upDate.clear();
  upDateButton.clear();
  uomList.clear();
  codeListController.clear();
});

  }

  saveButtonActovde(String name,String code){

    onChange=true;
    if(name!="" && code!=""){
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(widget.list);
    if(onChange==false){
      codeListController.clear();
      // uomList.clear();
setState(() {


      uomList=List.from(widget.list??[]);
      if(uomList.isNotEmpty==true){
        for( var i=0;i<uomList.length; i++){
          upDate.add(false);
          upDateButton.add(false);
          var codevalue = new TextEditingController(text: uomList[i].uomCode==null?"":uomList[i].uomCode);
          codeListController.add(codevalue);

        }

      }
});
    }
    onChange=false;




    return
      Container(
        margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
        width: 2200,
        // padding: EdgeInsets.all(10),
        child: customTable(

          // border:  TableBorder(
          //
          //   verticalInside: BorderSide(
          //       width:.5,
          //       color: Colors.black45,
          //       style: BorderStyle.solid),
          //   horizontalInside: BorderSide(
          //       width:.3,
          //       color: Colors.black45,
          //       // color: Colors.blue,
          //       style: BorderStyle.solid),),

          tableWidth: .5,

          childrens:[
            TableRow(

              // decoration: BoxDecoration(

              //     color: Colors.green.shade200,

              //     shape: BoxShape.rectangle,

              //     border: const Border(bottom: BorderSide(color: Colors.grey))),

              children: [

                tableHeadtext(

                  'UOM Code',

                  // padding: EdgeInsets.all(7),
                  //
                  // height: 46,
                  textColor: Colors.white,

                  size: 13,


                ),


                tableHeadtext(
                  'UOM Name',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  'Status',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  '',
                  textColor: Colors.white,
                  padding: EdgeInsets.all(7),
                  height: 46,
                  size: 13,
                ),


              ],

            ),
            if(widget.isMixed==true)
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,


                  ]),
    if(widget.isMixed!=true)...[
    if(uomList.isNotEmpty)...[
              for(var i=0;i<uomList.length;i++)...[
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
                          UnderLinedInput(
                            suffixIconEnable: true,
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            formatter: false,
                           controller: codeListController[i],

                            onClick: () {
                              if(upDate[i])
                              showDailogPopUp(
                                context,
                                TableConfigurePopup(
                                  type: "UomDivision_ConfigPopup",
                                  valueSelect: (BrandListModel va) {
                                    onChange=true;
                                    setState(() {
                                      uomList[i] =
                                          uomList[i].copyWith(
                                              name: va.name,uomCode: va.uomCode);
                                      codeListController[i]=TextEditingController(text: va.uomCode);
                                      upDateButton[i]=true;




                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                              );
                            },
                          ),



                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,


                          child:textPadding(uomList[i].name??"",
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                            height: 48,
                            color: upDate[i]
                                ? Colors.white
                                : Colors.transparent,
                              ),





                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   CheckedBoxs(
                          color:upDate[i]?Colors.white:Colors.transparent,

                            valueChanger: uomList[i].isActive??false,
                            onSelection:(va){
                              onChange=true;
                              if (upDate[i] == true) {
                                upDateButton[i] = true;
                                bool? isActive = uomList[i].isActive;
                                isActive = !isActive!;
                                uomList[i] =
                                    uomList[i].copyWith(
                                        isActive: isActive);
                                setState(() {

                                });
                              }}

                        ),),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Row(
                            children: [
                              TableTextButton(
                                buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                label: upDateButton[i]==true?"Update":"Edit",
                                // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                onPress: () {
                                  onChange=true;


                                  setState(() {
                                    upDate[i]=!upDate[i];
                                    if( upDateButton[i]==true){




                                      widget.uomTableEdit(
                                          type: "1", list: uomList);
                                      upDateButton[i]=false;

                                    }


                                  });


                                },
                              ),
                              TableIconTextButton(
                                label: "",
                                icon: Icons.delete,
                                onPress: () {
                                  onChange=true;

                                  setState(() {

                                    // print(keys);
                                    print(i);


                                    uomList?.removeAt(i);
                                    upDate.removeAt(i);
                                    codeListController.removeAt(i);
                                    upDateButton.removeAt(i);
                                    widget.uomTableEdit(
                                        type: "1", list: uomList);
                                    // nameListTextEditingController.removeAt(i);
                                    //
                                    // print(keys);
                                    //
                                    // aboutProducts = Storage(
                                    //     name: headingController.text, keyValues: keys);
                                    // widget.storageTableEdit(
                                    //     type: "1", list: aboutProducts);
                                  });
                                  setState(() {

                                  });

                                },
                              ),

                            ],
                          )),




                    ]),


              ],],
            TableRow(
                decoration: BoxDecoration(
                    color: Pellet.tableRowColor,
                    shape: BoxShape.rectangle,
                    border:  Border(
                        left: BorderSide(

                            color:  Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        bottom: BorderSide(

                            color: Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3E4F5B).withOpacity(.1),

                            style: BorderStyle.solid))),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: UnderLinedInput(
                      suffixIconEnable: true,



                      controller: code,

                      onClick: () {

                          showDailogPopUp(
                            context,
                            TableConfigurePopup(
                              type: "UomDivision_ConfigPopup",
                              valueSelect: (BrandListModel va) {
                                onChange=true;
                                setState(() {
                                  print("ssssssssssssssss"+va.uomCode.toString());
                                  code.text=va.uomCode??"";
                                  name.text=va.name??"";
                                  saveButtonActovde(code.text,name.text);






                                  // onChange = true;
                                  // orderType.text = va!;
                                });
                              },
                            ),
                          );
                      },
                    ),
                  ),

                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child:textPadding(name.text??"")
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,

                    child:   CheckedBoxs(


                        valueChanger:Active,
                        onSelection:(va) {
                          onChange = true;


                          setState(() {
                            Active = !Active;
                          });
                        } ),),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: TableTextButton(
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                        label: "Save",
                        onPress: () {
                          onChange = true;
                          if (code.text.isNotEmpty && name.text.isNotEmpty) {
                            DataInclude model = DataInclude(
                              name: name.text ?? "",
                              uomCode: code.text ?? '',
                              isActive: Active
                            );
                            print(model);
                            setState(() {
                              uomList?.add(model);

                              upDate.add(false);
                              upDateButton.add(false);
                              var codeValue = new TextEditingController(text: code.text);


                              codeListController.add(codeValue);



                              widget.uomTableEdit(
                                  type: "1", list: uomList);
                              code.text = "";
                              name.text = "";
                              Active=false;
                              onSaveActive=false;
                            });
                          }
                        }),
                  )  ,


                ]),
          ]],
          widths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),



          },
        ),


      );
  }
}

class GroupTable extends StatefulWidget {
  List<DataInclude>?list;
  final Function uomTableEdit;
  final bool isMixed;

  GroupTable({required Key key, required this.list,required this.uomTableEdit,required this.isMixed}): super(key: key);
  @override
  GroupTableState createState() => GroupTableState();
}

class GroupTableState extends State<GroupTable> {



  List<DataInclude>groupList=[];
  List<bool>upDate=[];

  List<bool>upDateButton=[];
  List<TextEditingController> codeListController= [];
  TextEditingController code =TextEditingController(text: "");
  TextEditingController name =TextEditingController(text: "");
  bool Active=false;
  bool onSaveActive = false;


  saveButtonActovde(String name,String code){

    onChange=true;
    if(name!="" && code!=""){
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

  @override
  void initState() {

    super.initState();
  }
  clears(){
    print("AKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
    setState(() {
      groupList.clear();
      upDate.clear();
      upDateButton.clear();
      codeListController.clear();
      code.text="";
      name.text="";
      Active=false;
    });

  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(widget.list);
    if(onChange==false){
      // clears();
      // codeListController.clear();
      // groupList.clear();
      setState(() {


        groupList=widget.list??[];
        if(groupList.isNotEmpty==true){
          for( var i=0;i<groupList.length; i++){
            upDate.add(false);
            upDateButton.add(false);
            var codevalue = new TextEditingController(text: groupList[i].code==null?"":groupList[i].code);
            codeListController.add(codevalue);

          }

        }
      });
    }
    onChange=false;




    return
      Container(
        margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
        width: 2200,
        // padding: EdgeInsets.all(10),
        child: customTable(

          // border:  TableBorder(
          //
          //   verticalInside: BorderSide(
          //       width:.5,
          //       color: Colors.black45,
          //       style: BorderStyle.solid),
          //   horizontalInside: BorderSide(
          //       width:.3,
          //       color: Colors.black45,
          //       // color: Colors.blue,
          //       style: BorderStyle.solid),),

          tableWidth: .5,

          childrens:[
            TableRow(

              // decoration: BoxDecoration(

              //     color: Colors.green.shade200,

              //     shape: BoxShape.rectangle,

              //     border: const Border(bottom: BorderSide(color: Colors.grey))),

              children: [

                tableHeadtext(

                  'Group Code',

                  // padding: EdgeInsets.all(7),
                  //
                  // height: 46,
                  textColor: Colors.white,

                  size: 13,


                ),


                tableHeadtext(
                  'Group Name',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  'Status',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  '',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),


              ],

            ),
            if(widget.isMixed==true)
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,


                  ]),
            if(widget.isMixed!=true)...[
            if(groupList.isNotEmpty)...[
              for(var i=0;i<groupList.length;i++)...[
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
                        UnderLinedInput(
                          suffixIconEnable: true,
                          readOnly: !upDate[i],
                          filledColour: upDate[i]?Colors.white:Colors.transparent,
                          formatter: false,
                          controller: codeListController[i],

                          onClick: () {
                            if(upDate[i])
                              showDailogPopUp(
                                context,
                                TableConfigurePopup(
                                  type: "GroupDivision_Popup",
                                  valueSelect: (BrandListModel va) {
                                    onChange=true;
                                    setState(() {
                                      groupList[i] =
                                          groupList[i].copyWith(
                                              name: va.name,code: va.code);
                                      codeListController[i]=TextEditingController(text: va.code);
                                      upDateButton[i]=true;




                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                              );
                          },
                        ),



                      ),

                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,


                        child:textPadding(groupList[i].name??"",
                          height: 48,
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                            color: upDate[i]
                                ? Colors.white
                                : Colors.transparent,
                            ),





                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   CheckedBoxs(
                            color:upDate[i]?Colors.white:Colors.transparent,

                            valueChanger: groupList[i].isActive??false,
                            onSelection:(va){
                              onChange=true;
                              if (upDate[i] == true) {
                                upDateButton[i] = true;
                                bool? isActive = groupList[i].isActive;
                                isActive = !isActive!;
                                groupList[i] =
                                    groupList[i].copyWith(
                                        isActive: isActive);
                                setState(() {

                                });
                              }}

                        ),),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Row(
                            children: [
                              TableTextButton(
                                buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                label: upDateButton[i]==true?"Update":"Edit",
                                // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                onPress: () {
                                  onChange=true;


                                  setState(() {
                                    upDate[i]=!upDate[i];
                                    if( upDateButton[i]==true){




                                      widget.uomTableEdit(
                                          type: "2", list: groupList);
                                      upDateButton[i]=false;

                                    }


                                  });


                                },
                              ),
                              TableIconTextButton(
                                label: "",
                                icon: Icons.delete,
                                onPress: () {
                                  onChange=true;

                                  setState(() {

                                    // print(keys);
                                    print(i);


                                    groupList?.removeAt(i);
                                    upDate.removeAt(i);
                                    codeListController.removeAt(i);
                                    upDateButton.removeAt(i);
                                    widget.uomTableEdit(
                                        type: "2", list: groupList);
                                    // nameListTextEditingController.removeAt(i);
                                    //
                                    // print(keys);
                                    //
                                    // aboutProducts = Storage(
                                    //     name: headingController.text, keyValues: keys);
                                    // widget.storageTableEdit(
                                    //     type: "1", list: aboutProducts);
                                  });
                                  setState(() {

                                  });

                                },
                              ),

                            ],
                          )),




                    ]),


              ],],
            TableRow(
                decoration: BoxDecoration(
                    color: Pellet.tableRowColor,
                    shape: BoxShape.rectangle,
                    border:  Border(
                        left: BorderSide(

                            color:  Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        bottom: BorderSide(

                            color: Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3E4F5B).withOpacity(.1),

                            style: BorderStyle.solid))),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: UnderLinedInput(
                      suffixIconEnable: true,



                      controller: code,

                      onClick: () {

                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            type: "GroupDivision_Popup",
                            valueSelect: (BrandListModel va) {
                              onChange=true;
                              setState(() {

                                code.text=va.code??"";
                                name.text=va.name??"";
                                saveButtonActovde(code.text,name.text);






                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),

                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child:textPadding(name?.text??"")
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,

                    child:   CheckedBoxs(


                        valueChanger:Active,
                        onSelection:(va) {
                          onChange = true;


                          setState(() {
                            Active = !Active;
                          });
                        } ),),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: TableTextButton(
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                        label: "Save",
                        onPress: () {
                          onChange = true;
                          if (code.text.isNotEmpty && name.text.isNotEmpty) {
                            DataInclude model = DataInclude(
                                name: name.text ?? "",
                                code: code.text ?? '',
                                isActive: Active
                            );
                            print(model);
                            setState(() {
                              groupList?.add(model);

                              upDate.add(false);
                              upDateButton.add(false);
                              var codeValue = new TextEditingController(text: code.text);


                              codeListController.add(codeValue);



                              widget.uomTableEdit(
                                  type: "2", list: groupList);
                              code.text = "";
                              name.text = "";
                              Active=false;
                              onSaveActive=false;
                            });
                          }
                        }),
                  )  ,


                ]),
          ]],
          widths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),



          },
        ),


      );
  }
}



class CategoryTable extends StatefulWidget {
  List<DataInclude>?list;
  final bool isMixed;
  final Function uomTableEdit;
  CategoryTable({required Key key,required this.list,required this.uomTableEdit,required this.isMixed}):super(key: key);
  @override
  CategoryTableState createState() => CategoryTableState();
}

class CategoryTableState extends State<CategoryTable> {


  bool onChange=false;
  List<DataInclude>categoryList=[];
  List<bool>upDate=[];

  List<bool>upDateButton=[];
  List<TextEditingController> codeListController= [];
  TextEditingController code =TextEditingController();
  TextEditingController name =TextEditingController();
  bool Active=false;
  bool onSaveActive = false;


  saveButtonActovde(String name,String code){

    onChange=true;
    if(name!="" && code!=""){
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
  clears(){
    setState(() {
      categoryList.clear();
      upDate.clear();
      codeListController.clear();upDateButton.clear();code.clear();
      name.clear();
    });

  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(widget.list);
    if(onChange==false){

      categoryList.clear();
      setState(() {


        categoryList=List.from(widget.list??[]);
        if(categoryList.isNotEmpty==true){
          for( var i=0;i<categoryList.length; i++){
            upDate.add(false);
            upDateButton.add(false);
            var codevalue = new TextEditingController(text: categoryList[i].code==null?"":categoryList[i].code);
            codeListController.add(codevalue);

          }

        }
      });
    }
    onChange=false;




    return
      Container(
        margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
        width: 2200,
        // padding: EdgeInsets.all(10),
        child: customTable(

          // border:  TableBorder(
          //
          //   verticalInside: BorderSide(
          //       width:.5,
          //       color: Colors.black45,
          //       style: BorderStyle.solid),
          //   horizontalInside: BorderSide(
          //       width:.3,
          //       color: Colors.black45,
          //       // color: Colors.blue,
          //       style: BorderStyle.solid),),

          tableWidth: .5,

          childrens:[
            TableRow(

              // decoration: BoxDecoration(

              //     color: Colors.green.shade200,

              //     shape: BoxShape.rectangle,

              //     border: const Border(bottom: BorderSide(color: Colors.grey))),

              children: [

                tableHeadtext(

                  'Category Code',

                  // padding: EdgeInsets.all(7),
                  //
                  // height: 46,
                  textColor: Colors.white,

                  size: 13,


                ),


                tableHeadtext(
                  'Category Name',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  'Status',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),
                tableHeadtext(
                  '',
                  textColor: Colors.white,
                  // padding: EdgeInsets.all(7),
                  // height: 46,
                  size: 13,
                ),


              ],

            ),
            if(widget.isMixed==true)
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: textPadding("",height: 48),
                    )  ,


                  ]),
            if(widget.isMixed!=true)...[
         if(categoryList.isNotEmpty)...[
              for(var i=0;i<categoryList.length;i++)...[
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
                        UnderLinedInput(
                          suffixIconEnable: true,
                          readOnly: !upDate[i],
                          filledColour: upDate[i]?Colors.white:Colors.transparent,
                          formatter: false,
                          controller: codeListController[i],

                          onClick: () {
                            if(upDate[i])
                              showDailogPopUp(
                                context,
                                TableConfigurePopup(
                                  type: "categoryDivision_Popup",
                                  valueSelect: (BrandListModel va) {
                                    onChange=true;
                                    setState(() {
                                      categoryList[i] =
                                          categoryList[i].copyWith(
                                              name: va.name,code: va.code);
                                      codeListController[i]=TextEditingController(text: va.code);
                                      upDateButton[i]=true;




                                      // onChange = true;
                                      // orderType.text = va!;
                                    });
                                  },
                                ),
                              );
                          },
                        ),



                      ),

                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,


                        child:textPadding(categoryList[i].name??"",
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                            height: 48,
                            color: upDate[i]
                                ? Colors.white
                                : Colors.transparent,
                            ),





                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:   CheckedBoxs(
                            color:upDate[i]?Colors.white:Colors.transparent,

                            valueChanger: categoryList[i].isActive??false,
                            onSelection:(va){
                              onChange=true;
                              if (upDate[i] == true) {
                                upDateButton[i] = true;
                                bool? isActive = categoryList[i].isActive;
                                isActive = !isActive!;
                                categoryList[i] =
                                    categoryList[i].copyWith(
                                        isActive: isActive);
                                setState(() {

                                });
                              }}

                        ),),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Row(
                            children: [
                              TableTextButton(
                                buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                label: upDateButton[i]==true?"Update":"Edit",
                                // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                onPress: () {
                                  onChange=true;


                                  setState(() {
                                    upDate[i]=!upDate[i];
                                    if( upDateButton[i]==true){




                                      widget.uomTableEdit(
                                          type: "3", list: categoryList);
                                      upDateButton[i]=false;

                                    }


                                  });


                                },
                              ),
                              TableIconTextButton(
                                label: "",
                                icon: Icons.delete,
                                onPress: () {
                                  onChange=true;

                                  setState(() {

                                    // print(keys);
                                    print(i);


                                    categoryList?.removeAt(i);
                                    upDate.removeAt(i);
                                    codeListController.removeAt(i);
                                    upDateButton.removeAt(i);
                                    widget.uomTableEdit(
                                        type: "3", list: categoryList);
                                    // nameListTextEditingController.removeAt(i);
                                    //
                                    // print(keys);
                                    //
                                    // aboutProducts = Storage(
                                    //     name: headingController.text, keyValues: keys);
                                    // widget.storageTableEdit(
                                    //     type: "1", list: aboutProducts);
                                  });
                                  setState(() {

                                  });

                                },
                              ),

                            ],
                          )),




                    ]),


              ],],
            TableRow(
                decoration: BoxDecoration(
                    color: Pellet.tableRowColor,
                    shape: BoxShape.rectangle,
                    border:  Border(
                        left: BorderSide(

                            color:  Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        bottom: BorderSide(

                            color: Color(0xff3E4F5B).withOpacity(.1),
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: Color(0xff3E4F5B).withOpacity(.1),

                            style: BorderStyle.solid))),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: UnderLinedInput(
                      suffixIconEnable: true,



                      controller: code,

                      onClick: () {

                        showDailogPopUp(
                          context,
                          TableConfigurePopup(
                            type: "categoryDivision_Popup",
                            valueSelect: (BrandListModel va) {
                              onChange=true;
                              setState(() {

                                code.text=va.code??"";
                                name.text=va.name??"";
                                saveButtonActovde(code.text,name.text);






                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),

                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child:textPadding(name.text??"")
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,

                    child:   CheckedBoxs(


                        valueChanger:Active,
                        onSelection:(va) {
                          onChange = true;


                          setState(() {
                            Active = !Active;
                          });
                        } ),),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: TableTextButton(
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                        label: "Save",
                        onPress: () {
                          onChange = true;
                          if (code.text.isNotEmpty && name.text.isNotEmpty) {
                            DataInclude model = DataInclude(
                                name: name.text ?? "",
                                code: code.text ?? '',
                                isActive: Active
                            );
                            print(model);
                            setState(() {
                              categoryList?.add(model);

                              upDate.add(false);
                              upDateButton.add(false);
                              var codeValue = new TextEditingController(text: code.text);


                              codeListController.add(codeValue);



                              widget.uomTableEdit(
                                  type: "3", list: categoryList);
                              code.text = "";
                              name.text = "";
                              Active=false;
                              onSaveActive=false;
                            });
                          }
                        }),
                  )  ,


                ]),
          ]],
          widths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),



          },
        ),


      );
  }
}