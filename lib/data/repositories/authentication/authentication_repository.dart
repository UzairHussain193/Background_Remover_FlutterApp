
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_remove/features/authentication/screens/login/login.dart';

class AuthenticationRepository with ChangeNotifier{



  onInit() async{

  }


  Future<void> logout(BuildContext context) async{
    try{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('IsUserLogin', false);

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);

    }catch(e){
      throw 'Something went wrong. Please try again';
    }
  }
}