import 'package:flutter/material.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

enum LoadingType { center, circular, onTop }

class CustomLoading extends StatelessWidget {
  final LoadingType type;
  const CustomLoading({super.key, required this.type});

  const CustomLoading.center({this.type = LoadingType.center});
  const CustomLoading.circular({this.type = LoadingType.circular});
  const CustomLoading.onTop({this.type = LoadingType.onTop});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LoadingType.center:
        return const Center(child: circularProgress);
      case LoadingType.onTop:
        return const Padding(
          padding: EdgeInsets.only(top: 14.0),
          child: Center(
            child: circularProgress,
          ),
        );
      default:
        return circularProgress;
    }
  }

  static const circularProgress =
      CircularProgressIndicator(color: Palette.primary);
}
