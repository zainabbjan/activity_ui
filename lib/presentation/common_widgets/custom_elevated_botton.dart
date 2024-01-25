import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/presentation/resources/textstyle.dart';

Widget customElevatedButton({
  required String text,
  required VoidCallback onPressed,
  Color backgroundColor = Colors.red,
  Color textColor = Colors.white,
  double borderRadius = 7.0,
  double horizontalPadding = 16.0,
  double verticalPadding = 2.0,
  double fontSize = 11.0,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      primary: backgroundColor, 
      onPrimary: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius.r), 
      ),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding.w,
        vertical: verticalPadding.h,
      ),
    ),
    child: Text(
      text,
      style: plusJakartaSansTextStyle(
        fontSize: fontSize.h,
        color: textColor,
        fontWeight: fontWeight,
      ),
    ),
  );
}
