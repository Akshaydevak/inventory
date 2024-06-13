import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/logi/inventorylist/inventorylist_cubit.dart';
import 'package:inventory/Screens/logi/login.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/size_config.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Dashboard.dart';
import '../register/model/register.dart';
import 'logincubit/logincubit_cubit.dart';

class LoginWithApiBlock extends StatefulWidget {

  @override
  State<LoginWithApiBlock> createState() => _LoginWithApiBlockState();
}

class _LoginWithApiBlockState extends State<LoginWithApiBlock> {
  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  TextEditingController empCode=TextEditingController();

  List<  InventoryListModel> inventoryList=[];

  Uint8List captchaImage = Uint8List.fromList([]);

  CaptchaReadModel captchareadModel=CaptchaReadModel();

  String captchaId="";

  bool isCaptchaSuccessed=false;

  bool isCaptchaFailed=false;

  bool isTimer=false;

  int credentialErrorCount=0;

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  TextEditingController catchaTextContoller=TextEditingController();
  late Timer _timer;
  int _remainingSeconds = 60;
  static const  maxSeconds = 60;
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds -= 1;
        } else {
          _timer.cancel();
          isTimer=false;
          _remainingSeconds = 60;
          // Stop the timer when it reaches zero
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String minutes = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    String seconds = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return  MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => LogincubitCubit(),
    ),    BlocProvider(
      create: (context) => InventorylistCubit(),
    ),
  ],
  child: Builder(
    builder: (context) {
      return MultiBlocListener(
  listeners: [
    BlocListener<LogincubitCubit, LogincubitState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              context.showSnackBarError("Login error !");
            },
            loading: () {
              context.showSnackBarNormal("Loading");
            },
            success: (data) async {
              print(data.data1);
              print(data.data2);
              //print(state);
              // context
              //     .read<InventoryIdListCubit>()
              //     .getInventoryIdList();

              if (data.data1) {
                print("DATAAAA OF LOGIN"+data.data2.toString());
                context.showSnackBarSuccess("Success");
                // final SharedPreferences sharedPreferences =
                //     await SharedPreferences.getInstance();
                // sharedPreferences.setString('token',
                //     data.data2["token"] ?? "");
                RegisterModel user = data.data2;
                Variable.loginLeage=user.legalEntiry.toString();
                Variable.username=user.fname.toString();
                Variable.created_by=user.employeeCode.toString();
                Variable.mobileNumber=user.mobile.toString();
                Variable.email=user.email.toString();
                // Variable.inventory_ID=user.fname.toString();




                UserPreferences().saveUser(user);
                context.read<InventorylistCubit>().getInventoryListRead(user.legalEntiry.toString());
                final SharedPreferences prefs =
                await SharedPreferences.getInstance();
                final List<String> strs = Variable.subIndex.map((e) => e.toString()).toList();
                prefs.setString('key', jsonEncode(strs));


                // Variable.isLoggedIn = true;
                // print(state);

              }  else{
                if(Variable.errorMessege=="Account temporarly blocked for 5 minutes" ||Variable.errorMessege=="captcha incorrect,account temporarily blocked for 5 minutes") {
                  print("Entered");
                  setState(() {
                    isTimer = true;
                  });

                  startTimer();
                }

                context.showSnackBarNormal(Variable.errorMessege);
                captchareadModel=data.data2;
                setState(() {
                  captchaImage=Base64Decoder().convert(captchareadModel.captchaImageBase64??"");
                  captchaId=captchareadModel.captchaId??"";
                });
                // context.showSnackBarNormal(Variable.errorMessege);
                // captchareadModel=data.data2;
                // setState(() {
                //   captchaImage=Base64Decoder().convert(captchareadModel.captchaImageBase64??"");
                //   captchaId=captchareadModel.captchaId??"";
                // });
              }
            });
      },
    ),
    BlocListener<InventorylistCubit, InventorylistState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              context.showSnackBarError("Login error !");
            },
            loading: () {
              context.showSnackBarNormal("Loading");
            },
            success: (data)  {
              print("welcome ther is something happening"+data.data.toString());
              inventoryList=data.data;

              if(inventoryList.isNotEmpty==true){
                setState(()   {
                  Variable.inventory_ID=inventoryList[0]?.businessUnitCode??"";
                  Variable.inventory_Name=inventoryList[0]?.name??"";

                  InventoryListModel model=InventoryListModel(
                      businessUnitCode: inventoryList[0]?.businessUnitCode??"",
                      name: inventoryList[0]?.name??""
                  );
                  UserPreferences().SaveInventoryList(model);
                  UserPreferences().saveInventoryList(inventoryList[0]);



                  print("Variable.inventory_Name"+Variable.inventory_Name.toString());

                  // final SharedPreferences prefs = await SharedPreferences.getInstance();
                  // prefs.setString("inventory", inventoryList![0].businessUnitCode.toString());
                  // prefs.setString("inventory_name", inventoryList![0].name.toString());
                });

              }

              print("invennnnn"+Variable.inventory_ID);



              UserPreferences().getUser().then((user) {
                Variable.token=user.token??"";
                if(user.isLoggedIn==true)
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DashBoard(),));

                // print("Session Password :" +user.lastname.toString());
              },);
              print(data);



            }
        );
      },
    ),
  ],
  child: Scaffold(
          body: Center(
child:  Stack(
  children: [
        Container(

          height:height/1.2,

          width:height/1.5,



          decoration: BoxDecoration(

              color: Colors.white,

              borderRadius: BorderRadius.circular(13)

          ),

          child:  SingleChildScrollView(
            child: Form(

              key: _formKey,

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  SizedBox(height: height/17,),

                  Container(

                      margin: EdgeInsets.only(left: width*.03),

                      child: Text('Sign In',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w600,fontSize: height*0.04),)),

                  SizedBox(height: height*.03,),

                  Container(

                      margin: EdgeInsets.symmetric(horizontal: width*.012),



                      child: NewInputCard(controller: emailController,readOnly: isTimer, title: "EMAIL ID",height:height/16 ,)),

                  SizedBox(

                    height: height * .035,

                  ),

                  Container(

                      margin: EdgeInsets.symmetric(horizontal:width*.012),

                      child: NewInputCard(controller: passwordController,readOnly: isTimer, title: "PASSWORD",password: true,height:height/16,)),



                  SizedBox(

                    height: height * .035,

                  ),

                  Container(

                      margin: EdgeInsets.symmetric(horizontal: width*.012),

                      child: NewInputCard(controller: empCode,readOnly: isTimer, title: "EMPLOYEE CODE",password: true,height: height/16,onChange: (va){

                        empCode.value =

                            empCode.value.copyWith(

                              text: va.toUpperCase(),

                              selection:

                              TextSelection.collapsed(offset: va.length),

                            );

                      },)),

                  SizedBox(

                    height: height * .035,

                  ),

                  if(   captchaId.isNotEmpty ) captchaField(

                    isCAptchFailed:  isCaptchaFailed,
                    readOnly: isTimer,

                    isSuffixIcon:isCaptchaSuccessed ,

                    onRefreshTap: (){

                      // setState(() {

                      //   context.read<ReadCaptchCubit>().getCaptcha();

                      //   isCaptchaSuccessed=false;

                      //   catchaTextContoller.clear();

                      //   isCaptchaSuccessed=false;

                      //

                      //

                      // });





                    },

                    uintListt: captchaImage,

                    text: "Enter Captcha", controller: catchaTextContoller,

                    validator: (value) {

                      if (value.isEmpty) {

                        return 'Captcha is required';

                      }

                      return null;

                    },

                  ),

                  SizedBox(

                    height: height * .075,

                  ),

                  Container(

                    margin: EdgeInsets.symmetric(horizontal: width*.012),

                    child: LoginButton(

                      label: "SIGN IN",

                      onpress: (){

                        if(isTimer){

                          context.showSnackBarError("Account blocked try again later");

                        }else{

                          var validate=        _formKey.currentState!.validate();







                          if(validate)

                          {



                            ipBlockModel model=ipBlockModel(

                                username: emailController.text,

                                code: empCode.text,

                                password:passwordController.text,

                                email: emailController.text,

                                captcha: CaptchaReadModel(

                                    captchaId: captchaId??"",

                                    captchaText: catchaTextContoller?.text??""

                                )



                            );

                            print(model);





                            // BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());

                            // isCaptchaSuccessed?

                            // context.read<SignUpCubit>().postSignInData(usernameContoller.text,passwordContoller.text,codeContoller.text):



                            context.read<LogincubitCubit>().postIpBlock(model);

                          }

                        }



                        // context.read<LogincubitCubit>().getLogin(emailController.text,passwordController.text,empCode.text);



                      },

                    ),

                  ),





                ],

              ),

            ),
          ),

    ),
    if( isTimer==true)
      Positioned(
        top: context.blockSizeVertical*20,
        left: context.blockSizeHorizontal * 28/3,
        child: SizedBox(
          height:100,
          width:100,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: _remainingSeconds/maxSeconds,
                strokeWidth: 8,
                backgroundColor: Colors.greenAccent,
              ),
              Center(
                child: Text('$minutes:$seconds',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ))
  ],
),
          ),
        ),
);
    }
  ),
);
  }
}
extension TextEditingControllerExt on TextEditingController {
  void selectAll() {
    if (text.isEmpty) return;
    selection = TextSelection(baseOffset: 0, extentOffset: text.length);
  }
}