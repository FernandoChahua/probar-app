import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:prob_ar_app/app/common/services/hive_service.dart';

const usernameKey = 'username';

class LoginCacheService extends GetxService {
  late Box<dynamic> box;

  bool hasUsernameCache() => _loadUsernameCache();

  bool _loadUsernameCache() {
    if (!box.containsKey(usernameKey)) return false;
    final username = box.get(usernameKey) ?? '';
    if (username != '') {
      return true;
    }
    return false;
  }

  String get username {
    return hasUsernameCache() ? box.get(usernameKey) as String : '';
  }

  set username(String username) {
    box.put(usernameKey, username);
  }

  @override
  void onInit() {
    super.onInit();
    box = Get.find<HiveService>().box;
  }
}
