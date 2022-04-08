import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/route/route_constant.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    debugPrint('start session..');
    checkUserSession();
  }

  checkUserSession() async {
    await 1.delay();

    final prefs = await SharedPreferences.getInstance();
    final bool? isLogin = prefs.getBool('is_login');
    log('isUserLogin: $isLogin');
    if (isLogin != null && isLogin) {
      Get.offNamed(RouteConstant.main);
    } else {
      Get.offNamed(RouteConstant.login);
    }
  }
}
