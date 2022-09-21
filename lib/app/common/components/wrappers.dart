import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomWrap extends StatelessWidget {
  final Widget child;
  final Rx<Widget> wrap = const SizedBox().obs;

  CustomWrap({Key? key, required this.child}) : super(key: key) {
    wrap(const SizedBox());
  }

  CustomWrap.expanded({
    Key? key,
    required this.child,
    int flex = 1,
  }) : super(key: key) {
    wrap.value = SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: flex,
            child: child,
          )
        ],
      ),
    );
  }
  CustomWrap.expandedPadding({
    Key? key,
    required this.child,
    int flex = 1,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
  }) : super(key: key) {
    wrap.value = SizedBox(
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            Expanded(
              flex: flex,
              child: child,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return wrap.value;
  }
}
