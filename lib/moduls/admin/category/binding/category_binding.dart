import 'package:flutter_mobile_app2026/core/remote/services/api_service.dart';
import 'package:flutter_mobile_app2026/core/remote/services/api_service_impl.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/repository/post_category_repository.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:get/get.dart';

import '../controller/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiServiceImpl(), fenix: true);
    Get.lazyPut(
      () => CategoryController(
        postCategoryRepository: Get.find<PostCategoryRepository>(),
      ),
    );
  }
}
