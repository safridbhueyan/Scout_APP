import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class boxCat extends StatelessWidget {
  final String text;
  const boxCat({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFED7C4)),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
