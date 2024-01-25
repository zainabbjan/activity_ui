import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/presentation/common_widgets/reusable_text_container.dart';
import 'package:ui/presentation/resources/app_colors.dart';
import 'package:ui/presentation/resources/assets.dart';
import 'package:ui/presentation/resources/textstyle.dart';
import 'package:ui/presentation/views/profile/activity_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),

            ///
            ///header
            ///
            header(),

            SizedBox(
              height: 30.h,
            ),

            ///
            ///points
            ///
            aboutpointts(),
            SizedBox(height: 20.h),
            // TabBar
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.5,
              controller: _tabController,
              tabs: const [
                Tab(text: 'Activity'),
                Tab(text: 'Engagement'),
                Tab(text: 'My Points'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ActivityScreen(),
                  Center(child: Text('Engagment')),
                  Center(child: Text('My Points')),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 3.h),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0.r),
              topRight: Radius.circular(20.0.r),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 10),
            ],
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  '${staticAssets}b1.png',
                  scale: 4.0,
                ),
                Image.asset(
                  '${staticAssets}search.png',
                  scale: 4.0,
                ),
                Image.asset(
                  '${staticAssets}b.png',
                  scale: 4.0,
                ),
                Image.asset(
                  '${staticAssets}b3.png',
                  scale: 4.0,
                ),
                Image.asset(
                  '${staticAssets}b5.png',
                  scale: 4.0,
                )
              ],
            ),
          )),
    );
  }

  header() {
    return Row(
      children: [
        ReusableContaner(
          asset: '${staticAssets}frame.png',
          showText: true,
          text: '5000',
          textColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withOpacity(0.1),
        ),
        SizedBox(
          width: 8.w,
        ),
        ReusableContaner(
          asset: '${staticAssets}crown.png',
          showText: true,
          text: 'Gold',
          color: AppColors.lightGoldColor,
          textColor: AppColors.goldColor,
        ),
        Spacer(),
        ReusableContaner(
          color: AppColors.primaryColor.withOpacity(0.1),
          asset: '${staticAssets}shuttle.png',
          hpadding: 12.r,
          vpadding: 12.r,
        ),
        SizedBox(
          width: 8.w,
        ),
        notification(),
      ],
    );
  }

  aboutpointts() {
    return Column(
      children: [
        ReusableContaner(
          color: AppColors.whiteColor,
          asset: '${staticAssets}frame.png',
          scale: 1.9,
          showText: true,
          text: '1230',
          fontWeight: FontWeight.bold,
          fontSize: 40.sp,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Text(
            'Points today',
            style: plusJakartaSansTextStyle(
                fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ),
        ReusableContaner(
          color: AppColors.primaryColor,
          asset: '${staticAssets}Subtract.png',
          scale: 3.5,
          hpadding: 20,
          vpadding: 10,
          showText: true,
          text: 'Claim my points',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          textColor: AppColors.whiteColor,
        )
      ],
    );
  }

  notification() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.grey[600],
            )),
        Positioned(
          right: 10,
          top: 7,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              '7',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 6.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
