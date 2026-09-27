import 'package:flutter_mobile_app2026/core/remote/models/Api_base_response.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/models/Post_category.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/models/Post_category_request.dart';

abstract class PostCategoryRepository {
  Future<List<PostCategory>> getAllCategories({String? status});
  Future<PostCategory> getCategoryById({required String? id});
  Future<ApiBaseResponse> createCategories({required PostCategoryRequest request});
  Future<ApiBaseResponse> updateCategories({required PostCategoryRequest request});

}