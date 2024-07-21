import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/pallete.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  const PrimaryButton({
    super.key,
    this.buttonText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppPallete.secondayColor),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 50),
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
