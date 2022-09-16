import 'dart:html';
import 'dart:typed_data';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart'as http;
import 'package:photo_view/photo_view.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;


import '../commonWidget/pellete.dart';
class NewInputCard extends StatefulWidget {
  final double fontsize;
  final double height;
  final bool readOnly;
  final TextEditingController controller;
  final int maxLines;
   final Color colors;
  final String? label;
  final String? keyboardType;

  final String title;
  final String? hint;

  final bool password;
  final  bool direction;
  const NewInputCard({
    Key? key,
    required this.controller,
    this.label,
    this.keyboardType,
    this.hint,
    this.readOnly=false,
    this.password = false,
    this.direction=false,
    required this.title,
     this.colors = const Color(0xffC3C7C9),
    this.maxLines = 1,
    this.height = 40,
    this.fontsize = 13,
  }) : super(key: key);

  @override
  State<NewInputCard> createState() => _NewInputCardState();
}

class _NewInputCardState extends State<NewInputCard> {
  bool show = false;
  @override
  void initState() {
    super.initState();
    show = widget.password;
  }


  @override
  Widget build(BuildContext context) {
    widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child:widget.direction==false? Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: widget.fontsize,fontWeight: FontWeight.w300),
          ),
          SizedBox(height:3),
          widget.keyboardType=="int"?
          Container(
            alignment: Alignment.center,
            height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,


              readOnly: widget.readOnly,
              maxLines: widget.maxLines,
              controller: widget.controller,
              obscureText: show,
              keyboardType:TextInputType.text ,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(

                filled: true,
                fillColor: widget.readOnly?Color(0xffF2F3F5).withOpacity(.2):Colors.white,
                suffixIcon: widget.password
                    ? IconButton(
                  icon: show
                      ? const Icon(
                    Icons.visibility,
                    size: 18,
                  )
                      : const Icon(
                    Icons.visibility_off_outlined,
                    size: 18,
                  ),
                  onPressed: () {
                    show = !show;
                    setState(() {});
                  },
                )
                    : null,
                labelStyle: const TextStyle(
                    fontSize: 13,
                    //fontStyle: FontStyle.italic,
                    ),
                // label: Text(
                //   widget.label,
                // ),
                hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
                hintText: widget.label,
                enabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),
                  
                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                focusedBorder:   OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              ),
            ),
          ):
          Container(
            alignment: Alignment.center,
            height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,


              readOnly: widget.readOnly,
              maxLines: widget.maxLines,
              controller: widget.controller,
              obscureText: show,

              decoration: InputDecoration(

                filled: true,
                fillColor: widget.readOnly?Color(0xffF2F3F5).withOpacity(.2):Colors.white,
                suffixIcon: widget.password
                    ? IconButton(
                  icon: show
                      ? const Icon(
                    Icons.visibility,
                    size: 18,
                  )
                      : const Icon(
                    Icons.visibility_off_outlined,
                    size: 18,
                  ),
                  onPressed: () {
                    show = !show;
                    setState(() {});
                  },
                )
                    : null,
                labelStyle: const TextStyle(
                  fontSize: 13,
                  //fontStyle: FontStyle.italic,
                ),
                // label: Text(
                //   widget.label,
                // ),
                hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
                hintText: widget.label,
                enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                focusedBorder:   OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              ),
            ),
          ),
        ],
      ): Container(
        height: 300,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text(
    widget.title,
    style: TextStyle(fontSize: widget.fontsize,fontWeight: FontWeight.bold),
    ),
    SizedBox(width:MediaQuery.of(context).size.width*.003),
    Container(
    height: widget.height,
    // color: widget.colors,
    // color: Colors.grey.shade200,
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
    maxLines: widget.maxLines,
    controller: widget.controller,
    obscureText: show,
    decoration: InputDecoration(
    suffixIcon: widget.password
    ? IconButton(
    icon: show
    ? const Icon(
    Icons.visibility,
    size: 18,
    )
          : const Icon(
    Icons.visibility_off_outlined,
    size: 18,
    ),
    onPressed: () {
    show = !show;
    setState(() {});
    },
    )
          : null,
    labelStyle: const TextStyle(
    fontSize: 13,
    //fontStyle: FontStyle.italic,
    ),
    // label: Text(
    //   widget.label,
    // ),
    hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
    hintText: widget.label,
    border: OutlineInputBorder(
    borderSide: BorderSide(color: widget.colors)),
    ),
    ),
    ),
    ],

    ),
      ));
  }
}
class BuildDateFormField extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final bool enable;
  final bool required;
  final Color color;
  final FormFieldSetter<DateTime>? onSaved;
 final DateFormat? format;
  final TextEditingController? controller;
  const BuildDateFormField(
      {Key? key,
        required this.label,
        this.enable = true,
        this.required = false,
        this.onSaved,
        this.format,
        this.initialValue,this.color= const Color(0xffC3C7C9),
        this.controller})
      : super(key: key);

  @override
  _BuildDateFormFieldState createState() => _BuildDateFormFieldState();
}

