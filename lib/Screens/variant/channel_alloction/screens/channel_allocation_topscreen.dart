import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/variant/channel_alloction/cubit/channelfiltwer/channelfilter_cubit.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/Screens/variant/stock/models/stockverticallist.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class ChanneAllocationTopScreen extends StatefulWidget {
  final Function listAssign;
  List<Category> channels;
  final Function appiCheckingTrue;
  final Function filterTable;
  final List<String> channelCodeList;
  ChanneAllocationTopScreen({required this.appiCheckingTrue,required this.channels, required this.listAssign, required this.filterTable, required this.channelCodeList});
  @override
  _ChanneAllocationTopScreenState createState() =>
      _ChanneAllocationTopScreenState();
}

class _ChanneAllocationTopScreenState extends State<ChanneAllocationTopScreen> {
  String choosenValue = '';
  bool onChange=false;
  List<String> items = ["variant", "group"];
  List<bool?>selection=[];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChannelfilterCubit(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ChannelfilterCubit, ChannelfilterState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (data) {
                    setState(() {
                      print("Akshay real " + data.data.toString());
                      widget.listAssign(data.data,data);
                      // table = data.data;
                    });
                  });
            },
          ),
        ],
        child: Builder(builder: (context) {
          if(onChange==false){
            if(widget.channels.isNotEmpty){
              for( var i=0;i<widget.channels.length;i++){
                selection.add(false);

              }
            }
          }
          onChange=false;
          return Container(
              margin: EdgeInsets.symmetric(horizontal: w * .02),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: w-1000,
                    // color: Colors.red,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.channels.length,
                      itemBuilder:(context, index) {
                      return
                        NewCheckBoxText(
                          label: widget.channels[index].name??"",
                          valueChanger: selection[index],
                          onChange: (va) {
                            setState(() {
                              onChange=true;
                              var value=selection[index];
                              value=!value!;
                              selection[index]= value;
                              // for(var i=0;i<selection.length;i++){
                              //   if(index==i){
                              //     selection[index]=true;
                              //   }
                              //   else{
                              //     selection[i]=false;
                              //   }
                              // }



                              widget.filterTable(selection);
                            });


                          },
                          labelI1st: true,
                        );
                    }, ),
                  ),
                  // Container(
                  //     width: w / 2,
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //             child: NewCheckBoxText(
                  //           label: "channel 1",
                  //           onChange: () {},
                  //           labelI1st: true,
                  //         )),
                  //         Expanded(
                  //             child: NewCheckBoxText(
                  //           label: "channel 2",
                  //           onChange: () {},
                  //           labelI1st: true,
                  //         )),
                  //         Expanded(
                  //             child: NewCheckBoxText(
                  //           label: "channel 3",
                  //           onChange: () {},
                  //           labelI1st: true,
                  //         )),
                  //         Expanded(
                  //             child: NewCheckBoxText(
                  //           label: "channel 4",
                  //           onChange: () {},
                  //           labelI1st: true,
                  //         )),
                  //       ],
                  //     )),
                  Spacer(),
                  CustomDropDown(
                    border: true,
                    choosenValue: choosenValue,
                    onChange: (val) {
                      setState(() {
                        choosenValue = val;
                      });
                      print(val);
                      widget.appiCheckingTrue(true,choosenValue);
                      context
                          .read<ChannelfilterCubit>()
                          .getChannelFilterList(widget.channelCodeList,Variable.inventory_ID,val);
                      choosenValue=val;
                    },
                    items: items,
                  ),
                ],
              ));
        }),
      ),
    );
  }
}
