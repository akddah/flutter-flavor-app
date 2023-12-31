// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       throw UnsupportedError(
//         'DefaultFirebaseOptions have not been configured for web - '
//         'you can reconfigure this by running the FlutterFire CLI again.',
//       );
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for macos - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyDgYJn1289h-VKcXaT1Qrph3atpH9UCIOY',
//     appId: '1:195207224576:android:79d1320f88029dfec0a7e5',
//     messagingSenderId: '195207224576',
//     projectId: 'chat-f51bf',
//     databaseURL: 'https://chat-f51bf-default-rtdb.firebaseio.com',
//     storageBucket: 'chat-f51bf.appspot.com',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyA2FDNGLYUx9uqyWh9F5qR-zoo_FS4SVr0',
//     appId: '1:195207224576:ios:575181860c216c84c0a7e5',
//     messagingSenderId: '195207224576',
//     projectId: 'chat-f51bf',
//     databaseURL: 'https://chat-f51bf-default-rtdb.firebaseio.com',
//     storageBucket: 'chat-f51bf.appspot.com',
//     androidClientId: '195207224576-6sqidpc3uoee9kbpjodv8mj94kc18nss.apps.googleusercontent.com',
//     iosClientId: '195207224576-ldfo53qee4f1gcdeknu936svb0i0j3fe.apps.googleusercontent.com',
//     iosBundleId: 'com.flavor.prod',
//   );
// }
