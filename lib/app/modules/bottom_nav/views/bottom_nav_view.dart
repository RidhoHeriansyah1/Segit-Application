import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/modules/home/views/home_view.dart';
import 'package:segit/app/modules/ronda/views/ronda_view.dart';
import 'package:segit/app/modules/setting/views/setting_view.dart';
import 'package:segit/app/utils/my_color.dart';

import '../controllers/bottom_nav_controller.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (controller){
      return Scaffold(
      backgroundColor: MyColor.biruTua,
      body: SafeArea(
        child: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeView(),
            RondaView(),
            SettingView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: MyColor.putih,
        selectedItemColor: MyColor.kuning,
        unselectedLabelStyle: const  TextStyle(
          fontSize: 10
        ),
        selectedLabelStyle: const  TextStyle(
          fontSize: 10,
        ),
        onTap: controller.changeTabIndex,
        currentIndex: controller.tabIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyColor.biruTua,
        
        
        items: [
          _bottomNavItem(
            icon: IconlyLight.home,
            label: "Home"
          ),
          _bottomNavItem(
            icon: IconlyLight.calendar,
            label: "Ronda"
          ),
          _bottomNavItem(
            icon: IconlyLight.setting,
            label: "Setting"
          ),
          ],
      ),
    );
    });
  }
  _bottomNavItem({required icon, required label}){
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      
    );
  }
}
