import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_hub_admin/controllers/side_menu_controller.dart';
import 'package:shop_hub_admin/utils/theme/theme.dart';
import 'package:shop_hub_admin/views/home_view.dart';

void main(){
  Get.put(SideMenuController());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Ninja',
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
