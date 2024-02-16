import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import 'package:vibration/vibration.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.data['handled'] != 'true') {
    // Tambahkan properti 'handled' ke data notifikasi
    message.data['handled'] = 'true';

    // Menampilkan notifikasi lokal
    showLocalNotification(message);
    Vibration.vibrate(duration: 10000, );
  }
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging fm = FirebaseMessaging.instance;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  var initializationSettingsAndroid =
      new AndroidInitializationSettings('@mipmap/launcher_icon');

  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  NotificationSettings settings = await fm.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    provisional: true,
    carPlay: true,
    criticalAlert: true,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {
      showLocalNotification(message);
      Vibration.vibrate(duration: 10000, );
      RemoteNotification notification = message.notification!;
      // Get.snackbar(notification.title!, notification.body!,
      // backgroundColor: Colors.white, colorText: Colors.black);
      
    }
  });

  runApp(
    GetMaterialApp(
      title: "Segit",
      // initialRoute: Routes.splash,
      initialRoute: (SpUtil.getBool('isLogin', defValue: false)!
          ? Routes.bottomNav
          : Routes.login),
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    ),
  );
}

void showLocalNotification(RemoteMessage message) async {
  if (message.data['handled'] != 'true') {
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'your_channel_id',
    'your_channel_name',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    sound: RawResourceAndroidNotificationSound(
        'maling'), // Sesuaikan dengan nama file suara Anda di direktori res/raw
  );

  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );

  await FlutterLocalNotificationsPlugin().show(
    0,
    message.notification!.title,
    message.notification!.body,
    NotificationDetails(
      android: AndroidNotificationDetails(
        'your_channel_id',
        'your_channel_name',
        importance: Importance.max,
        priority: Priority.high,
        sound: RawResourceAndroidNotificationSound(
            'maling'), // Ganti dengan nama file suara Anda di direktori res/raw
      ),
    ),
    payload: 'item x',
  );
  Vibration.vibrate(duration: 10000, );
  }
}
