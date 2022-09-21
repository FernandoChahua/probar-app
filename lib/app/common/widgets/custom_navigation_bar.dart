import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prob_ar_app/app/common/services/nav_service.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationService navigation = Get.find();
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Inicio",
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Favoritos",
            icon: Icon(
              Icons.star_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: "Perfil",
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
        currentIndex: navigation.currentIndex(),
        selectedItemColor: Palette.primary,
        unselectedItemColor: Palette.gray,
        selectedLabelStyle: GoogleFonts.roboto(
          fontSize: 13.5,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: GoogleFonts.roboto(
          fontSize: 13.5,
          fontWeight: FontWeight.w700,
        ),
        showUnselectedLabels: true,
        onTap: (int index) {
          if (index == 0) {
            //Get.find<HomeController>().fetchPosts();
          }
          if (index == 2) {
            //Get.find<NotifController>().fetchNotifi();
          }
          navigation.changePage(index);
        },
      ),
    );
  }
}
