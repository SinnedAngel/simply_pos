import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 500),
          child: const Image(
            image: AssetImage('assets/simply.png'),
            width: 200,
          ),
          builder: (context, value, child) => Opacity(
            opacity: 1,
            child: Padding(
              padding: EdgeInsets.only(bottom: value * 20),
              child: child,
            ),
          ),
        ), 
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 1000),
          child: const Text('Simply POS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              )),
          builder: (context, value, child) => Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(top: value * 20),
              child: child,
            ),
          ),
        )
      ],
    )));
  }
}
