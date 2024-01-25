import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/domain/models/key_metrics.dart';
import 'package:ui/presentation/resources/app_colors.dart';
import 'package:ui/presentation/resources/assets.dart';
import 'package:ui/presentation/resources/textstyle.dart';

class Metrics extends StatelessWidget {
  const Metrics({
    super.key,
    required this.data,
  });

  final KeyMetrics data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: data.selected
              ? AppColors.primaryColor
              : AppColors.lightPrimaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.primaryColor.withOpacity(0.2))),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  data.imagePath,
                  scale: 3.5,
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: plusJakartaSansTextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    color: data.selected ? AppColors.whiteColor : Colors.black,
                  ),
                ),
                // SizedBox(
                //   height: 5.h,
                // ),
                Text(
                  data.duration,
                  style: plusJakartaSansTextStyle(
                    fontSize: 11.sp,
                    color: data.selected ? AppColors.whiteColor : Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      data.change,
                      style: plusJakartaSansTextStyle(
                        fontSize: 9.sp,
                        color:
                            data.selected ? AppColors.whiteColor : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Image.asset(
                      data.iconPath,
                      scale: 4.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<KeyMetrics> metricsList = [
  KeyMetrics(
    selected: true,
    imagePath: '${staticAssets}tiktok.png',
    title: 'Tiktok',
    duration: '2 hours 20 minutes',
    change: '+6(+44%)',
    iconPath: '${staticAssets}send.png',
  ),
  KeyMetrics(
    selected: false,
    imagePath: '${staticAssets}instagram.png',
    title: 'Instagram',
    duration: '1 hours 10 minutes',
    change: '+6(+44%)',
    iconPath: '${staticAssets}redSend.png',
  ),
  KeyMetrics(
    selected: false,
    imagePath: '${staticAssets}instagram.png',
    title: 'Instagram',
    duration: '1 hours 10 minutes',
    change: '+6(+44%)',
    iconPath: '${staticAssets}redSend.png',
  ),
  KeyMetrics(
    selected: false,
    imagePath: '${staticAssets}tiktok.png',
    title: 'Tiktok',
    duration: '2 hours 20 minutes',
    change: '+6(+44%)',
    iconPath: '${staticAssets}blueSend.png',
  ),
];