class _BuildDateFormFieldState extends State<BuildDateFormField> {

bool initialdatecheck=false;
@override
  void initState() {
  if(widget.initialValue!=null&&widget.initialValue!=""){
    setState(() {
      initialdatecheck=true;
    });
  }
    
  }


  @override
  Widget build(BuildContext context) {
    print("widget.initialValue"+widget.initialValue.toString());
    // final mFormat = DateFormat("12,08,2021");
    final mFormat =
        widget.format ??
            DateFormat("yyyy,MM,dd");
    return
         Padding(
           padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 widget.label,
                 style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
               ),
               SizedBox(height:3),
           DateTimeField(

                    initialValue:widget.initialValue,
                       controller: widget.controller,
                       enabled: widget.enable,
                       validator: (value) => value == null ? "* required" : null,
                       decoration: InputDecoration(
                         suffixIcon: Icon(Icons.calendar_today_outlined),
                         contentPadding: null,
                         labelStyle: TextStyle(color: Colors.black),
                         // labelText: widget.initialValue?.toString().split(" ")[0],
                         isDense: true,
                         label: null,
                         alignLabelWithHint: true,
                         enabledBorder: OutlineInputBorder(
                           borderRadius:BorderRadius.circular(2),

               borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

                         focusedBorder: OutlineInputBorder(
                             borderRadius:BorderRadius.circular(2),

                             borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                       ),
                       format: mFormat,
                       style: TextStyle(fontSize: 12),
                       // onChanged: widget.onSaved,
                        onFieldSubmitted: widget.onSaved,
                       onShowPicker: (context, currentValue) async {
                         DateTime? date;

                         date = await showDatePicker(
                               context: context,
                               firstDate: DateTime(1900),
                               initialDate: currentValue ?? DateTime.now(),
                               lastDate: DateTime(2100));return date?? currentValue;

                       })


             ],
           ),
         );
   
  }
}
class underlineTextForm extends StatefulWidget {
  final double h;
  final double w;
  final TextEditingController controller;
  final Function onChange;
  underlineTextForm({this.h=30,this.w=200,required this.controller,required this.onChange});

  @override
  _underlineTextFormState createState() => _underlineTextFormState();
}

class _underlineTextFormState extends State<underlineTextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.h,
      width: widget.w,
      margin: EdgeInsets.all(10),
      child:  TextFormField(
        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
        cursorColor: Colors.black,
        controller: widget.controller,
        onChanged: (va){
          widget.onChange(va);
        },

        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            hintText: ""),
      ),
    );
  }
}



class UnderLinedInput extends StatefulWidget {
  //  final String label;
  // final bool required;
  final VoidCallback? onClick;
  final bool enable;
  final bool  initialCheck;
  final  String  initial;
  final String ? last;
  final bool restricted;
  final String hintText;
  final bool formatter;
  // final String? tileName;
  final int maxLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onComplete;
  // final List<String>? items;
  const
  UnderLinedInput(
      {Key? key,
        this.last="",
        this.enable = true,
        this.initial='',
        this.hintText = "",
        this.maxLines = 1,
        this.controller,
        this.onChanged,
        this.onComplete,
        this.initialCheck=false,
        this.formatter= true,

        this.restricted = false,
        this.onClick})
      : super(key: key);

