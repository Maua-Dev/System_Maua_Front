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
    apiKey: 'AIzaSyBeu7eRHim6-M7TgwrZi4pmKuod7wUWsGI',
    appId: '1:54912975934:web:4cba6c97e3dc8e1408bd6f',
    messagingSenderId: '54912975934',
    projectId: 'mauapp-dev-4e68c',
    authDomain: 'mauapp-dev-4e68c.firebaseapp.com',
    storageBucket: 'mauapp-dev-4e68c.appspot.com',
    measurementId: 'G-DD4WTQM08C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBR1RXAInT9k0vD802W2-AhKo1wZOZ2m0',
    appId: '1:54912975934:android:47bbcfdb6b40f22508bd6f',
    messagingSenderId: '54912975934',
    projectId: 'mauapp-dev-4e68c',
    storageBucket: 'mauapp-dev-4e68c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeyh2iVp6be0ODfycitz5c6LQcQj684Dc',
    appId: '1:54912975934:ios:4cadfa5d1ac4293b08bd6f',
    messagingSenderId: '54912975934',
    projectId: 'mauapp-dev-4e68c',
    storageBucket: 'mauapp-dev-4e68c.appspot.com',
    iosClientId:
        '54912975934-nse86c2eauebhbd5juvavfbv61gs7o5a.apps.googleusercontent.com',
    iosBundleId: 'com.example.systemMauaFront',
  );
}