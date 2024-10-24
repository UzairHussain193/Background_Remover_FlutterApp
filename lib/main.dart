import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'my_app.dart';

void main() async{

  /// Initialize Widgets Flutter Bindings
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Firebase
<<<<<<< HEAD
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
=======
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,).then((value) {

  },);
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

  /// Load App
  runApp(const MyApp());
}



