import 'package:get/get.dart';
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
