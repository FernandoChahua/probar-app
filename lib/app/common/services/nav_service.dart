import 'package:get/get.dart';

class NavigationService extends GetxService {
  final RxInt currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex(index);
    switch (index) {
      case 0:
        Get.toNamed('/home');
        break;
      case 1:
        Get.toNamed('/favorites');
        break;
      case 2:
        Get.toNamed('/profile');
        break;
    }
  }
}
