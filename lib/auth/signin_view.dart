import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Sign in to continue"),
                  const Text(
                    "Black",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green,
                          offset: Offset(2, 0),
                        ),
                      ],
                    ),
                  ),
                  // with custom text
                  SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () {},
                  ),
                  Text(
                    "By signin in you are agreeing to our",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  Text(
                    "Term & Privacy Policy",
                    style: TextStyle(color: Colors.grey[800]),
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
