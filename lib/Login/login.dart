import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hinh_6.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Sports Field Booking',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  
                  SignInButton(
                    Buttons.googleDark,
                    text: "Sign up with Google ",
                    onPressed: () => Navigator.pushNamed(context, '/Home'),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Terms and Pricacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}