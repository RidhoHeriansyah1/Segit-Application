import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/modules/home/controllers/home_controller.dart';
import 'package:segit/app/utils/my_color.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/warga_controller.dart';

class WargaView extends GetView<WargaController> {
  const WargaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nama = SpUtil.getString('nama');
    var no = SpUtil.getString('no');
    HomeController homeController = HomeController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Laporkan Maling',
        ),
        centerTitle: false,
        backgroundColor: MyColor.biruTua,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            // shape: RoundedRectangleBorder(
            //   side: BorderSide(color: Colors.red),
            //   borderRadius: BorderRadius.circular(10)
            // ),

            color: Colors.red,
            elevation: 1,
            margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
            child: ListTile(
              onTap: () async {
                homeController.getMessage(nama, no);
                controller.laporan(nama, no);
              },
              title: const Text(
                'RUMAH ANDA!!!',
                style: TextStyle(color: Colors.white),
              ),
              // subtitle:  Text ("${item.users.map((user) => user.nama).join(' \n')}"),
              trailing: const Icon(
                IconlyLight.danger,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
            child: TextField(
              onChanged: controller.setSearchKeyword,
                cursorColor: MyColor.kuning,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  hintText: 'Search Warga berdasarkan Nama dan NoRumah',
                  hintStyle: TextStyle(fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColor.biruMuda)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColor.kuning),
                  ),
                ),
              ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  itemCount:  controller.getFilteredData().length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.getFilteredData()[index];
                    return Card(
                      color: MyColor.kuning,
                      elevation: 1,
                      margin: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 20),
                      child: ListTile(
                        onTap: () async {
                          var nama = item['nama'];
                          var no = item['noRumah'];

                          homeController.getMessage(nama, no);
                          controller.laporan(nama, no);
                        },
                        title: Text(item['nama']),
                        subtitle: Text(item['noRumah']),
                        trailing: const Icon(IconlyLight.danger),
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
