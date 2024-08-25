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
    apiKey: 'AIzaSyCCtqdF6IFlfmSV1ZpLG_gYoEu4kZlp0yE',
    appId: '1:873074109162:web:0f31d8964d2fe674930593',
    messagingSenderId: '873074109162',
    projectId: 'flutterstoreapp-2a296',
    authDomain: 'flutterstoreapp-2a296.firebaseapp.com',
    storageBucket: 'flutterstoreapp-2a296.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACl1HROhzmC4QGGbJ_4xf1BJVmdug-Z3I',
    appId: '1:873074109162:android:24b993b1d4f90c9c930593',
    messagingSenderId: '873074109162',
    projectId: 'flutterstoreapp-2a296',
    storageBucket: 'flutterstoreapp-2a296.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAQlRy66z4g8njPMj96a43iw4dsvG9XC4',
    appId: '1:873074109162:ios:68ad721826272f70930593',
    messagingSenderId: '873074109162',
    projectId: 'flutterstoreapp-2a296',
    storageBucket: 'flutterstoreapp-2a296.appspot.com',
    androidClientId: '873074109162-680vdqor4hppc6t4asm1rleljdq67928.apps.googleusercontent.com',
    iosClientId: '873074109162-h0j5rnbcqd8qp09jk0julrd10b5sbn8p.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterStoreApp',
  );

}