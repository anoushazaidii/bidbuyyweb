import 'package:bidbuyweb/presentation/seller_account_mob_screen/provider/seller_account_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/seller_account_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_add_product.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/provider/seller_adress_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_verify_screen.dart';

import 'package:bidbuyweb/presentation/seller_view/seller_otp_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_profile_mob_screen.dart';
import 'package:bidbuyweb/firebase_options.dart';
import 'package:bidbuyweb/presentation/signup_mob_one_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   GoogleSignIn _googleSignIn = GoogleSignIn(
      clientId: '444041450729-nlgvltq2t0ub73oehafg8rjjrqo32cst.apps.googleusercontent.com',
    );
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]);
  runApp(MyApp());
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
            home: const SellerOtpMobScreen(),
          ),
        );
      },
    );
  }
}
