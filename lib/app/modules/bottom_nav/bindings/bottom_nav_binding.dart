import 'package:get/get.dart';
import 'package:segit/app/modules/home/controllers/home_controller.dart';
import 'package:segit/app/modules/ronda/controllers/ronda_controller.dart';
import 'package:segit/app/modules/setting/controllers/setting_controller.dart';
import 'package:segit/app/modules/warga/controllers/warga_controller.dart';
import 'package:segit/app/modules/warga/views/warga_view.dart';

import '../controllers/bottom_nav_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );
    Get.put(RondaController());
    Get.put(SettingController());
    Get.put(HomeController());
    Get.lazyPut<WargaController>(() => WargaController());
  }
}
