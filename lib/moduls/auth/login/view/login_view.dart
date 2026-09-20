import 'package:flutter/material.dart';
import 'package:flutter_mobile_app2026/moduls/auth/login/controller/login_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:flutter_mobile_app2026/moduls/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Login", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
