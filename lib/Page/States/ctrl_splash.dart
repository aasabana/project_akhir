import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/LoginPage/Login_Page.dart';

class SplashScreenController extends GetxController {
  void onInitL() {
    super.onInit();
    Timer(Duration(seconds: 2), () {
      Get.off(LoginPage());
    });
  }
}
