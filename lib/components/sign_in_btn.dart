import 'package:flutter/material.dart';
import 'package:flutterchallenge/constants/colors.dart';

class SignInBtn extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final double btnFontSize;
  final double btnBorderRadius;
  final String btnText;
  final VoidCallback onTap;

  const SignInBtn({
    super.key,
    required this.btnHeight,
    required this.btnWidth,
    required this.btnFontSize,
    required this.btnBorderRadius,
    required this.btnText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnBorderRadius),
          color: AppColors.authBtnColor,
        ),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(
              fontSize: btnFontSize,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
