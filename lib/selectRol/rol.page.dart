import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishyatra_app/selectRol/upload.page.dart';

class RolPage extends StatefulWidget {
  const RolPage({super.key});

  @override
  State<RolPage> createState() => _RolPageState();
}

class _RolPageState extends State<RolPage> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/otpimage.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 120.h,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 11.9.r,
                    spreadRadius: -1,
                    color: Color.fromARGB(63, 0, 0, 0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Center(
                    child: Container(
                      width: 134.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color.fromARGB(255, 217, 217, 217),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 217, 217, 217),
                        size: 40.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      top: 20.h,
                      right: 20.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Please select your role",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 11, 25, 44),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          "Select your role to continue: Traveller, Vendor\n (business), or Companion (licensed individual guide).",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 11, 25, 44),
                          ),
                        ),
                        SizedBox(height: 34.h),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 0;
                            });
                          },
                          child: SelectBody(
                            iamge: "assets/Traveler.png",
                            title: "I am a pilgrimage Traveller ",
                            txt:
                                "Explore destinations, book services, and\n enjoy a seamless travel experience.",
                            bgcolor:
                                tab == 0
                                    ? Color.fromARGB(255, 251, 240, 233)
                                    : Colors.white,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 1;
                            });
                          },
                          child: SelectBody(
                            iamge: "assets/Valet.png",
                            title: "I am a Vendor",
                            txt:
                                "Register your business (e.g., shop, hotel,\n travel agency) to offer services",
                            bgcolor:
                                tab == 1
                                    ? Color.fromARGB(255, 251, 240, 233)
                                    : Colors.white,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 2;
                            });
                          },
                          child: SelectBody(
                            iamge: "assets/Agency.png",
                            title: "I am a Companion",
                            txt:
                                "Act as a trusted local guide or assistant\n connecting travellers with vendors",
                            bgcolor:
                                tab == 2
                                    ? Color.fromARGB(255, 251, 240, 233)
                                    : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 110.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 50.h),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) => UploadPage(),
                            //   ),
                            // );
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: UploadPage(), // ✅ Your OTP Page Here
                                );
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 51.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(41.r),
                              color: Color.fromARGB(229, 255, 101, 0),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Continue",
                                    style: GoogleFonts.inter(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30.sp,
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
            ),
          ),
        ],
      ),
    );
  }
}

class SelectBody extends StatefulWidget {
  final String iamge;
  final String title;
  final String txt;
  final Color bgcolor;
  const SelectBody({
    super.key,
    required this.iamge,
    required this.title,
    required this.txt,
    required this.bgcolor,
  });

  @override
  State<SelectBody> createState() => _SelectBodyState();
}

class _SelectBodyState extends State<SelectBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: widget.bgcolor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 11.9,
            spreadRadius: -1,
            color: Color.fromARGB(63, 0, 0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Image.asset(widget.iamge),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 11, 25, 44),
                ),
              ),
              Text(
                widget.txt,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 11, 25, 44),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
