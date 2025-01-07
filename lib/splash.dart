import 'package:flutter/material.dart';
import 'package:instagram/login.dart';
import 'dart:async';

void main() {
  runApp(const SplashScreenWindow());
}

class SplashScreenWindow extends StatelessWidget {
  const SplashScreenWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: SizedBox(
            child: Image.asset("assets/splash.jpg"),
          ),
        ),
      ),
    );
  }
}
