import 'dart:convert';

import 'package:flutter_mobile_app2026/constants/constant_uri.dart';
import 'package:flutter_mobile_app2026/core/data/local/user_access_token.dart';
import 'package:flutter_mobile_app2026/core/remote/models/Api_base_response.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_request.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_response.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/refresh/Refresh_token_request.dart';
import 'package:flutter_mobile_app2026/core/remote/services/api_service.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiServiceImpl implements ApiService {
  var headers = {"Content-Type": "application/json"};
  @override
  Future<LoginResponse> login(LoginRequest request) async {
    LoginResponse loginResponse = LoginResponse();
    var url = Uri.parse(ConstantUri.loginPath);
    var response = await http.post(
      url,
      body: jsonEncode(request.toJson()),
      headers: headers,
    );
    if (response.statusCode == 200) {
      loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      UserAccessToken.setAccess(loginResponse.accessToken ?? "");
      UserAccessToken.setRefreshAccess(loginResponse.refreshToken ?? "");
    }
    return loginResponse;
  }

  @override
  Future<bool> refreshToken() async {
    LoginResponse loginResponse = LoginResponse();
    var request = RefreshTokenRequest(
      refreshToken: UserAccessToken.getRefreshToken(),
    );
    var url = Uri.parse(ConstantUri.refreshTokenPath);
    var response = await http.post(
      url,
      body: jsonEncode(request.toJson()),
      headers: headers,
    );
    if (response.statusCode == 200) {
      loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      UserAccessToken.setAccess(loginResponse.accessToken ?? "");
      UserAccessToken.setRefreshAccess(loginResponse.refreshToken ?? "");
    } else {
      return false;
    }
    return true;
  }

  @override
  Future<ApiBaseResponse> get(String url) async {
    headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
    ApiBaseResponse apiResponseBody = ApiBaseResponse();
    var url = Uri.parse(ConstantUri.loginPath);
    var response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 401) {
      if (await refreshToken() == true) {
        // Retry
        headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
        var url = Uri.parse(ConstantUri.loginPath);
        var response = await http.get(url, headers: headers);
        if (response.statusCode == 200) {
          apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
        }
      } else {
        UserAccessToken.remove();
        Get.offNamed(AppRouteName.splash);
      }
    }
    return apiResponseBody;
  }

  @override
  Future<ApiBaseResponse> delete(String url) async {
    headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
    ApiBaseResponse apiResponseBody = ApiBaseResponse();
    var url = Uri.parse(ConstantUri.loginPath);
    var response = await http.delete(url, headers: headers);
    if (response.statusCode == 200) {
      apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 401) {
      if (await refreshToken() == true) {
        // Retry
        headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
        var url = Uri.parse(ConstantUri.loginPath);
        var response = await http.delete(url, headers: headers);
        if (response.statusCode == 200) {
          apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
        }
      } else {
        UserAccessToken.remove();
        Get.offNamed(AppRouteName.splash);
      }
    }
    return apiResponseBody;
  }

  @override
  Future<ApiBaseResponse> post(String url, {body}) async {
    headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
    ApiBaseResponse apiResponseBody = ApiBaseResponse();
    var url = Uri.parse(ConstantUri.loginPath);
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 401) {
      if (await refreshToken() == true) {
        // Retry
        headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
        var url = Uri.parse(ConstantUri.loginPath);
        var response = await http.post(url, headers: headers, body: body);
        if (response.statusCode == 201) {
          apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
        }
      } else {
        UserAccessToken.remove();
        Get.offNamed(AppRouteName.splash);
      }
    }
    return apiResponseBody;
  }

  @override
  Future<ApiBaseResponse> put(String url, {body}) async {
    headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
    ApiBaseResponse apiResponseBody = ApiBaseResponse();
    var url = Uri.parse(ConstantUri.loginPath);
    var response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 401) {
      if (await refreshToken() == true) {
        // Retry
        headers["Authorization"] = "Bearer ${UserAccessToken.getAccessToken()}";
        var url = Uri.parse(ConstantUri.loginPath);
        var response = await http.put(url, headers: headers, body: body);
        if (response.statusCode == 200) {
          apiResponseBody = ApiBaseResponse.fromJson(jsonDecode(response.body));
        }
      } else {
        UserAccessToken.remove();
        Get.offNamed(AppRouteName.splash);
      }
    }
    return apiResponseBody;
  }
}
