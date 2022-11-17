import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class DivisionStableTable extends StatefulWidget {
  final TextEditingController code;
  final TextEditingController name;
  final TextEditingController priority;
  final TextEditingController image1;
  final TextEditingController description;


  final bool active;
  final bool isMoxed;
  final bool select;

  final Function activeChange;


  DivisionStableTable({
    required this.select, required this.code, required this.name, required this.priority, required this.image1, required this.description, required this.active, required this.isMoxed, required this.activeChange});

  @override
  _DivisionStableTableState createState() => _DivisionStableTableState();
}

class _DivisionStableTableState extends State<DivisionStableTable> {
  var imageEncode;

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
    return
      MultiBlocListener(
        listeners: [
          BlocListener<ImagepostCubit, ImagepostState>(
            listener: (context, state) {
              print("postssssssss" + state.toString());
              state.maybeWhen(orElse: () {
                // context.

              }, error: () {
                context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                if (data.data1) {
                  widget.image1.text=data.data2.toString();

                  print("datAnvatrrr"+widget.image1.text.toString());


                  // context.showSnackBarSuccess(data.data2);

                }
                else {
                  // context.showSnackBarError(data.data2);
                  // print(data.data1.toString());
                }
                ;
              });
            },
          ),
        ],
        child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Column(
                        children: [

                          NewInputCard(
                              readOnly: true,
                              controller: widget.code, title: "Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(

                              controller: widget.name, title: "Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,
                              controller: widget.priority, title: "Priority"),


                        ],
                      )),
                      Expanded(child: Column(children: [


                        FileUploadField(

                            fileName: widget.image1.text,
                            fileUrl: widget.image1.text,
                            onCancel: () {
                              setState(() {
                                widget.image1.clear();
                              });
                            },
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              // widget.imagePostCheck(type: "1");


                              widget.image1.text = myFile?.fileName ?? "";
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
                                context.read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 150kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "Image"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value: widget.select ? true : widget.active,
                            title: "Is Active",
                            onClick: (gg) {
                              if (widget.select == false) {
                                widget.activeChange(
                                    type: 1, val: !widget.active);
                              }


                              setState(() {});
                            }),
                        SizedBox(
                          height: height * .17,
                        ),


                      ],)),
                      Expanded(child: Column(children: [

                        NewInputCard(

                            controller: widget.description,
                            title: "Description"),
                        SizedBox(
                          height: height * .030,
                        ),

                        PopUpSwitchTile(
                            value: widget.isMoxed,
                            title: "Is Mixed",
                            onClick: (gg) {
                              widget.activeChange(
                                  type: 2, val: !widget.isMoxed);


                              setState(() {});
                            }),
                        SizedBox(
                          height: height * .17,
                        ),


                      ],))

                    ],
                  ),


                ],
              );
            }
        ),
      );
  }
}