import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/register/screens/registerscreen.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchasegenerating_cubit.dart';
import 'package:provider/provider.dart';

import 'Invetory/inventorysearch_cubit.dart';
import 'Screens/Dashboard.dart';
import 'Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'Screens/heirarchy/general/cubits/itemverticallist/itemcreation_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';
import 'Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'Screens/logi/login.dart';
import 'Screens/sales/general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'commonWidget/Navigationprovider.dart';
import 'commonWidget/sharedpreference.dart';
import 'cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'cubits/cubit/cubit/general_purchase_read_cubit.dart';

void main()async {
  await WidgetsFlutterBinding.ensureInitialized();
  // window_size.  DesktopWindow.setMinWindowSize(Size(600, 800));
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



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
        BlocProvider(
          create: (context) => InventorysearchCubit(),
        ),
        BlocProvider(
          create: (context) => PurchasegeneratingCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralverticalCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturnverticalCubit(),
        ),
        BlocProvider(
          create: (context) => ImagepostCubit(),
        ),
        BlocProvider(
          create: (context) => Listbrand2Cubit(),
        ),
        BlocProvider(
          create: (context) => GeneralPurchaseReadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialListCubit(),
        ),
        BlocProvider(
          create: (context) => DevisionListCubit(),
        ),
        BlocProvider(
          create: (context) => ListstaticCubit(),
        ),
        BlocProvider(
          create: (context) => UomgruoplistCubit(),
        ),
        BlocProvider(
          create: (context) => CategorylistCubit(),
        ),
        BlocProvider(
          create: (context) => GrouplistCubit(),
        ),
        BlocProvider(
          create: (context) => BaseuomlistCubit(),
        ),
        BlocProvider(
          create: (context) => ItemcreationListCubit(),
        ),




      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: MyHome(),

      ),
    );
  }
}
class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Future getvalidationData() async {
    print("enterdeeed");
    UserPreferences userPref = UserPreferences();
    await userPref.getUser().then((user) {
      print("user.isLoggedIn"+user.isLoggedIn.toString());
      if (user.isLoggedIn == true) {
        print("already logined");
Navigator.pushReplacement(
    context, new MaterialPageRoute(builder: (context) => DashBoard()));
      }
      else {
        print(" not already ");
        Navigator.push(

            context, MaterialPageRoute(
            builder: (context) =>
                LoginScreen()));
      }
    });
  }
  @override
  void initState() {

    super.initState();
    getvalidationData();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginScreen(),
        'signUp': (context) =>RegisterScreen(),
        'home': (context) =>  DashBoard(),
      },
    );
  }
}