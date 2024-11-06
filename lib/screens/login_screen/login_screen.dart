import 'package:flutter/material.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:flutterchallenge/screens/login_screen/login_desktop_screen.dart';
import 'package:flutterchallenge/screens/login_screen/login_mobile_screen.dart';
import 'package:flutterchallenge/screens/login_screen/login_tablet_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: Center(
              child: SingleChildScrollView(
                // Enables scrolling if content overflows
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (size.width > 950)
                      const LoginDesktopScreen()
                    else if (size.width > 750)
                      const LoginTabletScreen()
                    else
                      const LoginMobileScreen(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
