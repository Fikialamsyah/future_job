import 'package:flutter/material.dart';
import 'package:future_job/pages/signIn_page.dart';
import 'package:future_job/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isUploaded = false;
  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: (){
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset('assets/images/image_profile.png', width: 100, height: 100,)
            ],
          ),
        ),
      );
    }
    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: (){
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset('assets/images/icon_upload.png', width: 100, height: 100,)
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: greyTextColor.copyWith(fontSize: 16),
              ),
              Text(
                'Begin New Journey',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                height: 50,
              ),
              isUploaded ? showedImages() : uploadedImages(),
              SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: greyTextColor.copyWith(
                      fontSize: 16
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: inputFieldColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                        borderRadius: BorderRadius.circular(100)
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Email Address',
                    style: greyTextColor.copyWith(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if(isValid){
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                        fillColor: inputFieldColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: isEmailValid ? primaryColor : redColor),
                            borderRadius: BorderRadius.circular(100)
                        ),
                    ),
                    style: TextStyle(
                      color: isEmailValid ? primaryColor : redColor
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Password',
                    style: greyTextColor.copyWith(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: inputFieldColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Goal',
                    style: greyTextColor.copyWith(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: inputFieldColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                  SizedBox(height: 40,),
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
                          'Sign Up',
                          style: whiteTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => SignInPage())));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Text(
                          'Bak to Sign In',
                          style: greyTextColor.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
        ),
      ),
          )),
    );
  }
}
