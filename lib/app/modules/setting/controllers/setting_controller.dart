import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:segit/app/data/history_provider.dart';
import 'package:segit/app/data/logout_provider.dart';
import 'package:segit/app/routes/app_pages.dart';
import 'package:sp_util/sp_util.dart';

class SettingController extends GetxController {
  
  void logout() {
    var token = SpUtil.getString('token');
    LogoutProvider().logout(token).then((value) async {
    SpUtil.clear();
    Get.offAllNamed(Routes.login);
  });
  }

  @override
  void onInit() {
    super.onInit();
  }
}
