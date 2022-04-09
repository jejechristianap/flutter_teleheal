import 'dart:developer';

import 'package:flutter_teleheal/config/route/route_constant.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../widgets/progress_dialog.dart';

class LoginController extends GetxController {
  final form = fb.group({
    'phone_number': [
      '',
      Validators.required,
      Validators.number,
      Validators.maxLength(10),
    ],
    'email': [
      '',
      Validators.required,
      Validators.email,
    ]
  });

  String get phoneNumber => form.control('phone_number').value;

  String get email => form.control('email').value;

  bool get isValid {
    if (form.invalid) {
      form.focus(form.errors.entries.first.key);
      form.unfocus();
    }
    return form.valid;
  }

  login() async {
    Get.dialog(
      const ProgressDialog(),
      barrierDismissible: true,
    );
    log('dialog: ${Get.isDialogOpen}');
    await 2.delay();
    Get.back();
    Get.offNamed(RouteConstant.main);
  }
}
