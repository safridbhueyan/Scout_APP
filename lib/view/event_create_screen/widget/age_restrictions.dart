import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/primary_button.dart';
import '../../../widgets/custom_header.dart';
import '../../../widgets/input_decoration.dart';
class AgeRestrictions extends StatelessWidget {
  const AgeRestrictions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(
        title: 'Age Restrictions',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            SizedBox(
              height: 48.h,
              child: TextFormField(

                decoration: inputDecoration(
                  context,
                  hinText: 'Minimum age required',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
            ),

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
                      "assets/icons/toggle.png",
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
