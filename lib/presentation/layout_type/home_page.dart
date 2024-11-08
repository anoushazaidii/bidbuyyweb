import 'package:bidbuyweb/presentation/Desktop/homepage_desk_screen.dart';
import 'package:bidbuyweb/presentation/homepage_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_signup.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//This is used to show the homepage screen based on device type.
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomepageMobScreen(),
      desktop: (context) => const SellerSignUp(),
    );
  }
}
