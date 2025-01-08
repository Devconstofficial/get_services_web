import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final double borderRadius;
  final String title;
  final Color textColor;
  final Color color;
  final double width;
  final double height;
  final double textSize;
  final Function()? onTap;
  final bool showShadow;
  final Color? borderColor;
  final String? icon;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.textColor = Colors.white,
    this.color = primaryColor,
    this.width = double.maxFinite,
    this.height = 64,
    this.borderRadius = 10,
    this.textSize = 16,
    this.showShadow = false,
    this.borderColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getHeight(height),
        width: getWidth(width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: Center(
          child: Text(
            title.tr(),
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: textSize.sp,
                color: textColor,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
