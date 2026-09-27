import 'package:flutter_mobile_app2026/moduls/admin/dashboard/models/menu_config.dart';
import 'package:flutter_mobile_app2026/utils/app_url.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  final RxList<MenuConfig> menuList = <MenuConfig>[].obs;
  @override
  void onInit() {
    menuList.value = AppUtils.getAllMenuOnDashboard();
    super.onInit();
  }
}