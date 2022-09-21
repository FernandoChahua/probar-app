import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.offAndToNamed('/');
      },
    );
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/splash_image.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Image.asset(
              "assets/images/splash_filter.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Align(
              child: Image.asset(
                "assets/images/splash_logo.png",
                width: 187,
                height: 187,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
