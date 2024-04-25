import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';

import '../Screens/GeneralScreen.dart';
import 'loading_widgets.dart';

class Buttons extends StatelessWidget {
  final Color clr;
  final Color border;
  final double height;
  final double width;
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color labelcolor;
  final Function onApply;
  Buttons({required this.text,
  this.width=30,
    required this. onApply,
  this.height=30,
  this.labelcolor=Colors.black,
  this.iconColor=Colors.black,
  required this.icon,this.clr=Pellet.tableBlueHeaderPrint,this.border=Colors.white});




  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        onApply();
      },
      child: Container(
        margin: EdgeInsets.only(right:w *.02,left: w *.02),
        alignment:  Alignment.center,
        height: height,
        width: width,
        decoration:  BoxDecoration(
          color: clr,
          border: Border.all(
            color: border, //color of border
            width: 2,

          ), //Border
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(icon,color: iconColor,),
            Text(text,style: TextStyle(color: labelcolor,fontWeight: FontWeight.bold),)
          ],
        ),//BoxDecoration
      ),
    );

  }
}
class TextButtonLarge extends StatelessWidget {
  final String? images;
  final String text;
  final bool bdr;
  final IconData? icon;
  final Function  onPress;
  final double  W;
  final double  H;
  Color clr;
  final Color border;
  final Color  labelcolor ;
  final bool marginCheck;
  final bool marginAvoid;
  final bool isLoading;

   TextButtonLarge({Key? key,this.marginCheck=false,this.W=80,this.H=43,this.labelcolor=Colors.white,this.marginAvoid=false, this.clr=Pellet.tableBlueHeaderPrint, this.images, required this.text,this.icon,required this.onPress,  this.bdr=false,  this.border=Colors.red,this.isLoading=false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 double h=MediaQuery.of(context).size.height;
 double w=MediaQuery.of(context).size.width;
 return Column(
   children: [
     GestureDetector(
       onTap:(){
         onPress();
       },
       child: Container(
        width:marginAvoid?100:null ,
         // alignment: Alignment.center,

         margin: marginAvoid?null:marginCheck?EdgeInsets.only(top: h*.022,right:w *.0048):EdgeInsets.only(right:w *.018,top: h*.022),
         decoration: BoxDecoration(
           color: clr,
             border: bdr
                 ? Border.all(
               color: border, //color of border
               width: 1,
             )
                 : Border()

         ),
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

         child: isLoading?customCommonButtonProgressIndiactor(labelcolor==Colors.red):Text(text,textAlign:TextAlign.center,style: TextStyle(color: labelcolor,fontSize: 12),),
       ),
     ),
     // Container(
     //
     //
     //      margin: EdgeInsets.only(right:w *.02,left: w *.02,top: h*.014),
     //      alignment: Alignment.center,
     //
     //      child: TextButton(onPressed:(){onPress(); },
     //          style: ButtonStyle(
     //              shape: MaterialStateProperty.all(
     //                  RoundedRectangleBorder(
     //                      borderRadius: BorderRadius.zero,
     //                      side: BorderSide(color: clr)
     //                  )
     //              ),backgroundColor: MaterialStateProperty.all( clr)
     //          ), child: Row(mainAxisAlignment: MainAxisAlignment.center,
     //            children: [
     //              // Icon(icon),
     //              // Image(image: AssetImage(images),height: 5,
     //              //   // width: context.blockSizeHorizontal*1.5,
     //              // ),
     //              // SizedBox(width: 3,),
     //              Text(text,textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 9),),
     //            ],
     //          )),
     //    ),
   ],
 );
  }
}
class TableTextButton extends StatefulWidget {
  final String label;
  final Function onPress;
  final bool actionCheck;
  final bool designCheck;
  final IconData? icon;
  final Color bagroundColor;
  final Color buttonBagroundColor;
  final Color textColor;

  TableTextButton({required this.label,required this.onPress,this.actionCheck=false,this.textColor=Pellet.tableBlueHeaderPrint,this.buttonBagroundColor=Colors.transparent,
    this.designCheck=false,this.icon,this.bagroundColor= const Color(0xffEAEAEA)});

