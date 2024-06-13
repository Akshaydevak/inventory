import 'dart:convert';

import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventorypost_cubit.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/bogo_verticallist/bogo_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/coupon/cubit/verticallist/promotion_coupon_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/readOfferGroup/read_offer_group_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalpost_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/payment_list/payment_list_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/paymentpost/payment_sale_post_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchasereturngeneralpatch_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/returdelete_cubit.dart';
import 'package:inventory/Screens/register/screens/registerscreen.dart';
import 'package:inventory/Screens/sales/general/cubit/payment_verticallist/payement_vertical_list_cubit.dart';
import 'package:inventory/Screens/sales/invoice/cubits/payment_suucess_post/payment_transaction_success_post_cubit.dart';
import 'package:inventory/Screens/salesreturn/cubit/cubit/patch/salesreturngeneralpatch_cubit.dart';
import 'package:inventory/Screens/salesreturn/cubit/cubit/salesreturngeneraldelete_cubit.dart';
import 'package:inventory/Screens/salesreturn/cubit/salesreturn/salesreturnpost_cubit.dart';
import 'package:inventory/Screens/salesreturn/invoice/cubit/invoicepost/salesreturninvoicepost_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingtypelist/costingtypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/pricingrouplist/pricingroupcreate_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/linkedlistvertica/linkedlistverticallist_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/purchase_order_patch_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/additionalgenerate_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchasegenerating_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievingpatch_cubit.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/requestformcubit/cubit/deleterequestform_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestformpost_cubit.dart';
import 'package:inventory/requestformcubit/cubit/requestpatch_cubit.dart';
import 'package:inventory/requestformrecieving/cubit/generaterequestform_cubit.dart';
import 'package:inventory/requestformrecieving/cubit/patchreceive_cubit.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Invetory/inventorysearch_cubit.dart';
import 'Screens/Dashboard.dart';
import 'Screens/heirarchy/customizeddata/cubit/listcustom/listcustomvertical_cubit.dart';
import 'Screens/heirarchy/divisionconfiguration/cubit/list/list_division_cubit.dart';
import 'Screens/heirarchy/general/cubits/allcategorylist_cubit.dart';
import 'Screens/heirarchy/general/cubits/attributelist/attributelist_cubit.dart';
import 'Screens/heirarchy/general/cubits/attributepatchlist_cubit.dart';
import 'Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'Screens/heirarchy/general/cubits/clategory_list_only/category_list_search_cubit.dart';
import 'Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/framework_list/frameworklist_cubit.dart';
import 'Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'Screens/heirarchy/general/cubits/itemverticallist/itemcreation_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';
import 'Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'Screens/heirarchy/general/cubits/subcategorylist/subcategory_cubit.dart';
import 'Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/sales/invoice/cubits/invoicepost/invoicepost_cubit.dart';
import 'Screens/logi/login.dart';
import 'Screens/logi/login_with_api_bolck.dart';
import 'Screens/promotiontab/buy_more/cubit/buy_more_verticalList/buy_more_vertical_list_cubit.dart';
import 'Screens/promotiontab/discount/cubit/PromotionDiscountVerticalList/promotion_discount_vertical_list_cubit.dart';
import 'Screens/promotiontab/muttibuy/cubit/multibuyverticallist_cubit.dart';
import 'Screens/promotiontab/sale/cubits/ListOfferPeriodGroup/list_offer_period_cubit.dart';
import 'Screens/promotiontab/sale/cubits/chennellist/channel_list_cubit.dart';
import 'Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'Screens/promotiontab/sale/cubits/offergroup/list_offer_group_cubit.dart';
import 'Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'Screens/promotiontab/sale/cubits/salevertical_list/promotionsale_vertical_list_cubit.dart';
import 'Screens/purchaseorder/purchase_order_general/blocs/bottom_button_loading_bloc.dart';

