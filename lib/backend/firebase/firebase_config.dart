import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWgCHR2zbliPS_D0E2zr4Aewwc9JJz0fk",
            authDomain: "powerplate-3aaec.firebaseapp.com",
            projectId: "powerplate-3aaec",
            storageBucket: "powerplate-3aaec.appspot.com",
            messagingSenderId: "143219694394",
            appId: "1:143219694394:web:25195f636dc9d266d60e03",
            measurementId: "G-9TTHZXFQ8Q"));
  } else {
    await Firebase.initializeApp();
  }
}
