import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishyatra_app/splash/splash.page2.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => SplashPage2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 116, 26),
      body: Center(child: Image.asset("assets/ishyatralogo.png")),
    );
  }
}
