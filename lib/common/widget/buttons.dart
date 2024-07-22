import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/pallete.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final double width;
  final double height;
  const PrimaryButton(
      {super.key,
      this.buttonText = '',
      required this.onPressed,
      this.width = 200,
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppPallete.secondayColor),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width, height),
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
