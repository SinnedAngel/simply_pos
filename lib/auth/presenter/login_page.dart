import 'package:flutter/material.dart';
import 'package:simply_pos/common/widget/buttons.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextInputField(hintText: "User ID"),
              const SizedBox(
                height: 15,
              ),
              const TextInputField(
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 50,
              ),
              PrimaryButton(
                buttonText: 'Log In',
                height: 60,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
