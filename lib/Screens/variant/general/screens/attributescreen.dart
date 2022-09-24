import 'package:flutter/cupertino.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';
import 'package:inventory/commonWidget/commonCheckbox2.dart';

import '../productmodulegeneral.dart';

class AttributeScreen extends StatefulWidget {
  final List<VariantCreationRead2Model> attributes;
  final Function  combination;
  AttributeScreen({required this.attributes,required this.combination});

  @override
  _AttributeScreenState createState() => _AttributeScreenState();
}

class _AttributeScreenState extends State<AttributeScreen> {
  bool onChange=false;
  List<Map<String,dynamic>>attributes=[];
  List<List<Map<String,dynamic>>> graphArray=[];


  @override
  Widget build(BuildContext context) {
    if(!onChange){
      var maps;
      for(var i =0;i<widget.attributes.length;i++){
        if(widget.attributes[i]?.values?.isNotEmpty==true){
          widget.attributes[i].values?.forEach((element) {
            print(element);
            print(i);
            maps={
              "flag":false,
              "value":element
            };


            print("rgc"+maps.toString());

            print("rgc"+attributes.toString());
            attributes.add(maps);
            graphArray.add(attributes);

          });



        }

        print("garray"+graphArray.toString());
      }
//        graphArray = new List.generate(widget.attributes.length, (i) {
//          print("the i is here"+i.toString());
//
//
//
//         var   map= widget.attributes[i].values?.forEach((element) {
//         maps={
//          "flag":false,
//          "value":element
//        };
//
//
//        print("rgc"+attributes.toString());
//         attributes.add(maps);
//
//       });
//
// print("akkkkuatributes"+attributes.toString());
//
//
//       return [];
//       });

      // if(widget.attributes.length)

    }
    onChange=false;
    return Container(
      height:400,
      width: MediaQuery.of(context).size.width-60,
      child: widget.attributes.isNotEmpty==true?
      ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: widget.attributes.length,
        itemBuilder: (context, index) {
        return
          Container(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(widget.attributes[index]?.attributeName.toString()??""),
           if( attributes.isNotEmpty==true)   Container(height: 200,
              child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: widget.attributes[index].values!.length,
                itemBuilder: (context, item) {

                return   Row(
                  children: [
                    // CustomCheckBox(
                    //
                    //   key: UniqueKey(),
                    //
                    //   value: list
                    //
                    //       .contains(data.data[i].id),
                    //
                    //   onChange: (p0) {
                    //
                    //     if (p0)
                    //
                    //       list.add(data.data[i]);
                    //
                    //     else
                    //
                    //       list.remove(data.data[i]);
                    //
                    //   },
                    //
                    // ),
                    NewCheckBoxText(label:graphArray[index][item]["value"],valueChanger:graphArray[index][item]["flag"],onChange: (va){
                    setState(() {
                      onChange=true;

                      var val=graphArray[index][item]["flag"];
                      print("ch"+val.toString());
                      val=!val;
                      print("val"+val.toString());
                     graphArray[index][item]["flag"]=val;
                      print(  graphArray[index][item]["flag"]);
                      widget.combination(graphArray);


                    });

                    print("akskks");
                    },),
                  ],
                );
              },),)


            ],
          ),
        );
      },)
          :Text("nothing"),
    );
  }
}

