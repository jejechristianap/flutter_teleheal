import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
}
