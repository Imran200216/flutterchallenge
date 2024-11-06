import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthBtn extends StatelessWidget {
  final String svgIconName;
  final VoidCallback onTap;
  final String btnName;
  final double btnFontSize;
  final double btnBorderRadius;

  const AuthBtn({
    super.key,
    required this.svgIconName,
    required this.onTap,
    required this.btnName,
    required this.btnFontSize,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    /// Media query to get screen dimensions
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: sizeHeight * 0.06,
        width: sizeWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnBorderRadius),
          color: AppColors.authSocialBtnColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/svg/$svgIconName.svg",
                height: 28,
                width: 28,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: sizeWidth * 0.01,
              ),
              Text(
                btnName,
                style: GoogleFonts.roboto(
                  fontSize: btnFontSize,
                  fontWeight: FontWeight.w400,
                  color: AppColors.titleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
