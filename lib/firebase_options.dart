import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // YOUR ACTUAL WEB CONFIG - REPLACED WITH YOUR VALUES
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBHmNXp8Nc5Cy4RUfbO1zABHBIIJScYnb4',
    appId: '1:861391178594:web:3208e05a228cd2b63e3a3b',
    messagingSenderId: '861391178594',
    projectId: 'authapp-81a6e',
    authDomain: 'authapp-81a6e.firebaseapp.com',
    storageBucket: 'authapp-81a6e.firebasestorage.app',
  );

  // For Android - you need to add an Android app in Firebase Console first
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHmNXp8Nc5Cy4RUfbO1zABHBIIJScYnb4',
    appId:
        '1:861391178594:android:YOUR_ANDROID_APP_ID', // You need to add Android app
    messagingSenderId: '861391178594',
    projectId: 'authapp-81a6e',
    storageBucket: 'authapp-81a6e.firebasestorage.app',
  );

  // For iOS - you need to add an iOS app in Firebase Console first
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHmNXp8Nc5Cy4RUfbO1zABHBIIJScYnb4',
    appId: '1:861391178594:ios:YOUR_IOS_APP_ID', // You need to add iOS app
    messagingSenderId: '861391178594',
    projectId: 'authapp-81a6e',
    storageBucket: 'authapp-81a6e.firebasestorage.app',
    iosBundleId: 'com.example.auth_app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHmNXp8Nc5Cy4RUfbO1zABHBIIJScYnb4',
    appId:
        '1:861391178594:macos:YOUR_MACOS_APP_ID', // You need to add macOS app
    messagingSenderId: '861391178594',
    projectId: 'authapp-81a6e',
    storageBucket: 'authapp-81a6e.firebasestorage.app',
  );
}
