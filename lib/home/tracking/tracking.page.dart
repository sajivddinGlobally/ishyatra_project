import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishyatra_app/home/search.page.dart';

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
      body: Column(
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
                top: 35.h,
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
            padding: EdgeInsets.only(left: 16.w, right: 10.w, top: 10.h),
            child: Text(
              "Discover sacred destinations with ease. Complete\n packages including lodging, meals, and guided\n support for a peaceful Discover sacred destinations\n with ease. Complete packages including lodging,\n meals, and guided support for a peaceful Discover\n sacred destinations with ease. ",
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF0B192C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
