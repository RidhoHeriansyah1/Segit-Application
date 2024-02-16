import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:segit/app/modules/setting/views/widget/button_history_widget.dart';
import 'package:segit/app/modules/setting/views/widget/logout_widget.dart';
import 'package:segit/app/utils/my_color.dart';

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
        body: const Column(
          children: [
            HistoryWidget(),
            LogoutWidget(),
          ],
        ));
  }
}
