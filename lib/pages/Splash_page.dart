import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/pages/HomePage.dart';

import '../constant/colors.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with WidgetsBindingObserver {
  @override
  // void initState() {
  //   Timer(
  //     const Duration(seconds: 4),
  //     () => Get.to(() => const Homepage()),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: const AssetImage('assets/minearPak.jpg'),
            opacity: 0.5,
            scale: 2.0,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Travel App",
                    style: GoogleFonts.getFont(
                      "Kaushan Script",
                      fontSize: 80.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.getFont(
                            "Montserrat",
                            fontSize: 40.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: "Plan your",
                              style: GoogleFonts.getFont("Montserrat",
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.3),
                            ),
                            TextSpan(
                              text: "Dream Vacation",
                              style: GoogleFonts.getFont(
                                "Montserrat",
                                fontSize: 45.sp,
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "\n BY THIS APP",
                              style: GoogleFonts.getFont(
                                "Montserrat",
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      print("Explore");
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 130),
                      decoration: BoxDecoration(
                        color: bgcolor1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Explore",
                          style: GoogleFonts.getFont(
                            "Roboto Condensed",
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
