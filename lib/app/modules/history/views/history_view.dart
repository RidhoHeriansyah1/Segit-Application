import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:segit/app/modules/history/controllers/history_controller.dart';
import 'package:segit/app/modules/setting/controllers/setting_controller.dart';
import 'package:segit/app/utils/my_color.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Laporan Anda'),
        centerTitle: false,
        backgroundColor: MyColor.biruTua,
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          itemCount: controller.listData.length,
          itemBuilder: (BuildContext context, int index) {
            var item = controller.listData[index];
            return Card(
              margin: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
              child: ListTile(
                title: Text(
                  item['laporan'],
                ),
                subtitle: Text(item['waktu']),
              ),
            );
          },
        ),
      ),
    );
  }
}
