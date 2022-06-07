import 'package:flutter/material.dart';
import 'package:my_tsel/pages/login_page.dart';
import 'package:my_tsel/pages/splash_page.dart';
import 'package:my_tsel/pages/verifikasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyTsel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/verifikasi': (context) => const VerifikasiPage(),
        // '/home': (context) => const HomePage(),
      },
    );
  }
}
