import 'package:flutter/material.dart';
import 'package:simply_pos/common/widget/text_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          TextInputField(hintText: "User ID")
        ],
      ),
    );
  }
}
