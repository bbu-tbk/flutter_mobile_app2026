import 'package:flutter_mobile_app2026/moduls/admin/dashboard/models/menu_config.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';

class AppUtils {
  const AppUtils._();

  static List<MenuConfig> getAllMenuOnDashboard() {
    return [
      MenuConfig(
        id: 1,
        name: "Categories",
        nameKm: "ប្រភេទ",
        routeName: AppRouteName.adminPostCategory,
      ),
      MenuConfig(
        id: 1,
        name: "Post",
        nameKm: "ប្រកាស",
        routeName: AppRouteName.adminPosts,
      ),
    ];
  }
}
