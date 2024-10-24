import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD
import 'package:smart_remove/features/authentication/screens/splash/splash.dart';
=======
import 'package:smart_remove/features/smart_remove/screens/home/home.dart';
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
import 'package:smart_remove/utils/provider/providers.dart';
import 'package:smart_remove/utils/theme/theme.dart';



<<<<<<< HEAD
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {

    super.initState();
  }
=======
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: HkProviders.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: HkAppTheme.lightTheme,
          darkTheme: HkAppTheme.darkTheme,
<<<<<<< HEAD
          home: const SplashScreen()
=======
          home: const HomeScreen()
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
      ),
    );
  }
}