import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/authentication/screens/splash/splash.dart';
import 'package:smart_remove/utils/provider/providers.dart';
import 'package:smart_remove/utils/theme/theme.dart';



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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: HkProviders.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: HkAppTheme.lightTheme,
          darkTheme: HkAppTheme.darkTheme,
          home: const SplashScreen()
      ),
    );
  }
}