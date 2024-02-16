import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/modules/home/controllers/home_controller.dart';
import 'package:segit/app/modules/home/views/widget/mdl_no_darurat.widget.dart';
import 'package:segit/app/routes/app_pages.dart';

class ButtonLaporan extends GetView<HomeController>{
  const ButtonLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Get.toNamed(Routes.warga);
                // controller.getMessage(SpUtil.getString('nama'), SpUtil.getInt('no_rumah'));
              },
              child: Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconlyLight.danger,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Laporan Maling",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => modalNoDarurat(context),
              child: Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconlyLight.danger,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nomor Darurat",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        // SizedBox(height: 20,),
        // InkWell(
        //       onTap: () async{
        //         final Uri url = Uri.parse('https://flutter.dev');
        //         await launchUrl(url);
        //       },
        //       child: Container(
        //         height: 100,
        //         width: double.infinity,
        //         decoration: BoxDecoration(
        //           color: Colors.grey,
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //         child: const Center(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Icon(
        //                 IconlyLight.call,
        //                 color: Colors.white,
        //                 size: 40,
        //               ),
        //               SizedBox(
        //                 height: 10,
        //               ),
        //               Text(
        //                 "Grup Whatsapp",
        //                 style: TextStyle(color: Colors.white, fontSize: 13),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     )
      ],
    );
  }
}
