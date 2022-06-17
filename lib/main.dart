import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'Screens/Dashboard.dart';
import 'commonWidget/Navigationprovider.dart';
import 'cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';

void main() {
  // await WidgetsFlutterBinding.ensureInitialized();
  // window_size.  DesktopWindow.setMinWindowSize(Size(600, 800));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavigationProvider(),
        ),
        BlocProvider(
          create: (context) => VendordetailsCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DashBoard(),
      ),
    );
  }
}
