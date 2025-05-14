import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishyatra_app/splash/splash.page2.dart';
import 'package:ishyatra_app/splash/splash.page4.dart';

class SplashPage3 extends StatefulWidget {
  const SplashPage3({super.key});

  @override
  State<SplashPage3> createState() => _SplashPage3State();
}

class _SplashPage3State extends State<SplashPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        iamge: "assets/splash2.png",
        callback: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => SplashPage4()),
          );
        }, isShow: false,
      ),
    );
  }
}
