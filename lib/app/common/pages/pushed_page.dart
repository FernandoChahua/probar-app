import 'package:flutter/material.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

class PushedPage extends StatelessWidget {
  const PushedPage({super.key, required this.child, required this.title});
  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Palette.white,
        appBar: AppBar(
          toolbarHeight: 66,
          iconTheme: const IconThemeData(color: Palette.primary),
          title: title,
          centerTitle: true,
          backgroundColor: Palette.darkGray,
        ),
        body: child,
      ),
    );
  }
}