  @override
  _UnderLinedInputState createState() => _UnderLinedInputState();
}

class _UnderLinedInputState extends State<UnderLinedInput> {

  @override
  Widget build(BuildContext context) {
    widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;


    return Column(
      children: [
        Container(

          alignment: Alignment.center,
          // color: Colors.grey.shade200,
          child:widget.initialCheck?
          Center(
            child: TextFormField(

              initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
              onTap: () {
                if (widget.onClick != null) widget.onClick!();
              },
              maxLines: widget.maxLines,

              //controller: widget.controller,
              enabled: widget.enable,
              keyboardType: widget.formatter? TextInputType.number:null ,
              inputFormatters:widget.formatter?
              <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ]:null,
              onEditingComplete: widget.onComplete,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                isCollapsed: true,


                contentPadding: EdgeInsets.all(20),
                isDense: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 10),
                border:InputBorder.none,
              ).copyWith(isDense: true),
            ),
          ):
          Container(

            alignment: Alignment.center,
            child: Center(
              child: TextFormField(

                // initialValue:widget.last=="0"?"":widget.last,
                onTap: () {
                  if (widget.onClick != null) widget.onClick!();
                },
                maxLines: widget.maxLines,

                controller: widget.controller,
                enabled: widget.enable,
                keyboardType: widget.formatter? TextInputType.number:null ,
              inputFormatters:widget.formatter?
              <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ]:null,
                onEditingComplete: widget.onComplete,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  isCollapsed: true,


                  contentPadding: EdgeInsets.all(20),
                  isDense: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),
                  border:InputBorder.none,
                ).copyWith(isDense: true),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// class UnderLinedInput extends StatefulWidget {
//   //  final String label;
//   // final bool required;
//   final bool formatter;
//   final VoidCallback? onClick;
//   final bool enable;
//   final TextInputType? type;
//   final bool  initialCheck;
//   final  String  initial;
//   final String ? last;
//   final bool restricted;
//   final String hintText;
//   // final String? tileName;
//   final List<TextInputFormatter>? textFormat;
//   final int maxLines;
//   final TextEditingController? controller;
//   final Function(String)? onChanged;
//   final VoidCallback? onComplete;
//   // final List<String>? items;
//   const
//   UnderLinedInput(
//       {Key? key,
//         this.last="",
//         this.enable = true,
//          this.initial='',
//         this.hintText = "",
//         this.maxLines = 1,
//         this.type,
//         this.controller,
//         this.onChanged,
//         this.onComplete,
//         this.initialCheck=false,
//
//         this.restricted = false,
//         this.onClick, this.formatter= true, this.textFormat})
//       : super(key: key);
//
//   @override
//   _UnderLinedInputState createState() => _UnderLinedInputState();
// }
//
// class _UnderLinedInputState extends State<UnderLinedInput> {
//
//   @override
//   Widget build(BuildContext context) {
//     widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;
//
//
//     return Column(
//       children: [
//         Container(
//
//           alignment: Alignment.center,
//           // color: Colors.grey.shade200,
//           child:
//           Center(
//             child: TextFormField(
//
//              initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
//               onTap: () {
//                 if (widget.onClick != null) widget.onClick!();
//               },
//               maxLines: widget.maxLines,
//
//               //controller: widget.controller,
//               enabled: widget.enable,
//               keyboardType:widget.formatter? TextInputType.number:null ,
//               inputFormatters:widget.formatter?
//               <TextInputFormatter>[
//                 FilteringTextInputFormatter.digitsOnly
//               ]:null,
//               onEditingComplete: widget.onComplete,
//               onChanged: widget.onChanged,
//               decoration: InputDecoration(
//                 isCollapsed: true,
//
//
//                 contentPadding: EdgeInsets.all(20),
//                 isDense: true,
//                 hintText: widget.hintText,
//                 hintStyle: TextStyle(fontSize: 10),
//                 border:InputBorder.none,
//               ).copyWith(isDense: true),
//             ),
//           )
//          //  Container(
//          //
//          //    alignment: Alignment.center,
//          //    child: Center(
//          //      child: TextFormField(
//          //
//          //       // initialValue:widget.last=="0"?"":widget.last,
//          //        onTap: () {
//          //          if (widget.onClick != null) widget.onClick!();
//          //        },
//          //        maxLines: widget.maxLines,
//          //
//          // controller: widget.controller,
//          //        enabled: widget.enable,
//          //        keyboardType:widget.formatter? TextInputType.number:null,
//          //        inputFormatters: <TextInputFormatter>[
//          //          FilteringTextInputFormatter.digitsOnly
//          //        ],
//          //        onEditingComplete: widget.onComplete,
//          //        onChanged: widget.onChanged,
//          //        decoration: InputDecoration(
//          //          isCollapsed: true,
//          //
//          //
//          //          contentPadding: EdgeInsets.all(20),
//          //          isDense: true,
//          //          hintText: widget.hintText,
//          //          hintStyle: TextStyle(fontSize: 10),
//          //          border:InputBorder.none,
//          //        ).copyWith(isDense: true),
//          //      ),
//          //    ),
//          //  ),
//         ),
//       ],
//     );
//   }
// }
// class CustomCheckBox extends StatefulWidget {
//   final bool value;
//   final Function(bool?)? change;
//   CustomCheckBox({required this.value,required this.change})
//   @override
//   _CustomCheckBoxState createState() => _CustomCheckBoxState();
// }
//
// class _CustomCheckBoxState extends State<CustomCheckBox> {
//   @override
//   Widget build(BuildContext context) {
//     return  Checkbox(
//       value:widget.value,
//       onChanged:(){widget.change()}
//
//     );
//   }
// }
class FileUploadField extends StatefulWidget {
  final Function(MultipartFile)? changeMultiFile;
  final Function(PlatformFile)? onChanePlatformFile;
  final VoidCallback? onNewTap;
  final Function(bool)? onChangeTap;
  final Function(FilePickerCross)? onChange;
  final Function(Uint8List)? onImageChange;
  final String? fileUrl;
  final bool row;
  final VoidCallback? onCancel;
  final bool onCreate;
  final String label;
  final bool required;
  final bool isFile;
  final bool enable;
  final String fileName;
  const FileUploadField(
      {Key? key,
        this.onChange,
        this.row=false,
        this.fileUrl,
        this.onCancel,
        this.onCreate = false,
        this.enable = false,
        this.isFile = false,
        required this.label,
        this.required = false,
        required this.fileName,
        this.onImageChange,
        this.onNewTap,
        this.onChangeTap,
        this.onChanePlatformFile,
        this.changeMultiFile})
      : super(key: key);

  @override
  _FileUploadFieldState createState() => _FileUploadFieldState();
}

class _FileUploadFieldState extends State<FileUploadField> {
  String? filename = "no attachments";
  bool fileChange = false;
  bool clearedImage = false;
  PickedFile imageFile=PickedFile("");
  File? file;


  @override
  Widget build(BuildContext context) {
    // print(filename);

    if (!fileChange && widget.fileUrl != null) {
      filename = widget.fileUrl;
      print("searching"+filename.toString());
    } else {
      if (!fileChange && widget.fileName.isEmpty)
        // print("false");
        filename = "no attachments";
    }
    fileChange = false;
    return widget.row?
    SizedBox(

        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            //horizontal: 10,
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: TextStyle(fontSize: 12),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(

            child: TextFormField(
              onTap: () {
                widget.onChangeTap!(true);
                filePicker();
                // chooseFileUsingFilePicker();
                // imagePicker();
              },
              // widget.fileUrl!=null?

              // :() async {
              //  widget.isFile?
              //             launchUrl(widget.fileUrl ?? "")
              //             :showImage(
              //               widget.fileUrl??"",context
              //            );
              //            setState(() {

              //            });
              // },
              controller: TextEditingController(text: filename),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: widget.fileUrl != null
                        ? () async {
                      // imageFile!=null?dispalyImage( imageFile,context):null;
                      // print("file url is ${widget.fileUrl}");
                      widget.isFile


                          ? launchUrl(widget.fileUrl ?? "")
                          : showImage(widget.fileUrl ?? "", context);

                    }
                        : null,
                    icon: Icon(Icons.attach_file)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                isDense: true,
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      filename = "no attachments";
                      clearedImage = true;
                      widget.onCancel != null ? widget.onCancel!() : null;
                      setState(() {});
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
        )):
      Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

       Container(

            child: Text.rich(TextSpan(
                text: widget.label,
                style: TextStyle(fontSize: 12),
                children: widget.required
                    ? [
                  TextSpan(
                      text: "*", style: TextStyle(color: Palette.DANGER))
                ]
                    : []))),
          SizedBox(height:3),
     Container(

          child: TextFormField(
            onTap: () {
              widget.onChangeTap!(true);
              filePicker();
              // chooseFileUsingFilePicker();
              // imagePicker();
            },
            // widget.fileUrl!=null?

            // :() async {
            //  widget.isFile?
            //             launchUrl(widget.fileUrl ?? "")
            //             :showImage(
            //               widget.fileUrl??"",context
            //            );
            //            setState(() {

            //            });
            // },
            controller: TextEditingController(text: filename),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  onPressed: widget.fileUrl != null
                      ? () async {
                    // imageFile!=null?dispalyImage( imageFile,context):null;
                    // print("file url is ${widget.fileUrl}");
                    widget.isFile


                        ? launchUrl(widget.fileUrl ?? "")
                        : showImage(widget.fileUrl ?? "", context);

                  }
                      : null,
                  icon: Icon(Icons.attach_file)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              isDense: true,
              hintStyle: TextStyle(fontSize: 10),
              enabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              focusedBorder:   OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              suffixIcon: IconButton(
                  onPressed: () {
                    filename = "no attachments";
                    clearedImage = true;
                    widget.onCancel != null ? widget.onCancel!() : null;
                    setState(() {});
                  },
                  icon: Icon(Icons.clear)),
            ),
          ),
        ),
      ],
      ),
    );
  }

  PlatformFile? objFile = null;
  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
      true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
        widget.onChanePlatformFile!(objFile!);
      });
    }
  }

  void uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("Your API URL"),
    );
    //-----add other fields if needed
    request.fields["id"] = "abc";
    //-----add selected file with request
    request.files.add(new http.MultipartFile(
        "Your parameter name on server side",
        objFile!.readStream!,
        objFile!.size,
        filename: objFile!.name));
    //-------Send request
    var resp = await request.send();
    //------Read response
    String result = await resp.stream.bytesToString();
    //-------Your response
    print(result);
  }

  void filePicker() async {
    widget.onNewTap;
    FilePickerCross myFile = await FilePickerCross.importFromStorage(
      type: FileTypeCross.any,
    );

    // String newPath = await myFile.exportToStorage() ?? "";
    // print(newPath);
    Uint8List newFile = myFile.toUint8List();
    filename = myFile.fileName;
    print("aaa"+filename.toString());
    Variable.imageName=filename;
    fileChange = true;
    widget.onChange!(myFile);
    widget.onImageChange!(newFile);
    setState(() {});
  }

  void imagePicker() async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    Image? fromPicker = await ImagePickerWeb.getImageAsWidget();

