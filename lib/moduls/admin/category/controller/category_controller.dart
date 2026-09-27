import 'package:flutter_mobile_app2026/moduls/admin/category/models/Post_category.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/repository/post_category_repository.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final PostCategoryRepository postCategoryRepository;
  var categoryList = <PostCategory>[].obs;
  var loading = false.obs;
  CategoryController({required this.postCategoryRepository});

  @override
  void onInit() {
    getAllCategories();
    super.onInit();
  }

  void getAllCategories() async {
    categoryList.value = [];
    loading.value = true;
    var response = await postCategoryRepository.getAllCategories();
    if (response.isNotEmpty) {
      categoryList.value = response;
    }
    loading.value = false;
  }
}
