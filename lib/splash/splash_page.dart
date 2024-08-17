import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simply_pos/auth/presenter/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
      alignment: Alignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 500),
          child: const Image(
            image: AssetImage('assets/simply.png'),
            width: 400,
          ),
          builder: (context, value, child) => Opacity(
            opacity: 1,
            child: Padding(
              padding: EdgeInsets.only(bottom: value * 120),
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
              padding: EdgeInsets.only(top: value * 120),
              child: child,
            ),
          ),
          onEnd: () {
            Timer(const Duration(milliseconds: 500), () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            });
          },
        )
      ],
    )));
  }
}
