import 'package:flutter/material.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

class Buttons extends StatelessWidget {
  Buttons({
    super.key,
    required this.child,
    required this.onPressed,
    this.padding,
  }) : bottomType = ElevatedButton(onPressed: onPressed, child: child);

  final Widget child;
  final void Function() onPressed;
  final EdgeInsetsGeometry? padding;
  final Widget bottomType;

  Buttons.red({
    super.key,
    required this.child,
    required this.onPressed,
    double radius = 24,
    this.padding,
  }) : bottomType = _elevatedBottom(
          onPressed,
          child,
          Palette.primary,
          padding ?? EdgeInsets.zero,
          radius: radius,
        );


  Buttons.customColor({
    super.key,
    required this.child,
    required this.onPressed,
    required Color color,
    double radius = 24,
    this.padding,
  }) : bottomType = _elevatedBottom(
          onPressed,
          child,
          color,
          padding ?? EdgeInsets.zero,
          radius: radius,
        );

  Buttons.customOutlinedColor({
    super.key,
    required this.child,
    required this.onPressed,
    this.padding,
    double radius = 24,
    Color? bgColor,
    Color color = Palette.black,
  }) : bottomType = _outlinedBottom(
          onPressed,
          child,
          color,
          bgColor ?? Palette.transparent,
          padding ?? EdgeInsets.zero,
          radius: radius,
        );



  static Widget _elevatedBottom(
    void Function() onPressed,
    Widget child,
    Color color,
    EdgeInsetsGeometry padding, {
    required double radius,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget _outlinedBottom(
    void Function() onPressed,
    Widget child,
    Color color,
    Color bgColor,
    EdgeInsetsGeometry padding, {
    required double radius,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: padding,
        backgroundColor: bgColor,
        side: BorderSide(
          color: color,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget textBottom({
    required void Function() onPressed,
    required Widget child,
    required Color color,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(primary: color),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return bottomType;
  }
}
