import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/styles/app_theme.dart';
import 'package:get/route_manager.dart';

class TelehealApp extends StatelessWidget {
  const TelehealApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teleheal',
      theme: AppTheme.main,
      debugShowCheckedModeBanner: false,
      defaultTransition: Platform.isIOS ? Transition.native : Transition.zoom,
      transitionDuration:
          Platform.isIOS ? null : const Duration(milliseconds: 300),
    );
  }
}
