import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/primary_button.dart';
import '../../../widgets/custom_header.dart';
class EventExtrasScreen extends StatelessWidget {
  const EventExtrasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(
        title: 'Extras',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),


            SizedBox(height: 16.h),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFF5F0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 23.h),
                child: Row(
                  children: [
                    Text(
                      "ID required",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/icons/toggle_off.png",
                      width: 32.w,
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h,),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFF5F0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 23.h),
                child: Row(
                  children: [
                    Text(
                      "Own alcohol allowed",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/icons/toggle_off.png",
                      width: 32.w,
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),

            /// Spacer to push button to the bottom
            const Spacer(),

            /// Primary Button at the bottom
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: PrimaryButton(
                text: "Update",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
