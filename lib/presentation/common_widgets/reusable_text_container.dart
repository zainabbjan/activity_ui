// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ui/presentation/resources/app_colors.dart';
import 'package:ui/presentation/resources/assets.dart';
import 'package:ui/presentation/resources/textstyle.dart';

class ReusableContaner extends StatelessWidget {
  final bool showText;
  final String? text;
  final String? asset;
  final double? scale;
  final Color? color;
  final Color? textColor;
  double hpadding;
  double vpadding;
  double fontSize;
  FontWeight fontWeight;
  ReusableContaner(
      {Key? key,
      this.showText = false,
      this.text,
      this.asset,
      this.scale = 4,
      required this.color,
      this.textColor = Colors.black,
      this.hpadding = 8,
      this.vpadding = 5,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hpadding, vertical: vpadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            asset!,
            scale: scale,
          ),
          if (showText) SizedBox(width: 8.w),
          if (showText)
            Text(
              text ?? '',
              style: plusJakartaSansTextStyle(
                  fontSize: fontSize,
                  color: textColor ?? Colors.black,
                  fontWeight: fontWeight),
            ),
        ],
      ),
    );
  }
}
