part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const login = _Paths.login;
  static const signIn = _Paths.signIn;
  static const brand = _Paths.brand;
  static const variant = _Paths.variant;
  static const model = _Paths.model;
  static const favorites = _Paths.favorites;
  static const profile = _Paths.profile;
}

abstract class _Paths {
  _Paths._();
  static const home = '/home';
  static const login = '/login';
  static const signIn = '/sign-in';
  static const brand = '/brand';
  static const variant = '/variant/:brandId';
  static const model = '/model/:variantId';
  static const favorites = '/favorites';
  static const profile = '/profile';
}
