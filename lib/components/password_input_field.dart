import 'package:flutter/material.dart';
import 'package:flutterchallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final double hintSize;

  const PasswordInputField({
    super.key,
    required this.hintText,
    this.controller,
    required this.textInputType,
    required this.hintSize,
  });

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _isObscured = true; // To track password visibility

  @override
  Widget build(BuildContext context) {
    /// Media query to get screen dimensions
    final sizeWidth = MediaQuery.of(context).size.width;

    return TextField(
      controller: widget.controller,
      keyboardType: widget.textInputType,
      obscureText: _isObscured, // Set the text field to obscure based on state
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.roboto(
          color: AppColors.textFieldHintTextColor,
          fontWeight: FontWeight.w400,
          fontSize: widget.hintSize, // Access hintSize from widget
        ),
        filled: true,
        fillColor: AppColors.textFieldBgColor,
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
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
            // Change icon based on visibility
            color: AppColors.textFieldHintTextColor,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured; // Toggle visibility
            });
          },
        ),
      ),
    );
  }
}
