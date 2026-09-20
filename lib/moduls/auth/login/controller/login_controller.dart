import 'package:flutter/cupertino.dart';
import 'package:flutter_mobile_app2026/moduls/auth/respository/auth_respository.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository;
  var usernameController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var loading = false.obs;
  LoginController({required this.authRepository});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onLogin() async {
    String username = usernameController.value.text.trim();
    if (username.isEmpty) {
      Get.snackbar("Error", "Username is required");
      return;
    }
    String password = passwordController.value.text.trim();
    if (username.isEmpty) {
      Get.snackbar("Error", "Password is required");
      return;
    }
    loading.value = true;
    var loginResponse = await authRepository.login(
      username: username,
      password: password,
    );
    loading.value = false;
    if (loginResponse == true) {
      Get.offNamed(AppRouteName.home);
    } else {
      Get.snackbar("Error", "Your username and password are incorrect");
    }
  }
}
