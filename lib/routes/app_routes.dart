import 'package:flutter_mobile_app2026/moduls/admin/category/binding/category_binding.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/binding/category_form_binding.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/controller/category_form_controller.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/view/category_form_view.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/view/category_view.dart';
import 'package:flutter_mobile_app2026/moduls/admin/dashboard/binding/dashboard_binding.dart';
import 'package:flutter_mobile_app2026/moduls/admin/dashboard/view/dashboard_view.dart';
import 'package:flutter_mobile_app2026/moduls/admin/post/binding/post_binding.dart';
import 'package:flutter_mobile_app2026/moduls/admin/post/binding/post_form_binding.dart';
import 'package:flutter_mobile_app2026/moduls/admin/post/view/post_form_view.dart';
import 'package:flutter_mobile_app2026/moduls/admin/post/view/post_view.dart';
import 'package:flutter_mobile_app2026/moduls/auth/forgot/binding/forgot_binding.dart';
import 'package:flutter_mobile_app2026/moduls/auth/forgot/view/forgot_view.dart';
import 'package:flutter_mobile_app2026/moduls/auth/login/binding/login_binding.dart';
import 'package:flutter_mobile_app2026/moduls/auth/login/view/login_view.dart';
import 'package:flutter_mobile_app2026/moduls/auth/register/binding/register_binding.dart';
import 'package:flutter_mobile_app2026/moduls/auth/register/view/register_view.dart';
import 'package:flutter_mobile_app2026/moduls/home/binding/home_binding.dart';
import 'package:flutter_mobile_app2026/moduls/home/view/home_view.dart';
import 'package:flutter_mobile_app2026/moduls/splash/binding/splash_binding.dart';
import 'package:flutter_mobile_app2026/moduls/splash/view/splash_view.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:get/get.dart';

class AppRoutes{
  AppRoutes._();

  static List<GetPage> getAllRoutes(){
    return [
      GetPage(name: AppRouteName.splash, page: ()=> SplashView(), binding: SplashBinding()),
      GetPage(name: AppRouteName.home, page: ()=> HomeView(), binding: HomeBinding()),
      GetPage(name: AppRouteName.login, page: ()=> LoginView(), binding: LoginBinding()),
      GetPage(name: AppRouteName.register, page: ()=> RegisterView(), binding: RegisterBinding()),
      GetPage(name: AppRouteName.forgot, page: ()=> ForgotView(), binding: ForgotBinding()),
      GetPage(name: AppRouteName.adminDashboard, page: ()=> DashboardView(), binding: DashboardBinding()),
      GetPage(name: AppRouteName.adminPosts, page: ()=> PostView(), binding: PostBinding()),
      GetPage(name: AppRouteName.adminPostForm, page: ()=> PostFormView(), binding: PostFormBinding()),
      GetPage(name: AppRouteName.adminPostCategory, page: ()=> CategoryView(), binding: CategoryBinding()),
      GetPage(name: AppRouteName.adminPostCategoryForm, page: ()=> CategoryFormView(), binding: CategoryFormBinding()),
    ];
  }
}