import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterchallenge/components/auth_btn.dart';
import 'package:flutterchallenge/components/email_input_field.dart';
import 'package:flutterchallenge/components/password_input_field.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDesktopScreen extends StatelessWidget {
  const LoginDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query to get screen dimensions
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        width: sizeWidth * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Login form contents
            Expanded(
              flex: 1,
              child: SizedBox(
                width: sizeWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// title
                    Row(
                      children: [
                        Text(
                          "Welcome Back",
                          style: GoogleFonts.poppins(
                            color: AppColors.titleColor,
                            fontSize: sizeWidth * 0.016,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: sizeWidth * 0.01,
                        ),
                        SvgPicture.asset(
                          "assets/images/svg/waving-hand-icon.svg",
                          width: sizeWidth * 0.02,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: sizeHeight * 0.022),

                    /// subtitle
                    Text(
                      textAlign: TextAlign.start,
                      "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
                      style: TextStyle(
                        color: AppColors.subTitleColor,
                        fontSize: sizeWidth * 0.01,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: sizeHeight * 0.034,
                    ),

                    /// email text field
                    Text(
                      "Email",
                      style: TextStyle(
                        color: AppColors.titleColor,
                        fontSize: sizeWidth * 0.011,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.012),

                    /// email text field
                    EmailInputField(
                      hintSize: sizeWidth * 0.01,
                      hintText: "Example@email.com",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: sizeHeight * 0.028),

                    /// password text
                    Text(
                      "Password",
                      style: TextStyle(
                        color: AppColors.titleColor,
                        fontSize: sizeWidth * 0.011,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.012),

                    /// password text field
                    PasswordInputField(
                      hintSize: sizeWidth * 0.01,
                      hintText: "At least 8 characters",
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: sizeHeight * 0.012),

                    /// forget password text btn
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: AppColors.textBtnColor,
                            fontSize: sizeWidth * 0.01,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.03),

                    /// sign in btn
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: sizeHeight * 0.06,
                        width: sizeWidth,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(sizeWidth * 0.008),
                          color: AppColors.authBtnColor,
                        ),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: sizeWidth * 0.011,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.04),

                    /// divider
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Color(0xFFCFDFE2),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Or",
                            style: TextStyle(
                              color: AppColors.titleColor,
                              fontSize: sizeWidth * 0.01,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Color(0xFFCFDFE2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sizeHeight * 0.04),

                    /// google auth btn
                    AuthBtn(
                      btnBorderRadius: sizeWidth * 0.008,
                      btnFontSize: sizeWidth * 0.011,
                      svgIconName: "google-icon",
                      onTap: () {},
                      btnName: "Sign in with Google",
                    ),
                    SizedBox(height: sizeHeight * 0.02),

                    /// facebook auth btn
                    AuthBtn(
                      btnBorderRadius: sizeWidth * 0.008,
                      btnFontSize: sizeWidth * 0.011,
                      svgIconName: "facebook-icon",
                      onTap: () {},
                      btnName: "Sign in with Facebook", // Fixed the button name
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
                            fontSize: sizeWidth * 0.01,
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
                              fontSize: sizeWidth * 0.01,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "© MR DEV ALL RIGHTS RESERVED",
                          style: TextStyle(
                            color: const Color(0xFF959CB6),
                            fontSize: sizeWidth * 0.007,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(width: 80),

            /// Login image with increased width
            Expanded(
              flex: 2,
              child: Container(
                height: sizeHeight * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/jpg/Login-Art.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
