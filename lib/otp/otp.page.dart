import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/otpimage.png", fit: BoxFit.cover),
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
                          child: Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 217, 217, 217),
                            size: 40.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Verification Code",
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 11, 25, 44),
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                "We have sent the verification code to the",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 11, 25, 44),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "phone number",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 11, 25, 44),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    " ‘+91 98765 43210’",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 11, 25, 44),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Center(child: Image.asset("assets/otp.png")),
                        SizedBox(height: 54.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Column(
                            children: [
                              OtpPinField(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                fieldHeight: 51.h,
                                fieldWidth: 49.w,
                                keyboardType: TextInputType.number,
                                otpPinFieldStyle: OtpPinFieldStyle(
                                  defaultFieldBorderColor: Color.fromARGB(
                                    255,
                                    30,
                                    62,
                                    98,
                                  ),
                                  activeFieldBorderColor: Color.fromARGB(
                                    229,
                                    255,
                                    101,
                                    0,
                                  ),
                                ),
                                otpPinFieldDecoration:
                                    OtpPinFieldDecoration
                                        .defaultPinBoxDecoration,
                                onSubmit: (text) {},
                                onChange: (text) {},
                              ),
                              SizedBox(height: 50.h),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => OtpPage(),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }
}
