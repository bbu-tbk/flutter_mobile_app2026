import 'package:flutter_mobile_app2026/moduls/admin/dashboard/controller/dashboard_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> DashboardController());
  }

}