import 'package:bidbuyweb/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginCenteredWidgets extends StatefulWidget {
  const LoginCenteredWidgets({super.key});

  @override
  State<LoginCenteredWidgets> createState() => _CenteredWidgetsState();
}

class _CenteredWidgetsState extends State<LoginCenteredWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Email"),
                        SizedBox(
                          height: 50,
                          child: TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Password"),
                        SizedBox(
                            height: 50,
                            child: TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            )),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Remember me"),

                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 50,
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Center(child: Text("Or login with")),

                        SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/img_flat_color_icons_google.svg",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/images/img_logos_facebook.svg",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/images/img_info.svg",
                              width: 30,
                              height: 30,
                            ),
                          ],
                        )
                        //icons images
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Welcome back! We're thrilled to see you again. Log in to Bidbuyy and resume your journey into the world of exclusive auctions. Your next winning bid could be just a click away Happy bidding!",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      //style: ButtonStyle(backgroundColor: ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Dont't have an account? Signup here",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
