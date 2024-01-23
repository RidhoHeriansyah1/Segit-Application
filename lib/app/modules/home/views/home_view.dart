import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:get/get.dart';
import 'package:segit/app/utils/my_color.dart';
import 'package:sp_util/sp_util.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  backgroundImage: AssetImage('images/Segit1.png'),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 2,
                      color: MyColor.putih,
                      child: SizedBox(
                        height: 200,
                        child: ImageSlideshow(
                        initialPage: 0,
                        autoPlayInterval: 10000,
                        isLoop: true,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/laravel.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/Segit1.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 3,
                                offset: const Offset(0, 2))
                          ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 3,
                                offset: const Offset(0, 2))
                          ]),
                    ),
                    ElevatedButton(
                      onPressed: () async{
                      call("085759927045");
                      }, 
                      child: Text('Telepon')
                    ),
                    ElevatedButton(
                      onPressed: () async{
                      await email("rdhheriansyah@gmail.com");
                      }, 
                      child: Text('email')
                    ),
                    ElevatedButton(
                      onPressed: () async{
                      await sms("085759927045");
                      }, 
                      child: Text('sms')
                    ),
                    ElevatedButton(
                      onPressed: () async{
                      await url("+6285759927045", "hallo ini dari flutter!");
                      }, 
                      child: Text('web')
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> call(String phoneNumber) async{
    await launch("tel:$phoneNumber");
  }
  Future<void> email(String email) async{
    await launch("mailto:$email");
  }
  Future<void> sms(String sms) async{
    await launch("sms:$sms");
  }
  Future<void> url(String phoneNumber, String message, {bool forceWebView = false, bool enableJavaScript = false }) async{
    final url = "https://wa.me/$phoneNumber/?text=${Uri.encodeComponent(message)}";
    await launch(url);
  }
}
