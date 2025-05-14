import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishyatra_app/login/login.page.dart';
import 'package:ishyatra_app/splash/splash.page2.dart';

class SplashPage4 extends StatefulWidget {
  const SplashPage4({super.key});

  @override
  State<SplashPage4> createState() => _SplashPage4State();
}

class _SplashPage4State extends State<SplashPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        iamge: "assets/splash3.png",
        callback: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => LoginPage()),
          );
        },
        isShow: false,
      ),
    );
  }
}
