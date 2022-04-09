import 'package:flutter_teleheal/config/route/route_constant.dart';
import 'package:flutter_teleheal/presentation/controller/home/home_binding.dart';
import 'package:flutter_teleheal/presentation/controller/login/login_binding.dart';
import 'package:flutter_teleheal/presentation/pages/login/login_page.dart';
import 'package:flutter_teleheal/presentation/pages/main/main_page.dart';
import 'package:flutter_teleheal/presentation/pages/splash/splash_page.dart';
import 'package:get/route_manager.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: RouteConstant.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteConstant.login,
      binding: LoginBinding(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteConstant.main,
      binding: HomeBinding(),
      page: () => const MainPage(),
    ),
  ];
}
