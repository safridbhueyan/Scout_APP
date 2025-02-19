import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/primary_button.dart';
import '../../../widgets/custom_header.dart';
import '../../../widgets/input_decoration.dart';
class EventTagsScreen extends StatelessWidget {
  const EventTagsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            CustomHeader(title: "Tags"),
            SizedBox(height: 34.h),
            SizedBox(
              height: 48.h,
              child: TextFormField(
                decoration: inputDecoration(
                  context,
                  hinText: 'Search',
                  suffixIcon: Icons.search, // Corrected suffix icon usage
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
            Wrap(
              runSpacing: 9,
              spacing: 9,
              children: [
                _buildTag("Festival"),
                _buildTag("Food"),
                _buildTag("Wine"),
                _buildTag("Sports"),
                _buildTag("Literature"),
                _buildTag("Concerts"),
                _buildTag("Nightlife"),
                _buildTag("Music"),
                _buildTag("Film"),
                _buildTag("Outdoor"),
                _buildTag("Tech"),
                _buildTag("Art"),
                _buildTag("Fundraising"),
              ],
            ),
            // Add Spacer to push the button to the bottom
            Spacer(),
            PrimaryButton(text: "Update", onPressed: () {}),
            SizedBox(height: 20.h), // Add some spacing from bottom
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4), // Background color
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
