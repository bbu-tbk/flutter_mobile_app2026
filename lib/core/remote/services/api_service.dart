import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_request.dart';
import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_response.dart';

abstract class ApiService {
  Future<LoginResponse> login(LoginRequest request);
}