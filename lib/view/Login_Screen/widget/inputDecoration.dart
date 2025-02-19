import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration inputDecor(
    BuildContext context, String label, Widget? suffixIcon) {
  return InputDecoration(
    labelText: label,
    labelStyle: Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: Color(0xFF4B5155), fontWeight: FontWeight.w500),
    floatingLabelStyle: Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: Color(0xFF000000), fontSize: 16.sp),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(color: Color(0xFF9BA2A7))),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(color: Color(0xFFFB6012))),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(color: Color(0xFF9BA2A7))),
    suffixIcon: suffixIcon,
  );
}
