import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController());
  }

}