import 'Screens/purchasreturn/cubits/cubit/invoicepost_cubit.dart';
import 'Screens/sales/general/cubit/generalread/salesgeneralread_cubit.dart';
import 'Screens/sales/general/cubit/postcubit/postcubit_cubit.dart';
import 'Screens/sales/general/cubit/sales_general_patch/salesgeneralpatcvh_cubit.dart';
import 'Screens/sales/general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'Screens/sales/general/cubit/salesgeneraldelete/salesgeneraldelete_cubit.dart';
import 'Screens/sales/general/cubit/shippingaddress/shippingadrees_cubit.dart';
import 'Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import 'Screens/variant/channel_alloction/cubit/channelread/channelread_cubit.dart';
import 'Screens/variant/channel_costing_allocation/cubits/costingcreatelist/costingcreatelist_cubit.dart';
import 'Screens/variant/channel_costing_allocation/cubits/cubit/unicost_costing_cubit.dart';
import 'Screens/variant/channel_costing_allocation/cubits/deletion/deletioncosting_cubit.dart';
import 'Screens/variant/channel_costing_allocation/cubits/pricinglist/pricinglist_cubit.dart';
import 'Screens/variant/channel_stockAllocation/cubit/channelstockvertical/channelstockvertical_cubit.dart';
import 'Screens/variant/channels2allocation/cubits/channellistread/channel_list_read_cubit.dart';
import 'Screens/variant/channels2allocation/cubits/data_assign/allocationdata_assign_cubit.dart';
import 'Screens/variant/general/cubits/listvariant/listvariant_cubit.dart';
import 'Screens/variant/general/cubits/variant_selection/variantselection_cubit.dart';
import 'Screens/variant/stock/cubits/stockvertical/stockvertical_cubit.dart';
import 'Screens/variant/variantdetails/cubits/liststock/liststockpartition_cubit.dart';
import 'Screens/variant/variantdetails/cubits/producedcountry/producedcountry_cubit.dart';
import 'commonWidget/Navigationprovider.dart';
import 'commonWidget/sharedpreference.dart';
import 'core/env.dart';
import 'cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'cubits/cubit/cubit/purchase_stock_cubit.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  AppEnviornment.setUpEnv(EnviornMent.production);
  // window_size.  DesktopWindow.setMinWindowSize(Size(600, 800));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<int, Color> coloru =
  {
    50:Color.fromRGBO(7, 39, 87, 0.10196078431372549),
    100:Color.fromRGBO(17, 20, 81, 0.2),
    200:Color.fromRGBO(4, 7, 69, 0.30196078431372547),
    300:Color.fromRGBO(14, 38, 136, 0.4),
    400:Color.fromRGBO(14, 57, 136, 0.5019607843137255),
    500:Color.fromRGBO(14, 38, 136, 0.6),
    600:Color.fromRGBO(14, 30, 136, 0.7019607843137254),
    700:Color.fromRGBO(14, 16, 136, 0.8),
    800:Color.fromRGBO(14, 34, 136, 0.9019607843137255),
    900:Color.fromRGBO(14, 38, 136, 1.0),
  };
  // MaterialColor colorCustom = MaterialColor(0xFF880E4F, coloru);
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
          create: (context) => PromotionDiscountVerticalListCubit(),
        ),

        // BlocProvider(
        //   create: (context) => PurchasegeneratingCubit(),
        // ),
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
          create: (context) => BuyMoreVerticalListCubit(),
        ),
        BlocProvider(
          create: (context) => Listbrand2Cubit(),
        ),
        BlocProvider(
          create: (context) => GeneralPurchaseReadCubit(),
        ),   BlocProvider(
          create: (context) => ListOfferPeriodCubit(),
        ), BlocProvider(
          create: (context) => PromotionCouponVerticalListCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialListCubit(),
        ),
        BlocProvider(
          create: (context) => GeneralPurchaseReadCubit(),
        ),
        BlocProvider(
          create: (context) => DevisionListCubit(),
        ),
        BlocProvider(
          create: (context) => ListstaticCubit(),
        ),  BlocProvider(
          create: (context) => MultibuyverticallistCubit(),
        ),
        BlocProvider(
          create: (context) => UomgruoplistCubit(),
        ),
        BlocProvider(
          create: (context) => CategorylistCubit(),
        ),
        BlocProvider(
          create: (context) => PostcubitCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralreadCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneraldeleteCubit(),
        ),
        BlocProvider(
          create: (context) => SalesgeneralpatcvhCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseStockCubit(),
        ),
        BlocProvider(
          create: (context) => GrouplistCubit(),
        ),    BlocProvider(
          create: (context) => ListOfferGroupCubit(),
        ),
        BlocProvider(
          create: (context) => DeleteOfferPeriodCubit(),
        ),
        BlocProvider(
          create: (context) => BaseuomlistCubit(),
        ),
        BlocProvider(
          create: (context) => ItemcreationListCubit(),
        ),
        BlocProvider(
          create: (context) => ListvraiantCubit(),
        ),
        BlocProvider(
          create: (context) => ListvariantCubit(),
        ),
        BlocProvider(
          create: (context) => StockverticalCubit(),
        ),
        BlocProvider(
          create: (context) => CostingtypelistCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseorderdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => RequestformpostCubit(),
        ),
        BlocProvider(
          create: (context) => RequestpatchCubit(),
        ),
        BlocProvider(
          create: (context) => DeleterequestformCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseorderpostCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseOrderPatchCubit(),
        ),
        BlocProvider(
            create: (context) => InvoicepostPurchaseCubit()),
        BlocProvider(
          create: (context) => ListstockpartitionCubit(),
        ),
        BlocProvider(
          create: (context) => CostingcreatelistCubit(),
        ),
        BlocProvider(
          create: (context) => PricingroupcreateCubit(),
        ),
        BlocProvider(
          create: (context) => PricinglistCubit(),
        ),
        BlocProvider(
          create: (context) => FrameworklistCubit(),
        ),
        BlocProvider(
          create: (context) => ReturdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => GeneralpostCubit(),
        ),
        BlocProvider(
          create: (context) => PurchasereturngeneralpatchCubit(),
        ),
        BlocProvider(
          create: (context) => InvoicepostCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturnpostCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturninvoicepostCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturngeneralpatchCubit(),
        ),
        BlocProvider(
          create: (context) => LinkedlistverticallistCubit(),
        ),
        BlocProvider(
          create: (context) => SalesreturngeneraldeleteCubit(),
        ),
        BlocProvider(
          create: (context) => AllocationdataAssignCubit(),
        ),
        BlocProvider(
          create: (context) => ChannelListReadCubit(),
        ),
        BlocProvider(
          create: (context) => ChannelstockverticalCubit(),
        ),    BlocProvider(
          create: (context) => PromotionsaleVerticalListCubit(),
        ),

    BlocProvider(
    create: (context) => ProducedcountryCubit()),
        BlocProvider(
          create: (context) => UnicostCostingCubit(),
        ),
        BlocProvider(
          create: (context) => AllcategorylistCubit(),
        ),  BlocProvider(
          create: (context) => ChannelListCubit(),
        ),
        // BlocProvider(
        //   create: (context) => ChannelreadCubit(),
        // ),
        BlocProvider(
          create: (context) => SubcategoryCubit(),
        ), BlocProvider(
          create: (context) => VariantselectionCubit(),
        ), BlocProvider(
          create: (context) => DeletioncostingCubit(),
        ), BlocProvider(
          create: (context) => ListcustomverticalCubit(),
        ), BlocProvider(
          create: (context) => ListDivisionCubit(),
        ), BlocProvider(
          create: (context) => ShippingadreesCubit(),
        ), BlocProvider(
          create: (context) => AttributepatchlistCubit(),
        ),BlocProvider(
          create: (context) => PromotionImageCubit(),
        ),BlocProvider(
          create: (context) => PayementVerticalListCubit(),
        ),BlocProvider(
          create: (context) => PromotionSaleDeactivateCubit(),
        ),
        BlocProvider(
          create: (context) => InventorypostCubit(),
        ),
        BlocProvider(
          create: (context) => AdditionalgenerateCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentListCubit(),
        ),  BlocProvider(
          create: (context) => BottomButtonLoadingBloc(),
        ),
        BlocProvider(
          create: (context) => PurchaserecievingpatchCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentSalePostCubit(),
        ),
        BlocProvider(
          create: (context) => PatchreceiveCubit(),
        ),
        BlocProvider(
          create: (context) => GeneraterequestformCubit(),
        ),
        BlocProvider(
          create: (context) => BogoVerticalListCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentTransactionSuccessPostCubit(),
        ),  BlocProvider(
          create: (context) => AttributelistCubit(),
        ), BlocProvider(
          create: (context) => CategoryListSearchCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(

          primarySwatch: MaterialColor(0xff3E4F5B, coloru)),
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
  int index = 1;

  Future getvalidationData() async {
    print("enterdeeed");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Variable.inventory_ID = prefs.getString("inventory").toString();
    Variable.inventory_Name = prefs.getString("inventory_name").toString();
    Variable.created_by = prefs.getString("empcode").toString();


    // Variable.subIndex = list.map(int.parse).toList();

    index = prefs.getInt('index') ?? 0;

    UserPreferences userPref = UserPreferences();
    await userPref.getUser().then((user) {

      if (user.isLoggedIn == true) {
        prefs.setString('token', user?.token ?? "");

        Variable.loginLeage = user.legalEntiry.toString();
        Variable.email = user.email.toString();
        Variable.mobileNumber = user.mobile.toString();
        Variable.loginLeage = user.legalEntiry.toString();
        Variable.token = user.token.toString();
        Variable.username = user.fname.toString();
        Variable.created_by = user.employeeCode.toString();
        Variable.subIndex = [];
        var list = jsonDecode(prefs.getString('key').toString());
        for (var a in list) {
          print("the a i shere" + a.toString());
          Variable.subIndex.add(int?.tryParse(a));
        }
        print("the a i shere" + Variable.subIndex.toString());
        //   list.map((e) {
        //     print("the eee is here"+e.toString());
        //     // e.toInt()).toList()
        // }    );

        Navigator.pushReplacement(
            context,
            new MaterialPageRoute(
                builder: (context) =>
                    DashBoard(
                      index: index,
                    )));
      } else {
        print(" not already ");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginWithApiBlock()));
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
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'signUp': (context) => RegisterScreen(),
        '/home': (context) => DashBoard(),
      },
    );
  }

}
