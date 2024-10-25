import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/helper/helper_functions.dart';

class RegisterController with ChangeNotifier{

  /// Variables
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  bool get isLoading => _isLoading;


  updateLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }


  /// Function to Register new user
  Future<void> register(BuildContext context) async{
    try{

      // Start Loading
      updateLoading(true);

      // validate pass & confirm pass
      if(!password.text.startsWith(confirmPassword.text)){
        HkHelperFunctions.errorSnackBar(context, title: 'Required', message: 'Password must be same');
        return;
      }

      // Form Validation
      if(!formKey.currentState!.validate()){
        return;
      }

      // create user
      UserCredential user = await _auth.createUserWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());


      // store user data
      _db.collection('Users').doc(user.user!.uid).set({
        'Id' : user.user!.uid,
        'Email': email.text.trim(),
        'Username': username.text.trim()
      });

      if(context.mounted) HkHelperFunctions.successSnackBar(context, title: 'Congratulations', message: 'You have successfully login!');

      Navigator.pop(context);
    }catch(e){
      debugPrint(e.toString());
      HkHelperFunctions.errorSnackBar(context, title: 'Error', message: e.toString());
    }finally{
      updateLoading(false);
    }
  }
}