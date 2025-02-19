import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventInfoContainer extends StatelessWidget {
  const EventInfoContainer({
    super.key,
    this.imagePath,
    required this.title,
    required this.onTap,
  });

  final String? imagePath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Color(0xFFFFF5F0),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: 14.sp),
          ),
          Spacer(),
          Transform.translate(
            offset: Offset(0, -6),
            child: IconButton(
              onPressed: onTap,
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF111315),
              ),
            ),
          )
        ],
      ),
    );
  }
}
