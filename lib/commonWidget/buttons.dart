import 'package:flutter/material.dart';

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

    return GestureDetector(
      onTap: (){
        onApply();
      },
      child: Container(
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
  const TextButtonLarge({Key? key,  this.images, required this.text,this.icon,required this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: TextButton(onPressed:(){onPress(); },
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Color(0XFF24203F))
                  )
              ),backgroundColor: MaterialStateProperty.all(Color(0XFF24203F))
          ), child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              // Image(image: AssetImage(images),height: 5,
              //   // width: context.blockSizeHorizontal*1.5,
              // ),
              SizedBox(width: 3,),
              Text(text,style: TextStyle(color: Colors.white,fontSize: 9),),
            ],
          )),
    );
  }
}