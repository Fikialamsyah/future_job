import 'package:flutter/material.dart';
import 'package:future_job/pages/signUp_page.dart';
import 'package:future_job/pages/signIn_page.dart';
import 'package:future_job/theme.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/onboarding.png',
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Build Your Next\nFuture Career Like\na Master',
                    style: whiteTextColor.copyWith(fontSize: 32),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '18,000 jobs available',
                    style: whiteTextColor.copyWith(
                        fontSize: 14, fontWeight: light),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 350),
                          child: Container(
                            width: 200,
                            height: 45,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                              },
                              child: Text(
                                "Get Started",
                                style: purpleTextStyle.copyWith(
                                  fontWeight: medium
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: whiteColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()));
                              },
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: whiteColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              child: Text(
                                "Sign In",
                                style: whiteTextColor,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
