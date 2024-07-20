import 'package:flutter/material.dart';

class TestWidgetPage extends StatelessWidget {
  const TestWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: const Text('text'),
    );
  }
}
