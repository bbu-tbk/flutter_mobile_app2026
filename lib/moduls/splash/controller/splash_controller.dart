import 'package:flutter_mobile_app2026/core/data/local/user_access_token.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var loading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    checkLogin();
    super.onInit();
  }

  checkLogin() async {
    loading.value = true;
    await Future.delayed(Duration(seconds: 2));
    loading.value = false;
    if (UserAccessToken.getAccessToken() == "") {
      Get.offNamed(AppRouteName.login);
    } else {
      Get.offNamed(AppRouteName.home);
    }
  }
}
