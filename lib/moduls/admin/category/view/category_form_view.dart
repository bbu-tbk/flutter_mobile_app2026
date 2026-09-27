import 'package:flutter/material.dart';
import 'package:flutter_mobile_app2026/core/data/local/user_access_token.dart';
import 'package:flutter_mobile_app2026/moduls/admin/category/controller/category_controller.dart';
import 'package:flutter_mobile_app2026/moduls/home/controller/home_controller.dart';
import 'package:flutter_mobile_app2026/routes/app_route_name.dart';
import 'package:get/get.dart';

import '../controller/category_form_controller.dart';

class CategoryFormView extends GetView<CategoryFormController> {
  const CategoryFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          children: [
            SizedBox(
              height: 150,
            ),
            Spacer(

            ),
            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.dashboard, color: Colors.white,),
              title: Text("Dashboard", style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.navigate_next, color: Colors.white,),
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.cyan,
        title: Text("Home", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.language)),
          IconButton(onPressed: (){
            UserAccessToken.remove();
            Get.offNamed(AppRouteName.splash);
          }, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
