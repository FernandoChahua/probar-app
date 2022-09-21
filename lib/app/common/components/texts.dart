import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';


class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final bool underline;
  final Color color;
  final double height;
  final int maxLines;
  final EdgeInsetsGeometry? padding;
  final TextOverflow textOverflow;
  final TextStyle? style;
  
  const Texts({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.underline = false,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    required this.color,
    this.padding,
    this.style,
  });

  const Texts.bold({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.bold;

  const Texts.w400({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w400;

  const Texts.w500({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.color = Palette.black,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w500;

  const Texts.w600({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w600;

  const Texts.w700({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w700;

  const Texts.normal({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.normal;

  const Texts.w800({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w800;

  const Texts.w900({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
    this.padding,
  }) : fontWeight = FontWeight.w900;

  const Texts.appBarTitle({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  })  : fontWeight = FontWeight.w500,
        underline = false,
        color = Palette.white;

  static String hideEmailFunction(String text) {
    final aux = text.split("@");
    return "${aux[0][0]}*******${aux[0][aux.length - 1]}@${aux[1]}";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: alignment,
        style: (style ?? GoogleFonts.roboto()).copyWith(
          color: color,
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
        ),
        maxLines: maxLines,
        overflow: textOverflow,
        softWrap: true,
      ),
    );
  }
}
