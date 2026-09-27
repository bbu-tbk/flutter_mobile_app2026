import 'package:flutter_mobile_app2026/moduls/admin/category/controller/category_form_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:get/get.dart';

class CategoryFormBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> CategoryFormController());
  }

}