  @override
  _TableTextButtonState createState() => _TableTextButtonState();
}

class _TableTextButtonState extends State<TableTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.05,
      margin: EdgeInsets.symmetric(horizontal:7),
      color: widget.buttonBagroundColor,
      child: widget.designCheck?
      InkWell(
        onTap: (){ widget.onPress();},
        child: Center(
          child: Icon(widget.actionCheck?Icons.add:Icons.delete,color:widget.actionCheck?Colors.blue: widget.textColor,size: 17,),
        ),
      ):

      Container(


        decoration: BoxDecoration(

            color:widget.bagroundColor ,
            borderRadius:BorderRadius.all(Radius.circular(5))

        ),


        padding: EdgeInsets.symmetric(horizontal:12,vertical: 8),
        child: InkWell(
            // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Pellet.tableBlueHeaderPrint)),

            // style: TextButton.styleFrom(primary: widget.textColor, backgroundColor: widget.bagroundColor
            // ),
            onTap: () {
              widget.onPress();


            },
            child: widget.icon!=null?Icon(widget.icon,color: widget.textColor,):Text(widget.label,style: TextStyle(color: widget.textColor),textAlign:TextAlign.center ,)

        ),
      ),
    );
  }
}



class SaveUpdateResponsiveButton extends StatelessWidget {
final Function discardFunction;
final Function saveFunction;
final String label;
final String deleteLabel;
final bool  isDelete;
final bool  dividercheck;
final bool  isSaveUpdateLoading;
final bool  isClearDeketeLoading;
SaveUpdateResponsiveButton({required this.label,this.deleteLabel="Discard",this.dividercheck=true,this.isDelete=false,required this.saveFunction,required this.discardFunction,this.isClearDeketeLoading=false,this.isSaveUpdateLoading=false});


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return   Column(
      children: [
     if(dividercheck)   CustomDivider(),
        SizedBox(height: 10,),
        Container(

          margin:EdgeInsets.only(right: width*.011) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [


            if(isDelete==false)  TextButtonLarge(
              isLoading: isClearDeketeLoading,

                  text: deleteLabel,
                  onPress: (){
                discardFunction();
                  },
                marginAvoid: true,
                labelcolor: Colors.red,
                clr: Colors.white,
                  // height: 29,
                  // width: 90,
                  // labelcolor: Colors.red,
                  // iconColor: Colors.red,
                  bdr: true),
              SizedBox(
                width: width * .008,
              ),
              TextButtonLarge(
                  isLoading:isSaveUpdateLoading ,

                  text:label,
                  marginAvoid: true,



                  labelcolor: Colors.white,

                  onPress: () {
                saveFunction();
                  }),
              SizedBox(
                width: width * .008,
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}








class TableIconTextButton extends StatefulWidget {
  final String label;
  final Function onPress;
  final bool actionCheck;
  final bool designCheck;
  final IconData? icon;
  final Color bagroundColor;
  final Color buttonBagroundColor;
  final Color textColor;

  TableIconTextButton({required this.label,required this.onPress,this.actionCheck=false,this.textColor=Pellet.tableBlueHeaderPrint,this.buttonBagroundColor=Colors.transparent,
    this.designCheck=false,this.icon,this.bagroundColor= const Color(0xffEAEAEA)});

  @override
  _TableIconTextButtonState createState() => _TableIconTextButtonState();
}

class _TableIconTextButtonState extends State<TableIconTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,


      color: widget.buttonBagroundColor,

      child: InkWell(
        onTap: (){ widget.onPress();},
        child: Center(
          child: Icon(widget.actionCheck?Icons.add:widget.icon,color:widget.actionCheck?Colors.blue: widget.textColor,size: MediaQuery.of(context).size.width*.014,),
        ),
      )


    );
  }
}


class CreateTextButton extends StatefulWidget {
  final String label;
  final Function onPress;
  final bool actionCheck;
  final bool designCheck;

  CreateTextButton({required this.label,required this.onPress,this.actionCheck=false,this.designCheck=false});

  @override
  _CreateTextButtonState createState() => _CreateTextButtonState();
}

class _CreateTextButtonState extends State<CreateTextButton> {
  @override
  Widget build(BuildContext context) {
    return
      TextButton(onPressed: (){
        widget.onPress();

      }, child: Text(widget.label));
  }
}