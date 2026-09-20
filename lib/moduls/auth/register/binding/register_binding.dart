import 'package:flutter_mobile_app2026/moduls/auth/register/controller/register_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:flutter_mobile_app2026/moduls/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> RegisterController());
  }

}