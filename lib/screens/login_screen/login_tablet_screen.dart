import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterchallenge/components/auth_btn.dart';
import 'package:flutterchallenge/components/email_input_field.dart';
import 'package:flutterchallenge/components/password_input_field.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTabletScreen extends StatelessWidget {
  const LoginTabletScreen({super.key});

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
          // /// Image
          // Container(
          //   width: sizeWidth,
          //   height: sizeHeight * 0.5, // Set height to half of screen height
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(24),
          //     image: const DecorationImage(
          //       image: AssetImage("assets/images/jpg/Login-Art.jpg"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          //
          // SizedBox(height: sizeHeight * 0.022),

          /// Title
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: GoogleFonts.poppins(
                  color: AppColors.titleColor,
                  fontSize: sizeWidth * 0.019,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: sizeWidth * 0.01),
              SvgPicture.asset(
                "assets/images/svg/waving-hand-icon.svg",
                width: sizeWidth * 0.02,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: sizeHeight * 0.022),

          /// Subtitle
          Text(
            textAlign: TextAlign.start,
            "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
            style: TextStyle(
              color: AppColors.subTitleColor,
              fontSize: sizeWidth * 0.022,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.034),

          /// Email text label
          Text(
            "Email",
            style: TextStyle(
              color: AppColors.titleColor,
              fontSize: sizeWidth * 0.016,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.012),

          /// Email text field
          EmailInputField(
            hintSize: sizeWidth * 0.02,
            hintText: "Example@email.com",
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: sizeHeight * 0.028),

          /// Password text label
          Text(
            "Password",
            style: TextStyle(
              color: AppColors.titleColor,
              fontSize: sizeWidth * 0.016,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizeHeight * 0.012),

          /// Password text field
          PasswordInputField(
            hintSize: sizeWidth * 0.02,
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
                  fontSize: sizeWidth * 0.02,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          SizedBox(height: sizeHeight * 0.03),

          /// Sign in button
          InkWell(
            onTap: () {},
            child: Container(
              height: sizeHeight * 0.08,
              width: sizeWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sizeWidth * 0.008),
                color: AppColors.authBtnColor,
              ),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: sizeWidth * 0.02,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
                    fontSize: sizeWidth * 0.02,
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
                  btnFontSize: sizeWidth * 0.016,
                  svgIconName: "google-icon",
                  onTap: () {},
                  btnName: "Sign in with Google",
                ),
              ),
              const SizedBox(
                width: 20,
              ),

              /// facebook auth btn
              Expanded(
                child: AuthBtn(
                  btnBorderRadius: sizeWidth * 0.01,
                  btnFontSize: sizeWidth * 0.016,
                  svgIconName: "facebook-icon",
                  onTap: () {},
                  btnName: "Sign in with Facebook", // Fixed the button name
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
                  fontSize: sizeWidth * 0.02,
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
                    fontSize: sizeWidth * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: sizeHeight * 0.04),

          /// rights
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "© MR DEV ALL RIGHTS RESERVED",
                style: TextStyle(
                  color: const Color(0xFF959CB6),
                  fontSize: sizeWidth * 0.012,
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
