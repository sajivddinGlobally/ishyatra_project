import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEditing = false;
  int tabyatra = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r),
                  ),
                  child: Image.asset(
                    "assets/homepageimage.png",
                    width: MediaQuery.of(context).size.width,
                    height: 270.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 66.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SizedBox(width: 18.w),
                            Text(
                              "Hello, Ajay!",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: Center(
                                child: Image.asset("assets/profile.png"),
                              ),
                            ),
                            SizedBox(width: 15.w),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w),
                        child: Text(
                          "Let’s Start Your \nSeamless Sacred Journey ",
                          style: GoogleFonts.inter(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(right: 30.w, left: 18.w),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEditing = true;
                            });
                          },
                          child:
                              isEditing
                                  ? SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 58.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 30.w),
                                      child: TextField(
                                        cursorColor: Colors.white,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.sp,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                            bottom: 10.h,
                                            left: 20.w,
                                          ),
                                          filled: true,
                                          fillColor: Colors.black12,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              40.r,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              40.r,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  : Container(
                                    width: 430.w,
                                    height: 58.h,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(40.r),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10.w),
                                        Icon(Icons.search, color: Colors.white),
                                        SizedBox(width: 10.h),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Search Places",
                                              style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Start Date",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w200,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),
                                                Container(
                                                  width: 5.w,
                                                  height: 5.h,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),
                                                Text(
                                                  "Pilgrimage Type",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w200,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 25.h),
              child: Text(
                "Pilgrimage Packages",
                style: GoogleFonts.stoke(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E3E62),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 9.h),
              child: SizedBox(
                // color: Colors.yellow,
                height: 35.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 0;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 0
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Char Dham Yatra",
                        txtcolor:
                            tabyatra == 0
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 1;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 1
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Himalayan Char Dham",
                        txtcolor:
                            tabyatra == 1
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 2;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 2
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Jhotirling Yatra",
                        txtcolor:
                            tabyatra == 2
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.yellow,
              height: 405,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 17.h),
                    child: Container(
                      width: 333.w,
                      height: 405.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 11.9,
                            spreadRadius: -1,
                            color: Color.fromARGB(63, 0, 0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32.r),
                              topRight: Radius.circular(32.r),
                            ),
                            child: Image.asset(
                              "assets/home.png",
                              width: 333.w,
                              height: 150.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 8.h,
                              right: 16.w,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Kedarnath Yatra",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20.sp,
                                ),
                                Text(
                                  "4.9",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF1E3E62),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.w),
                            child: Text(
                              "3 Days 4 Nights",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1E3E62),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 8.h,
                              right: 15.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Yatra(
                                  image: "assets/pickup.png",
                                  txt: "PickUp",
                                ),
                                Yatra(image: "assets/Bus.png", txt: "AC"),
                                Yatra(
                                  image: "assets/temple.png",
                                  txt: "Temple",
                                ),
                                Yatra(
                                  image: "assets/lodgin.png",
                                  txt: "Lodging",
                                ),
                                Yatra(
                                  image: "assets/insights.png",
                                  txt: "Insights",
                                ),
                                Yatra(
                                  image: "assets/return.png",
                                  txt: "Return",
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 10.w,
                              top: 8.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discover sacred destinations with ease.\nComplete packages including lodging, meals,\nand guided support for a peaceful...",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF1E3E62),
                                    letterSpacing: -0.1,
                                  ),
                                ),
                                SizedBox(height: 11.h),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                    color: Color(0xFFF2E8E5),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xFF273F4F),
                                          size: 15.sp,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          "PickUp: Delhi / Bengaluru",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF273F4F),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    Text(
                                      "20,000",
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF7F94A3),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Yatra extends StatelessWidget {
  final String image;
  final String txt;
  const Yatra({super.key, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 30.w, height: 30.h, fit: BoxFit.cover),
        SizedBox(height: 10.h),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: Color(0xFF1E3E62),
          ),
        ),
      ],
    );
  }
}

class DhamBody extends StatelessWidget {
  final Color bordercolor;
  final String txt;
  final Color txtcolor;
  const DhamBody({
    super.key,
    required this.bordercolor,
    required this.txt,
    required this.txtcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 139.w,
      height: 31.h,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor),
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 14.w, right: 14.w),
        child: Center(
          child: Text(
            txt,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: txtcolor,
            ),
          ),
        ),
      ),
    );
  }
}
