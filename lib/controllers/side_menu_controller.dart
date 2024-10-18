import 'package:get/get.dart';

class SideMenuController extends GetxController{
  final Rx<int> selectedPageIndex = 0.obs;
  void changeIndex(int index) {
    selectedPageIndex.value = index;
  }
}