import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/presentation/Desktop/signup2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              NavigationBar(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text("Home >"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Account")
                ],
              ),
              CenteredWidgets(),
              SizedBox(
                height: 30,
              ),
              SecondLastContainer(),
              SizedBox(
                height: 30,
              ),
              FooterWidget(),
              SizedBox(
                height: 30,
              ),
              Lastline()
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: theme.colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign up and get 20% off to your first order.",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up Now",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          color: Colors.white)),
                )
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.07,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/img_text.svg",
                  width: 50,
                  height: 50,
                ),
                TextButton(onPressed: () {}, child: Text("Home")),
                TextButton(onPressed: () {}, child: Text("Auction")),
                TextButton(onPressed: () {}, child: Text("Sell")),
                TextButton(onPressed: () {}, child: Text("About us ")),
                Container(
                  width: 600,
                  height: 45,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search for products"),
                  ),
                ),
                Icon(CupertinoIcons.heart),
                Icon(Icons.person)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SecondLastContainer extends StatelessWidget {
  const SecondLastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "STAY UPTO DATE FOR OUR LATEST AUCTIONS",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 40,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "enter you email address",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.message),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: 400,
                    height: 40,
                    child: Center(
                        child: Text(
                      "Subscribe to Newsletter",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bidbuyy",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),

                Text(
                    "Join online auction and find unique items to buy and sell with excitement"),

                SizedBox(
                  height: 20,
                ),

                //icons images
                Row(
                  children: [
                    Icon(Icons.facebook_outlined),
                    SizedBox(width: 5),
                    Icon(Icons.facebook),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.facebook),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.facebook),
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "COMPANY",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("About"),
                  SizedBox(height: 10),
                  Text("Features"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Works"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Carrier"),
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HELP",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Customer Support"),
                SizedBox(height: 10),
                Text("Delivery Details"),
                SizedBox(
                  height: 10,
                ),
                Text("Terms & Conditions"),
                SizedBox(
                  height: 10,
                ),
                Text("Privacy Policy"),
              ],
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FAQ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Account"),
                SizedBox(height: 10),
                Text("Manage Deliveries"),
                SizedBox(
                  height: 10,
                ),
                Text("Order"),
                SizedBox(
                  height: 10,
                ),
                Text("Payments"),
              ],
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RESOURCES",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Free eBooks"),
                SizedBox(height: 10),
                Text("Developement Tutorial"),
                SizedBox(
                  height: 10,
                ),
                Text("How to-Blog"),
                SizedBox(
                  height: 10,
                ),
                Text("Youtube Playlist"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Lastline extends StatelessWidget {
  const Lastline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 40,
      child: Text("Bidbuy @ 2000-2023, All Rights Reserved "),
    );
  }
}
