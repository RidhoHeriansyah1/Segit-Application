import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/data/model/ronda_model.dart';
import 'package:segit/app/utils/my_color.dart';

import '../controllers/ronda_controller.dart';

class RondaView extends GetView<RondaController> {
  const RondaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'RondaView',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: MyColor.biruTua,
        ),
        backgroundColor: Colors.blue[50],
        body: Obx(() => ListView.builder(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              itemCount: controller.schedules.length,
              itemBuilder: (BuildContext context, int index) {
                Hari item = controller.schedules[index];
                return Card(
                  color: MyColor.putih,
                  elevation: 1,
                  margin: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                  child: ListTile(
                    onTap: () {
                      if (item.users.isEmpty) {
                        Get.snackbar(
                          "Error", "Tidak ada orang dihari ${item.hari}",
                          backgroundColor: Colors.red,
                          colorText: Colors.white
                        );
                      }
                      else {
                      modal(item.users, item);
                      }
                    },
                    title: Text("${item.hari}"),
                    subtitle: Text('${item.waktu}'),
                    // subtitle:  Text ("${item.users.map((user) => user.nama).join(' \n')}"),
                    trailing: Icon(IconlyLight.arrow_right_2),
                  ),
                );
              },
            )));
  }

  void modal(List<User> users, item) {
    
      Get.bottomSheet(
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Nama-Nama Ronda ${item.hari}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: users.map((user) {
                  var icon = Icon(IconlyLight.user);
                  return Text(
                    '${icon} ${user.nama}',
                    style: TextStyle(fontSize: 16),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      );
    
  }
}
