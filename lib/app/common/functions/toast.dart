import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

abstract class Toast {
  Toast();

  static void show(String title, String body) {
    Get.snackbar(
      title,
      body,
      //duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Palette.menuTextColor,
    );
  }

  static void showError({
    required String body,
  }) {
    Get.snackbar(
      'Error',
      body,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Palette.menuTextColor,
    );
  }
}
