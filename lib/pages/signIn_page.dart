import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:email_validator/email_validator.dart';

import 'signUp_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: greyTextColor.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Build Your Career',
                  style:
                      blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Image.asset(
                  'assets/images/image_sign_in.png',
                  width: 261,
                  height: 240,
                )),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: greyTextColor.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: inputFieldColor,
                          filled: true,
                          focusColor: primaryColor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: isEmailValid
                                    ? primaryColor
                                    : redColor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: ''),
                      style: TextStyle(
                          color: isEmailValid ? primaryColor : redColor),
                      controller: emailController,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: greyTextColor.copyWith(fontSize: 16),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: inputFieldColor,
                            filled: true,
                            focusColor: primaryColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        width: 400,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66))),
                          child: Text(
                            'Sign In',
                            style: whiteTextColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) => SignUpPage())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Text(
                            'Create New Account',
                            style: greyTextColor.copyWith(
                                fontSize: 14, fontWeight: light),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
