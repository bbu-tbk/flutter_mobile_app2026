import 'package:flutter_mobile_app2026/core/remote/models/auth/login/Login_request.dart';
import 'package:flutter_mobile_app2026/core/remote/services/api_service.dart';

import 'auth_respository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;
  AuthRepositoryImpl({required this.apiService});

  @override
  Future<bool> login({
    required String username,
    required String password,
  }) async {
    var response = await apiService.login(
      LoginRequest(phoneNumber: username, password: password),
    );
    if (response.accessToken != null) {
      return true;
    } else {
      return false;
    }
  }
}
