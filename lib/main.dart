import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';


const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyCaAU4euabnWXRpa0zUhMwxA0pM8IdbZ8w",
  authDomain: "login-screen-ts.firebaseapp.com",
  projectId: "login-screen-ts",
  storageBucket: "login-screen-ts.firebasestorage.app",
  messagingSenderId: "951194350496",
  appId: "1:951194350496:web:3572bb1c630fa3ffcd6ac5",
  measurementId: "G-VJ50BMS3D1",
);


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions); // Inicializando Firebase
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}


