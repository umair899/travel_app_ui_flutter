import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
          gradient: gradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Hero(
                tag: 'logo',
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "assets/1.png",
                        fit: BoxFit.cover,
                        scale: 1.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("    FIND YOUR DREAM \nDESTINATION WITH US",
                        style: TextStyle(
                      
                          letterSpacing: 2,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
