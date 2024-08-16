import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/constant/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 57.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi,Umair",
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    child: Text(
                      "U",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    radius: 25.r,
                    backgroundColor: bgcolor2,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Explore the world",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(),
                  suffixIcon: Icon(
                    Icons.format_list_bulleted_rounded,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 70,
      //   decoration: BoxDecoration(color: Colors.transparent),
      //   child: Row(
      //     children: [
      //       Column(
      //         children: [
      //           IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.home_outlined,
      //               size: 20,
      //             ),
      //           ),
      //           Text(
      //             "Home",
      //             style: TextStyle(
      //                 fontSize: 10,
      //                 color: const Color.fromARGB(255, 0, 0, 0),
      //                 fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
