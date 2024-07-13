import 'package:flutter/material.dart';
import 'package:simply_pos/common/widget/text_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});                   

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextInputField(hintText: "User ID"),
              SizedBox(
                height: 15,
              ),
              TextInputField(hintText: "Password"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
