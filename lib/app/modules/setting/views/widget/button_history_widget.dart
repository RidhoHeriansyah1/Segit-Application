
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/routes/app_pages.dart';
import 'package:segit/app/utils/my_color.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.putih,
        ),
        child: ListTile(
          onTap: () {
            Get.toNamed(Routes.history);
          },
          title: const Text("History Anda"),
          trailing: const Icon(IconlyLight.arrow_right_square),
        ),
      ),
    );
  }
}
