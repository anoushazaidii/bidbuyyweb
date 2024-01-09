import 'package:apiintegration/core/utils/pref_utils.dart';
import 'package:apiintegration/localization/app_localization.dart';
import 'package:apiintegration/presentation/signup_mob_screen.dart';
import 'package:apiintegration/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';
import 'core/utils/size_utils.dart';


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
        return ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: Consumer<ThemeProvider>(
            builder: (context, provider, child) {
              return MaterialApp(
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
                home: SignupMobScreen(),
                
              );
            },
          ),
        );
      },
    );
  }
}
