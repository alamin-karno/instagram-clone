import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/auth/auth.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/images/ic_instagram.svg',
                    color: primaryColor,
                  ),
                ),
                sizeVer(40),
                const FormContainerWidget(
                  hintText: 'Email',
                ),
                sizeVer(12),
                const FormContainerWidget(
                  hintText: 'Password',
                  isPasswordField: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ],
                ),
                sizeVer(15),
                ButtonContainerWidget(
                  title: 'Login',
                  onTap: () {},
                ),
                sizeVer(40),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: primaryColor.withOpacity(0.6000000238418579),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                        ),
                      ),
                      const TextSpan(
                        text: 'Sign up.',
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x26FFFFFF),
                    blurRadius: 0,
                    offset: Offset(0, -0.33),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'Instagram from Facebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor.withOpacity(0.6000000238418579),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.01,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
