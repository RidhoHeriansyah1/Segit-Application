import 'package:get/get.dart';

import '../controllers/ronda_controller.dart';

class RondaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RondaController>(
      () => RondaController(),
    );
  }
}
