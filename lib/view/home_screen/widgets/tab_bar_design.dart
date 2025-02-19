import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarDesign extends StatelessWidget{

   String text = "";
   bool isSelected = false;

  TabBarDesign({super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
            color: isSelected ? Color(0xffFB6012) : Color(0xffFFF5F0),
      ),
      child: Center(
        child: Text(text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: isSelected ? Colors.white : Colors.black,
        ),),
      ),
    );
  }
}