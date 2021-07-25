import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:future_job/pages/onBoarding_page.dart';

import '../theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo.png',
                width: 59,
                height: 76,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'FUTUREJOB',
              style: whiteTextColor.copyWith(
                fontSize: 32,
                fontWeight: semiBold
              )
          )],
        ),
      ),
    );
  }
}
