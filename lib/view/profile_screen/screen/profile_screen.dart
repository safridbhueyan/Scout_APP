import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/profile_setting_screen/screens/profile_setting_screen.dart';
import '../widget/event_tab_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0, // Ensures alignment from the left
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            children: [
              Text(
                "Profile",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSettingScreen()));
                },
                child: Image.asset(
                  "assets/icons/setting.png",
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns all text to the left
            children: [
              SizedBox(height: 16.h),

              // Profile Image
              Container(
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color(0xFFFB6012), width: 1.5.w),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/event/event_02.png",
                          width: 56.0.w,
                          height: 56.0.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.account_circle,
                              color: Colors.grey,
                              size: 56.0.r,
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // User Info
                    Text(
                      "John Doe",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                    ),
                    Text(
                      "@johnnyboi",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff25282A),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    SizedBox(height: 20.h),

                    Text(
                      "Just an oke looking for a vaab ⛱️",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xff25282A),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                          ),
                    ),

                    SizedBox(height: 24.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: Color(0xffFFF5F0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 120.w, vertical: 11.h),
                        child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Edit details",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                            )),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // Ensure this section has a fixed height
              SizedBox(
                height: 400.h, // Adjust height as needed
                child: EventsScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
