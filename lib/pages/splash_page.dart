import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRedColor,
      body: Center(
        child: Container(
          width: 97,
          height: 124,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo-tsel.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
