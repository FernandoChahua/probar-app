import 'package:get/get.dart';

enum CompanyType {
  none,
  municipality,
  collector,
}

class AccessService extends GetxService {
  AccessService();

  final companyType = CompanyType.none.obs;

  void setRole(String companyType) {
    this.companyType.value = CompanyType.values.firstWhere(
      (e) => e.toString() == 'CompanyType.${companyType.toLowerCase()}',
    );
    this.companyType.refresh();
  }

  void logout() {
    companyType.value = CompanyType.none;
    companyType.refresh();
  }
}
