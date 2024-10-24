<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_remove/features/smart_remove/screens/home/home.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';
=======

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

class LoginController with ChangeNotifier{



  /// Variables
<<<<<<< HEAD
  final _auth = FirebaseAuth.instance;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _hidePassword = true;
  bool _isLoading = false;
  final _loginFormKey = GlobalKey<FormState>();
=======
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _hidePassword = true;
  final GlobalKey _loginFormKey = GlobalKey<FormState>();
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

  TextEditingController get email => _email;
  TextEditingController get password => _password;
  bool get hidePassword => _hidePassword;
<<<<<<< HEAD
  bool get isLoading => _isLoading;
=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
  GlobalKey get loginFormKey => _loginFormKey;


  toggleHidePassword(){
    _hidePassword = !hidePassword;
    notifyListeners();
  }

<<<<<<< HEAD
  updateLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async{
    try{

      // start loading
      updateLoading(true);

      // FOrm Validation
      if(!_loginFormKey.currentState!.validate()){
        return;
      }

      // login
      await _auth.signInWithEmailAndPassword(email: email.text, password: password.text);

      // save user
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('IsUserLogin', true);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));

    }catch(e){
      HkHelperFunctions.errorSnackBar(context, title: 'Error', message: e.toString());
    }finally{
      updateLoading(false);
    }
  }


=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
}