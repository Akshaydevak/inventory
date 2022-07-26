import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/widgets/titleIcon.dart';
import 'package:provider/provider.dart';

import 'Dashboard.dart';

class Titlecard extends StatefulWidget {
  final TabController   _tabController;
   bool pressed;
  Titlecard(this._tabController,this.pressed);


  @override
  State<Titlecard> createState() => _TitlecardState();
}

class _TitlecardState extends State<Titlecard> with TickerProviderStateMixin{
  bool isCollapsed=false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
     isCollapsed = provider.isCollapsed;

    Size size=MediaQuery.of(context).size;

    return
      Container(
      width:size.width,
      height: size.height/7,

      color: Color(0xff3E4F5B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(width:size.width*.024 ,),

              Container(
                  margin: EdgeInsets.only(top: size.height*.003,),
                  child: Image.asset('asset/logo1.png',color: Colors.white,height:37,
                    width: size.width*.08,
                    fit: BoxFit.cover,)),
               SizedBox(width: size.width*.03,),
              searchField(context),
              SizedBox(width:size.width*.054 ,),
              TitleIcon(image: "asset/icon1.png",),
              SizedBox(width: size.width*.023,),
              TitleIcon(image: "asset/icon2.png",),
              SizedBox(width: size.width*.023,),
              TitleIcon(image: "asset/vector1.png",),
              SizedBox(width: size.width*.023,),
              TitleIcon(image: "asset/setting.png",),
              SizedBox(width: size.width*.03,),
              Container(margin: EdgeInsets.only(top: 27,),
                  child: Text("William joskinode",
                    style: TextStyle(color: Colors.white,fontSize: size.width*.01,fontWeight: FontWeight.w400),)),
              SizedBox(width: size.width*.01,),
              Container(
                margin: EdgeInsets.only(top: 25,),
                child: CircleAvatar(
                    foregroundImage: AssetImage(
                      "asset/profile.png",
                    ),
                    radius: size.width*.01),
              ),
              SizedBox(width: size.width*.03,),
              TitleIcon(image:"asset/menu.png",),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          isCollapsed==false?    SizedBox(width: size.width*.17,): SizedBox(width:2),
      InkWell(
        onTap: (){
          provider.toggleIsCollapsed();
          print("taped");

          print(provider.isCollapsed.toString());
          setState(() {
            isCollapsed=provider.isCollapsed;
            print("value"+isCollapsed.toString());

          });

        },
        child: Container(
          margin: EdgeInsets.only(bottom: size.height*.008),
          alignment: Alignment.center,
         height: size.width*.019,
          width:size.width*.019,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color:Colors.white,
            ),

            //more than 50% of width makes circle
          ),
          child: Icon(isCollapsed==false?Icons.remove:Icons.add,color: Colors.white,size: size.width*.010,),
        ),
      ),
              SizedBox(width:  size.width*.010,),

              Container(
                width:size.width*.185,
                height:size.height*.039,
                child: TabBar(
                  labelColor: Colors.white,
                    labelStyle:TextStyle(fontSize: 15,fontWeight: FontWeight.w600,) ,
                    unselectedLabelColor: Color(0xffEDF1F2),
                    unselectedLabelStyle: TextStyle(fontSize: 15),
                    indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.only(left: size.width*.022, right: size.width*.015),
                    ),
                  indicatorColor: Colors.white,
                   indicatorWeight: 9,
                   // padding: EdgeInsets.only(bottom: 10),

                  controller:widget. _tabController,
                    tabs: [ Text("Dashboard"),

                  Text("Purchase"),]),
              )

            ],
          )
        ],
      ),
    );
  }
}
Widget searchField(BuildContext context) {
  final _controller = TextEditingController();

  return Container(
      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.030,),
      width:MediaQuery.of(context).size.width*.4,
      height: MediaQuery.of(context).size.height*.051,
      // color: Palette.white,
      color:Color(0xFFfafafa),
      // padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
      child: TextFormField(
        controller: _controller,
        maxLines: 1,
        decoration: InputDecoration(
          fillColor: Colors.white,
          isDense: true,
          contentPadding: EdgeInsets.all(12),
          filled: true,
          focusColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3),

              // borderSide: BorderSide(color: Palette.fieldColor, width: 0.0),
            ),
            borderSide: BorderSide.none,
          ),

          // border: InputBorder.none,
          hintText: "Enter yor query to search...",
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                child: const Icon(
                  Icons.search,
                ),
              )),
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
          // ),
        ),
      ));
}
