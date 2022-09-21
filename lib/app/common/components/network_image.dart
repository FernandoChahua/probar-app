import 'package:flutter/material.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

abstract class CustomNetworkImage {
  CustomNetworkImage();
  static Widget image(String urlImage) {
    return Image.network(
      urlImage,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            color: Palette.primaryText,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }
}
