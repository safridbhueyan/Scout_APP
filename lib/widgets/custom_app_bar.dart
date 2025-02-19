import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar(BuildContext context, String title,){
  return AppBar(
    centerTitle: true,
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(
            0xFF111315,
          ),
        )
    ),
    title: Text(title,style: AppBarTheme.of(context).titleTextStyle!.copyWith(
        fontSize: 14.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000)
    )),
  );
}
