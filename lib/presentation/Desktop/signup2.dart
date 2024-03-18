import 'package:bidbuyweb/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login1.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        // Initialize SizeUtils here
        SizeUtils.setScreenSize(
          BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          orientation,
        );

        // Return your main widget
        return const MaterialApp(
          home: CenteredWidgets(),
        );
      },
    ),
  );
}

class CenteredWidgets extends StatefulWidget {
  const CenteredWidgets({super.key});

  @override
  State<CenteredWidgets> createState() => _CenteredWidgetsState();
}

class _CenteredWidgetsState extends State<CenteredWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "SignUp",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.v,
                        ),
                        const Text("Email"),
                        SizedBox(
                          height: 50.v,
                          child: const TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Password"),
                        const SizedBox(
                            height: 50,
                            child: TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Confirm Password"),
                        const SizedBox(
                            height: 50,
                            child: TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            )),
                        SizedBox(
                          height: 20.v,
                        ),

                        const Text("I accept terms and conditions"),

                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(30)),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 50,
                                child: const Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Center(child: Text("Or sign up with")),

                        const SizedBox(
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
                            const SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/images/img_logos_facebook.svg",
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
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
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Create an account to dive into the world of auctions and unveil hidden treasures, As a member of Bidbuyy, you'll gain exclusive access to bid on unique, one-of-a-kind items, from vintage gems to intriguing antiques. Don't miss out on the excitment-sign up now and imbark on a journey where every bid buy is a step closer uncovering extra ordinary finds! Join the auction adventure today!",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginHomeView()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        //style: ButtonStyle(backgroundColor: ),

                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Already have an account? Login here",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
