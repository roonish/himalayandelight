// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDEqz-s16nwTDf9nCwTqoGwwUddBXmCqJs',
    appId: '1:875400248405:web:96f6cca17d76485d67a8dc',
    messagingSenderId: '875400248405',
    projectId: 'himalayan-delight',
    authDomain: 'himalayan-delight.firebaseapp.com',
    storageBucket: 'himalayan-delight.appspot.com',
    measurementId: 'G-VQ6EQ47LWE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc3DWb0EjHwLlG6y-RD5nZ84nfxSj8Hos',
    appId: '1:875400248405:android:e86b8c726154239b67a8dc',
    messagingSenderId: '875400248405',
    projectId: 'himalayan-delight',
    storageBucket: 'himalayan-delight.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7ZKamfs0uslY7Olz8IFDDf2vHK2aiH64',
    appId: '1:875400248405:ios:c9b9c2fe1fbe836b67a8dc',
    messagingSenderId: '875400248405',
    projectId: 'himalayan-delight',
    storageBucket: 'himalayan-delight.appspot.com',
    iosBundleId: 'com.example.himalayanDelights',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7ZKamfs0uslY7Olz8IFDDf2vHK2aiH64',
    appId: '1:875400248405:ios:c9b9c2fe1fbe836b67a8dc',
    messagingSenderId: '875400248405',
    projectId: 'himalayan-delight',
    storageBucket: 'himalayan-delight.appspot.com',
    iosBundleId: 'com.example.himalayanDelights',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDEqz-s16nwTDf9nCwTqoGwwUddBXmCqJs',
    appId: '1:875400248405:web:4438f2fe313da2cf67a8dc',
    messagingSenderId: '875400248405',
    projectId: 'himalayan-delight',
    authDomain: 'himalayan-delight.firebaseapp.com',
    storageBucket: 'himalayan-delight.appspot.com',
    measurementId: 'G-RDDSKJHTBT',
  );
}
