import 'package:get/get.dart';
import 'package:segit/app/modules/ronda/controllers/ronda_controller.dart';

import '../controllers/bottom_nav_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );
    Get.put(RondaController());
  }
}
