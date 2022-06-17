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
    apiKey: 'AIzaSyDG9jQxJoNwBVn10Tf3dOA3kbufAPrfVNc',
    appId: '1:959980438203:web:3aa0cfbeb2222bf6889f9e',
    messagingSenderId: '959980438203',
    projectId: 'rfid-doorlock-3bf96',
    authDomain: 'rfid-doorlock-3bf96.firebaseapp.com',
    databaseURL: 'https://rfid-doorlock-3bf96-default-rtdb.firebaseio.com',
    storageBucket: 'rfid-doorlock-3bf96.appspot.com',
    measurementId: 'G-ES5KYMHXK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiXEjk0znAfDX8AbcCKl0WpwZ8xO1CnxM',
    appId: '1:959980438203:android:d8903d8471ac6782889f9e',
    messagingSenderId: '959980438203',
    projectId: 'rfid-doorlock-3bf96',
    databaseURL: 'https://rfid-doorlock-3bf96-default-rtdb.firebaseio.com',
    storageBucket: 'rfid-doorlock-3bf96.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRMF0mFFDeveCvDlft5zgtEmQx7Wrr6Fc',
    appId: '1:959980438203:ios:3a455be9c00efa66889f9e',
    messagingSenderId: '959980438203',
    projectId: 'rfid-doorlock-3bf96',
    databaseURL: 'https://rfid-doorlock-3bf96-default-rtdb.firebaseio.com',
    storageBucket: 'rfid-doorlock-3bf96.appspot.com',
    iosClientId: '959980438203-ckmop10ki9den87145d9hrh97ukaj48h.apps.googleusercontent.com',
    iosBundleId: 'com.example.doorlock',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRMF0mFFDeveCvDlft5zgtEmQx7Wrr6Fc',
    appId: '1:959980438203:ios:3a455be9c00efa66889f9e',
    messagingSenderId: '959980438203',
    projectId: 'rfid-doorlock-3bf96',
    databaseURL: 'https://rfid-doorlock-3bf96-default-rtdb.firebaseio.com',
    storageBucket: 'rfid-doorlock-3bf96.appspot.com',
    iosClientId: '959980438203-ckmop10ki9den87145d9hrh97ukaj48h.apps.googleusercontent.com',
    iosBundleId: 'com.example.doorlock',
  );
}
