import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/pages/Home.dart';

class PlaceScreenDetail extends StatelessWidget {
  const PlaceScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/lahore.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  Home(),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  top: 60.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff535151),
                                ),
                                height: 50.h,
                                width: 50.w,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back(
                                  closeOverlays: true,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  top: 60.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff535151),
                                ),
                                height: 50.h,
                                width: 50.w,
                                child: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -20.h,
                    right: 20.w,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff535151),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 33.h,
                              width: 33.w,
                              decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.timer_sharp,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text("8 h ,45 m"),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 33.h,
                              width: 33.w,
                              decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text("4.5"),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 33.h,
                              width: 33.w,
                              decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.cloud_outlined,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text("32'C"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        'Lahore is the capital of the Pakistani province of Punjab and is the country’s 2nd largest city after Karachi, as well as the 26th largest city in the world. Lahore is one of Pakistan’s wealthiest cities, with an estimated GDP of \$58.14 billion as of 2015. It is the largest city and historic cultural centre of the wider Punjab region, and is one of Pakistan'),
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[400],
                          ),
                        ),
                        Text(
                          "\$100",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 60.h,
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
