import 'dart:convert';

import 'package:flutter_mobile_app2026/constants/constant_uri.dart';
import 'package:flutter_mobile_app2026/core/remote/models/Api_base_response.dart';
import 'package:flutter_mobile_app2026/core/remote/services/api_service.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/models/Post_category.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/models/Post_category_request.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/repository/post_category_repository.dart';

class PostCategoryRepositoryImpl extends PostCategoryRepository {
  final ApiService apiService;
  PostCategoryRepositoryImpl({required this.apiService});

  @override
  Future<ApiBaseResponse> createCategories({
    required PostCategoryRequest request,
  }) async {
    ApiBaseResponse apiBaseResponse = ApiBaseResponse();
    var response = await apiService.post(
      ConstantUri.postCategoryPath,
      body: jsonEncode(request.toJson()),
    );
    if (response.code != null) {
      return response;
    }
    return apiBaseResponse;
  }

  @override
  Future<List<PostCategory>> getAllCategories({String? status}) async {
    List<PostCategory> apiBaseResponse = [];
    var response = await apiService.get(
      "${ConstantUri.postCategoryPath}?status=${status ?? "ACT"}",
    );
    if (response.data != null) {
      response.data.forEach((item) {
        apiBaseResponse.add(PostCategory.fromJson(item));
      });
    }
    return apiBaseResponse;
  }

  @override
  Future<PostCategory> getCategoryById({required String? id}) async {
    PostCategory apiBaseResponse = PostCategory();
    var response = await apiService.get("${ConstantUri.postCategoryPath}/$id");
    if (response.data != null) {
      return PostCategory.fromJson(response.data);
    }
    return apiBaseResponse;
  }

  @override
  Future<ApiBaseResponse> updateCategories({
    required PostCategoryRequest request,
    String? id,
  }) async {
    ApiBaseResponse apiBaseResponse = ApiBaseResponse();
    var response = await apiService.put(
      "${ConstantUri.postCategoryPath}/$id",
      body: jsonEncode(request.toJson()),
    );
    if (response.code != null) {
      return response;
    }
    return apiBaseResponse;
  }
}
