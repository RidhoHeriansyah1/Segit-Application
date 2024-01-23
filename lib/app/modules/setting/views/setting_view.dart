import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/routes/app_pages.dart';
import 'package:segit/app/utils/my_color.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Setting',
            style: TextStyle(color: MyColor.putih),
          ),
          backgroundColor: MyColor.biruTua,
        ),
        backgroundColor: Colors.blue[50],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColor.putih,
            ),
            child: ListTile(
              onTap: () {
                SpUtil.clear();
                Get.offAllNamed(Routes.login);
              },
              title: Text("Logout"),
              trailing: Icon(IconlyLight.logout),
            ),
          ),
        ));
  }
}
