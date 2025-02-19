import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration inputDecoration(
    BuildContext context, {String? hinText, String? labelText, IconData? suffixIcon}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.shade400,
      ),
      borderRadius: BorderRadius.circular(8.0), // Circular border
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffFDAF88),
      ),
      borderRadius: BorderRadius.circular(8.0), // Circular border
    ),
    fillColor: const Color(0xffFFFFFF),
    filled: true,
    labelText: hinText,
    labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: const Color(0xff667085),
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    suffixIcon: Icon(suffixIcon),
  );
}
