import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/LoginPage/Login_Page.dart';
import 'package:project_akhir/Page/States/ctrl_splash.dart';

class Splash_screen extends StatefulWidget {
  Splash_screen({Key? key}) : super(key: key);

  final SplashScreenController ssc = Get.put(SplashScreenController());

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    start();
  }

  start() {
    final duration = Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  scale: 5, image: AssetImage("assets/images/Logo.png")),
              color: Color.fromARGB(255, 23, 54, 116)),
        ),
      ),
    );
  }
}
