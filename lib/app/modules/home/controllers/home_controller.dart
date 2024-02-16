import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:segit/app/data/fcm_message_provider.dart';

class HomeController extends GetxController {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void getMessage(nama, no) {
    // Future<int> getHouseNumber() async{
    //   return await noRumah!;
    // }

    getDeviceToken().then((value) async {
      var data = {
        'to': '/topics/laporan_maling',
        'priority': 'high',
        'notification': {
          'title': 'Segit',
          'body': 'Ada Maling di rumah $nama, Nomor $no',
        }
      };
      FcmMessageProvider().token(data);
    });
  }

  @override
  void onInit() {
    getDeviceToken().then((value) {
      print("device token");
      print(value);
    });
    super.onInit();
  }
}
