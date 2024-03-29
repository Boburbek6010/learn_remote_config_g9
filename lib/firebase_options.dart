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
    apiKey: 'AIzaSyA-MIXhhW-0iVp9DHdI-4EcYMOCTot3KCw',
    appId: '1:562604703690:web:c288618d84e28328239933',
    messagingSenderId: '562604703690',
    projectId: 'learn-remote-config-g9',
    authDomain: 'learn-remote-config-g9.firebaseapp.com',
    storageBucket: 'learn-remote-config-g9.appspot.com',
    measurementId: 'G-CGF6TWYWHP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD60H9SlNPLjMBeHLlO0Vfxzpu3FGcr4uo',
    appId: '1:562604703690:android:4f17f3c20814c61e239933',
    messagingSenderId: '562604703690',
    projectId: 'learn-remote-config-g9',
    storageBucket: 'learn-remote-config-g9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdP_y5Wg0A78Jji6qpYw3nYbbZ4AXDlPU',
    appId: '1:562604703690:ios:7f912534a148f19f239933',
    messagingSenderId: '562604703690',
    projectId: 'learn-remote-config-g9',
    storageBucket: 'learn-remote-config-g9.appspot.com',
    iosBundleId: 'com.pdp.learnRemoteConfigG9',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdP_y5Wg0A78Jji6qpYw3nYbbZ4AXDlPU',
    appId: '1:562604703690:ios:706601c8b7e2a100239933',
    messagingSenderId: '562604703690',
    projectId: 'learn-remote-config-g9',
    storageBucket: 'learn-remote-config-g9.appspot.com',
    iosBundleId: 'com.pdp.learnRemoteConfigG9.RunnerTests',
  );
}
