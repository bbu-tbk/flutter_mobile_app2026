import 'package:flutter/material.dart';
import 'package:flutter_mobile_app2026/moduls/auth/login/controller/login_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:flutter_mobile_app2026/moduls/splash/controller/splash_controller.dart';
import 'package:flutter_mobile_app2026/widgets/button_custom_widget.dart';
import 'package:flutter_mobile_app2026/widgets/input_custom_widget.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text("Login", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputCustomWidget(
              controller: controller.usernameController.value,
              labelText: "Username",
              hintText: "Enter username's name",
            ),
            SizedBox(height: 20),
            InputCustomWidget(
              controller: controller.passwordController.value,
              labelText: "Password",
              hintText: "Enter password's name",
            ),
            SizedBox(height: 35),
            ButtonCustomWidget(
              onPressed: controller.onLogin,
                loading: controller.loading.value,
                backgroundColor: Colors.cyan, label: "Login"),
          ],
        ),
      ),
    );
  }
}
