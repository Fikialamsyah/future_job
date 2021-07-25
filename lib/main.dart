import 'package:flutter/material.dart';
import 'package:future_job/pages/onBoarding_page.dart';
import 'package:future_job/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
      },
    );
  }
}
