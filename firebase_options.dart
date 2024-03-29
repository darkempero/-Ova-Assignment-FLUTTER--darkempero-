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
    apiKey: 'AIzaSyABYsNLzjVHHAlzU3Ki81HpkFqRBagGgwI',
    appId: '1:1038873557006:web:5366a9b247a6a30419245f',
    messagingSenderId: '1038873557006',
    projectId: 'chat-app-d413e',
    authDomain: 'chat-app-d413e.firebaseapp.com',
    storageBucket: 'chat-app-d413e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_wEHMwO9y-HhLODLTMWFZRxMadf75fUI',
    appId: '1:1038873557006:android:161902b3f28a681619245f',
    messagingSenderId: '1038873557006',
    projectId: 'chat-app-d413e',
    storageBucket: 'chat-app-d413e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATYalpXYWzy45SpYo-TxNwiSJM48TSiKU',
    appId: '1:1038873557006:ios:b7816405d2a3e37c19245f',
    messagingSenderId: '1038873557006',
    projectId: 'chat-app-d413e',
    storageBucket: 'chat-app-d413e.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATYalpXYWzy45SpYo-TxNwiSJM48TSiKU',
    appId: '1:1038873557006:ios:d88865225fa5594b19245f',
    messagingSenderId: '1038873557006',
    projectId: 'chat-app-d413e',
    storageBucket: 'chat-app-d413e.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
