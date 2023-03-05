import 'package:flutter/material.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/view/auth/login.dart';
import 'package:shop_app/view/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.pinkAccent,
        primarySwatch: Colors.teal,
      ),
      home:  const LoginScreen(),
      routes: routes,
    );
  }
}
