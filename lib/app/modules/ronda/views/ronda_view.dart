import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/data/model/ronda_model.dart';
import 'package:segit/app/modules/ronda/views/widget/modal_ronda_widget.dart';
import 'package:segit/app/utils/my_color.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/ronda_controller.dart';

class RondaView extends GetView<RondaController> {
  const RondaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        flexibleSpace: Container(
          color: MyColor.biruTua,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Segit1.png'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome to Segit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${SpUtil.getString('nama')}',
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        backgroundColor: Colors.white,
        body: Obx(() => ListView.builder(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              itemCount: controller.schedules.length,
              itemBuilder: (BuildContext context, int index) {
                Hari item = controller.schedules[index];
                return Card(
                  color: MyColor.biruMuda,
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                  child: ListTile(
                    onTap: () {
                      if (item.users.isEmpty) {
                        Get.snackbar(
                            "Error", "Tidak ada orang dihari ${item.hari}",
                            backgroundColor: Colors.red,
                            colorText: Colors.white);
                      } else {
                        modalRonda(item.users, item, context);
                      }
                    },
                    title:  Text('${item.hari}',
                    style: TextStyle(color: Colors.white),),
                    trailing: const Icon(IconlyLight.arrow_right_2, color: Colors.white,),
                  ),
                );
              },
            )
          )
        );
  }
}
