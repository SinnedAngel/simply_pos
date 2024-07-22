import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const TextInputField({
    super.key,
    this.hintText = '',
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      obscureText: obscureText,
    );
  }
}
