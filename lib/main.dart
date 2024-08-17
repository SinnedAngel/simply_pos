import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/theme.dart';
import 'package:simply_pos/core/enc/encrypted.dart';
import 'package:simply_pos/auth/presenter/login_page.dart';
import 'package:simply_pos/splash/splash_page.dart';
import 'package:simply_pos/test_widget_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
    url: Encrypted.supabaseUrl,
    anonKey: Encrypted.supabaseAnonKey,
  );

  // runApp(const SimplyApp());
  runApp(const PageBuilderApp());
}

class SimplyApp extends StatelessWidget {
  const SimplyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simply POS',
      theme: AppTheme.darkThemeMode,
      home: const SplashPage(),
    );
  }
}

class PageBuilderApp extends StatelessWidget {
  const PageBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
