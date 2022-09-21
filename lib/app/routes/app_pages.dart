import 'package:get/get.dart';

import 'package:prob_ar_app/app/modules/brand/bindings/brand_binding.dart';
import 'package:prob_ar_app/app/modules/brand/views/brand_view.dart';
import 'package:prob_ar_app/app/modules/favorites/bindings/favorites_binding.dart';
import 'package:prob_ar_app/app/modules/favorites/views/favorites_view.dart';
import 'package:prob_ar_app/app/modules/home/bindings/home_binding.dart';
import 'package:prob_ar_app/app/modules/home/views/home_view.dart';
import 'package:prob_ar_app/app/modules/login/bindings/login_binding.dart';
import 'package:prob_ar_app/app/modules/login/views/login_view.dart';
import 'package:prob_ar_app/app/modules/model/bindings/model_binding.dart';
import 'package:prob_ar_app/app/modules/model/views/model_view.dart';
import 'package:prob_ar_app/app/modules/profile/bindings/profile_binding.dart';
import 'package:prob_ar_app/app/modules/profile/views/profile_view.dart';
import 'package:prob_ar_app/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:prob_ar_app/app/modules/sign_in/views/sign_in_view.dart';
import 'package:prob_ar_app/app/modules/variant/bindings/variant_binding.dart';
import 'package:prob_ar_app/app/modules/variant/views/variant_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.brand,
      page: () => const BrandView(),
      binding: BrandBinding(),
    ),
    GetPage(
      name: _Paths.variant,
      page: () => VariantView(),
      binding: VariantBinding(),
    ),
    GetPage(
      name: _Paths.model,
      page: () => ModelView(),
      binding: ModelBinding(),
    ),
    GetPage(
      name: _Paths.favorites,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
