import 'package:flutter/cupertino.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

abstract class ScrollIndicator {
  ScrollIndicator();

  static Widget customFooterIndicator(
    String footerMessage, {
    LoadStyle? loadStyle,
  }) {
    return CustomFooter(
      loadStyle: loadStyle ?? LoadStyle.ShowWhenLoading,
      builder: (BuildContext context, LoadStatus? mode) {
        Widget body;

        if (mode == LoadStatus.idle) {
          body = const Texts.w400(
            text: "Jala para recargar",
            fontSize: 14,
            color: Palette.primaryText,
          );
        } else if (mode == LoadStatus.loading) {
          body = const CupertinoActivityIndicator();
        } else if (mode == LoadStatus.failed) {
          body = const Texts.w400(
            text: "Algo salió mal! Prueba de nuevo",
            fontSize: 14,
            color: Palette.primaryText,
          );
        } else if (mode == LoadStatus.canLoading) {
          body = const Texts.w400(
            text: "suelta para cargar",
            fontSize: 14,
            color: Palette.primaryText,
          );
        } else {
          body = Texts.w400(
            text: footerMessage,
            fontSize: 14,
            color: Palette.primaryText,
          );
        }
        return SizedBox(
          height: 55.0,
          child: Center(child: body),
        );
      },
    );
  }
}
