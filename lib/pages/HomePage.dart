import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/constant/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List popularDestination = [
      "Most Viewed",
      "Near ",
      "Latest",
    ];
    List popularDestinationImages = [
      "assets/lahore.png",
      "assets/1.png",
      "assets/Neptune.png",
      "assets/umair.png",
      "assets/Uranus.png",
    ];

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
                  hintText: "Search here",
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
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Destination",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 80.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 54.h,
                        width: 136.w,
                        decoration: BoxDecoration(
                          color: bgcolor1..withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            popularDestination[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              // color: bgcolor2,
              height: 400.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularDestinationImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 405.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(popularDestinationImages[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(backgroundImage: AssetImage("assets/1.png"),)
                            ],
                          ),
                        )
                      
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
