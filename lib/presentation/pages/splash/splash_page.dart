import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/styles/app_assets.dart';
import 'package:flutter_teleheal/presentation/controller/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) => Scaffold(
        body: Center(
          child: Image.asset(
            AppAssets.splashLogo,
          ),
        ),
      ),
    );
  }
}
