import 'package:flutter_mobile_app2026/core/remote/models/Api_base_response.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_request.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_response.dart';

abstract class ApiService {
  Future<LoginResponse> login(LoginRequest request);
  Future<bool> refreshToken();
  Future<ApiBaseResponse> get(String url);
  Future<ApiBaseResponse> post(String url, {dynamic body});
  Future<ApiBaseResponse> put(String url, {dynamic body});
  Future<ApiBaseResponse> delete(String url);
}
