import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Mybuttons extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final Color? color;
  final Color fontColor;
  String? img;

  static Widget? suffix;
  final FontWeight? fontWeight;

  Mybuttons({
    super.key,
    required this.ontap,
    required this.text,
    required this.color,
    required this.fontColor,
    required this.fontWeight,
    this.img,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: color, // opts
          // border: Border.all(
          //   // color: Colors.white70, //opt
          //   width: 1.5,
          // ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (img != null)
              Image.asset(
                img!,
                height: 24.h,
                width: 24.w,
              ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: fontColor, // opt
                    fontWeight: fontWeight, //opt
                  ),
            ),
          ]),
        ),
      ),
    );
  }
}
