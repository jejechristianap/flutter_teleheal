import 'package:flutter_teleheal/config/route/route_constant.dart';
import 'package:flutter_teleheal/presentation/pages/splash/splash_page.dart';
import 'package:get/route_manager.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: RouteConstant.splash,
      page: () => const SplashPage(),
    )
  ];
}
