import 'package:flutter_mobile_app2026/moduls/admin/post/controller/post_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:get/get.dart';

class PostBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> PostController());
  }

}