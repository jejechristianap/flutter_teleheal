import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/route/app_route.dart';
import 'package:flutter_teleheal/config/route/route_constant.dart';
import 'package:flutter_teleheal/config/styles/app_theme.dart';
import 'package:flutter_teleheal/presentation/controller/splash/splash_binding.dart';
import 'package:get/get.dart';

class TelehealApp extends StatelessWidget {
  const TelehealApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teleheal',
      theme: AppTheme.main,
      getPages: AppRoute.routes,
      initialBinding: SplashBinding(),
      initialRoute: RouteConstant.splash,
      debugShowCheckedModeBanner: false,
      defaultTransition: Platform.isIOS ? Transition.native : Transition.zoom,
      transitionDuration:
          Platform.isIOS ? null : const Duration(milliseconds: 300),
    );
  }
}
