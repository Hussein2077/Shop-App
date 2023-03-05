
import 'package:flutter/material.dart';
import 'package:shop_app/constant/app_routes.dart';
import 'package:shop_app/view/auth/login.dart';
import 'package:shop_app/view/onboarding_screen.dart';

Map<String, Widget Function(BuildContext context)> routes={
  AppRoutes.onBoarding: (context)=> const OnBoarding(),

  AppRoutes.loginPage: (context)=> const LoginScreen(),

};