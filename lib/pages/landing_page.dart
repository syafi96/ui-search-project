import 'package:flutter/material.dart';
import 'package:ui_job_search/pages/home_page.dart';

import 'myclipper.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.6,
            width: width,
            decoration: const BoxDecoration(
              color: Color(0xff2A92E7),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.47,
                      width: width,
                    ),
                    SizedBox(
                      height: height * 0.13,
                      width: width,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff4BA3E9),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: SizedBox(
                    height: 300,
                    width: 200,
                    child: Image(
                      image: AssetImage("assets/img_home_page.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.4,
            width: width,
            margin: const EdgeInsets.only(
              right: 22,
              left: 22,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width,
                  child: const Text(
                    "Find your Dream Job Here",
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: "PoppinsBold",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  width: width,
                  child: const Text(
                    "we provide many types of jobs form various cities around the world",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "PoppinsLight",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff2B94E7),
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 1),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) =>
                                SlideTransition(
                          position: Tween(
                            begin: const Offset(0, 1),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ),
                        pageBuilder: (context, animation, secAnimation) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 50,
                    width: width,
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "PoppinsMedium",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
