import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ishyatra_app/login/login.page.dart';
import 'package:ishyatra_app/otp/otp.page.dart';
import 'package:ishyatra_app/splash/splash.page2.dart';

class SplashPage4 extends StatefulWidget {
  const SplashPage4({super.key});

  @override
  State<SplashPage4> createState() => _SplashPage4State();
}

class _SplashPage4State extends State<SplashPage4> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // This makes it full height possible
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height:
              MediaQuery.of(context).size.height * 0.85, // <--- Fixed height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.r),
              topRight: Radius.circular(100.r),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 11.9.r,
                offset: Offset(0, 4),
                spreadRadius: -1,
                color: Color.fromARGB(63, 255, 255, 255),
              ),
            ],
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/loginimage.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    left: 0,
                    right: 0,
                    top: 80.h,
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/loginlogo.png",
                            color: Color.fromARGB(229, 255, 101, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.w,
                    top: 20.h,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 45.sp,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 242, 235, 235),
                    indent: 130,
                    endIndent: 130,
                    height: 25.h,
                    thickness: 5,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 255, 255, 255),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 46.h),
                      Text(
                        "Enter You phone number to Login/Signup",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 42, 42, 42),
                          letterSpacing: -0.5,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      IntlPhoneField(
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 84, 84, 84),
                        ),
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 225, 225, 225),
                              width: 2.w,
                            ),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 225, 225, 225),
                              width: 2.w,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 225, 225, 225),
                              width: 2.w,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 225, 225, 225),
                              width: 2.w,
                            ),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                              thickness: 1.6,
                            ),
                          ),
                          Text(
                            "or",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                              thickness: 1.6,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: Color.fromARGB(255, 225, 225, 225),
                            width: 2.w,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png"),
                            SizedBox(width: 10.w),
                            Text(
                              "Login with Google",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 42, 42, 42),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 38.h),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(builder: (context) => OtpPage()),
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
                                child: OtpPage(), // ✅ Your OTP Page Here
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
                                  "Send OTP",
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
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        iamge: "assets/splash3.png",
        callback: () {
          _showBottomSheet(context);
          // Navigator.push(
          //   context,
          //   CupertinoPageRoute(builder: (context) => LoginPage()),
          // );
        },
        isShow: false,
      ),
    );
  }
}
