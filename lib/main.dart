import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/freezed/environment.dart';
import 'package:prob_ar_app/app/common/services/api_service.dart';
import 'package:prob_ar_app/app/common/services/auth_service.dart';
import 'package:prob_ar_app/app/common/services/environment_service.dart';
import 'package:prob_ar_app/app/common/services/hive_service.dart';
import 'package:prob_ar_app/app/common/services/login_cache_service.dart';
import 'package:prob_ar_app/app/common/services/nav_service.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';

import 'package:prob_ar_app/app/routes/app_pages.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      defaultTransition: Transition.fadeIn,
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<void> setUp() async {
  final EnvironmentService env = EnvironmentService(
    environment: Environment.prod(),
  );
  Get.put(env);

  final ApiService api = ApiService(environment: env);
  api.addInterceptors();

  Get.put(api);

  final HiveService hive = HiveService();
  Get.put(hive);
  await hive.initHiveService();

  final AuthService auth = AuthService();
  Get.put(auth);

  final LoginCacheService loginCache = LoginCacheService();
  Get.put(loginCache);
  Get.put(NavigationService());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Palette.gray,
    ),
  );
}
