import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD0-zj8y4TA0xak1Th0l0sVA-WSAiBebIQ",
            authDomain: "language-learning-app-30a13.firebaseapp.com",
            projectId: "language-learning-app-30a13",
            storageBucket: "language-learning-app-30a13.appspot.com",
            messagingSenderId: "857582408439",
            appId: "1:857582408439:web:90a0d163958f78296f79f2",
            measurementId: "G-MHPD85TY31"));
  } else {
    await Firebase.initializeApp();
  }
}
