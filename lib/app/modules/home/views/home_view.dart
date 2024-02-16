import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segit/app/modules/home/views/widget/button_widget.dart';
import 'package:segit/app/modules/home/views/widget/image_slide_widget.dart';
import 'package:segit/app/utils/my_color.dart';
import 'package:sp_util/sp_util.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  const HomeView({Key? key}) : super(key: key);
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
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    ImageSlide(),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonLaporan()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