// print(fromPicker.)
    Uint8List? bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
    fileChange = true;
    widget.onImageChange!(bytesFromPicker!);
    imageFile = pickedFile!;


    setState(() {});
    // widget.onChange(bytesFromPicker);
  }
  void launchUrl(String url) {

    urlLauncher.canLaunch(url).then((value) {

      if (value) urlLauncher.launch(url);

    });

  }


  void showImage(String url, BuildContext context) {

    // print("image url is $url");

    ScreenshotController screenshotController = ScreenshotController();

    //  Uint8List? _imageFile;

    //  final pdf = pw.Document();

    showDialog(

        context: context,

        builder: (context) => AlertDialog(

          content: Container(

            height: 500,

            width: 700,

            child: Screenshot(

              controller: screenshotController,

              child: PhotoView(

                enablePanAlways: true,



                // tightMode: true,

                imageProvider: NetworkImage(url),

              ),

            ),

          ),



        ));

  }
}
//
// void dispalyImage(PickedFile imageFile, BuildContext context) {
//
//   // print("image url is $url");
//
//   ScreenshotController screenshotController = ScreenshotController();
//
//   //  Uint8List? _imageFile;
//
//   //  final pdf = pw.Document();
//
//   showDialog(
//
//       context: context,
//
//       builder: (context) => AlertDialog(
//
//         content: Container(
//
//           height: 500,
//
//           width: 700,
//
//           child: imageFile != null
//               ? Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: FileImage(File(imageFile))
//                   )
//               )
//           )
//
//               : Container(
//             decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(50)),
//             width: 100,
//             height: 100,
//             child: Icon(
//               Icons.camera_alt,
//               color: Colors.grey[800],
//             ),
//           ),
//
//         ),
//
//
//
//       ));
//
// }




