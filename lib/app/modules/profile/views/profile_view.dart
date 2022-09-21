import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Texts.bold(
          text: 'Perfil',
          fontSize: 15,
          color: Palette.white,
        ),
      ),
      child: SizedBox(),
    );
  }
}
