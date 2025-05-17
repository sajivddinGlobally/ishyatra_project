import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishyatra_app/home/search.page.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32.r),
                  child: Image.asset(
                    "assets/design.png",
                    width: MediaQuery.of(context).size.width,
                    height: 305.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40.h,
                  left: 20.w,
                  child: SizedBox(
                    width: 450.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 254, 119, 67),
                          ),
                          child: Center(
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30.w),
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 254, 119, 67),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.ios_share_sharp,
                              color: Colors.white,
                              size: 26.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 8.h, right: 16.w),
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
                  Text(
                    "20,000",
                    style: GoogleFonts.inter(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Color(0xFFFE7743),
                      decorationThickness: 1,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7F94A3),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Row(
                children: [
                  Text(
                    "3 Days 4 Nights",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1E3E62),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20.sp),
                  Text(
                    "4.9",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1E3E62),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    "(217)",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1E3E62),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "13,000 /",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF273F4F),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    "P1",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1E3E62),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
            Divider(
              color: Color(0xFFCFCCD2),
              thickness: 1.0,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  YatraSelect(image: "assets/pickup.png", txt: "PickUp"),
                  YatraSelect(image: "assets/Bus.png", txt: "AC"),
                  YatraSelect(image: "assets/temple.png", txt: "Temple"),
                  YatraSelect(image: "assets/lodgin.png", txt: "Lodging"),
                  YatraSelect(image: "assets/insights.png", txt: "Insights"),
                  YatraSelect(image: "assets/dropoff.png", txt: "DropOff"),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Divider(
              color: Color(0xFFCFCCD2),
              thickness: 1.0,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 20.w, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover sacred destinations with ease. Complete packages including lodging, meals, and guided support for a peaceful Discover sacred destinations with ease. Complete packages including lodging, meals, and guided support for a peaceful Discover sacred destinations with ease. ",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0B192C),
                    ),
                  ),
                  SizedBox(height: 20.h),
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
                            "PickUp: Rudraprayag district, Uttarakhand",
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
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Timeline for Package Activities",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0B192C),
                ),
              ),
            ),
            Container(
              height: 450.h,
              // color: Colors.amber,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10.h),
                        TimelineTile(
                          axis: TimelineAxis.vertical,
                          alignment: TimelineAlign.start,
                          lineXY: 1.0,
                          isFirst: true,
                          indicatorStyle: IndicatorStyle(
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xFF1E3E62),
                            padding: EdgeInsets.only(top: 10.h),
                            indicatorXY: BorderSide.strokeAlignCenter,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Color(0xFF1E3E62),
                            thickness: 2.w,
                          ),
                          endChild: Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Day 1 – Arrival and Check-in",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "8:00 AM: Pickup from Haridwar/Rishikesh",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "4:00 PM: Arrival at Guptkashi",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          lineXY: 0.1,
                          isFirst: true,
                          indicatorStyle: IndicatorStyle(
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xFF1E3E62),
                            indicatorXY: BorderSide.strokeAlignCenter,
                            padding: EdgeInsets.only(top: 10.h),
                          ),
                          beforeLineStyle: LineStyle(
                            color: Color(0xFF1E3E62),
                            thickness: 2.w,
                          ),
                          endChild: Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Day 2 – Kedarnath Trek and Darshan",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "5:00 AM: Drive to Sonprayag",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "7:00 AM: Start trek to Kedarnath",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "2:00 PM: Arrival and check-in at Kedarnath",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "5:00 PM: Temple Darshan and Evening Aarti",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "9:00 PM: Stay near Kedarnath Temple",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          lineXY: 0.1,
                          isFirst: true,
                          afterLineStyle: LineStyle(
                            color: Color(0xFF1E3E62),
                            thickness: 2.w,
                          ),
                          indicatorStyle: IndicatorStyle(
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xFF1E3E62),
                            indicatorXY: BorderSide.strokeAlignCenter,
                            padding: EdgeInsets.only(top: 10.h),
                          ),
                          beforeLineStyle: LineStyle(
                            color: Color(0xFF1E3E62),
                            thickness: 2.w,
                          ),
                          endChild: Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Day 3 – Kedarnath Trek and Darshan",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "6:00 AM: Morning optional Darshan",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "8:00 AM: Start trek back to Sonprayag",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "2:00 PM: Drive to Guptkashi",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                                Text(
                                  "7:00 PM: Rest and leisure evening at hotel",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF0B192C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          lineXY: 0.1,
                          isLast: true,
                          indicatorStyle: IndicatorStyle(
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xFF1E3E62),
                            indicatorXY: BorderSide.strokeAlignCenter,
                            padding: EdgeInsets.zero,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Color(0xFF1E3E62),
                            thickness: 2.w,
                          ),
                          endChild: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              "Day 4 – Departure",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0B192C),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 51.h),
            backgroundColor: Color(0xFFFF6500),
          ),
          onPressed: () {},
          child: Text(
            "Book",
            style: GoogleFonts.inter(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
