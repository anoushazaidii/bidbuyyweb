import 'package:bidbuyweb/presentation/signup_mob_screen.dart';
import 'package:bidbuyweb/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.signUp:
        return _buildRoute(const SignupMobScreen(), settings);
      default:
        return _buildRoute(
            const Scaffold(
              body: Center(
                child: Text("NO Route Found"),
              ),
            ),
            settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
