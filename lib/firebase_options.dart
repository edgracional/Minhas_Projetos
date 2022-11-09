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
    apiKey: 'AIzaSyCGEIO0oXBq4E5KfD1RL5u0IFRRFyJX_cE',
    appId: '1:501761619525:web:dbf7cb68bac40b6c0f952c',
    messagingSenderId: '501761619525',
    projectId: 'vaccinas-f2caa',
    authDomain: 'vaccinas-f2caa.firebaseapp.com',
    databaseURL: 'https://vaccinas-f2caa-default-rtdb.firebaseio.com',
    storageBucket: 'vaccinas-f2caa.appspot.com',
    measurementId: 'G-XW4D2GDGZE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuye7k3oJymFqbUyiL4XEFe3MUc8jy5TM',
    appId: '1:501761619525:android:a9b3554a202cd26e0f952c',
    messagingSenderId: '501761619525',
    projectId: 'vaccinas-f2caa',
    databaseURL: 'https://vaccinas-f2caa-default-rtdb.firebaseio.com',
    storageBucket: 'vaccinas-f2caa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDG7hd54sxg7SbEUYXrOpxf5zefoT8Grk8',
    appId: '1:501761619525:ios:64152c5e85c44d620f952c',
    messagingSenderId: '501761619525',
    projectId: 'vaccinas-f2caa',
    databaseURL: 'https://vaccinas-f2caa-default-rtdb.firebaseio.com',
    storageBucket: 'vaccinas-f2caa.appspot.com',
    iosClientId: '501761619525-obugh21fhrsrc0u0r1nam7fru4eqtsi3.apps.googleusercontent.com',
    iosBundleId: 'com.example.minhasVacinas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDG7hd54sxg7SbEUYXrOpxf5zefoT8Grk8',
    appId: '1:501761619525:ios:64152c5e85c44d620f952c',
    messagingSenderId: '501761619525',
    projectId: 'vaccinas-f2caa',
    databaseURL: 'https://vaccinas-f2caa-default-rtdb.firebaseio.com',
    storageBucket: 'vaccinas-f2caa.appspot.com',
    iosClientId: '501761619525-obugh21fhrsrc0u0r1nam7fru4eqtsi3.apps.googleusercontent.com',
    iosBundleId: 'com.example.minhasVacinas',
  );
}
