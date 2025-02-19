import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? prefix;
  final String? label;
  final VoidCallback onTap;
  final int? width;
  final IconData? suffix;
  final int? maxLine;

  const CustomTextField({
    super.key,
    this.prefix,
    this.label,
    required this.onTap,
    this.width,
    this.suffix,
    this.maxLine
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        // padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 32.w),
        color: Colors.transparent, // Set background to transparent
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: TextFormField(
              maxLines: maxLine,
              decoration: InputDecoration(
                 // hintText: hintText,
                  label: Text(label!),
                  filled: true,

                  fillColor: Colors.transparent,
                  labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Color(0xff4B5155),
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp
                      ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(color: Color(0xff9BA2A7))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(color: Color(0xff9BA2A7))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(color: Color(0xff9BA2A7)))),
            )),
      ),
    );
  }
}
