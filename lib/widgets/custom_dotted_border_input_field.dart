import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDottedBorderInputField extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const CustomDottedBorderInputField({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: Color(0xffFDAF88),
        strokeWidth: 1.0,
        dashPattern: [3, 3],
        radius: Radius.circular(8.r),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 32.w),
          color: Colors.transparent, // Set background to transparent
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    color: Color(0xffFFF5F0)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
                  child: OverflowBar(


                    children: [
                      Image.asset(imagePath,height: 16.h,width: 16.w,),
                      SizedBox(width: 8.h),
                      Text(
                        label,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
