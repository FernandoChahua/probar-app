import 'package:flutter/material.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:prob_ar_app/app/common/widgets/custom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.child,
    required this.title,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });
  final Widget child;
  final Widget title;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: title,
          toolbarHeight: 66,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Palette.primary),
          backgroundColor: Palette.darkGray,
          /*leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.sort_sharp,
                  size: 30,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),*/
        ),
        bottomNavigationBar: const CustomNavigationBar(),
        body: child,
        backgroundColor: Palette.white,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}
