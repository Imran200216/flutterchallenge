import 'package:flutter/material.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final double hintSize;

  const EmailInputField({
    super.key,
    required this.hintText,
    this.controller,
    required this.textInputType,
    required this.hintSize,
  });

  @override
  Widget build(BuildContext context) {
    /// Media query to get screen dimensions
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return TextField(
      style: GoogleFonts.roboto(
        color: AppColors.titleColor,
        fontWeight: FontWeight.w400,
        fontSize: sizeWidth * 0.01,
      ),
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          color: AppColors.textFieldHintTextColor,
          fontWeight: FontWeight.w400,
          fontSize: hintSize,
        ),
        filled: true,
        fillColor: AppColors.textFieldBgColor,
        // Background color of the text field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textBtnColor, // Border color when unfocused
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textBtnColor, // Border color when focused
            width: 1,
          ),
        ),
      ),
    );
  }
}
