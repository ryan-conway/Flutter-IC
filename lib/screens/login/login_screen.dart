import 'dart:ui';

import 'package:lydiaryanfluttersurvey/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lydiaryanfluttersurvey/screens/login/login_input_widget.dart';

import '../../resources/dimensions.dart';
import '../widgets/rounded_rectangle_button_widget.dart';
import 'login_keys.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.bgLogin.path),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.20),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingDefault),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Assets.images.nimbleLogoWhite,
                        ),
                        const SizedBox(height: 109),
                        const LoginInputWidget(
                          key: LoginKey.liLoginEmail,
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: Dimensions.paddingMedium),
                        const LoginInputWidget(
                          key: LoginKey.liLoginPassword,
                          hintText: 'Password',
                          isPasswordType: true,
                        ),
                        const SizedBox(height: Dimensions.paddingMedium),
                        RoundedRectangleButtonWidget(
                          key: LoginKey.rrbLogin,
                          text: 'Login',
                          onPressed: () {
                            // TODO: Login
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
