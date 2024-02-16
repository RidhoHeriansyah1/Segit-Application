
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/modules/setting/controllers/setting_controller.dart';
import 'package:segit/app/utils/my_color.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController controller = SettingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.putih,
        ),
        child: ListTile(
          onTap: () {
            controller.logout();
          },
          title: const Text("Logout"),
          trailing: const Icon(IconlyLight.logout),
        ),
      ),
    );
  }
}
