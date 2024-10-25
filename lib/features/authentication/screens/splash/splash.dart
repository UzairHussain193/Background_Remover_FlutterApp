import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_remove/features/authentication/screens/login/login.dart';
import 'package:smart_remove/features/smart_remove/screens/home/home.dart';
import 'package:smart_remove/utils/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    screenRedirect();
    super.initState();
  }

  screenRedirect() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isUserLogin = prefs.getBool('IsUserLogin') ?? false;

    if(isUserLogin == false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(
        textAlign: TextAlign.center,
        'Background Remover', style: Theme.of(context).textTheme.headlineLarge!.apply(color: HkColors.primary),),),
    );
  }
}
