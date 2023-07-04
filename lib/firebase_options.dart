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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDu0Qre67ktfjDESYdkD-rBu0d7Ga0NslE',
    appId: '1:25161491060:web:d67bc7188d35987f93e721',
    messagingSenderId: '25161491060',
    projectId: 'advertt-bb796',
    authDomain: 'advertt-bb796.firebaseapp.com',
    storageBucket: 'advertt-bb796.appspot.com',
    measurementId: 'G-P4NVZ29R1M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBQoOklA7wjYCVyOgUNZNKam81RmNSjyw',
    appId: '1:25161491060:android:df7fe73d955eb75693e721',
    messagingSenderId: '25161491060',
    projectId: 'advertt-bb796',
    storageBucket: 'advertt-bb796.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAO1DvPdbrtABm_dnhn26UyFJfZorsGS8',
    appId: '1:25161491060:ios:cf4e90a85dbca98093e721',
    messagingSenderId: '25161491060',
    projectId: 'advertt-bb796',
    storageBucket: 'advertt-bb796.appspot.com',
    iosClientId:
        '25161491060-ctvbef72hcl7c6ho8ci3gk8n3d58d1dv.apps.googleusercontent.com',
    iosBundleId: 'com.example.advertt',
  );
}