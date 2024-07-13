import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Simply POS',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(239, 154, 154, 1)),
                )
              ],
            )));
  }
}