class PopUpSwitchTile extends StatefulWidget {
  final bool value;
  final String title;
  final Color color;
  final Function(bool) onClick;
  const PopUpSwitchTile(
      {Key? key,
        required this.value,
        required this.title,
        this.color=Colors.black,
        required this.onClick})
      : super(key: key);

  @override
  _PopUpSwitchTileState createState() => _PopUpSwitchTileState();
}

class _PopUpSwitchTileState extends State<PopUpSwitchTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(

            padding: EdgeInsets.only(top: 10),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 12),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              activeColor: widget.color,
              value: widget.value,
              onChanged: widget.onClick,
            ),
          ),
        )
        // ListTile(
        //     contentPadding: EdgeInsets.symmetric(
        //       //horizontal: 10,
        //       //vertical: 5
        //     ),
        //     leading:
        //     Container(
        //         width: 300,
        //         padding: EdgeInsets.only(top: 10),
        //         child: Text(
        //           widget.title,
        //           style: TextStyle(fontSize: 12),
        //         )),
        //     title:
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Transform.scale(
        //         scale: 0.6,
        //         child: CupertinoSwitch(
        //           activeColor: widget.color,
        //           value: widget.value,
        //           onChanged: widget.onClick,
        //         ),
        //       ),
        //     )),
      ],
    );
  }
}


