import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/domain/models/key_metrics.dart';
import 'package:ui/presentation/common_widgets/custom_elevated_botton.dart';
import 'package:ui/presentation/common_widgets/tiktok_activity.dart';
import 'package:ui/presentation/resources/app_colors.dart';
import 'package:ui/presentation/resources/assets.dart';
import 'package:ui/presentation/resources/textstyle.dart';
import 'package:ui/presentation/views/profile/components/metrics_widget.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///
              ///date and filter row
              ///
              dateAndFiltrRow(),

              ///
              ///key metrics
              ///
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Key metrics',
                style: familjenGroteskTextStyle(fontSize: 18.sp),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 15.h),
                itemCount: metricsList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 1.5,
                ),
                itemBuilder: (context, index) {
                  KeyMetrics data = metricsList[index];
                  return Metrics(data: data);
                },
              ),

              ///
              ///Tiktok Activity
              ///
              Padding(
                padding: EdgeInsets.only(top: 4.h, bottom: 12.h),
                child: Text(
                  'TikTok Activity',
                  style: familjenGroteskTextStyle(fontSize: 18.sp),
                ),
              ),
              Container(
                  height: 230.h,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightPrimaryColor),
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.lightPrimaryColor.withOpacity(0.2)),
                  // color: Colors.black,
                  width: double.infinity,
                  child: MyLineChart()),

              ///
              ///Claim my points Container
              ///
              earnedPoints(),

              ///
              ///

              Container(
                height: 120.h,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor,
                ),
                // color: Colors.black,
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Refer a friend',
                          style: plusJakartaSansTextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 18.h,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Earn 50 for every referral',
                          style: plusJakartaSansTextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 12.h,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        customElevatedButton(
                          backgroundColor: AppColors.whiteColor,
                          text: 'Get it now',
                          horizontalPadding: 30,
                          textColor: AppColors.primaryColor,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          '${staticAssets}money.png',
                          scale: 4.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  earnedPoints() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Container(
        height: 120.h,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightPrimaryColor),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightPrimaryColor.withOpacity(0.2)),
        // color: Colors.black,
        width: double.infinity,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '500',
                  style: plusJakartaSansTextStyle(
                      fontSize: 18.h, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Points earned',
                  style: plusJakartaSansTextStyle(
                      fontSize: 12.h, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5.h,
                ),
                customElevatedButton(
                  backgroundColor: AppColors.red,
                  text: 'Claim my points',
                  textColor: AppColors.whiteColor,
                  onPressed: () {},
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Image.asset(
                    '${staticAssets}hands.png',
                    scale: 4,
                  ),
                ),
                Positioned(
                    child: Image.asset(
                  '${staticAssets}arrow.png',
                  scale: 4.5,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }

  dateAndFiltrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Jan 16 - Jan22',
          style: familjenGroteskTextStyle(fontSize: 10.sp),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Row(
            children: [
              Text(
                'Last 7 days',
                style: familjenGroteskTextStyle(fontSize: 10.sp),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
