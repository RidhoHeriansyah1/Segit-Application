import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index){
    tabIndex = index;
    update();
  }

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  
  // Future<String> getDeviceToken() async{
  //   String? token = await messaging.getToken();
  //   return token!;
  // }

  @override
  void onInit() {
    // getDeviceToken().then((value){
    //   print("device token");
    //   print(value);
    // });
    changeTabIndex;
    super.onInit();
  }
}
