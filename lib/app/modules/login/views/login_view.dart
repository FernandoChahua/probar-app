import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prob_ar_app/app/common/components/buttons.dart';
import 'package:prob_ar_app/app/common/components/loading.dart';
import 'package:prob_ar_app/app/common/components/padding.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/components/wrappers.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';
import 'package:prob_ar_app/app/common/pages/pushed_page.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:prob_ar_app/app/data/state_model.dart';

import 'package:prob_ar_app/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return PushedPage(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Texts.bold(
          text: 'Probador AR',
          fontSize: 15,
          color: Palette.white,
        ),
      ),
      child: Obx(
        () {
          return controller.state().maybeWhen(
                null,
                loading: () => const CustomLoading.center(),
                orElse: () => _buildBody(),
              );
        },
      ),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        Padding(
          padding: CustomPadding.fromLTRB(30, 50, 30, 0),
          child: FormItem(
            controller: controller.usernameController,
            label: 'Usuario',
            padding: CustomPadding.symmetric(horizontal: 5, vertical: 5),
          ),
        ),
        Padding(
          padding: CustomPadding.fromLTRB(30, 20, 30, 0),
          child: FormItem(
            controller: controller.passwordController,
            label: 'Contraseña',
            padding: CustomPadding.symmetric(horizontal: 5, vertical: 5),
            obscure: true,
          ),
        ),
        Padding(
          padding: CustomPadding.fromLTRB(30, 20, 30, 0),
          child: CustomWrap.expanded(
            child: Buttons.customColor(
              onPressed: () {
                controller.signIn();
              },
              radius: 0,
              color: Palette.loginButtonColor,
              child: const Texts.w400(
                text: 'LOG IN',
                fontSize: 15,
                color: Palette.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FormItem extends StatelessWidget {
  const FormItem({
    super.key,
    this.controller,
    this.cursorColor = Palette.black,
    this.prefix,
    this.label,
    this.obscure = false,
    this.padding,
  });

  final TextEditingController? controller;
  final Color cursorColor;
  final Widget? prefix;
  final String? label;
  final bool obscure;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.roboto(
        fontSize: 16,
        color: Palette.black,
      ),
      obscureText: obscure,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: prefix,
        ),
        contentPadding: padding,
        isDense: true,
        labelText: label,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 19,
        ),
        labelStyle: GoogleFonts.roboto(
          color: Palette.black,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
        filled: true,
        fillColor: Palette.white.withOpacity(0.25),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Palette.grayBorder,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Palette.primary,
          ),
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
