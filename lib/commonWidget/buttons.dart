import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Colors.dart';

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
  required this.icon,this.clr=Colors.black,this.border=Colors.white});




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
            Icon(icon,color: iconColor,),
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
  final IconData? icon;
  final Function  onPress;
  Color clr;

   TextButtonLarge({Key? key, this.clr=const Color(0XFF24203F), this.images, required this.text,this.icon,required this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 double h=MediaQuery.of(context).size.height;
 double w=MediaQuery.of(context).size.width;
 return Container(

      width: w/15,
      height:h/15,
      margin: EdgeInsets.only(right:w *.02,left: w *.02),
      alignment: Alignment.center,

      child: TextButton(onPressed:(){onPress(); },
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: clr)
                  )
              ),backgroundColor: MaterialStateProperty.all( clr)
          ), child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(icon),
              // Image(image: AssetImage(images),height: 5,
              //   // width: context.blockSizeHorizontal*1.5,
              // ),
              // SizedBox(width: 3,),
              Text(text,textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 9),),
            ],
          )),
    );
  }
}
class TableTextButton extends StatefulWidget {
  final String label;
  final Function onPress;
  final bool actionCheck;
  final bool designCheck;
  final IconData? icon;

  TableTextButton({required this.label,required this.onPress,this.actionCheck=false,this.designCheck=false,this.icon});

  @override
  _TableTextButtonState createState() => _TableTextButtonState();
}

class _TableTextButtonState extends State<TableTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // color: Colors.blue,

      child: widget.designCheck?InkWell(
        onTap: (){ widget.onPress();},
        child: Center(
          child: Icon(widget.actionCheck?Icons.add:Icons.delete,color:widget.actionCheck?Colors.blue: Colors.red,size: 18,),
        ),
      ):

      Container(
        margin: EdgeInsets.symmetric(vertical: 9,horizontal: 5),
        child: TextButton(
            // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Pellet.tableBlueHeaderPrint)),

            // style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.red
            // ),
            onPressed: () {
              widget.onPress();


            },
            child: widget.icon!=null?Icon(widget.icon,color: Pellet.tableBlueHeaderPrint,):Text(widget.label,style: TextStyle(color: Colors.white),)

        ),
      ),
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