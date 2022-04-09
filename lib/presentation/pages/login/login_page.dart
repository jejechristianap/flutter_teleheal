import 'package:flutter/material.dart';
import 'package:flutter_teleheal/presentation/controller/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ReactiveForm(
                formGroup: controller.form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ReactiveTextField(
                        keyboardType: TextInputType.phone,
                        formControlName: 'phone_number',
                        decoration: const InputDecoration(
                          hintText: 'Phone Number',
                        ),
                        textInputAction: TextInputAction.next,
                        validationMessages: (control) => {
                          'required': 'Phone number is required!',
                          'number': 'Input only accept numbers',
                          'maxLength': 'Phone number length max 10',
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ReactiveTextField(
                        keyboardType: TextInputType.emailAddress,
                        formControlName: 'email',
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                        textInputAction: TextInputAction.done,
                        validationMessages: (control) => {
                          'required': 'Email is required!',
                          'email': 'Your email is invalid'
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 10,
              ),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () =>
                      controller.isValid ? controller.login() : null,
                  child: const Text('Login'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
