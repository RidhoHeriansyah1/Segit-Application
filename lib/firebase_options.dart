// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDz7EpOyuQHPktv6p7AFDGIAOafn2bBIIw',
    appId: '1:124179254250:web:1ad120c67a734d1bd54093',
    messagingSenderId: '124179254250',
    projectId: 'segit-b6e31',
    authDomain: 'segit-b6e31.firebaseapp.com',
    storageBucket: 'segit-b6e31.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlPEroFV1TK2l4bzJ-uF7TNBIpzbXTT9s',
    appId: '1:124179254250:android:19b0e5f3204dba58d54093',
    messagingSenderId: '124179254250',
    projectId: 'segit-b6e31',
    storageBucket: 'segit-b6e31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuZi4vwB5lfWJRibKR4GVTqtxRQo0thcE',
    appId: '1:124179254250:ios:5fcd2ed99eb71d6cd54093',
    messagingSenderId: '124179254250',
    projectId: 'segit-b6e31',
    storageBucket: 'segit-b6e31.appspot.com',
    iosBundleId: 'com.example.segit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuZi4vwB5lfWJRibKR4GVTqtxRQo0thcE',
    appId: '1:124179254250:ios:b0c4d5eb127d6724d54093',
    messagingSenderId: '124179254250',
    projectId: 'segit-b6e31',
    storageBucket: 'segit-b6e31.appspot.com',
    iosBundleId: 'com.example.segit.RunnerTests',
  );
}
