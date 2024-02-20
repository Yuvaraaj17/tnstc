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
    apiKey: 'AIzaSyDL0SX-CQNJUfyZ6v_3UWhQ6xK98mEh6ck',
    appId: '1:1013064490856:web:288d983387353fc9ad40dd',
    messagingSenderId: '1013064490856',
    projectId: 'tnstc-cf4a7',
    authDomain: 'tnstc-cf4a7.firebaseapp.com',
    storageBucket: 'tnstc-cf4a7.appspot.com',
    measurementId: 'G-745VXEVP6Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSL-0JUMeit_14zFLrqN-MK_0pNX2feU8',
    appId: '1:1013064490856:android:e381f83e9e8bf4b0ad40dd',
    messagingSenderId: '1013064490856',
    projectId: 'tnstc-cf4a7',
    storageBucket: 'tnstc-cf4a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPpdG9VlZ1UOJOsSUT3dWvTQZEuSNsQGE',
    appId: '1:1013064490856:ios:fa39cdfd3b7b1411ad40dd',
    messagingSenderId: '1013064490856',
    projectId: 'tnstc-cf4a7',
    storageBucket: 'tnstc-cf4a7.appspot.com',
    iosBundleId: 'com.example.tnstc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPpdG9VlZ1UOJOsSUT3dWvTQZEuSNsQGE',
    appId: '1:1013064490856:ios:5664c394a9982b5dad40dd',
    messagingSenderId: '1013064490856',
    projectId: 'tnstc-cf4a7',
    storageBucket: 'tnstc-cf4a7.appspot.com',
    iosBundleId: 'com.example.tnstc.RunnerTests',
  );
}
