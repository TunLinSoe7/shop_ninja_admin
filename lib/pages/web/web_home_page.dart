import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_hub_admin/controllers/side_menu_controller.dart';
import 'package:shop_hub_admin/utils/constants/color.dart';
import 'package:shop_hub_admin/views/dash_board_view.dart';

import '../../widgets/side_bar_menu_widget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Row(
        children: [
          SideMenuWidget(),
          Expanded(
             flex: 6,
              child:Column(
                children: [
                  AppBarWidget(),
                  DashBoardView(),
                ],
              )
          ),
        ],
      )),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: kDarkSecondaryColor
      ),
      child: Row(
        children: [
          const Spacer(),
          Expanded(child: TextFormField(
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.symmetric(horizontal: 10),
              fillColor: Theme.of(context).colorScheme.surface,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none
              ),
              suffixIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.primaryContainer
                ),
                child: const Icon(Icons.search),
              )
            ),
          )),
          IconButton(onPressed: (){}, icon: const Icon(Icons.dark_mode)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5)
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: Text('T',style: Theme.of(context).textTheme.titleMedium,),
                ),
                const SizedBox(width: 10,),
                Text('Tun Lin Soe',style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
          ),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
}

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SideMenuController controller = Get.find();
    return Expanded(child: Drawer(
      child: SingleChildScrollView(
        child: Column(
         children: [
           const DrawerHeader(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.shopify_rounded,color: kPrimaryColor,size: 30,),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('NINJA ',style: TextStyle(
                     fontWeight: FontWeight.bold
                   ),),
                   Text('SHOP',style: TextStyle(
                     color: Colors.amber,
                     fontWeight: FontWeight.bold
                   ),),
                 ],
               ),
             ],
           )),
           Obx((){
             return Column(
               children: [
                 SideBarMenuWidget(title: 'Dashboard',icon: Icons.dashboard_rounded,isSelected: controller.selectedPageIndex == 0,onTap: (){
                   controller.changeIndex(0);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 1,
                   title: 'Products',icon: Icons.shopping_bag_rounded,onTap: (){
                   controller.changeIndex(1);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 2,
                   title: 'Orders',icon: Icons.list_alt,onTap: (){
                   controller.changeIndex(2);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 3,
                   title: 'Categories',icon: Icons.category,onTap: (){
                   controller.changeIndex(3);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 4,
                   title: 'Coupons',icon: Icons.sell_rounded,onTap: (){
                   controller.changeIndex(4);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 5,
                   title: 'Users',icon: Icons.people,onTap: (){
                   controller.changeIndex(5);
                 },),
                 SideBarMenuWidget(
                   isSelected:  controller.selectedPageIndex.value == 6,
                   title: 'Settings',icon: Icons.settings,onTap: (){
                   controller.changeIndex(6);
                 },),
               ],
             );
           }),
         ],
                  ),
      ),
    ));
  }
}

