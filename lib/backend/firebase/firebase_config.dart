import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCdHYsTzFrQcYFC7gx8_xYVGDRuU1c0wlk",
            authDomain: "welcome-to-rosemont-f4gnw2.firebaseapp.com",
            projectId: "welcome-to-rosemont-f4gnw2",
            storageBucket: "welcome-to-rosemont-f4gnw2.appspot.com",
            messagingSenderId: "895917733135",
            appId: "1:895917733135:web:facff15b67b03ccad03a7a"));
  } else {
    await Firebase.initializeApp();
  }
}
