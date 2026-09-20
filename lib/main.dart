import 'package:flutter/material.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:flutter_mobile_app2026/routes/app_routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'binding/initial_binding.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mobile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      initialRoute: AppRouteName.splash,
      getPages: AppRoutes.getAllRoutes(),
      initialBinding: InitialBinding(),
    );
  }
}
