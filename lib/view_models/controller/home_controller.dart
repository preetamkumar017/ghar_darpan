import 'package:get/get.dart';

class HomeController extends GetxController
{
  RxInt selectedIndex = 0.obs;
  get getSelectedIndex => selectedIndex.value;
  setSelectedIndex(int value) => selectedIndex.value = value;


}