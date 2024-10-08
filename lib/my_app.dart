import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/screens/home/home.dart';
import 'package:smart_remove/utils/provider/providers.dart';
import 'package:smart_remove/utils/theme/theme.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: HkProviders.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: HkAppTheme.lightTheme,
          darkTheme: HkAppTheme.darkTheme,
          home: const HomeScreen()
      ),
    );
  }
}