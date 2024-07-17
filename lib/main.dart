import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicialización de Firebase dependiendo de la plataforma
  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: "AIzaSyA6u5HpRc_UQjaqR30uzzcTdN_zs77aOF8",
          authDomain: "fir-flutter-codelab-403c7.firebaseapp.com",
          projectId: "fir-flutter-codelab-403c7",
          storageBucket: "fir-flutter-codelab-403c7.appspot.com",
          messagingSenderId: "238371941708",
          appId: "1:238371941708:web:81498ba141a0161085b3e9"
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
