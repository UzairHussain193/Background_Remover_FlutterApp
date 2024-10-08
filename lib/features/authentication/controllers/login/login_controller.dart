
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginController with ChangeNotifier{



  /// Variables
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _hidePassword = true;
  final GlobalKey _loginFormKey = GlobalKey<FormState>();

  TextEditingController get email => _email;
  TextEditingController get password => _password;
  bool get hidePassword => _hidePassword;
  GlobalKey get loginFormKey => _loginFormKey;


  toggleHidePassword(){
    _hidePassword = !hidePassword;
    notifyListeners();
  }

}