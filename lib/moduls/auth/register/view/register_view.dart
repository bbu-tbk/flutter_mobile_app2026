import 'package:flutter/material.dart';
import 'package:flutter_mobile_app2026/moduls/auth/register/controller/register_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:flutter_mobile_app2026/moduls/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Home", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
