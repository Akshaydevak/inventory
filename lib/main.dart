import 'package:desktop_window/desktop_window.dart'as window_size;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Dashboard.dart';
import 'commonWidget/Navigationprovider.dart';

void main()  {
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
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:  DashBoard(),
      ),
    );
  }
}

