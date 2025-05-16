import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishyatra_app/splash/splash.page3.dart';

class SplashPage2 extends StatefulWidget {
  const SplashPage2({super.key});

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        iamge: "assets/spalsh1.png",
        callback: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => SplashPage3()),
          );
        },
        isShow: true,
      ),
    );
  }
}

///////////////////////////////////

class BackgroundImage extends StatefulWidget {
  final String iamge;
  final Function callback;
  final bool isShow;
  const BackgroundImage({
    super.key,
    required this.iamge,
    required this.callback,
    required this.isShow,
  });

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.iamge,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 109.h),
                  Image.asset(
                    "assets/ishyatralogo.png",
                    color: Color.fromARGB(229, 255, 101, 0),
                  ),
                  SizedBox(height: 50.h),
                  widget.isShow
                      ? Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Personalized spiritual journeys across\n India’s sacred sites.",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Your Yatra, Your Way!",
                            style: GoogleFonts.inter(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      )
                      : SizedBox(),

                  SizedBox(height: 100.h),
                  GestureDetector(
                    onTap: () {
                      widget.callback();
                    },
                    child: Container(
                      width: 242.w,
                      height: 46.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        border: Border.all(color: Colors.white, width: 1.w),
                        color: Color.fromARGB(25, 255, 151, 54),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  DotsIndicator(
                    dotsCount: 4,
                    decorator: DotsDecorator(
                      activeColor: Colors.white,
                      shape: CircleBorder(),
                      spacing: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
