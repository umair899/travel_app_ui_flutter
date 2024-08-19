import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Travel NOW',
                        style: GoogleFonts.montserrat(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.green[400],
                      size: 30.sp,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Lahore,PK",
                      style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find a Place To Visit",
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.green[400],
              labelColor: Colors.green[400],
              unselectedLabelColor: Colors.black38,
              labelStyle: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w700, fontSize: 16),
              unselectedLabelStyle: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w700, fontSize: 16),
              tabs: [
                Tab(
                  text: "Near Me",
                  icon: Icon(Icons.location_on),
                ),
                Tab(
                  text: "Hotels",
                  icon: Icon(Icons.hotel),
                ),
                Tab(
                  text: "Food",
                  icon: Icon(Icons.fastfood),
                ),
                Tab(
                  icon: Icon(Icons.camera),
                  text: "Adventure",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: TabBarView(children: [
                buildTabContent(
                  "Near me",
                ),
                buildTabContent(
                  "Hotels",
                ),
                buildTabContent(
                  "Food",
                ),
                buildTabContent(
                  "Adventure",
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          elevation: 0.0,
          backgroundColor: Colors.grey[100],
          selectedItemColor: const Color.fromARGB(255, 68, 211, 75),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabContent(String tab) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Destination",
                    style: GoogleFonts.montserrat(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
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
