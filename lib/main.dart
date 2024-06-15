import 'package:eco_trace_app/login_signup/login_pge.dart';
import 'package:eco_trace_app/splash_pge/splash_pge.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashWrapper(),
    );
  }
}

class SplashWrapper extends StatelessWidget {
  const SplashWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Schedule the navigation after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPge()),
      );
    });

    return const SplashPge();
  }
}
