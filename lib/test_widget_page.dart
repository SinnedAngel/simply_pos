import 'package:flutter/material.dart';
import 'package:simply_pos/common/widget/buttons.dart';

class TestWidgetPage extends StatelessWidget {
  const TestWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: Center(
        child: PrimaryButton(
          buttonText: 'Button',
          onPressed: () {},
        ),
      ),
    );
  }
}
