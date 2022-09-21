import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prob_ar_app/app/common/components/buttons.dart';
import 'package:prob_ar_app/app/common/components/padding.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/components/wrappers.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

class Dialogs {
  final Widget dialog;
  static Future<dynamic> yesNoDialog2({
    required String title,
    required void Function() yesFunction,
    required void Function() noFunction,
  }) async {
    return Get.defaultDialog(
      title: "",
      content: SizedBox(
        //width: 320,
        child: Column(
          children: [
            Texts.w700(
              text: title,
              fontSize: 16,
              alignment: TextAlign.center,
              height: 1.4,
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.fromLTRB(25, 30, 25, 0),
              child: Buttons.red(
                padding: CustomPadding.vertical(15),
                onPressed: yesFunction,
                child: const Texts.w500(
                  text: 'Aceptar',
                  fontSize: 14,
                  color: Palette.white,
                ),
              ),
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.fromLTRB(25, 15, 25, 10),
              child: Buttons.customOutlinedColor(
                padding: CustomPadding.vertical(15),
                onPressed: noFunction,
                child: const Texts.w500(
                  text: 'No',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future<dynamic> yesNoDialog({
    required String title,
    required void Function() function,
  }) async {
    return Get.defaultDialog(
      title: "",
      content: SizedBox(
        //width: 320,
        child: Column(
          children: [
            Texts.w700(
              text: title,
              fontSize: 16,
              height: 1.4,
              alignment: TextAlign.center,
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.fromLTRB(25, 30, 25, 0),
              child: Buttons.customColor(
                color: Palette.menuTextColor,
                padding: CustomPadding.vertical(15),
                onPressed: function,
                child: const Texts.w500(
                  text: 'Aceptar',
                  fontSize: 14,
                  color: Palette.white,
                ),
              ),
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.fromLTRB(25, 15, 25, 10),
              child: Buttons.customOutlinedColor(
                padding: CustomPadding.vertical(15),
                child: const Texts.w500(
                  text: 'Cancelar',
                  fontSize: 14,
                ),
                onPressed: () {
                  Get.back(result: false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future<dynamic> errorDialog({
    required String message,
  }) async {
    return Get.defaultDialog(
      title: "",
      titleStyle: GoogleFonts.roboto(fontSize: 0),
      content: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            const Icon(
              Icons.warning_outlined,
              color: Palette.primary,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Texts.w500(
              alignment: TextAlign.center,
              text: message,
              height: 1.3,
              fontSize: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.horizontal(20),
              child: Buttons.customOutlinedColor(
                padding: CustomPadding.vertical(17),
                child: const Texts.w500(text: "Aceptar", fontSize: 16),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  static Future<dynamic> successDialog({
    required String message,
  }) async {
    return Get.defaultDialog(
      title: "",
      titleStyle: GoogleFonts.roboto(fontSize: 0),
      content: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            const Icon(
              Icons.check_outlined,
              color: Palette.primary,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Texts.w500(
              alignment: TextAlign.center,
              text: message,
              height: 1.4,
              fontSize: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomWrap.expandedPadding(
              padding: CustomPadding.horizontal(20),
              child: Buttons.customOutlinedColor(
                padding: CustomPadding.vertical(17),
                child: const Texts.w500(text: "Aceptar", fontSize: 16),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Dialogs({
    required this.dialog,
  }) {
    Get.defaultDialog(content: dialog, title: "");
  }
}

class DialogOptionItem {
  DialogOptionItem({
    required this.icon,
    required this.title,
    required this.function,
  });
  DialogOptionItem.fromJson(Map<String, dynamic> json)
      : icon = json['icon'] as IconData,
        title = json['title'] as String,
        function = json['onTap'] as VoidCallback;

  final IconData icon;
  final String title;
  final void Function() function;
}
