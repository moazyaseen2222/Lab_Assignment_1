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
    apiKey: 'AIzaSyD35ROgc8rZAZ2-JN4RWv_XKyBxNSqUfjw',
    appId: '1:545255376348:web:cede51e4c68c17209abb19',
    messagingSenderId: '545255376348',
    projectId: 'labass1-68244',
    authDomain: 'labass1-68244.firebaseapp.com',
    storageBucket: 'labass1-68244.appspot.com',
    measurementId: 'G-VMXFJHLRFN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIe7fSm4c485rTkMi_DRVA0s4Z9BrzmPQ',
    appId: '1:545255376348:android:2e590df02cf2fce59abb19',
    messagingSenderId: '545255376348',
    projectId: 'labass1-68244',
    storageBucket: 'labass1-68244.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBoALYwL7dxz26SySUwXCEgzJVAorUtiw',
    appId: '1:545255376348:ios:ed8021135faa0b369abb19',
    messagingSenderId: '545255376348',
    projectId: 'labass1-68244',
    storageBucket: 'labass1-68244.appspot.com',
    iosClientId: '545255376348-e2jdupdnhsps2ia1c8q2q0eok203u9da.apps.googleusercontent.com',
    iosBundleId: 'com.example.labAss1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBoALYwL7dxz26SySUwXCEgzJVAorUtiw',
    appId: '1:545255376348:ios:ed8021135faa0b369abb19',
    messagingSenderId: '545255376348',
    projectId: 'labass1-68244',
    storageBucket: 'labass1-68244.appspot.com',
    iosClientId: '545255376348-e2jdupdnhsps2ia1c8q2q0eok203u9da.apps.googleusercontent.com',
    iosBundleId: 'com.example.labAss1',
  );
}
