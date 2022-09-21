import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prob_ar_app/app/data/auth_module/payload_model.dart';

class HiveService extends GetxService {
  late Box _box;

  Box get box => _box;

  Future initHiveService() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PayloadModelAdapter());
    _box = await Hive.openBox('box');
  }
}
