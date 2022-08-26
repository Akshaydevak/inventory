import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/logi/login.dart';
import 'package:inventory/Screens/register/cubit/otpbinding_cubit.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class OtpScreen extends StatefulWidget {
  final String mobile;
  final String email;
  final int createdCode;
  OtpScreen({required this. mobile,required this.createdCode,required this.email});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OtpbindingCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return BlocListener<OtpbindingCubit, OtpbindingState>(
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
                                LoginScreen()));
                      } else {
                        // changeIndex(0);
                        context.showSnackBarError(data.data2);
                      }
                    });
              },
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Center(
                  child: Container(
                    color: Colors.white,
                    height: 400,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NewInputCard(controller: otpController, title: "OTP section",password: true),
                        SizedBox(height: 9,),
                        LoginButton(
                            label: "Get up",
                            onpress: () {

                              context.read<OtpbindingCubit>().otpReg(widget.email, widget.mobile, otpController.text, widget.createdCode.toString());
                            }
                        )
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
