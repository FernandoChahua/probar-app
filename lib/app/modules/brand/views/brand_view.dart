import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';

import 'package:prob_ar_app/app/modules/brand/controllers/brand_controller.dart';

class BrandView extends GetView<BrandController> {
  const BrandView({super.key});
  @override
  Widget build(BuildContext context) {
    return const MainPage(
      title: Texts.bold(
        text: "Iniciar Sesión",
        fontSize: 15,
      ),
      child: SizedBox(),
    );
  }
}
