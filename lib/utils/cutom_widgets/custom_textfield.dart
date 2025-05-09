import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;
  final double height;
  final double width;
  final Color borderColor;
  final Color fillColor;
  final Color hintColor;
  final bool isStyle;
  final TextInputType textInputType;
  final bool readOnly;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? suffixText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;

  final Function()? onTap;
  final int maxLines;
  final FocusNode? focusNode;
  CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isObscure = false,
    this.height = 64,
    this.width = double.maxFinite,
    this.borderColor = greyColor,
    this.fillColor = Colors.white,
    this.hintColor = greyShade1Color,
    this.isStyle = false,
    this.textInputType = TextInputType.text,
    this.readOnly = false,
    this.suffix,
    this.suffixText,
    this.prefix,
    this.onChanged,
    this.onTap,
    this.maxLines = 1,
    this.focusNode,
    this.onSubmitted,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(height),
      width: getWidth(width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        keyboardType: textInputType,
        obscureText: isObscure,
        readOnly: readOnly,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        onTap: onTap,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText.tr(),
          hintStyle: GoogleFonts.robotoFlex(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: hintColor,
          ),
          filled: true,
          fillColor: fillColor,
          suffixIcon: suffix,
          prefixIcon: prefix,
          suffix: suffixText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor, width: 1),
          ),
        ),
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
