import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterchallenge/components/auth_btn.dart';
import 'package:flutterchallenge/components/email_input_field.dart';
import 'package:flutterchallenge/components/password_input_field.dart';
import 'package:flutterchallenge/components/sign_in_btn.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query to get screen dimensions
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        top: 20,
        bottom: 20,
        right: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image
          Container(
            width: sizeWidth,
            height: sizeHeight * 0.3, // Set height to half of screen height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                image: AssetImage("assets/images/jpg/Login-Art.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: sizeHeight * 0.02),

          /// Title
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: GoogleFonts.poppins(
                  color: AppColors.titleColor,
                  fontSize: sizeWidth * 0.06,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: sizeWidth * 0.01),
              SvgPicture.asset(
                "assets/images/svg/waving-hand-icon.svg",
                width: sizeWidth * 0.06,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: sizeHeight * 0.014),

          /// Subtitle
          Text(
            textAlign: TextAlign.start,
            "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
            style: TextStyle(
              color: AppColors.subTitleColor,
              fontSize: sizeWidth * 0.036,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.020),

          /// Email text label
          Text(
            "Email",
            style: TextStyle(
              color: AppColors.titleColor,
              fontSize: sizeWidth * 0.044,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.010),

          /// Email text field
          EmailInputField(
            hintSize: sizeWidth * 0.04,
            hintText: "Example@email.com",
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: sizeHeight * 0.020),

          /// Password text label
          Text(
            "Password",
            style: TextStyle(
              color: AppColors.titleColor,
              fontSize: sizeWidth * 0.044,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.010),

          /// Password text field
          PasswordInputField(
            hintSize: sizeWidth * 0.04,
            hintText: "At least 8 characters",
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBox(height: sizeHeight * 0.012),

          /// Forget password text button
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  color: AppColors.textBtnColor,
                  fontSize: sizeWidth * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          SizedBox(height: sizeHeight * 0.03),

          /// Sign in button
          SignInBtn(
            btnHeight: sizeHeight * 0.06,
            btnWidth: sizeWidth,
            btnFontSize: sizeWidth * 0.04,
            btnBorderRadius: sizeWidth * 0.03,
            btnText: "Sign in",
            onTap: () {},
          ),

          SizedBox(height: sizeHeight * 0.03),

          /// divider
          Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 2,
                  color: Color(0xFFCFDFE2),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Or Sign with",
                  style: TextStyle(
                    color: AppColors.titleColor,
                    fontSize: sizeWidth * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                child: Divider(
                  thickness: 2,
                  color: Color(0xFFCFDFE2),
                ),
              ),
            ],
          ),
          SizedBox(height: sizeHeight * 0.04),

          /// social btn
          Row(
            children: [
              Expanded(
                child: AuthBtn(
                  btnBorderRadius: sizeWidth * 0.01,
                  btnFontSize: sizeWidth * 0.04,
                  svgIconName: "google-icon",
                  onTap: () {},
                  btnName: "Google",
                ),
              ),
              const SizedBox(
                width: 20,
              ),

              /// facebook auth btn
              Expanded(
                child: AuthBtn(
                  btnBorderRadius: sizeWidth * 0.01,
                  btnFontSize: sizeWidth * 0.04,
                  svgIconName: "facebook-icon",
                  onTap: () {},
                  btnName: "Facebook", // Fixed the button name
                ),
              ),
            ],
          ),

          SizedBox(height: sizeHeight * 0.04),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// don't have an account text
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: AppColors.titleColor,
                  fontSize: sizeWidth * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),

              /// sign up btn
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: AppColors.textBtnColor,
                    fontSize: sizeWidth * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: sizeHeight * 0.01),

          /// rights
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "© MR DEV ALL RIGHTS RESERVED",
                style: TextStyle(
                  color: const Color(0xFF959CB6),
                  fontSize: sizeWidth * 0.03,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
