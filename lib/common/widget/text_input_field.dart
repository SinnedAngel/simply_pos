import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  const TextInputField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
  }
}