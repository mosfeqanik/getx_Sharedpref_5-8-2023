import 'package:get/get.dart';

import '../../../core/memory_management.dart';
import '../../../core/shared_pref_keys.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final username = "".obs;

  @override
  void onInit() {
    getUsername();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void SetUserName() {
    SharedPreferencesRepository.SetString(SharedPrefKeys.username, "HEU");
  }

  getUsername() {
    username.value =
        SharedPreferencesRepository.getString(SharedPrefKeys.username);
  }
}
