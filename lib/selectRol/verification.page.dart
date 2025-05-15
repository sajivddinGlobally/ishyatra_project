import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishyatra_app/home/home.page.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
            top: 110.h,
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

                  SizedBox(height: 66.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 70.h),
                        Center(
                          child: Image.asset(
                            "assets/verify.png",
                            width: 330.w,
                            height: 280.h,
                            fit: BoxFit.contain, // better fit to avoid cut
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Verification\n Successful!",
                            style: GoogleFonts.inter(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 11, 25, 44),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => HomePage(),
                              ),
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
