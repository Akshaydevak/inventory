import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/logi/login.dart';
import 'package:inventory/Screens/register/cubit/cubit/regcubit_cubit.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/Screens/register/screens/otpscreen.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstnameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController lastnameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegcubitCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<RegcubitCubit, RegcubitState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          context.showSnackBarError("Login error !");
                        },
                        loading: () {
                          context.showSnackBarNormal("Loading");
                        },
                        success: (data) {
                          print(data.data1);
                          print(data.data2);
                          //print(state);
                          // context
                          //     .read<InventoryIdListCubit>()
                          //     .getInventoryIdList();

                          if (data.data1) {

                            // Variable.isLoggedIn = true;
                            // print(state);
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    OtpScreen(mobile:data.data2["mobile"] , createdCode: data.data2["created_code"], email: data.data2["email"]),));
                          } else {
                            // changeIndex(0);
                            context.showSnackBarError(data.data2);
                          }
                        });
                  },
                ),

              ],
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Center(
                  child: Container(
                    color: Colors.white,
                    width: 600,
                    height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height/9,),
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w600,fontSize: height*0.03),)),
                        NewInputCard(controller: emailController, title: "Email",),
                        SizedBox(height: 9,),
                        NewInputCard(controller: firstnameController, title: "First Name",),
                        SizedBox(height: 9,),
                        NewInputCard(controller: lastnameController, title: "Last Name",),
                        SizedBox(height: 9,),
                        NewInputCard(controller: mobileController, title: "MobileNumber",),
                        SizedBox(height: 9,),
                        // NewInputCard(controller: mobileController, title: "PASSWORD",),
                        SizedBox(height: 9,),
                        NewInputCard(controller: passwordController, title: "PASSWORD",password: true),
                        SizedBox(height: 9,),
                        NewInputCard(controller: confirmpasswordController, title: "Confirm Password",password: true),
                        SizedBox(height: 9,),
                        LoginButton(
                          label: "sign up",
                          onpress: (){
                            RegisterModel model=RegisterModel(
                                email: emailController.text,
                                password: passwordController.text,
                                mobile: mobileController.text,
                                fname: firstnameController.text,
                                lname: lastnameController.text,
                                country: "aksk",
                                gender: "M",
                                accesssite: "sidracart"


                            );
                            context.read<RegcubitCubit>().signUp(model);

                          },
                        ),


                      ],

                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
