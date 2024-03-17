import 'package:bidbuyweb/presentation/seller_account_mob_screen/provider/seller_account_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/seller_account_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_product_description_mob_screen/provider/seller_product_description_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_product_description_mob_screen/seller_product_description_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/add_product_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_add_product.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/provider/seller_adress_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ThemeProvider()),
            ChangeNotifierProvider(create: (_) => SellerAdressMobProvider()),
            ChangeNotifierProvider(create: (_) => SellerAccountMobProvider()),
            
            ChangeNotifierProvider(create: (_) => SellerProductDescriptionMobProvider()),
          ],
          child: MaterialApp(
            theme: theme,
            title: 'bidbuyy',
            // navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              // GlobalMaterialLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
              // GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale(
                'en',
                '',
              ),
            ],
            home: const AddProductPhotosMobScreen(),
          ),
        );
      },
    );
  }
}
