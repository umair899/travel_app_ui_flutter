import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularItem extends StatelessWidget {
  final String title;
  final String subtitle;

  final String rating;
  final String image;
  PopularItem(
      {required this.title,
      required this.rating,
      required this.image,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          width: 270.w,
          height: 407.h,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.9),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                blurRadius: 10,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal,
                offset: Offset(-1, -5),
              ),
            ],
            image: DecorationImage(
                image: AssetImage(image), opacity: .5, fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0),
                    child: Container(
                      height: 75.h,
                      width: 240.w,
                      decoration: BoxDecoration(
                          color: Color(0xff4E4B4B).withOpacity(.9),
                          
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.getFont("Montserrat",
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.3),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green[200],
                                  size: 20.sp,
                                ),
                                Text(
                                  subtitle,
                                  style: GoogleFonts.getFont("Montserrat",
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      height: 1.3),
                                ),
                                SizedBox(
                                  width: 60.w,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20.sp,
                                    ),
                                    Text(
                                      rating,
                                      style: GoogleFonts.getFont("Montserrat",
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          height: 1.3),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
