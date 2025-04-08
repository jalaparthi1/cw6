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
    apiKey: 'AIzaSyDmhtbbljDRPGlUPIxDyxIbMujwNykLc1I',
    appId: '1:948635375187:web:1fdd6f3e0b2f255c0ad8a6',
    messagingSenderId: '948635375187',
    projectId: 'coursework6-firebase-taskapp',
    authDomain: 'coursework6-firebase-taskapp.firebaseapp.com',
    storageBucket: 'coursework6-firebase-taskapp.firebasestorage.app',
    measurementId: 'G-N5JT0DF6Y4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjiAz0ea5w7Kd2p1bgasBfP5mLi-LptsY',
    appId: '1:948635375187:android:f77f8e2fc742b9710ad8a6',
    messagingSenderId: '948635375187',
    projectId: 'coursework6-firebase-taskapp',
    storageBucket: 'coursework6-firebase-taskapp.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlXmEAq0xgdCjLcBm5h5liknJHBMBqkug',
    appId: '1:948635375187:ios:4ac451c64a537eb50ad8a6',
    messagingSenderId: '948635375187',
    projectId: 'coursework6-firebase-taskapp',
    storageBucket: 'coursework6-firebase-taskapp.firebasestorage.app',
    iosBundleId: 'com.example.cw6TasksApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlXmEAq0xgdCjLcBm5h5liknJHBMBqkug',
    appId: '1:948635375187:ios:4ac451c64a537eb50ad8a6',
    messagingSenderId: '948635375187',
    projectId: 'coursework6-firebase-taskapp',
    storageBucket: 'coursework6-firebase-taskapp.firebasestorage.app',
    iosBundleId: 'com.example.cw6TasksApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmhtbbljDRPGlUPIxDyxIbMujwNykLc1I',
    appId: '1:948635375187:web:d2619904931f3a7d0ad8a6',
    messagingSenderId: '948635375187',
    projectId: 'coursework6-firebase-taskapp',
    authDomain: 'coursework6-firebase-taskapp.firebaseapp.com',
    storageBucket: 'coursework6-firebase-taskapp.firebasestorage.app',
    measurementId: 'G-ET62H0RN9C',
  );
}