class CustomDropDown extends StatefulWidget {
   String? choosenValue;
   final Function onChange;
   final List <String>items;
   final bool border;
   // final Color clr;

  CustomDropDown({required this.choosenValue, required this.onChange,required this.items,this.border=false});



  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  bool value=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
       color:   Pellet.tableBlueHeaderPrint,
        border: widget.border?Border.all(
          color: Colors.grey
        ):null
      ),
      child:Center(child:
   // value?
   DropdownButtonHideUnderline(
     child: DropdownButton(

       borderRadius:BorderRadius.zero ,

       focusColor: Pellet.tableBlueHeaderPrint,
          dropdownColor: Colors.white,



          // Initial Value
          // value: "widget.choosenValue"??"",

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),
       hint: Container(
         child: Text(widget.choosenValue.toString(),style: TextStyle(color: Colors.white), ),
       ),

          // Array list of items
          items: widget.items.map((String items) {
            return DropdownMenuItem(


              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              widget.choosenValue = newValue!;
              widget.onChange(newValue);
              value=false;
              setState(() {

              });
            });
          },
        ),
   ))
       // :

    //  Container(
    //    height: 30,
    //      width: 80,
    //      padding: EdgeInsets.symmetric(horizontal: 6),
    //      child:  InkWell(
    //      onTap: (){
    //        value=true;
    //        setState(() {
    //
    //        });
    //      },
    //      child: Text(widget.choosenValue??""),)
    // )
    );
  }
}
