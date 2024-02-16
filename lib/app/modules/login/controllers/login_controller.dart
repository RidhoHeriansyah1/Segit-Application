import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:segit/app/data/login_provider.dart';
import 'package:segit/app/routes/app_pages.dart';
import 'package:sp_util/sp_util.dart';

class LoginController extends GetxController {
  TextEditingController txtUser = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isPasswordHidden = true.obs;

  void auth() async {
    String username = txtUser.text;
    String password = txtPassword.text;

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Username dan Password tidak boleh Kosong!",
          backgroundColor: Colors.red, colorText: Colors.white);
    } else {
      EasyLoading.show();
      var data = {"username": username, "password": password};
      LoginProvider().auth(data).then((value) async {
        if (value.statusCode == 200) {
          var responseBody = value.body;

          var data = responseBody['data'];

          SpUtil.putString('nama', data['nama']);
          SpUtil.putString('no', data['no_rumah']);
          SpUtil.putInt('id', data['id']);
          SpUtil.putString('token', data['token']);
          SpUtil.putBool('isLogin', true);
          Get.offAllNamed(Routes.bottomNav);
          final fcmToken = await FirebaseMessaging.instance.getToken();
          print(fcmToken);
         
          FirebaseMessaging.instance.subscribeToTopic('laporan_maling');
          
        } else {
          Get.snackbar("Error", "Login Gagal!",
              backgroundColor: Colors.red, colorText: Colors.white);
        }
        EasyLoading.dismiss();
      });
    }
  }
}
