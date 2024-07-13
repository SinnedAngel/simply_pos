import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/theme.dart';
import 'package:simply_pos/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const SplashPage(), //LoginPage(),
    );
  }
}