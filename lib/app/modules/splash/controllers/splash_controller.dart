import 'dart:async';

import 'package:get/get.dart';
import 'package:segit/app/routes/app_pages.dart';
import 'package:sp_util/sp_util.dart';

class SplashController extends GetxController {
  void splashToHomeOrLogin () async {
    var durasiSplash = const Duration(seconds: 2);
    Timer(durasiSplash, () {
    SpUtil.getBool('isLogin', defValue: false)!
    ? Get.offAllNamed(Routes.home)
    : Get.offAllNamed(Routes.login)
    ;
    });
  }
}
